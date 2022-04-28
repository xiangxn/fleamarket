import 'app_info.dart';

import 'data_api.dart';
import '../services/account_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'ext_locale.dart';

class ProviderSetup {
  /// 不依赖任何其他服务来执行其逻辑的服务
  static List<SingleChildWidget> independentServices = [
    ProxyProvider<ExtLocale, DataApi>(
      update: (context, locale, api) => DataApi(),
    )
  ];

  /// 对应各个模块功能的服务，依赖于先前注册的服务
  static List<SingleChildWidget> dependentServices = [ProxyProvider<DataApi, AccountService>(update: (context, api, accountService) => AccountService(api))];

  ///在ui中使用的对象，如当前登陆的用户
  static List<SingleChildWidget> uiConsumableProviders = [
    // ChangeNotifierProvider<ExtSystem>(
    //   create: (_) => ExtSystem(),
    // )
    // ValueListenableProvider<ExtLocal>(
    //   create: (_) => ValueNotifier<ExtLocal>(ExtLocal()),
    // )
    // ValueListenableProvider<TestUser>(
    //   create: (context) => Provider.of<AccountService>(context, listen: false).user,
    // )
    // StreamProvider<TestUser>(
    //   create: (context) => Provider.of<AccountService>(context, listen: false).user,
    // )
  ];

  /// 整个应用所有的Provider
  static getProviders(ExtLocale locale, AppInfo system) {
    List<SingleChildWidget> providers = [];
    providers.add(ChangeNotifierProvider<ExtLocale>.value(value: locale));
    providers.add(ChangeNotifierProvider<AppInfo>.value(value: system));
    providers.addAll([...independentServices, ...dependentServices, ...uiConsumableProviders]);
    return providers;
  }
}
