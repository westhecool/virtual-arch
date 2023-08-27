# Virtual Arch
Run a virtual system of a different arch in a docker container.<br>
Images are in the following format: `distro-fromarch-toarch`<br>
Unfortunately they require `--cap-add=SYS_ADMIN` to run. This also may have a chance of messing up something in your system temporarily (as it sets binfmt). This also means that multiple instances at once may not play well together.<br>
The directory `/mnt` can be used for mounting external folders into the emulated system.
## Images
```
ghcr.io/westhecool/virtual-arch:ubuntu-amd64-arm32
ghcr.io/westhecool/virtual-arch:ubuntu-amd64-i386
ghcr.io/westhecool/virtual-arch:ubuntu-arm32-arm64
ghcr.io/westhecool/virtual-arch:ubuntu-arm64-amd64
ghcr.io/westhecool/virtual-arch:ubuntu-arm64-i386
ghcr.io/westhecool/virtual-arch:ubuntu-i386-arm32
ghcr.io/westhecool/virtual-arch:ubuntu-amd64-arm64
ghcr.io/westhecool/virtual-arch:ubuntu-arm32-amd64
ghcr.io/westhecool/virtual-arch:ubuntu-arm32-i386
ghcr.io/westhecool/virtual-arch:ubuntu-arm64-arm32
ghcr.io/westhecool/virtual-arch:ubuntu-i386-amd64
ghcr.io/westhecool/virtual-arch:ubuntu-i386-arm64
```