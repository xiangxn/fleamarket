import 'dart:async';
import 'package:fleamarket/common/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'dart:io';
import 'package:device_info/device_info.dart';

import 'common/app_info.dart';
import 'common/style.dart';
import 'common/provider_setup.dart';
import 'common/router.dart';
import 'common/ext_locale.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  AppInfo appInfo = AppInfo();
  runZoned(
    () {
      Future.wait(<Future>[
        appInfo.init(),
      ]).then((_){
        runApp(App());
        // 强制横屏
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown
        ]);
        // if (Platform.isAndroid) {
          // 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
          SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          );
          SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
          // 设置statusBar 使用黑色主题（白底黑字）
          // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);


      });
    },
    zoneSpecification: ZoneSpecification(print: (Zone self, ZoneDelegate parent, Zone zone, String line){
      parent.print(zone, "输出: $line");
    }),
    onError: reports
  );
}

reports(Object obj, StackTrace stack) async {
    DeviceInfoPlugin device = DeviceInfoPlugin();
    String str;
    _buildStr(id, system, version, model){
      return 'ID: $id \nSystem: $system \nVersion: $version \nmodel: $model \n';
    }
    if(Platform.isAndroid){
      AndroidDeviceInfo info = await device.androidInfo;
      str = _buildStr(info.androidId, 'android', 'V ${info.version.release} API ${info.version.sdkInt}', info.model);
    }else if(Platform.isIOS){
      IosDeviceInfo info = await device.iosInfo;
      str = _buildStr(info.identifierForVendor, info.systemName, info.systemVersion, info.utsname.machine);
    }
    print('=============== device ===============');
    print(str);
    print('=============== Error ===============');
    print(obj);
    print(stack);
  }

class App extends StatelessWidget{

  final ExtLocale locale;
  final AppInfo system;
  App({
    Key key,
    @required this.locale,
    @required this.system
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderSetup.getProviders(locale, system),
      child: Consumer<ExtLocale>(
        builder: (_, locale, __){
          return MaterialApp(
            title: 'Flemarket-app',
            color: Style.mainColor,
            theme: ThemeData(
              primarySwatch: Style.mainColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              dividerColor: Colors.transparent,
              scaffoldBackgroundColor: Style.backgroundColor,
              backgroundColor: Style.backgroundColor
            ),
            onGenerateRoute: Router.generatorRoute,
            initialRoute: ROUTE_HOME,
          );
        },
      )
    );
  }
}