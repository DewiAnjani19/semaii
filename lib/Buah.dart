import 'package:flutter/material.dart';
import 'Sayur.dart';
import 'home.dart';
import 'login.dart';

class BuahPage extends StatefulWidget {
  const BuahPage({Key? key}) : super(key: key);

  @override
  State<BuahPage> createState() => _BuahPageState();
}

class _BuahPageState extends State<BuahPage> {
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
                      'Selamat Berbelanja',
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
    );
  }
}