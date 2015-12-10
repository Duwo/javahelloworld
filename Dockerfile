FROM java:7
COPY src /home/root/javahelloworld/src

# WORKDIR /home/root/javahelloworld
# RUN mkdir bin

RUN javac -d /bin /home/root/javahelloworld/src/HelloWorld.java
#RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

ENV MY_VAR=ett
