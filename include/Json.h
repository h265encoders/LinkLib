#ifndef JSON_H
#define JSON_H
#include <QVariant>
#include <QString>
class Json
{
public:
    Json();
    static QString encode(QVariant data,bool format=true);
    static QVariant decode(const QString &jsonStr);
    static QVariant loadFile(QString path);
    static bool saveFile(QVariant data, QString path);
    static QVariantMap join(QVariantMap A,QVariantMap B);
};

#endif // JSON_H
