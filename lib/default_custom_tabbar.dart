import 'package:flutter/material.dart';

class DefaultCustomTabbar extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Tab'),
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
          DefaultTabController(
            length: myTabs.length,
            child: Column(
              children: [
                Container(
                  color: Colors.deepPurple[700],
                  child: TabBar(
                    labelColor: Colors.deepPurple[700],
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      color: Colors.white, // 이것이 탭의 색상이 된다.
                    ),
                    tabs: myTabs,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300.0,
                  child: TabBarView(
                    children: myTabs.map((Tab tab) {
                      int index = myTabs.indexOf(tab);
                      return Container(
                        width: double.infinity,
                        color: index == 0 ? Colors.blue : Colors.indigo,
                      );
                    }).toList(),
                  ),
                ),
              ],
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
