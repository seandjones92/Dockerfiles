# Vagrant on Silverblue

## Build
```
podman build -t vagrant-container:latest .
```

## Overlay libvirt
Libvirt needs to be installed on the host directly, so you need to overlay at least the ‘libvirt’ package.
```
rpm-ostree install virt-install virt-manager
systemctl reboot
```

## Configuration
set this environment variable:
```
LIBVIRT_DEFAULT_URI=qemu:///system
```

## Alias
run like this, set an alias to vagrant in `~/.bashrc`
```
alias vagrant='podman run --rm -it \
        --volume /run/libvirt:/run/libvirt \
        --volume "${HOME}:${HOME}:rslave" \
        --env "HOME=${HOME}" \
        --workdir "$(pwd)" \
        --net host \
        --privileged \
        --security-opt label=disable \
        --entrypoint /usr/bin/vagrant \
        localhost/vagrant-container:latest'
```
