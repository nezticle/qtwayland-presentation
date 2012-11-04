#include <QtGui/QGuiApplication>
#include <QtQml/QQmlEngine>
#include "presentationview.h"
int main (int argc, char **argv)
{
    QGuiApplication application(argc, argv);

    PresentationView *view = new PresentationView;
    view->setResizeMode(QQuickView::SizeRootObjectToView);
    view->setSource(QUrl::fromLocalFile("SlideDeck.qml"));
    view->show();

    QObject::connect(view->engine(), SIGNAL(quit()), view, SLOT(close()));

    application.exec();
}
