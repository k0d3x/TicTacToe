FROM fsk00x/cocos2dx-docker:v1
COPY Classes* /TicTacToe/Classes
WORKDIR /TicTacToe/Classes	COPY Resources* /TicTacToe/Resources
COPY bin/debug/android* /TicTacToe/bin/debug/android
COPY cocos2d* /TicTacToe/cocos2d
COPY firebase_cpp_sdk* /TicTacToe/firebase_cpp_sdk
COPY proj.android* /TicTacToe/proj.android
CMD cd proj.android
CMD cocos compile -p android
