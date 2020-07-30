import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/secondscreen.dart';

void main() {
  runApp(MaterialApp(
        home: Basics(),
  ));
}

class Basics extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Basics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Flutter Basics App'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              'hello world',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20.0,
              ),
            ),
            FlatButton.icon(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => secondScreen()));
                 },
                icon:Icon(Icons.email),
                label: Text('Click Me')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/cena.jpg'),
                  radius: 80.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0,0.0,0.0,0.0),
                  child: Text('Vedant'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
