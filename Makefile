.PHONY: test build run pull run-pulled

test:
\tpytest -q

build:
\tdocker build -t flask-cicd-demo .

run:
\tdocker run -p 5000:5000 --rm flask-cicd-demo

pull:
\tdocker pull ghcr.io/gaidaahmed/flask-cicd-demo:latest

run-pulled:
\tdocker run -p 5000:5000 --rm ghcr.io/gaidaahmed/flask-cicd-demo:latest
