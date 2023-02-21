import 'package:flutter/material.dart';

class cvtitle extends StatelessWidget {
  const cvtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Phone();
  }

  Widget Phone() => Padding(
    padding: const EdgeInsets.all(32.0),
    child: SizedBox(
      height: 100,

      child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Text("UN CV", style: TextStyle(fontSize: 40,fontFamily: "Astrella", color: Colors.black),),
            Text("QUI CHANGE",style: TextStyle(fontSize: 40,fontFamily: "Astrella", color: Colors.black26),),
          ]
      ),
    ),
  );
}
