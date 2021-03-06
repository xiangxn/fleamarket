import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/account_service.dart';
import '../views/ext_dialog.dart';
import '../common/ext_locale.dart';

/// 任何有状态的view都将对应一个viewModel
/// 替代statefulWidget
class BaseModel extends ChangeNotifier implements WidgetsBindingObserver {
  final BuildContext context;
  bool _isShow = false;
  bool _busy = false;
  bool _disposed = false;

  bool get busy => _busy;
  User get user => Provider.of<AccountService>(context, listen: false).user;
  ExtLocale get locale => Provider.of<ExtLocale>(context, listen: false);
  // 禁止使用这种方式获取参数，这会导致view回退时重新build一次再dispose
  // 在路由上传参，并在view上接收参数的方式不会导致这样的问题
  // dynamic get arguments => ModalRoute.of(context).settings.arguments;

  BaseModel(this.context) {
    WidgetsBinding.instance.addObserver(this);
  }

  setBusy() {
    _busy = !_busy;
  }

  Future<dynamic> processing(Future<dynamic> process,
      {bool showLoading = true, bool showToast = true, String msg}) async {
    loading(showLoading, msg);
    var res = await process;
    loading(showLoading, msg);
    // await Future.delayed(Duration(milliseconds: 10));
    if (res.code == 0) {
    } else {
      toast(res.msg, showToast: showToast);
    }
    return res;
  }

  loading([bool showLoading = true, String msg]) {
    if (showLoading) {
      if (!_isShow) {
        ExtDialog.loading(context, msg);
      } else {
        ExtDialog.close(context);
      }
      _isShow = !_isShow;
    }
  }

  toast(String msg, {bool showToast = true}) {
    if (showToast) {
      Timer(Duration(milliseconds: 0), () => ExtDialog.toast(context, msg));
    }
  }

  Future<dynamic> alert(String msg, [String title]) {
    return ExtDialog.alert(context, msg, title);
  }

  Future<dynamic> confirm(String msg, [String title]) {
    return ExtDialog.confirm(context, msg, title);
  }

  Future<T> pushNamed<T>(String routeName, {Object arguments}) {
    return Navigator.of(context).pushNamed<T>(routeName, arguments: arguments);
  }

  pop<T>([T result]) {
    Navigator.of(context).pop(result);
    // Timer(Duration(milliseconds: 0), () => Navigator.of(context).pop(result));
  }

  Future<T> pushAndRepalceUntil<T>(String pushRoute, String untilRoute,
      {dynamic result, dynamic arguments}) {
    NavigatorState nav = Navigator.of(context);
    nav.popUntil(ModalRoute.withName(untilRoute));
    return nav.pushReplacementNamed(pushRoute,
        result: result, arguments: arguments);
  }

  Future dialog(Widget screen) {
    return Navigator.of(context).push(
        CupertinoPageRoute(builder: (_) => screen, fullscreenDialog: true));
  }

  @override
  void didChangeAccessibilityFeatures() {}

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        onInactive();
        break;
      case AppLifecycleState.paused:
        onPaused();
        break;
      case AppLifecycleState.resumed:
        onResumed();
        break;
      case AppLifecycleState.detached:
        onDetached();
        break;
      default:
    }
  }

  @override
  void didChangeLocales(List<Locale> locale) {}

  @override
  void didChangeMetrics() {}

  @override
  void didChangePlatformBrightness() {}

  @override
  void didChangeTextScaleFactor() {}

  @override
  void didHaveMemoryPressure() {}

  @override
  Future<bool> didPopRoute() {
    return null;
  }

  @override
  Future<bool> didPushRoute(String route) {
    return null;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  void onInactive() {}

  void onPaused() {}

  void onResumed() {}

  void onDetached() {}
}
