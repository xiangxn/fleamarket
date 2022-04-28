import 'package:flutter/material.dart';

import '../common/constant.dart';
import 'base_model.dart';

class HomeModel extends BaseModel {
  int _pageInx = 0;

  get pageInx => _pageInx;

  HomeModel(BuildContext context) : super(context) {}

  setPage(int inx) async {
    if (_pageInx != inx) {
      if (inx == 1 && super.user == null) {
        var res = await super.pushNamed(ROUTE_LOGIN);
        if (res == 0) {
          _pageInx = inx;
          notifyListeners();
        }
      } else {
        _pageInx = inx;
        notifyListeners();
      }
    }
  }

  toPublish() async {
    if (super.user != null) {
      await super.pushNamed(ROUTE_PUBLISH);
    } else {
      await super.pushNamed(ROUTE_LOGIN);
    }
  }
}
