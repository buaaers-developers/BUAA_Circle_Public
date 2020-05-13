import 'package:buaacircle/tab.dart';
import 'package:flutter/material.dart';

class CircleRoute extends StatefulWidget {
  @override
  _CircleRouteState createState() => _CircleRouteState();
}

class _CircleRouteState extends State<CircleRoute>
    with SingleTickerProviderStateMixin {
  Map<String, MyTab> tabMap = {
    'course': MyTab(tabText: 'course', iconData: Icons.school),
    'contest': MyTab(tabText: 'contest', iconData: Icons.home),
    'meeting': MyTab(tabText: 'meeting', iconData: Icons.people),
    'collective': MyTab(tabText: 'collective', iconData: Icons.people),
    'studentWork': MyTab(tabText: 'studentWork', iconData: Icons.people),
    'dailylife': MyTab(tabText: 'dailylife', iconData: Icons.people),
    'levy': MyTab(tabText: 'levy', iconData: Icons.people),
  };

  TabController _tabController;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.blue.shade500,
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: tabMap.values.map((e) {
              return e.tab;
            }).toList(),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabMap.values.map(
          (e) {
            return ListView(
              children: <Widget>[
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("工科大学物理课程群"),
                  subtitle: new Text("请同学们明天上课前交一下作业"),
                  trailing: new Text("9:12"),
                ),
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("工科数学分析课程群"),
                  subtitle: new Text("请同学们下周一晚之前交一下作业"),
                  trailing: new Text("10:12"),
                ),
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("计算机组成原理课程群"),
                  subtitle: new Text("请同学们下次上课前交一下作业"),
                  trailing: new Text("9:12"),
                ),
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("操作系统课程群"),
                  subtitle: new Text("请同学们下次上课前交一下作业"),
                  trailing: new Text("9:12"),
                ),
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("面向对象设计课程群"),
                  subtitle: new Text("请同学们下次上课前交一下作业"),
                  trailing: new Text("9:12"),
                ),
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("经济学原理课程群"),
                  subtitle: new Text("请同学们下次上课前交一下作业"),
                  trailing: new Text("9:12"),
                ),
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("知识产权法课程群"),
                  subtitle: new Text("请同学们下次上课前交一下作业"),
                  trailing: new Text("9:12"),
                ),
                new ListTile(
                  leading: new Image.asset("assets/face2.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover,),
                  title: new Text("社会、法律、科技课程群"),
                  subtitle: new Text("请同学们下次上课前交一下作业"),
                  trailing: new Text("9:12"),
                ),
              ],
            );
          },
        ).toList(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabMap.length, vsync: this);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

