#include "MainWindow.h"
#include <iostream>
using namespace std;

MainWindow::MainWindow(QObject *parent /* = NULL*/)
: QObject(parent)
, m_mqClient(NULL)
{
    QTimer::singleShot (1, this, SLOT(doInit()));
}//MainWindow::MainWindow

void
MainWindow::doInit(void)
{
    Q_DEBUG("Hello world");
    
    m_mqClient = new MqClient(this);
    if (NULL == m_mqClient) {
        Q_WARN("Failed to allocate MQ client");
        return;
    }

    QObject::connect(m_mqClient, SIGNAL(dataMessage(QByteArray)),
                     this, SLOT(onMqUserInfoReceived(QByteArray)));

    m_mqClient->setupClient("some_topic",
                            "localhost");
    m_mqClient->startWork();
}//MainWindow::doInit

void
MainWindow::onMqUserInfoReceived(QByteArray msg)
{
    Q_DEBUG(QString("msg = '%1'").arg(QString(msg)));
}//MainWindow::onMqUserInfoReceived
