# CMAKE_MINIMUM_REQUIRED(VERSION 3.5)
PROJECT(HELLO) #项目名称　　
AUX_SOURCE_DIRECTORY(. SRC_LIST) #把当前目录(.)下所有源代码文件和头文件加入变量SRC_LIST
# ADD_EXECUTABLE(hello ${SRC_LIST}) #生成应用程序 hello (在windows下会自动生成hello.exe)

add_library(lhello SHARED ${SRC_LIST})
 
set_target_properties(lhello PROPERTIES output_name "lhello")