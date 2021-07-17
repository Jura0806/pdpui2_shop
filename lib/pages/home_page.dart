import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _itemList =[
    "assets/images/img_1.jpg",
    "assets/images/img_2.png",
    "assets/images/img_3.jpg",
    "assets/images/img_4.jpeg",
    "assets/images/img_5.jpg",
    "assets/images/img_6.jpg",
    "assets/images/img_7.jpg",
    "assets/images/img_8.jpg",
    "assets/images/img_9.jpg",
    "assets/images/img_10.jpg"
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu) ,
        title: Text('Apple products'),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 36,
             decoration: BoxDecoration(
               color: Colors.grey[600],
               borderRadius: BorderRadius.circular(10.0),
             ),
              child: Center(
                child: Text('9'),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img_5.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Lifestyle sale', style: TextStyle(color: Colors.white, fontSize: 35),),
                    SizedBox(height: 30,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(child: Text('Shop Now', style: TextStyle(color: Colors.grey[900]),)),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            //#body
            Expanded(child: GridView.count(
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              children: _itemList.map((item) => cellOfList(item)).toList(),
            ),
            )
          ],
        ),
      )
    );
  }

  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(20) ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
             image: DecorationImage(
               image: AssetImage(item),
               fit: BoxFit.cover
             )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.star_border,color: Colors.yellow,size: 35,),
          ],
        ),
      ),
    );
  }
}
