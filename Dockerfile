FROM cmulk/wireguard-docker:alpine
ADD wg0.conf /etc/wireguard/wg0.conf
ADD start-wg.sh /scripts/
RUN chmod +x /scripts/start-wg.sh

CMD ["start-wg.sh"]