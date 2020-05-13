import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timetable_view/flutter_timetable_view.dart';

class ScheduleRoute extends StatefulWidget {
  @override
  _ScheduleRouteState createState() => _ScheduleRouteState();
}

class _ScheduleRouteState extends State<ScheduleRoute> {
  TextStyle laneTextStyle = TextStyle(
    fontSize: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimetableView(
        timetableStyle: TimetableStyle(
          laneHeight: 40,
          laneColor: Colors.blue.shade100,
          timelineItemColor: Colors.blue.shade100,
          mainBackgroundColor: Colors.blue.shade50,
          startHour: 8,
          endHour: 22,
          timeItemWidth: 40,
          timeItemHeight: 50,
          laneWidth: 95,
        ),
        laneEventsList: [
          LaneEvents(
              lane: buildLane(name: 'Mon'),
              events: [
                TableEvent(
                  title: '物理作业',
                  start: TableEventTime(hour: 10, minute: 0),
                  end: TableEventTime(hour: 12, minute: 0),
                  textStyle: laneTextStyle
                ),
                TableEvent(
                  backgroundColor: Colors.orange,
                  title: '看电影',
                  start: TableEventTime(hour: 14, minute: 0),
                  end: TableEventTime(hour: 16, minute: 0),
                  textStyle: laneTextStyle
                ),
              ]),
          LaneEvents(
              lane: buildLane(name: 'Tue'),
              events: [
                TableEvent(
                    title: '团日感想',
                    start: TableEventTime(hour: 16, minute: 0),
                    end: TableEventTime(hour: 18, minute: 0),
                    textStyle: laneTextStyle,
                    backgroundColor: Colors.red
                ),
                TableEvent(
                  title: '学生会_交稿子',
                  start: TableEventTime(hour: 8, minute: 0),
                  end: TableEventTime(hour: 10, minute: 0),
                  textStyle: laneTextStyle,
                  backgroundColor: Colors.red
                ),
                TableEvent(
                    title: '大班会',
                    start: TableEventTime(hour: 10, minute: 0),
                    end: TableEventTime(hour: 12, minute: 0),
                    textStyle: laneTextStyle,
                    backgroundColor: Colors.yellow
                ),
                TableEvent(
                  title: '数学分析作业',
                  start: TableEventTime(hour: 12, minute: 0),
                  end: TableEventTime(hour: 14, minute: 0),
                  textStyle: laneTextStyle
                ),
              ]),
          LaneEvents(
              lane: buildLane(name: 'Wed'),
              events: [
                TableEvent(
                    title: '艺术团选拔',
                    start: TableEventTime(hour: 10, minute: 0),
                    end: TableEventTime(hour: 12, minute: 0),
                    textStyle: laneTextStyle,
                    backgroundColor: Colors.red
                ),
                TableEvent(
                    title: '物理竞赛',
                    start: TableEventTime(hour: 12, minute: 0),
                    end: TableEventTime(hour: 14, minute: 0),
                    textStyle: laneTextStyle,
                    backgroundColor: Colors.green
                ),
                TableEvent(
                  title: 'Lab4课下作业',
                  start: TableEventTime(hour: 14, minute: 0),
                  end: TableEventTime(hour: 16, minute: 0),
                  textStyle: laneTextStyle
                ),
              ]),
          LaneEvents(
              lane: buildLane(name: 'Thu'),
              events: [
                TableEvent(
                    title: '航概参观',
                    start: TableEventTime(hour: 10, minute: 0),
                    end: TableEventTime(hour: 12, minute: 0),
                    textStyle: laneTextStyle,
                    backgroundColor: Colors.blue
                ),
                TableEvent(
                    title: '社团活动',
                    start: TableEventTime(hour: 14, minute: 0),
                    end: TableEventTime(hour: 16, minute: 0),
                    textStyle: laneTextStyle,
                    backgroundColor: Colors.red
                ),
                TableEvent(
                  title: 'OO作业十',
                  start: TableEventTime(hour: 16, minute: 0),
                  end: TableEventTime(hour: 18, minute: 0),
                  textStyle: laneTextStyle
                ),
              ]),
          LaneEvents(
              lane: buildLane(name: 'Fri'),
              events: [
                TableEvent(
                  title: 'P5课下作业',
                  start: TableEventTime(hour: 18, minute: 0),
                  end: TableEventTime(hour: 20, minute: 0),
                  textStyle: laneTextStyle,
                ),
              ]),
          LaneEvents(
              lane: buildLane(name: 'Sat'),
              events: [
                TableEvent(
                  title: '经管Chp5作业',
                  start: TableEventTime(hour: 20, minute: 0),
                  end: TableEventTime(hour: 22, minute: 0),
                  textStyle: laneTextStyle,
                ),
              ]),
          LaneEvents(
              lane: buildLane(name: 'Sun'),
              events: [
                TableEvent(
                  title: '马原讨论',
                  start: TableEventTime(hour: 8, minute: 0),
                  end: TableEventTime(hour: 10, minute: 0),
                  textStyle: laneTextStyle,
                ),
              ]),
        ],
      ),
    );
  }

  Lane buildLane({String name}) {
    return Lane(
      height: 50,
      width: 95,
      name: name,
      backgroundColor: Colors.blue.shade100,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.blue[500],
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
