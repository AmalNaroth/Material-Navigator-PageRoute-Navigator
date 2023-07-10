import 'package:flutter/material.dart';
import 'package:materialdrawerapp/homepage.dart';
import 'package:materialdrawerapp/newpage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Material Navigation Drawer",
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: const HomePage(),
      routes: <String ,WidgetBuilder>{
        "a" : ((context) => NewPage(value: "New page",))
      }
    );
  }
}
