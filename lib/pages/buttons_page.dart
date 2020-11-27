import 'dart:math';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _createBackground(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _putTitles(),
                  _createButtons(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _createBackground() {
    final gradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child: pinkBox,
          top: -100.0,
          left: -50,
        ),
      ],
    );
  }

  Widget _putTitles() {
    final textStyle = TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold);
    final subtextStyle = TextStyle(color: Colors.white, fontSize: 18.0);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify Transaction',
              style: textStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular category',
              style: subtextStyle,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Color.fromRGBO(116, 117, 160, 1.0),
      backgroundColor: Color.fromRGBO(60, 57, 90, 1.0),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: 30),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart, size: 30),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 30),
          label: '',
        ),
      ],
    );
  }

  Widget _createButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _createRoundButton(Colors.blue, Icons.all_out, 'General'),
            _createRoundButton(Colors.purple, Icons.file_copy, 'File'),
          ],
        ),
        TableRow(
          children: [
            _createRoundButton(Colors.cyanAccent, Icons.shop, 'Buy'),
            _createRoundButton(Colors.blueGrey, Icons.filter, 'Filter'),
          ],
        ),
        TableRow(
          children: [
            _createRoundButton(Colors.teal, Icons.video_call, 'Video'),
            _createRoundButton(Colors.red,
                Icons.signal_cellular_connected_no_internet_4_bar, 'Internet'),
          ],
        ),
        TableRow(
          children: [
            _createRoundButton(Colors.green, Icons.list, 'Lists'),
            _createRoundButton(Colors.blue, Icons.cloud, 'Cloud'),
          ],
        ),
      ],
    );
  }

  Widget _createRoundButton(Color color, IconData icon, String iconText) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.8),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text(iconText, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
