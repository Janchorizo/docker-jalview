docker run --rm -it --mount "type=bind,src=/home/alex/biotech/jaleview/dockerShared,dst=/dockerShared" jaleview \
    miniconda/bin/jalview -nogui \
    -open /dockerShared/in/homologene.txt \
    -svg dockerShared/out/out.svg
