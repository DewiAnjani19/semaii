import 'package:flutter/material.dart';

class NotaPage extends StatefulWidget {
  const NotaPage({Key? key}) : super(key: key);

  @override
  State<NotaPage> createState() => _NotaPageState();
}

class _NotaPageState extends State<NotaPage> {
  @override
<<<<<<< HEAD

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout", style: TextStyle(color: Colors.white, fontSize: 20),),
        actions: [
          IconButton(
              icon: Icon(Icons.share, color: Colors.white, size: 25.0,),
              onPressed: () { }
=======
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white, fontSize: 20),),
        actions: [
          IconButton(
              icon: Icon(Icons.share, color: Colors.white, size: 25.0,),
              onPressed: () {}
>>>>>>> 9463a064833d50d7ea163ad9e8654c86f002fb9b
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 50.0,
            color: Colors.lightGreen,
            child: Builder(
              builder: (context) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
<<<<<<< HEAD
                ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotaPage()),
                );
              },
=======
                ),onPressed: () {},
>>>>>>> 9463a064833d50d7ea163ad9e8654c86f002fb9b
                child: const Text(
                    "Print",
                    style: TextStyle(color: Colors.white, fontSize: 20,)
                ),
              ),
            )
        ),
      ),
    );
  }
}