#include "mainwindow.h"
#include <QApplication>
#include <iostream>
#include <memory>
#include <string>
#include "emlog/glog/logging.h"
#include <assert.h>

using namespace std;
using namespace google;

void sfunc();
void glogfunc();

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    InitGoogleLogging(argv[0]);

    return a.exec();
}

void glogfunc()
{
    FLAGS_log_dir = "logs";

    LOG(INFO) << "info test";  //输出一个Info日志
    LOG(WARNING) << "warning test";  //输出一个Warning日志
    LOG(ERROR) << "error test";  //输出一个Error日志
    LOG(FATAL) << "fatal test";  //输出一个Fatal日志，这是最严重的日志并且输出之后会中止程序
}

void sfunc()
{
    cout << " +++ " << endl;
}

void vecto()
{
    vector<int> ivec(10, 1);
    int i = 0;
    for(vector<int>::iterator iter=ivec.begin(); iter != ivec.end(); ++iter)
    {
        if(i == 1)
        {
            *iter = 10;
        }
        else
        {
            *iter = 2;
        }
        ++i;
    }

    cout << " --- " << *(ivec.begin()++) << " --- " << endl;
}
