import QtQuick 2.0
import Qt.labs.presentation 1.0

Presentation {

    width: 1280
    height: 720

    property color textColor: "white"

    Background {
        id: background
    }

    Slide {
        id: titlePage
        title: "QtWayland"
        centeredText: "Creating Window Compositors with the QtWayland module"
        fontScale: 1.5

    }

    Slide {
        id: aboutMe
        title: "A little about me..."
        //TODO: add some content about yourself
    }

    Slide {
        id: outline
        title: "Outline"
        content: [
            "The past",
            "What is Wayland",
            "The QtWayland Module",
            "How do you use QtWayland"
        ]
    }

    Slide {
        centeredText: "In case you have not heard..."
    }

    Slide {
        centeredText: "QWS has been removed in Qt 5.0"
    }

    Slide {
        title: "How does QWS work in Qt 4?"
        //TODO: add QWS architecture graphic
    }

    Slide {
        title: "QWS Graphics Stack"
        //TODO: add QWS graphics stack graphic
    }

    Slide {
        title: "QWS Client Side"
        content: [
            "QPainter renders to a QBackingStore",
            "Mapped to a SHM buffer",
            "Responsible for Window Frame & Decorations"
        ]
    }

    Slide {
        title: "QWS Server Side"
        content: [
            "Client window regions are marked dirty",
            "Dirty regions are mapped from SHM buffers to QImages",
            "QImage gets rendered directly to the screen",
            "QScreen plugins define how to paint to video output devices."
        ]
    }

    Slide {
        title: "Direct Rendering with QWS"
        content: [
            "Client applications map regions of the fraembuffer and render directly there instead of being composed by QWSServer"
        ]
    }

    Slide {
        title: "Accelerated Graphics in QWS"
        content: [
            "3 Requirements:",
            " QScreen plugin",
            " QPaintEngine subclass",
            " QPaintDevice subclass"
        ]
    }

    Slide {
        centeredText: "If thats the case, then what was so wrong with QWS?"
    }

    Slide {
        centeredText: "Sounds really nice in a sales pitch"
    }

    Slide {
        centeredText: "But have you ever actaully had to do this?"
    }

    Slide {
        title: "QWS is infexible"
        content: [
            "A lot of work to support new hardware",
            "Hard to customize"
        ]
    }

    Slide {
        title: "QWS does not map well with modern graphics hardware"
        content: [
            "OpenGL support in a QScreen driver a myth",
            " powervr driver supports OpenGL, but tread carefully",
            " simplegl experimental driver exists, but fullscreen single window surface only."
        ]
    }

    Slide {
        title: "QWS has an Unsustainable Maintenance burdon"
        content: [
            "Small embedded team maintaining their own window management protocol",
            "Modernizeing QWS while maintaining compatiblity impractial"
        ]
    }

    Slide {
        centeredText: "And then came a project called Wayland"
    }

    Slide {
        title: "What is Wayland?"
        content: [
            "Wayland is a protocol for a compositor to talk to its clients as well as a C library implementation of that protocol"
        ]
    }

    Slide {
        title: "Wayland Compositors"
        content: [
            "Can be a standalone display server running on Linux kernel modesetting and evdev input devices, an X Application, or a wayland client itself"
        ]
    }

    Slide {
        title: "Wayland Clients"
        content: [
            "The clients can be traditional applictions, X servers (rootless or fullscreen) or other display servers."
        ]
    }

    Slide {
        title: "How does Wayland work?"
        //TODO: add Wayland Architecture Graphic
    }

    Slide {
        title: "Wayland Compositor"
        content: [
            "Composes output",
            "Handles Input devices",
            "Forwards input events to clients",
            "Coordinates client buffers"
        ]
    }

    Slide {
        title: "Wayland Clients"
        content: [
            "Renders its contents to a buffer specified by the compositor",
            " SHM buffers",
            " native buffers (GPU memory)"
        ]
    }

    Slide {
        title: "Buffer Sharing"
        content: [
            "SHM buffers",
            " Raster based toolkits",
            "GPU buffers",
            " shared between processes with EGL",
            " mapped as a texture by the compositor",
            " no additional coppies or upload pentalty",
            "Wayland-EGL"
        ]
    }

    Slide {
        title: "Why Wayland?"
        content: [
            "Lightwieght",
            "Fast and Smooth on modern graphics hardware",
            "External Open Source project",
            "Easy to make customized compositor",
            "Protocol is versioned",
            "Protocol is easily extendable"
        ]
    }

    Slide {
        centeredText: "but the best part is..."
    }

    Slide {
        centeredText: "Cross toolkit compatibility!"
    }

    Slide {
        centeredText: "Try doing that with QWS!"
    }

    Slide {
        title: "The QtWayland Module"
        content: [
            "Wayland platform plugin",
            "QtCompositor API"
        ]
    }

    Slide {
        title: "Running Qt 5.0 Applications in a Wayland Compositor"
        content: [
            "Just add '-platform wayland' to run as a Wayland client"
        ]
    }

    Slide {
        centeredText: "Demo Time"
    }

    Slide {
        centeredText: "QtCompositor API"
    }

    Slide {
        title: "WaylandCompositor"
        content: [
            "Subclass to create your own compositor",
            "Implement <em>surfaceCreated(WaylandSurface *surface)</em>",
            "Call <em>frameFinished()</em> after all surfaces are rendered."
        ]
    }

    Slide {
        title: "WaylandSurface"
        content: [
            "Wraps wl_surface struct",
            "emits signals when client's state has changed",
            " mapped",
            " unmapped",
            " damaged",
            " destroyed"]
    }

    Slide {
        centeredText: "QWindow Compositor Demo"
    }

    Slide {
        title: "WaylandSurfaceItem"
        content: [
            "Qt Quick 2.0 item for WaylandSurface"
        ]
    }

    Slide {
        centeredText: "QML Compositor Demo"
    }

    Slide {
        title: "QtWayland on new hardware"
        content: [
            "Wayland-EGL",
            "Hardware Integrations",
            " Client",
            "  QWaylandGLIntegration",
            "  native window surface",
            "  native OpenGL context",
            " Server",
            "  GraphicsHardwareIntegration",
            "  native buffer",
            "  how to map native buffer to texture"
        ]
    }

    Slide {
        title: "Hardware without OpenGL"
        content: [
            "No native GPU buffers are used",
            "No Qt Quick 2.0",
            "Mesa + LLVM software rendered OpenGL possible"]
    }

    Slide {
        centeredText: "Embedded Device Demo"
    }

    Slide {
        centeredText: "Questions?"
    }

    Slide {
        centeredText: "Thanks for coming!"
    }
}