from ubuntu@sha256:5747316366b8cc9e3021cd7286f42b2d6d81e3d743e2ab571f55bcd5df788cc8

ENV DEBIAN_FRONTEND noninteractive

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV HOME /root

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# update apt database
RUN apt-get update
# install base package
RUN apt-get install -y tzdata nano net-tools iputils-ping supervisor
# 任意のpackageをインストール
RUN apt-get install -y ＿PACKAGE_NAME_HERE_


# config supervisor
RUN mkdir -p /var/log/supervisor
RUN mkdir -p /etc/supervisor/conf.d

# copy supervisor config file
ADD supervisor.conf /etc/supervisor.conf
# copy application supervisor conf
ADD app.conf /etc/supervisor/conf.d/app.conf

# ファイルコピー
ADD data/_PUT_FILENAME_HERE_ /PATH/INSIDE/IMAGE/_FILENAME_

# clear temp files
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# execute supervisorctl
CMD ["supervisord", "-c", "/etc/supervisor.conf"]

# ポート番号設定
EXPOSE _PORT_NUMBER_HERE_