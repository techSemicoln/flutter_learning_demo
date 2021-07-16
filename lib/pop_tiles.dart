import 'package:flutter/material.dart';
import 'package:flutter_learning_demo/genz_text.dart';
import 'package:flutter_learning_demo/item_desc.dart';

class PopTiles extends StatelessWidget {

 final String url;
 final int type;
 final String name;
  PopTiles({@required this.url,@required this.type,@required this.name});

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDesc(url: url, name: name)));
      },
      child: Container(
        height: type == 1? 100 : 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black,width: 1),
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover
          )
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 50,
            color: Colors.black.withOpacity(0.3),
            child: Center(child: GenZText(text: name,color: Colors.white,size: 18.0,)),
          ),
        ),
      ),
    );
  }
}
