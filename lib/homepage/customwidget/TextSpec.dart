import 'package:flutter/material.dart';


class TextSpec extends StatelessWidget {
  final String Title;
  final String Description;
  const TextSpec({required this.Title, required this.Description});

  @override
  Widget build(BuildContext context) {

    return Phone();
  }

  Widget Phone() =>SizedBox(


    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Text(Title, style: TextStyle(fontSize: 40,fontFamily: "Astrella", color: Colors.black),),
          Text(Description,style: TextStyle(fontSize: 30,fontFamily: "Astrella", color: Colors.black26),),
        ]
    ),
  );
}

class Textsousspec extends StatelessWidget {
  final String Title;
  final String Description;
  const Textsousspec({required this.Title, required this.Description});

  @override
  Widget build(BuildContext context) {

    return Phone();
  }

  Widget Phone() => SizedBox(


    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Text(Title, style: TextStyle(fontSize: 30,fontFamily: "Astrella", color: Colors.black),),
          Text(Description,style: TextStyle(fontSize: 25,fontFamily: "Astrella", color: Colors.black26),),
        ]
    ),
  );

}