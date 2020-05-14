import 'package:flutter/material.dart';

class Category {
  final String name;
  final Icon icon;
  final Color iconBackgroundColor;
  final Color cardColor;
  const Category(this.name, this.icon, this.iconBackgroundColor, this.cardColor);
}

Map<String, Category> cateMap = {
  'course' : Category(
    'course',
    Icon(
      Icons.school,
    ),
    Colors.blue,
    Colors.blue[100],
  ),
  'contest' : Category(
    'contest',
    Icon(
      Icons.directions_run,
    ),
    Colors.green,
    Colors.green[100],
  ),
  'meeting' : Category(
    'meeting',
    Icon(
      Icons.message,
    ),
    Colors.yellow,
    Colors.yellow[100],
  ),
  'collective' : Category(
    'collective',
    Icon(
      Icons.people_outline,
    ),
    Colors.red,
    Colors.red[100],
  ),
  'studentWork' : Category(
    'studentWork',
    Icon(
      Icons.work,
    ),
    Colors.red,
    Colors.red[100],
  ),
  'dailylife' : Category(
    'dailylife',
    Icon(
      Icons.fastfood,
    ),
    Colors.orange,
    Colors.orange[100],
  ),
  'levy' : Category(
    'levy',
    Icon(
      Icons.accessibility_new,
    ),
    Colors.teal,
    Colors.teal[100],
  ),
};
