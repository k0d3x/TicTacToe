FROM fsk00x/cocos2dx-docker:v1
RUN mkdir TicTacToe
WORKDIR /TicTacToe
COPY ./Classes* Classes
COPY ./Resources* Resources
COPY ./bin/debug/android* bin/debug/android
COPY ./cocos2d* cocos2d
COPY ./firebase_cpp_sdk* firebase_cpp_sdk
COPY ./proj.android* proj.android
RUN cd ..
RUN pwd
RUN cd proj.android
RUN cocos compile -p android
