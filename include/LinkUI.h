#ifndef LINKUI_H
#define LINKUI_H

#include "Link.h"
#include <QWidget>

class  LinkUI
{

public:
    LinkUI();
    static void initOLED(QWidget *widget, QString type="ZJY64128",int i2c=0,bool gpioI2c=false);
    static void setRotate(int rotate);
    static void refreshOLED();
    static void setBrightness(uchar val);
private:
    static int rotate;
};

#endif // LINKUI_H
