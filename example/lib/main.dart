import 'package:flutter/material.dart';
import 'package:swipe/swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SwipePage(),
    );
  }
}

class SwipePage extends StatefulWidget {
  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  String _message = 'Swipe your screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swipe(
        child: Container(
          color: Colors.teal,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Text(_message,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                )),
          ),
        ),
        onSwipeUp: () {
          setState(() {
            _message = 'Swiping up';
          });
        },
        onSwipeDown: () {
          setState(() {
            _message = 'Swiping down';
          });
        },
        onSwipeLeft: () {
          setState(() {
            _message = 'Swiping left';
          });
        },
        onSwipeRight: () {
          setState(() {
            _message = 'Swiping right';
          });
        },
      ),
    );
  }
}
