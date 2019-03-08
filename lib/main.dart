import 'package:demo/HomeView.dart';
import 'package:flutter/material.dart';

void main()=> runApp( new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "Demo facebook",
      home: new HomeView(),
    );
  }
}
