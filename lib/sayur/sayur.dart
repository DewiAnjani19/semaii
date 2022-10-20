import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/buah.dart
import 'Sayur.dart';
import 'home.dart';
import 'login.dart';
import 'nota.dart';

class BuahPage extends StatefulWidget {
  const BuahPage({Key? key}) : super(key: key);

  @override
  State<BuahPage> createState() => _BuahPageState();
}

class _BuahPageState extends State<BuahPage> {
=======
import 'package:semai/buah/buah.dart';
import '../home.dart';
import '../login.dart';
import '../nota.dart';

class SayurPage extends StatefulWidget {
  const SayurPage({Key? key}) : super(key: key);

  @override
  State<SayurPage> createState() => _SayurPageState();
}

class _SayurPageState extends State<SayurPage> {
>>>>>>> dewi:lib/sayur/sayur.dart
  @override
  int _quantity = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white, fontSize: 20),),
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app, color: Colors.white, size: 25.0,),
              onPressed: () {
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=> Login()),
                );
              }
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: 342,
              height: 119,
              decoration: BoxDecoration(
                  color: Color(0xffD2EAC2),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 93,
                    height: 60,
                    child: Text(
                      'Temukan! bibit yang anda cari',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Image.asset(
                    'assets/apel.png',
                    fit: BoxFit.cover,
                    alignment: new Alignment(-4.0, -1.0),
                  )
                ],
              ),
            ),
            SizedBox(height: 44),
            Row(
              children: [
                Container(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=> HomePage()),
                      );
                    },

                    child: Text('Semua'),

<<<<<<< HEAD:lib/buah.dart
=======
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          Size(102, 42),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.black.withOpacity(0.25)))),
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Sayur', style: TextStyle(color: Colors.white),),
>>>>>>> dewi:lib/sayur/sayur.dart
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          Size(102, 42),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.lightGreen.withOpacity(0.25)))),
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
<<<<<<< HEAD:lib/buah.dart
                        MaterialPageRoute(builder: (context)=> SayurPage()),
                      );
                    },
                    child: Text('Sayur'),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          Size(102, 42),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.black.withOpacity(0.25)))),
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Buah',  style: TextStyle(color: Colors.white),),
=======
                        MaterialPageRoute(builder: (context)=> BibitOverview()),
                      );
                    },
                    child: Text('Buah'),
>>>>>>> dewi:lib/sayur/sayur.dart
                    style: ButtonStyle(
                        backgroundColor : MaterialStatePropertyAll<Color>(Colors.lightGreen
                        ),
                        fixedSize: MaterialStateProperty.all(
                          Size(102, 42),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.lightGreen.withOpacity(0.25)))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text("Produk"),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
<<<<<<< HEAD:lib/buah.dart
                      'assets/mangga.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                  title: Text("Mangga"),
                  subtitle: Text("Rp. 10.000"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _quantity += 1;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ),
=======
                      'assets/selada.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                  title: Text("Selada"),
                  subtitle: Text("Rp. 30.000"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _quantity += 1;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ),
                    Container(
                      margin:
                      EdgeInsets.only(left: 20, right: 20),
                      child: Text(_quantity.toString(), style: TextStyle(fontSize: 14)
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if(_quantity == 1) return;
                            _quantity -= 1;
                          });
                        },
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/tomat.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                  title: Text("Tomat"),
                  subtitle: Text("Rp. 10.000"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _quantity += 1;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ),
>>>>>>> dewi:lib/sayur/sayur.dart
                    Container(
                      margin:
                      EdgeInsets.only(left: 20, right: 20),
                      child: Text(_quantity.toString(), style: TextStyle(fontSize: 14)
                      ),
<<<<<<< HEAD:lib/buah.dart
                    ),
                    Container(
                      width: 55,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if(_quantity == 1) return;
                            _quantity -= 1;
                          });
                        },
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/semangka.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                  title: Text("Semangka"),
                  subtitle: Text("Rp. 10.000"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
=======
                    ),
>>>>>>> dewi:lib/sayur/sayur.dart
                    Container(
                      width: 55,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
<<<<<<< HEAD:lib/buah.dart
                            _quantity += 1;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ),
                    Container(
                      margin:
                      EdgeInsets.only(left: 20, right: 20),
                      child: Text(_quantity.toString(), style: TextStyle(fontSize: 14)
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if(_quantity == 1) return;
                            _quantity -= 1;
                          });
                        },
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],

=======
                            if(_quantity == 1) return;
                            _quantity -= 1;
                          });
                        },
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
>>>>>>> dewi:lib/sayur/sayur.dart
                ),
              ],
            ),
          ],
        ),
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
                ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotaPage()),
                );
              },
                child: const Text(
                    "Checkout",
                    style: TextStyle(color: Colors.white, fontSize: 20,)
                ),
              ),
            )
<<<<<<< HEAD:lib/buah.dart
          ),
=======
        ),
>>>>>>> dewi:lib/sayur/sayur.dart
      ),
    );
  }
}
