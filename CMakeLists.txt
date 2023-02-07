cmake_minimum_required(VERSION 3.16)

project(QtQuickExamples VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appQtQuickExamples
    main.cpp
)

qt_add_qml_module(appQtQuickExamples
    URI QtQuickExamples
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES AnimatedImage.qml
    QML_FILES Opacity.qml
    QML_FILES AnalogClock.qml
    img_animated.gif
    img_analog_clock_background.png
    img_analog_clock_largeArm.png
    img_analog_clock_smallArm.png
)

set_target_properties(appQtQuickExamples PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQtQuickExamples
    PRIVATE Qt6::Quick)

install(TARGETS appQtQuickExamples
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
