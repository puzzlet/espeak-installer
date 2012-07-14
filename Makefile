all: deb

ubuntu:
	bzr branch ubuntu:espeak ubuntu

# TODO: phsource

deb: ubuntu
	cd espeak-korean/espeak-data/ ; \
		cp -R ko_dict mbrola_ph/ voices/ ../../ubuntu/espeak-data/
	cd espeak-japanese/espeak-data/ ; \
		cp -R ja_dict mbrola_ph/ voices/ ../../ubuntu/espeak-data/
	cd ubuntu ; debuild -uc -us
