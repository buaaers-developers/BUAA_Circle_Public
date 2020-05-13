import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelineRoute extends StatefulWidget {
  @override
  _TimelineRouteState createState() => _TimelineRouteState();
}

class _TimelineRouteState extends State<TimelineRoute> {
  List<TimelineModel> items = [
    TimelineModel(
      Placeholder(),
      position: TimelineItemPosition.random,
      iconBackground: Colors.redAccent,
      icon: Icon(Icons.blur_circular),
    ),
    TimelineModel(
      Placeholder(),
      position: TimelineItemPosition.random,
      iconBackground: Colors.redAccent,
      icon: Icon(Icons.blur_circular),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Timeline(
        children: items,
        position: TimelinePosition.Left,
      ),
    );
  }
}
