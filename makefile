N64SPLIT := ./n64splitter/bin/n64split
INPUT := baserom.z64

n64split:
	mkdir -p ./n64splitter/bin && make -C n64splitter
split: n64split
	$(N64SPLIT) -v -o papermario -c PAPER_MARIO.u.yaml $(INPUT)

default: split
