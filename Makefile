.PHONY: demo

demo:
	mkdir -p .satysfi
	cp -rf SATySFi/lib-satysfi/dist .satysfi
	cd SATySFi && dune exec -- satysfi ../demo/demo.saty -o ../demo/demo.pdf -C ../.satysfi
