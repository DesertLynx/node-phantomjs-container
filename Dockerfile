FROM ubuntu

RUN sudo apt-get update 
RUN sudo apt-get install g++ gcc make wget python vim git -y 
WORKDIR /tmp
RUN wget https://iojs.org/dist/v2.2.1/iojs-v2.2.1.tar.gz
RUN tar -xzf iojs-v2.2.1.tar.gz
RUN mv iojs-v2.2.1 iojs
WORKDIR /tmp/iojs
RUN ./configure
RUN make install 
RUN npm install -g phantomjs
RUN sudo apt-get install fontconfig -y # Install missing font-deps for phantomjs 
