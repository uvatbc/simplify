#ifndef _MAINWINDOW_H_
#define _MAINWINDOW_H_

#include "global.h"
#include "MqClient.h"

class MainWindow : public QObject
{
    Q_OBJECT

public:
    MainWindow(QObject *parent = NULL);

private slots:
    void doInit(void);
    void onMqUserInfoReceived(QByteArray msg);

private:
    MqClient *m_mqClient;
};

#endif //_MAINWINDOW_H_
