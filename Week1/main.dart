import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        color: Colors.grey[400],
        child: Text('hello'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('click me'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
