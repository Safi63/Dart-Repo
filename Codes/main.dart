import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("Safi Ullah Muhammad"),
          backgroundColor: Colors.lime,
        ),
        body: Text(
          "Name: Safi Ullah Muhammad",
          style: TextStyle(fontSize: 30, color: Colors.lime[400], letterSpacing: 5.0),
          textAlign: TextAlign.center,
        )),
  ));
}
