Launch a Docker Registry Mirror locally with SWIFT storage as a backend :

```
openstack stack create --template drm-heat.yaml -e env-galactica-drm.yaml qserv-docker-registry
```

For other HEAT recipes, please checkout the corresponding branches "heat-*"
