import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: Text("login Page"),
          leading: IconButton(
            icon: Icon(Icons.menu,semanticLabel: 'menu',),
            onPressed: (){
              print('Menu');
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search,semanticLabel: 'search',),
              onPressed: (){
                print('search');
              },
            ),
            IconButton(
              icon: Icon(Icons.tune,semanticLabel: 'filter',),
              onPressed: (){
                print('filter');
              },
            )
          ],
      ),
      body: LoginUi(),
    );
  }


}

class LoginUi extends StatelessWidget {
  const LoginUi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Enter Email',
                border: OutlineInputBorder(),
                )
            ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
                labelText: 'Enter Passward',
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 300),
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 8.8,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
              ),
              child: Text('Sign In'),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}
