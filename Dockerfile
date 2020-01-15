FROM fsk00x/cocos2dx-docker
MAINTAINER "Rahul Yadav"

RUN mkdir TicTacToe

COPY ./Classes
WORKDIR /TicTacToe/Classes

COPY ./Resources
WORKDIR /TicTacToe/Resources

COPY ./bin/debug/android
WORKDIR /TicTacToe/bin/debug/android

COPY ./cocos2d
WORKDIR /TicTacToe/cocos2d

COPY ./firebase_cpp_sdk
WORKDIR /TicTacToe/firebase_cpp_sdk

COPY ./proj.android
WORKDIR /TicTacToe/proj.android

RUN cd..
RUN cd TicTacToe/proj.android
RUN cocos compile -p android
