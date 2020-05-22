# PowerShell

## Alias
```
alias powershell='podman run --rm -it \
	--volume "${HOME}:${HOME}:rslave" \
	--env "HOME=${HOME}" \
	--workdir "$(pwd)" \
	--net host \
	--privileged \
	--security-opt label=disable \
	mcr.microsoft.com/powershell'
```
