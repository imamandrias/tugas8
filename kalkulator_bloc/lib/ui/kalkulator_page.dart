import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class KalkulatorPage extends StatefulWidget {
  @override
  _KalkulatorPageState createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  String output="0";

  Widget createButton(String buttonText){
    return Expanded(
      child: OutlineButton(
          child: Text(buttonText,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          padding: EdgeInsets.all(24.0),
          //onPressed: ()=>
              //buttonPressed(buttonText)
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                AutoSizeText(
                  output,
                  style: Theme.of(context).textTheme.display2,
                  maxLines: 1,
                ),
                SizedBox(height: 265.0,),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        createButton("7"),
                        createButton("8"),
                        createButton("9"),
                        createButton("/"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        createButton("4"),
                        createButton("5"),
                        createButton("6"),
                        createButton("x"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        createButton("1"),
                        createButton("2"),
                        createButton("3"),
                        createButton("-"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        createButton("Clear"),
                        createButton("0"),
                        createButton("="),
                        createButton("+"),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
