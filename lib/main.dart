import 'package:flutter/material.dart';
import 'package:rive_changing_colors/theming.dart';
import 'package:rive/rive.dart';

import 'chat_icon_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rive Colors Changing Example"),
      ),
      body: Center(
        child: Container(
          height: 200,
          child: RiveAnimation.asset(
            "rive/message-icon.riv",
            animations: ["Hover_loop"],
            controllers: [ChatIconController("Hover_loop")],
          ),
        )
      )
    );
  }
}
