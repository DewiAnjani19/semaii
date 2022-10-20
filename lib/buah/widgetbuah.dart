import 'package:flutter/material.dart';
import 'package:semai/buah/bibitbuah.dart';
// import 'Sayur.dart';
// import 'home.dart';
// import 'login.dart';
// import 'nota.dart';

class Widgetbuah extends StatelessWidget{
  const Widgetbuah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allBibit.bibit.length,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.lightGreen, boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5, spreadRadius: 1)], borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            children: [
              Image.asset(allBibit.bibit[i].path),
              Text(allBibit.bibit[i].nama),
              Text((allBibit.bibit[i].harga).toString()),
            ],
          ),
        ),
      ),
    );
  }
}
