docker run --rm --privileged multiarch/qemu-user-static --reset -p yes # so we cam build arm64/arm images on x86-64
cd images
for i in *; do
    echo ghcr.io/westhecool/virtual-arch:$i
    cd $i
    cp ../../init.sh .
    docker build -t ghcr.io/westhecool/virtual-arch:$i .
    docker push ghcr.io/westhecool/virtual-arch:$i
    cd ..
done