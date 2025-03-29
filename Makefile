build:
	docker build -t youtube-upload .
	(docker stop youtube-upload || true)

bash:
	docker run -it --rm \
		-v ./.secrets/:/secrets/ \
		youtube-upload python3 bin/youtube-upload --credentials-file /secrets/.youtube-upload-credentials.json --client-secrets /secrets/.client_secrets.json
