import 'package:flutter/material.dart';

class backbtn extends StatelessWidget {
  const backbtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Phone();
  }

  Widget Phone() => const Padding(
    padding: EdgeInsets.all(32.0),
    child: SizedBox(
      height: 100,

      child: Text("retour",style: TextStyle(fontSize: 40,fontFamily: "Astrella", color: Colors.black26),),
    ),
  );
}
