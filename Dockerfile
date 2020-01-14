FROM openjdk:8-jre-alpine
MAINTAINER Aohongzhu <ahz_393123108@163.com>
ENV LANG     zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8
ENV LC_ALL   zh_CN.UTF-8
#设置时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

ADD target/springboot_demo-*.jar /test-service.jar
ENTRYPOINT ["java","-jar", "test-service.jar"]
EXPOSE 8080