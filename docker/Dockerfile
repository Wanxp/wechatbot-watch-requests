# FROM fedora:latest
FROM fedora:39
LABEL describe="Fedora for WeChat hook, base on LXDE, Wine, xRDP, WeChatFerry."

WORKDIR /root
RUN dnf update -y \
        && dnf groupinstall -y "LXDE" \
        && dnf install -y wine \
        && dnf install -y xrdp \
        && dnf install -y git \
        && dnf clean all

COPY ./res ./res

RUN echo "root:123" | chpasswd \
        && mkdir ~/Desktop \
        && mv res/*.desktop ~/Desktop \
        && mv res/*.sh .
        # && unzip -o res/v*.zip -d res

# Port for xRDP
EXPOSE 3389
# Port for http service
# EXPOSE 8888
# Port for rpc send msg
EXPOSE 10086
# Port for rpc recv msg
EXPOSE 10087
# Port for minmproxy proxy listen
EXPOSE 18181
# Port for minmproxy web listen
EXPOSE 18182

ENTRYPOINT ["./entrypoint.sh"]
CMD ["bash"]

