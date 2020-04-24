#ifndef LINKFRAME_H
#define LINKFRAME_H

#include "Link.h"
#include "LinkIVE.h"
struct LinkFramePriv;

class LinkFrame : public LinkObject
{
    Q_OBJECT
public:
    Q_INVOKABLE explicit LinkFrame(QObject *parent = 0);
    virtual void oneFrame();
    QMap<QString,IVEMem> mem;


private:
    int timerId;
    void timerEvent(QTimerEvent *);
    LinkFramePriv *priv;

signals:

public slots:
    virtual void onStart();
    virtual void onStop();
    virtual void onNewInfoV(StreamInfo info);
    virtual void onSetData(QVariantMap newData);
};

#endif // LINKFRAME_H
