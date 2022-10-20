import 'package:flutter/material.dart';
import 'package:semai/nota.dart';
import 'Sayur.dart';
<<<<<<< HEAD
import 'buah.dart';
=======
import 'Buah.dart';
>>>>>>> e332a54d642668ddd496641ff881bd249acde1d1
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    onPressed: () {},
                    child: Text('Semua', style: TextStyle(color: Colors.white),),
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
                Container(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
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
                    onPressed: () {
                      Navigator.pushReplacement(context,
<<<<<<< HEAD
                        MaterialPageRoute(builder: (context)=> BibitOverview()),
=======
                        MaterialPageRoute(builder: (context)=> BuahPage()),
>>>>>>> e332a54d642668ddd496641ff881bd249acde1d1
                      );
                    },
                    child: Text('Buah'),
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
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
<<<<<<< HEAD
            height: 50.0,
            color: Colors.white,
=======
          height: 50.0,
          color: Colors.white,
>>>>>>> e332a54d642668ddd496641ff881bd249acde1d1
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
        ),
<<<<<<< HEAD
      ),
=======
        ),
>>>>>>> e332a54d642668ddd496641ff881bd249acde1d1
    );

  }
}