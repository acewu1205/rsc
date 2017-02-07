#include "mainwindow.h"
#include <QApplication>
#include <glog/logging.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();


    // Initialize Google's logging library.
   google::InitGoogleLogging(argv[0]);

   FLAGS_log_dir = "./logs";

   LOG(INFO) << "hello world";


    return a.exec();
}
