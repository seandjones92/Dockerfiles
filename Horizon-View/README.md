# Horizon View Client

## Build
```
podman build -t vmware-view:latest .
```

## Alias
```
alias ansible='podman run --rm -it \
	--volume "${HOME}:${HOME}:rslave" \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    --env "DISPLAY=${DISPLAY}" \
	--env "HOME=${HOME}" \
	--workdir "$(pwd)" \
	--net host \
	--privileged \
	--security-opt label=disable \
    --entrypoint /usr/bin/vmware-view \
	localhost/vmware-view:latest'
```
