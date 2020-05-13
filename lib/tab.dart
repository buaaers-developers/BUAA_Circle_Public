import 'package:flutter/material.dart';


class MyTab {
  Tab _tab;

  MyTab({String tabText, IconData iconData}) {
    _tab = buildTab(tabText, iconData);
  }


  static Widget buildTab(String text, IconData icon) {
    return Tab(
      text: text,
    );
  }

  Tab get tab => _tab;
}