rootdir = $(realpath .)

start:
	docker run --name tensorflow-container -it -p 8888:8888 -p 6006:6006 -d -v $(rootdir)/notebooks:/notebooks -v $(rootdir)/data:/data amaksimov/python_data_science 

stop: 
	docker container rm $$(docker ps -aq) -f