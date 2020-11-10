import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_example/colorstate.dart';
import 'package:layout_example/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Example One",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Example'),),
      body: HomeUi(),
    );
  }
}

class HomeUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 100,
            child: Card(
              shadowColor: Colors.green,
              color: Colors.green[50],
              child: Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/emoji.jpg",
                    fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,right: 10),
                      child: Text('Emotion',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    IconButton(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(left: 150),
                      icon: Icon(Icons.insert_emoticon),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            height: 100,
            child: Card(
              color: Colors.red[50],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset("assets/images/bicycle.jpg"),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: Text('Bicycle',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: Text('My Breakfast',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(left: 100),
                      icon: Icon(Icons.free_breakfast),
                      onPressed:(){
                        print('My Breakfask');
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            width: 300,
            padding: EdgeInsets.only(left: 5),
            child: Card(
              color: Colors.yellowAccent[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/cat.jpg"),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text("My Babies",style: TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.bold,
                        fontStyle: FontStyle.italic
                      ), textAlign: TextAlign.center,),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text("Wow !!, So Cute Babies",style: TextStyle(
                                fontSize: 15,
                                fontWeight:FontWeight.bold,
                                fontStyle: FontStyle.italic
                            ), textAlign: TextAlign.center,),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Text("z.w.z.w",style: TextStyle(
                          fontSize: 15,
                          fontWeight:FontWeight.bold,
                          fontStyle: FontStyle.italic
                      ), textAlign: TextAlign.right,),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




