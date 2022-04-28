import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'base_view.dart';
import '../common/style.dart';
import '../view_models/home_model.dart';

class Home extends StatelessWidget {
  final buttonIcons = [FontAwesomeIcons.search, FontAwesomeIcons.userAlt];

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        model: HomeModel(context),
        builder: (context2, model, __) {
          return Selector<HomeModel, int>(
            selector: (_, provider) => provider.pageInx,
            builder: (_, pageInx, __) {
              return Scaffold(
                appBar: PreferredSize(
                    child: AppBar(
                      brightness: Brightness.light,
                      backgroundColor: Style.backgroundColor,
                      elevation: 0,
                    ),
                    preferredSize: Size.fromHeight(0)),
                body: IndexedStack(
                  index: pageInx,
                  children: <Widget>[
                    //Shop(model: model.shopViewModel),
                    //Personal(model: model.personalViewModel)
                  ],
                ),
                bottomNavigationBar: BottomAppBar(
                  color: Colors.white,
                  shape: CircularNotchedRectangle(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: buttonIcons.map((icon) {
                      int inx = buttonIcons.indexOf(icon);
                      return Padding(
                        padding: inx == 0 ? EdgeInsets.only(right: 30) : EdgeInsets.only(left: 30),
                        child: IconButton(
                          icon: Icon(icon, size: 24, color: pageInx == inx ? Style.mainColor : Colors.grey),
                          onPressed: () => model.setPage(inx),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add, size: 32),
                  //backgroundColor: Style.mainColor,
                  onPressed: model.toPublish,
                ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              );
            },
          );
        });
  }
}
