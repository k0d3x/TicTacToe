FROM fsk00x/cocos2dx-docker
MAINTAINER "Rahul Yadav"

RUN mkdir TicTacToe

COPY Classes* /TicTacToe/Classes
COPY Resources* /TicTacToe/Resources
COPY bin/debug/android* /TicTacToe/bin/debug/android
COPY cocos2d* /TicTacToe/cocos2d
COPY firebase_cpp_sdk* /TicTacToe/firebase_cpp_sdk
COPY proj.android* /TicTacToe/proj.android


RUN cd..
RUN cd TicTacToe/proj.android
RUN cocos compile -p android
