DIR="$(pwd)/dockerShared"
docker run --rm -it --mount "type=bind,src=$DIR,dst=/dockerShared" jaleview \
    miniconda/bin/jalview -nogui \
    -open /dockerShared/in/homologene.txt \
    -svg dockerShared/out/t2t.svg
