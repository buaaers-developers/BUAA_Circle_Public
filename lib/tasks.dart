import 'package:buaacircle/category.dart';
import 'package:flutter/material.dart';

class Task {
  final String name;
  final String time;
  final String content;
  final Category category;

  const Task({this.name, this.time, this.content, this.category});
}

List<Task> tasks = [
  Task(
    name: "物理作业",
    time: "May 18th, 10:00 - 12:00",
    content: '',
    category: cateMap['course'],
  ),
  Task(
    name: "看电影",
    time: "May 18th, 14:00 - 16:00",
    content: '',
    category: cateMap['dailylife'],
  ),
  Task(
    name: "OS实验报告",
    time: "May 18th, 18:00 - 20:00",
    content: '',
    category: cateMap['course'],
  ),
  Task(
    name: "学生会_交稿子",
    time: "May 19th, 8:00 - 10:00",
    content: '',
    category: cateMap['collective'],
  ),
  Task(
    name: "大班会",
    time: "May 19th, 10:00 - 12:00",
    content: '',
    category: cateMap['meeting'],
  ),
  Task(
    name: "数学分析作业",
    time: "May 19th, 12:00 - 14:00",
    content: '',
    category: cateMap['course'],
  ),
  Task(
    name: "团日感想",
    time: "May 19th, 16:00 - 18:00",
    content: '',
    category: cateMap['collective'],
  ),
  Task(
    name: "艺术团选拔",
    time: "May 19th, 10:00 - 12:00",
    content: '',
    category: cateMap['collective'],
  ),
  Task(
    name: "物理竞赛",
    time: "May 20th, 12:00 - 14:00",
    content: '',
    category: cateMap['contest'],
  ),
  Task(
    name: "Lab4课下作业",
    time: "May 20th, 14:00 - 16:00",
    content: '',
    category: cateMap['course'],
  ),
  Task(
    name: "看演唱会",
    time: "May 20th, 20:00 - 22:00",
    content: '',
    category: cateMap['dailylife'],
  ),
];
