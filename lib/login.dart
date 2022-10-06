import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen, fontFamily: 'Domine'),
      title: "My ITK Dude",
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    "assets/login.png",
                    width: 150,
                    height: 150,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  child: const Text(
                    "Login Akun Anda",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Masukkan Email Anda",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Masukkan Password Anda",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => password = value),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 28,
                  ),
                  child: Builder(
                    builder: (context) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                        FocusScope.of(context).unfocus();
                        if (email.isEmpty || password.isEmpty) {
                          const message = 'Input Data Please';
                          const snackBar = SnackBar(
                            content: Text(
                              message,
                              style: TextStyle(fontSize: 20),
                            ),
                            backgroundColor: Colors.red,
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBar);
                        } else {
                          final message =
                              'Email: $email\nPassword: $password';
                          final snackBar = SnackBar(
                            content: Text(
                              message,
                              style: const TextStyle(fontSize: 20),
                            ),
                            backgroundColor: Colors.lightGreen,
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBar);
                        }
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),

                    ),
                  ),
                )],
            ),
          ),
        ),
      ),
    );
  }
}