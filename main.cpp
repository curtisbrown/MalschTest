#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    qDebug() << "Hello world!!!";

    qDebug() << "This is a test for Anna and Martin";

    qDebug() << "BALABSJHCDVSHCD";

    return app.exec();
}
