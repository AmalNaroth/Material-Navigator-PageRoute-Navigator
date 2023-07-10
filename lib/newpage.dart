import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  String value;
   NewPage({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Container(
      child: Center(child: Text(value),),
    ),);
  }
}