all:
	@if [ -e /usr/local/bin/make-webloc.sh ]; then\
		rm /usr/local/bin/make-webloc.sh;\
		echo "rm /usr/local/bin/make-webloc.sh";\
	fi
	cp make-webloc.sh /usr/local/bin/
	chmod u+x /usr/local/bin/make-webloc.sh