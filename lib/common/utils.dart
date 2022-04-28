import 'dart:convert';
import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';

class Utils {
  static Future<dynamic> getJson(String path) async {
    String res = await rootBundle.loadString(path);
    return json.decode(res);
  }

  static reports(Object obj, StackTrace stack) async {
    DeviceInfoPlugin device = DeviceInfoPlugin();
    String str;
    _buildStr(id, system, version, model) {
      return 'ID: $id \nSystem: $system \nVersion: $version \nmodel: $model \n';
    }

    if (Platform.isAndroid) {
      AndroidDeviceInfo info = await device.androidInfo;
      str = _buildStr(info.androidId, 'android', 'V ${info.version.release} API ${info.version.sdkInt}', info.model);
    } else if (Platform.isIOS) {
      IosDeviceInfo info = await device.iosInfo;
      str = _buildStr(info.identifierForVendor, info.systemName, info.systemVersion, info.utsname.machine);
    }
    print('=============== device ===============');
    print(str);
    print('=============== Error ===============');
    print(obj);
    print(stack);
  }
}
