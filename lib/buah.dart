import 'package:flutter/material.dart';
import 'Sayur.dart';
import 'Buah.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white, fontSize: 20),),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.white, size: 12.0,),
            onPressed: () {},
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
                          fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Image.asset(
                    'assets/Vector (2).png',
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
                    onPressed: () {
                      Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=> BuahPage()),
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
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Theme.of(context).errorColor,
                    onPressed: () {},
                  ),
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
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Theme.of(context).errorColor,
                    onPressed: () {},
                  ),
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
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Theme.of(context).errorColor,
                    onPressed: () {},
                  ),
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
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Theme.of(context).errorColor,
                    onPressed: () {},
                  ),
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
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Theme.of(context).errorColor,
                    onPressed: () {},
                  ),
                ),
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
                  subtitle: Text("Rp. 10.000"),
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Theme.of(context).errorColor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}