
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import '../views/home.dart';

class Router{
  static Route<dynamic> generatorRoute(RouteSettings settings){
    print('进入路由 ${settings.name}');
    print('路由参数 ${settings.arguments}');
    return CupertinoPageRoute(
      settings: settings,
      builder: (context){
        switch (settings.name){
          case ROUTE_HOME:
            return Home();
          default:
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Text('unknown route ${settings.name}'),
              ),
            );
        }
      }
    );
  }  
}