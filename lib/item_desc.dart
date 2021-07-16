import 'package:flutter/material.dart';
import 'package:flutter_learning_demo/genz_text.dart';

class ItemDesc extends StatefulWidget {
  final String url;
  final String name;
  ItemDesc({@required this.url,@required this.name});
  @override
  _ItemDescState createState() => _ItemDescState();
}

class _ItemDescState extends State<ItemDesc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: GenZText(text:"Description",color: Colors.white,),
      ),
      body: Column(
        children: [
          Image.network(widget.url),
          SizedBox(height: 20,),
          GenZText(text: widget.name),
          GenZText(text: "Desc")
        ],
      ),
    );
  }
}
