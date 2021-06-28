import 'package:flutter/material.dart';
import 'package:rive_changing_colors/theming.dart';
import 'package:rive/rive.dart';

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
          width: 200,
          child: RiveAnimation.asset(
            "rive/message-icon.riv",
            animations: ["Hover_loop"],
            onInit: (artboard) {
              artboard.originX = -1.52;
              artboard.originY = -1.58;
              artboard.width = 120;
              artboard.height = 120;

              artboard.artboard.removeFill(artboard.artboard.fills.first);
              artboard.artboard.children.clear();

              artboard.drawables.removeAt(8);

              artboard.drawables.forEach((shape) {
                if (shape is Shape && shape.fills.isNotEmpty) {
                  if (shape.fills.first.paint.color == Color(0xff0099f7)) {
                    shape.fills.first.paint.color = Colors.teal;
                  } else if (shape.fills.first.paint.color ==
                      Color(0xffe30158)) {
                    shape.fills.first.paint.color = Colors.amber;
                  }
                }
              });
            },
          ),
        )));
  }
}
