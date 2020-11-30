import 'package:flutter/material.dart';

class DefaultDefaultTabbar extends StatelessWidget {
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
        title: Text('Default Tab'),
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
                TabBar(
                  labelColor: Colors.deepPurple[700],
                  unselectedLabelColor: Colors.deepPurple[200],
                  tabs: myTabs,
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
