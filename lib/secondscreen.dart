import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class secondScreen extends StatefulWidget {

  @override
  _secondScreenState createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {
  List<ListItem> items= [
    ListItem("assets/cena.jpg"),
    ListItem("assets/cena.jpg"),
    ListItem("assets/img.jpg"),
    ListItem("assets/img.jpg")
  ];


  @override
  Widget build(BuildContext context) {
    for(int i=0;i<10;i++){
      items.add(ListItem("assets/cena.jpg"));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
      ),
      body:ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: items[index].buildList(context),
                    title: items[index].buildtext(context),
                );
            }
          )
      );
  }
}
//assets/cena.jpg
class ListItem{
  String image;
  ListItem(this.image);
  Widget buildList(BuildContext context){
    return CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 20.0,
        );
  }
  Widget buildtext(BuildContext context){
    return Text(
      'John Cena'
    );
  }
}
