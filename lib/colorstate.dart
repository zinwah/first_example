import 'package:flutter/material.dart';

class ColorState extends StatefulWidget {
  @override
  _ColorStateState createState() => _ColorStateState();
}

class _ColorStateState extends State<ColorState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Color State"),),
      body: Container(
        child: Column(
          children: [
            Container(
              height:200 ,
              child: Image.asset("assets/images/bicycle.jpg"),
            ),
            ChangeColor()
          ],
        ),
      ),
    );
  }
}

class ChangeColor extends StatefulWidget {
  const ChangeColor({
    Key key,
  }) : super(key: key);

  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {

  Color _color;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: [
            Container(
              height: 100,
              color: _color ?? Colors.red[100],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChangeButton("Change Blue",Colors.blue),
                ChangeButton("Change Yellow",Colors.yellow),
                ChangeButton("Change Green",Colors.green),
              ],
            )
          ],
        ),
    );
  }

  Widget ChangeButton(String _label,Color _changeColor) {
    return RaisedButton(
        child: Text("$_label"),
        onPressed: (){
                  setState(() {
                    _color = _changeColor;
                  });
              },
        color: _changeColor,
        textColor: Colors.white,
        elevation: 8.8,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
        ),
    );
  }
}
