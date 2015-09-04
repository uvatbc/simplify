#ifndef _MAINWINDOW_H_
#define _MAINWINDOW_H_

#include "global.h"

class MainWindow : public QObject
{
    Q_OBJECT

public:
    MainWindow(QObject *parent = NULL);

private slots:
    void doInit(void);

private:
};

#endif //_MAINWINDOW_H_
