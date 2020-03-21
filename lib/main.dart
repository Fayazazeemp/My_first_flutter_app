import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home(),
));


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num1=500;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title:Text(
          'My First App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle:true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.indigo[900],
            margin: EdgeInsets.fromLTRB(150, 130, 130, 0),
            child: Text(
              '$num1',
              style: TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
              ),
            )

          ),

          Container(
            color: Colors.redAccent,
            padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(50, 70, 13, 0),
            child: FlatButton(
              onPressed: ()
              {setState(() {
                num1-=1;
              });
              },
              child: Text(
                  'Click Me',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),


              ),



            )
          ),


        ],
      ),
      backgroundColor: Colors.indigo[900],

      floatingActionButton: FloatingActionButton(

        child: Text('ADD'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

