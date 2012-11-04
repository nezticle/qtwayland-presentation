#include "presentationview.h"
#include <QtGui/QKeyEvent>

PresentationView::PresentationView()
    : QQuickView()
    , m_fullscreen(false)
{
}

void PresentationView::keyPressEvent(QKeyEvent *event)
{
    //Toggle Fullscreen
    if ((event->key() == Qt::Key_Return) && (event->modifiers() && Qt::AltModifier)) {
        if(!m_fullscreen)
            this->showFullScreen();
        else
            this->showNormal();
        m_fullscreen = !m_fullscreen;

    } else {
        QQuickView::keyPressEvent(event);
    }
}
