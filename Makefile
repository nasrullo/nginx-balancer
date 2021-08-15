.PHONY: test
stop:
	openresty -p `pwd` -c config/nginx.conf -s stop

start:
	openresty -p `pwd` -c config/nginx.conf

test-conf:
	openresty -p `pwd` -c config/nginx.conf -t

test:
	curl localhost:8080/api

clean: stop
	rm -rf logs/*
