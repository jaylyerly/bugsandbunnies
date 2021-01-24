.PHONY: help clean

help:
	@echo "   make clean		Remove the public directory"
	@echo "   make drafts		Build the public directory with drafts"
	@echo "   make site			Build the public directory"
	@echo "   make deply		Remove the public directory, rebuild and push to S3"

clean:
	rm -rf public
	
drafts:
	hugo -D
	
site:
	hugo
	
deploy: site
	rm -rf public
	hugo
	hugo deploy
