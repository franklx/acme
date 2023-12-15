#!/bin/bash
# run under /opt/debuild/run 09
cd openssl \
	&& git checkout OpenSSL_1_1_1-stable \
	&& ./config --static -static \
	&& make \
	&& cd ..

cd acme-redirect \
	&& cargo deb \
	&& cd ..
