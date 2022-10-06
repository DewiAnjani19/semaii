import 'package:flutter/material.dart';
import 'package:semai/1main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonRounded(),
    );
  }
}

class ButtonRounded extends StatelessWidget {
  @override
  _ButtonRoundedState createState() => _ButtonRoundedState();
}

class _ButtonRoundedState extends State<ButtonRounded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Rounded", style: TextStyle(fontSize: 22))),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: Text("Add to chart".toUpperCase(), style: TextStyle(
                  fontSize: 14
                )),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<color>(Colors.cyan),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)
                    )
                  )
                ),
      ),
      SizedBox(width: 20),
      ElevatedButton(
          onPressed: () {},
          child: Text("Buy now".toUpperCase(), style: TextStyle(
            fontSize: 14
        )),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
      ),
    );
  }
}