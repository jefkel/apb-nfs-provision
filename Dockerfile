FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGJhY2t1cC1wdmMtYXBiCmRlc2NyaXB0aW9uOiBUaGlzIEFQQiB3\
aWxsIGNyZWF0ZSBhbmQgZGVwbG95IGFuIE5GUyBiYWNrZWQgUFYgYW5kIGEgY29ycmVzcG9uZGlu\
ZyBwcm9qZWN0IFBWQy4KYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToK\
ICBkaXNwbGF5TmFtZTogQmFja3VwIFBWQyAoQVBCKQogIGltYWdlVXJsOiBodHRwczovL2hhYWFh\
ZC5nYWxsZXJ5Y2RuLnZzYXNzZXRzLmlvL2V4dGVuc2lvbnMvaGFhYWFkL2Fuc2libGUvMC4yLjgv\
MTUyMzAwNDE2NTczOS9NaWNyb3NvZnQuVmlzdWFsU3R1ZGlvLlNlcnZpY2VzLkljb25zLkRlZmF1\
bHQKICBsb25nRGVzY3JpcHRpb246CiAgICBBbiBBUEIgd2hpY2ggZGVwbG95cyBhIG5ldyBORlMg\
YmFja2VkIFBWIGFuZCBQVkMgZm9yIGEgcHJvamVjdC4KICBwcm92aWRlckRpc3BsYXlOYW1lOiAi\
QXJjdGlxIgpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAgIGRlc2NyaXB0aW9uOiBQcm92aXNp\
b24gYW4gTkZTIGJhY2tlZCBQVkMgZm9yIHRoZSB0YXJnZXQgcHJvamVjdC4KICAgIGZyZWU6IFRy\
dWUKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTogRGVmYXVsdAogICAgICBsb25nRGVz\
Y3JpcHRpb246CiAgICAgICAgVGhpcyBwbGFuIHdpbGwgcHJvdmlzaW9uIGFuIE5GUyBiYWNrZWQg\
UFZDIG9mIHRoZSBzcGVjaWZpZWQgc2l6ZSBmb3IgeW91ciBuYW1lc3BhY2UuCiAgICBwYXJhbWV0\
ZXJzOgogICAgICAtIG5hbWU6IHJxX3NpemUKICAgICAgICB0aXRsZTogQmFja3VwIFZvbHVtZSBT\
aXplIChHYikKICAgICAgICBkZWZhdWx0OiAxCiAgICAgICAgdHlwZTogbnVtYmVyCiAgICAgICAg\
cmVxdWlyZWQ6IHRydWUKICAgICAgICBkaXNwbGF5X2dyb3VwOiBVc2VyIEVudHJ5CiAgICAgIC0g\
bmFtZTogYmFja3VwX3N0b3JhZ2VfbmZzX3NlcnZlcgogICAgICAgIHR5cGU6IHN0cmluZwogICAg\
ICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgZGlzcGxheV9ncm91cDogQWR2YW5jZWQgU2V0dGlu\
Z3MKICAgICAgLSBuYW1lOiBiYWNrdXBfc3RvcmFnZV9uZnNfcm9vdAogICAgICAgIHR5cGU6IHN0\
cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgZGlzcGxheV9ncm91cDogQWR2YW5j\
ZWQgU2V0dGluZ3MKICAgICAgLSBuYW1lOiBiYWNrdXBfc3RvcmFnZV92b2x1bWVncm91cAogICAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgZGlzcGxheV9n\
cm91cDogQWR2YW5jZWQgU2V0dGluZ3MKICAgICAgLSBuYW1lOiBiYWNrdXBfc3RvcmFnZV90aGlu\
cG9vbAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAg\
ZGlzcGxheV9ncm91cDogQWR2YW5jZWQgU2V0dGluZ3MKIyBSZW1vdmVkIHJlbW90ZV91c2VyL2tl\
eSBhcyB3ZWxsIGFzIE9TQyBTZXJ2aWNlIEFjY3QgYW5kIFRva2VuIGZyb20gcGFyYW1ldGVycyBs\
aXN0LiAgQVBCIHdpbGwgZmFpbCBpZgojIHRoZXNlIHBhcmFtZXRlcnMgYXJlIG5vdCBhdmFpbGFi\
bGUuICBJZiB0aGV5IGFyZSBhZGRlZCBpbiB0aGUgdXNlciBlbnRyeSBhcmVhIHRoZXkgd2lsbCBi\
ZSBhdmFpbGFibGUKIyB0byB0aGUgcHJvamVjdCB2aWEgdGhlIGFwYl9wYXJhbWV0ZXJzIHNlY3Jl\
dC4gIEhvd2V2ZXIgaWYgdGhleSBhcmUgb25seSBwcmVzZW50IGluIHRoZSBvcGFxdWUgc2VjcmV0\
LAojIHRoZXkgYXJlIG9ubHkgdmlzaWJsZSB2aWEgdGhlIGJyb2tlciBuYW1lc3BhY2UsIG9yIHdp\
dGhpbiB0aGUgcnVubmluZyBhcGIuCiMgICAgICAtIG5hbWU6IHJlbW90ZV91c2VyCiMgICAgICAg\
IHRpdGxlOiBTU0ggUmVtb3RlIFVzZXIKIyAgICAgICAgdHlwZTogc3RyaW5nCiMgICAgICAgIHJl\
cXVpcmVkOiB0cnVlCiMgICAgICAgIGRpc3BsYXlfZ3JvdXA6IEF1dGgKIyAgICAgIC0gbmFtZTog\
YXV0aF9rZXkKIyAgICAgICAgdGl0bGU6IFNTSCBSZW1vdGUgVXNlciBLZXkKIyAgICAgICAgdHlw\
ZTogc3RyaW5nCiMgICAgICAgIHJlcXVpcmVkOiB0cnVlCiMgICAgICAgIGRpc3BsYXlfZ3JvdXA6\
IEF1dGgKIyAgICAgIC0gbmFtZTogcHZfc3J2X2FjY3QKIyAgICAgICAgdGl0bGU6IFNlcnZpY2Ug\
QWNjb3VudCBmb3IgUFYgYWRtaW4KIyAgICAgICAgdHlwZTogc3RyaW5nCiMgICAgICAgIHJlcXVp\
cmVkOiB0cnVlCiMgICAgICAgIGRpc3BsYXlfZ3JvdXA6IEF1dGgKIyAgICAgIC0gbmFtZTogcHZf\
c3J2X2FjY3RfdG9rZW4KIyAgICAgICAgdGl0bGU6IEF1dGggVG9rZW4gZm9yIFBWIGFkbWluIHNl\
cnZpY2UgYWNjb3VudAojICAgICAgICB0eXBlOiBzdHJpbmcKIyAgICAgICAgcmVxdWlyZWQ6IHRy\
dWUKIyAgICAgICAgZGlzcGxheV9ncm91cDogQXV0aAo="

ENV BUNDLE_DEBUG=true
COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN echo "host_key_checking = False" >> /opt/apb/.ansible.cfg
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
