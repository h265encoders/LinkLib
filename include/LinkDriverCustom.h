#ifndef LINKDRIVERCUSTOM_H
#define LINKDRIVERCUSTOM_H

#include <QObject>
#include <QVariantMap>

class LinkDriverCustom : public QObject
{
    Q_OBJECT
public:
    explicit LinkDriverCustom(QObject *parent = 0);
    virtual void start(QVariantMap data=QVariantMap());
    virtual QVariantMap getState();
signals:

public slots:
};

#endif // LINKDRIVERCUSTOM_H
