# Ansible

## Build
```
podman build -t ansible:latest .
```

## Alias
```
alias ansible='podman run --rm -it \
	--volume "${HOME}:${HOME}:rslave" \
	--env "HOME=${HOME}" \
	--workdir "$(pwd)" \
	--net host \
	--privileged \
	--security-opt label=disable \
    --entrypoint /usr/bin/ansible \
	localhost/ansible'
```
