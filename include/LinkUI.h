#ifndef LINKUI_H
#define LINKUI_H

#include "Link.h"
#include <QWidget>

class  LinkUI
{

public:
    LinkUI();
    static void initFB(int width=1920,int height=1080,int dev=0);
    static void initOLED(QWidget *widget, QString type="ZJY64128",int i2c=0,bool gpioI2c=false);
    static void setRotate(int rotate);
    static void refreshOLED();
    static void setBrightness(uchar val);
private:
    static int rotate;
};

#endif // LINKUI_H
