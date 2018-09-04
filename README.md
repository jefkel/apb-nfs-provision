# Provision backup (NFS) PVC for project (backup-pvc-apb)
## Provision Needs:
1. Create remote nfs shared lv (thin volume)
2. Create OC PV and PVC for created nfs share.
## Deprovision Needs:
1. Delete PVC and reclaim/delete PV (do not keep)
2. Remove remote NFS Share
3. [Optional] - delete remote lv (thin volume?) - do not automatically remove yet

# Update OC with changes/new apb's
Currently, you can do the following to push the apb into OC

`oc login` (as user with cluster admin role - not as system:admin)

`oc get route docker-registry -n default`
 - use HOST/PORT value as ${OSC_DOCKER_REG}

`export OSC_DOCKER_REG=$(oc get route docker-registry -n default | grep docker-registry | awk '{print $2}')`

confirm /etc/containers/registries.conf has insecure route (if needed)
 - add to [registries.insecure] section:

`registries = [${OSC_DOCKER_REG}]`

This apb was created with "apb init", and can be pushed to OKD via the following (in the top folder):

```
apb prepare
apb build --tag ${OSC_DOCKER_REG}/openshift/backup-pvc-apb
apb push --registry-route ${OSC_DOCKER_REG}
```

# Update openshift-ansible-service-broker
Add an opaque secret as per the following sample (ensure you base64 encode your values)

```yaml
---
apiVersion: v1
kind: Secret
metadata:
    name: backup-nfs-conf
    namespace: openshift-ansible-service-broker
data:
    "backup_storage_nfs_server": base64{nfshost.domain.name}
    "backup_storage_nfs_root": base64{/path/to/nfs/export/root}
    "backup_storage_volumegroup": base64{LVG name}
    "backup_storage_thinpool": base64{lv thinpool name}
    "remote_user": base64{remote nfs host user}
    "auth_key": base64{sshkey auth for remote_user}
    "pv_srv_acct": base64{PV Admin ServiceAcct}
    "pv_srv_acct_token": base64{Auth Token for PV Admin ServiceAcct}
...
```

Update cm/broker-config:
add to secrets section:

```
  secrets:
  - title: backup-nfs-auth
    apb_name: lreg-backup-pvc-apb
    secret: external-nfs-host-auth
```

Redeploy openshift-ansible-service-broker to use new broker-config

