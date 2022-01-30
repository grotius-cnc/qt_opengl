# QT_opengl
C++ template for QT with Mainwindow and Opengl class.
Very nice and clean startup example, wich can save you lot's of time !!

User can directly start with writing the opengl code.

The program has 2 available timers :
  - 1 timer for updating the opengl class 
  - 1 timer for updating the mainwindow class

The do and don'ts for timers:
For example working with dxf files larger then 2mb, a timer can be better replaced by a mouse updating event.
This can handle huge file's easyer, but requires more coding knowledge and requires more seperate event routines.

![alt text](https://raw.githubusercontent.com/grotius-cnc/QT_opengl/master/qt_opengl_pic.png)

Linux deps:
sudo apt-get install freeglut3-dev
