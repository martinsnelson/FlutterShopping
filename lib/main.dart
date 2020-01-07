import 'package:flutter/material.dart';
import 'package:shopping/pages/tabs.page.dart';
import 'package:shopping/themes/light.theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
