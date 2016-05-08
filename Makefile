SSH-USER = my-username
SSH-HOST = my-host
REMOTE-PATH = /my-remote-path with trailing slash/

deploy:
	rsync -cavze ssh --delete ./_site/ $(SSH-USER)@$(SSH-HOST):$(REMOTE-PATH)

install:
	bundle install
	npm install
	bower install

ssh:
	ssh $(SSH-USER)@$(SSH-HOST)
