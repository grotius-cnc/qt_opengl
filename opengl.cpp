#include "opengl.h"
#include <math.h>
#include <QToolTip>
#include <QKeyEvent>
#include <QCursor>
#include <QString>
#include <mainwindow.h>

#define myqDebug() qDebug() << fixed << qSetRealNumberPrecision(4)

opengl::opengl(QWidget *parent)
    : QOpenGLWidget(parent)
{
    QTimer *timer = new QTimer(this);
    connect(timer, SIGNAL(timeout()), this, SLOT(update()));
    timer->start(25);
}

opengl::~opengl()
{

}

void opengl::initializeGL()
{
    //glut init for displaying solid cone,box etc.
    char *myargv [1];
    int myargc=1;
    glutInit(&myargc, myargv);

}

void opengl::resizeGL(int w, int h)
{
    glViewport(0, 0, w, h);
}

void opengl::paintGL()
{  
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glBegin(GL_LINES);
    //glColor3f(1.0f, 0.0f, 1.0f);
    glVertex3d(0, 0, 0);  //xyz start
    glVertex3d(100, 0, 0);  //xyz end
    glEnd();
}

void opengl::wheelEvent(QWheelEvent *event)
{

}

void opengl::mouseMoveEvent(QMouseEvent *event)
{

}

void opengl::mousePressEvent(QMouseEvent *event)
{

}

void opengl::mouseReleaseEvent(QMouseEvent *event)
{

}





























