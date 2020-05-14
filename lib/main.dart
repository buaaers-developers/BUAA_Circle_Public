import 'package:buaacircle/schedule_route.dart';
import 'package:buaacircle/timeline_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'circle_route.dart';
import 'drawer.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BUAA_CIRCLE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldRoute(),
    );
  }
}

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {

  int _selectedIndex = 0;

  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BUAA_CIRCLE",
          style: TextStyle(
            color: Colors.blue[200],
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.list), onPressed: () {}),
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.dashboard, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: new MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade100,
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.language), title: Text('Circle')),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule), title: Text('Schedule')),
          BottomNavigationBarItem(
              icon: Icon(Icons.timeline), title: Text('Timeline')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: PageView(
        children: <Widget>[
          CircleRoute(),
          ScheduleRoute(),
          TimelineRoute()
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this._selectedIndex);
  }

  void _onItemTapped(int index) {
    pageController.animateToPage(
        index, duration: const Duration(milliseconds: 300),
        curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._selectedIndex = page;
      print(_selectedIndex);
    });
  }
}
