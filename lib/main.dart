import 'package:flutter/material.dart';
import 'package:flutter_tab_widget/default_custom_tabbar.dart';
import 'package:flutter_tab_widget/default_default_tabbar.dart';
import 'package:flutter_tab_widget/tabcontroller_custom_bottom_tabbar.dart';
import 'package:flutter_tab_widget/tabcontroller_custom_tabbar_one.dart';
import 'package:flutter_tab_widget/tabcontroller_custom_tabbar_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              minWidth: 300,
              height: 45,
              color: Colors.grey[300],
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return DefaultDefaultTabbar();
                    },
                  ),
                );
              },
              child: Text('DefaultTabController - Default TabBar'),
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              minWidth: 300,
              height: 45,
              color: Colors.grey[300],
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return DefaultCustomTabbar();
                    },
                  ),
                );
              },
              child: Text('DefaultTabController - Custom TabBar'),
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              minWidth: 300,
              height: 45,
              color: Colors.grey[300],
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TabcontrollerCustomTabbarOne();
                    },
                  ),
                );
              },
              child: Text('TabController - Custom TabBar 1'),
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              minWidth: 300,
              height: 45,
              color: Colors.grey[300],
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TabcontrollerCustomTabbarTwo();
                    },
                  ),
                );
              },
              child: Text('TabController - Custom TabBar 2'),
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              minWidth: 300,
              height: 45,
              color: Colors.grey[300],
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TabcontrollerCustomTabbar();
                    },
                  ),
                );
              },
              child: Text('TabController - Custom TabBar 3'),
            ),
          ],
        ),
      ),
    );
  }
}
