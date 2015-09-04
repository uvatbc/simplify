#include "MainWindow.h"
#include <iostream>
using namespace std;

MainWindow::MainWindow(QObject *parent /* = NULL*/)
: QObject(parent)
{
    QTimer::singleShot (1, this, SLOT(doInit()));
}//MainWindow::MainWindow

void
MainWindow::doInit(void)
{
    Q_DEBUG("Hello world");
    qApp->quit();
}//MainWindow::doInit
