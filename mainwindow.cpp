#include <mainwindow.h>
#include "ui_mainwindow.h"
#include <opengl.h>

#define MyQLineEdit() << QLineEdit() << fixed << qSetRealNumberPrecision(3)

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    timerId = startTimer(25);
}

MainWindow::~MainWindow()
{
    killTimer(timerId);
    delete ui;
}

void MainWindow::timerEvent(QTimerEvent *)
{

}
