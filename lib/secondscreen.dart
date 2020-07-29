import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class secondScreen extends StatefulWidget {
  @override
  _secondScreenState createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
      ),
    );
  }
}
