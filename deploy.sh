apb prepare
apb build --tag ${OSC_DOCKER_REG}/openshift/backup-pvc-apb
apb push --registry-route ${OSC_DOCKER_REG}
curl -H "Authorization: Bearer $(oc whoami -t)" -k -X POST https://$(oc get route -n openshift-ansible-service-broker | grep asb | awk '{print $2}')/ansible-service-broker/v2/bootstrap

sleep 5
svcat sync broker ansible-service-broker
