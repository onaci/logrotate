FROM alpine

RUN apk --no-cache add logrotate \
	&& echo "*/5 *	* * *	/usr/sbin/logrotate /etc/logrotate.conf" >> /etc/crontabs/root
ADD logrotate.conf /etc/logrotate.conf

CMD ["crond", "-f"]
