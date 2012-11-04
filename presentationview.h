#ifndef PRESENTATIONVIEW_H
#define PRESENTATIONVIEW_H

#include <QQuickView>

class PresentationView : public QQuickView
{
public:
    PresentationView();

protected:
    void keyPressEvent(QKeyEvent *event);

private:
    bool m_fullscreen;
};

#endif // PRESENTATIONVIEW_H
