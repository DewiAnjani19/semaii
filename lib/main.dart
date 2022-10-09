import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';
//splashscreen & onboarding

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onboarding()),);
    });
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(98, 174, 53, 1.0),
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/splashscreen.png"), fit: BoxFit.cover,
                    )
                )
            )
          //color: Colors.lightGreen,2
        ),
      ),
    );
  }
}

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _Onboarding();
}
class _Onboarding extends State<Onboarding> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen, fontFamily: 'Domine'),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    'assets/onboarding.png',
                    width: 300,
                    height: 300,
                  ),
                ),
                Container(
                    height: 55,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 21,
                      vertical: 42,
                    ),
                    child: Builder(
                      builder: (context) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: const Text(
                            "Mulai",
                            style: TextStyle(color: Colors.white, fontSize: 20,)
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// RGB (98, 174, 53, 1.0) HIJAU TUA
// RGB (150, 213, 113, 1.0) HIJAU MUDA
// RGB (78, 100, 65, 1.0) ARMY
// RGB (180, 166, 48, 1.0) EMAS
// RGB (233, 90, 45, 1.0) MERAH ERROR
// RGB (178, 198, 166, 1.0) HIJAU PUCAT
