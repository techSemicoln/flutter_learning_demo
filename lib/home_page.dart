import 'package:flutter/material.dart';
import 'package:flutter_learning_demo/genz_text.dart';
import 'package:flutter_learning_demo/pop_tiles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<String> popImgUrls = [
    "https://post.healthline.com/wp-content/uploads/2020/09/health-benefits-of-eggs-1200x628-facebook-1200x628.jpg",
    "https://5.imimg.com/data5/PV/TX/MY-35471420/boneless-chicken-meat-500x500.jpg",
    "https://fil-idf.org/wp-content/uploads/2021/01/Standards.png",
    "https://www.joyofbaking.com/images/facebook/whitesandwichbread.jpg"
  ];

  List<String> names = ["Eggs", "Chicken", "Milk", "Bread"];

  List<String> specials = [
    "https://post.healthline.com/wp-content/uploads/2020/09/health-benefits-of-eggs-1200x628-facebook-1200x628.jpg",
    "https://5.imimg.com/data5/PV/TX/MY-35471420/boneless-chicken-meat-500x500.jpg",
    "https://fil-idf.org/wp-content/uploads/2021/01/Standards.png",
    "https://www.joyofbaking.com/images/facebook/whitesandwichbread.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.teal,
        title: Text("GenZ Mart")
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            GenZText(
              color: Colors.black,
              size: 22.0,
              text: 'Popular',
            ),
            SizedBox(height: 20,),
            Container(
              height: 120,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                return PopTiles(url: popImgUrls[index],type:1,name: names[index],);
              },
                  separatorBuilder: (context,index){
                return SizedBox(width: 20,);
                  },
                  itemCount: popImgUrls.length),
            ),
            SizedBox(height: 20,),
            GenZText(text: "GenZ Specials",size: 22,color: Colors.blueGrey,),
            SizedBox(height: 20,),
            ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return PopTiles(url: popImgUrls[index],type: 2,name: names[index],);
                },
                separatorBuilder: (context,index){
                  return SizedBox(height: 20,);
                },
                itemCount: popImgUrls.length),
          ],
        ),
      ),
    );
  }
}
