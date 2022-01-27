.PHONY: demo

demo:
	cd SATySFi && dune exec -- satysfi ../demo/demo.saty -o ../demo/demo.pdf -C lib-satysfi
