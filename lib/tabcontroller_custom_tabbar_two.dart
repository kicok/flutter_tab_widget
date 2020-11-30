import 'package:flutter/material.dart';

class TabcontrollerCustomTabbarTwo extends StatefulWidget {
  @override
  _TabcontrollerCustomTabbarTwoState createState() =>
      _TabcontrollerCustomTabbarTwoState();
}

class _TabcontrollerCustomTabbarTwoState
    extends State<TabcontrollerCustomTabbarTwo>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = [
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('지도에서 찾기'),
          SizedBox(width: 10.0),
          Icon(Icons.location_on),
        ],
      ),
    ),
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('주소 입력'),
          SizedBox(width: 10.0),
          Icon(Icons.location_searching),
        ],
      ),
    ),
  ];

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: myTabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Tab two'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow[200],
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Header',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10.0),
            child: TabBar(
              controller: _controller,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.deepPurple[700],
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.deepPurple[700], // 이것이 탭의 색상이 된다.
              ),
              tabs: myTabs,
            ),
          ),
          SizedBox(height: 2.0),
          Container(
            width: double.infinity,
            height: 300.0,
            child: TabBarView(
              controller: _controller,
              children: myTabs.map((Tab tab) {
                int index = myTabs.indexOf(tab);
                return Container(
                  width: double.infinity,
                  color: (index == 0) ? Colors.blue : Colors.indigo,
                );
              }).toList(),
            ),
          ),
          Container(
            color: Colors.teal[200],
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Bottom',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
