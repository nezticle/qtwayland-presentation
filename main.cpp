#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickView>

int main (int argc, char **argv)
{
    QGuiApplication application(argc, argv);

    QQuickView *view = new QQuickView;
    view->setResizeMode(QQuickView::SizeRootObjectToView);
    view->setSource(QUrl::fromLocalFile("SlideDeck.qml"));
    view->showMaximized();

    application.exec();
}
