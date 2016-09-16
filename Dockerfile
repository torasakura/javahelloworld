FROM java:7

WORKDIR /home/root/javahelloworld
COPY src src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
ENV FOO bar
