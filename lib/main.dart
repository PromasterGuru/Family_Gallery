import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Gallery"),
        centerTitle: true,
        backgroundColor: Colors.teal[800],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Text("                  "),
          ),
          Container(
            color: Colors.orange,
            child: Text("                  "),
          ),
          Container(
            color: Colors.yellow,
            child: Text("                  "),
          ),
          Container(
            color: Colors.green,
            child: Text("                  "),
          ),
          Container(
            color: Colors.blue,
            child: Text("                  "),
          ),
          Container(
            color: Colors.indigo,
            child: Text("                  "),
          ),
          Container(
            color: Colors.purple[800],
            child: Text("                  "),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("+"),
        backgroundColor: Colors.teal[800],
      ),
    );
  }
}
