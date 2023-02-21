import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homepage/customwidget/TextSpec.dart';

class histo extends StatelessWidget {
  histo({Key? key}) : super(key: key);
  List<Widget> list = [

    Center(
      child: Container(
        height: 150,
        width: 2,
        color: Colors.black,
      ),
    ),
    const Text(
      "2014",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 35,
          fontFamily: "Astrella",
          color: Colors.black),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),

        const SizedBox(
          width: 200,
            child: Textsousspec(Title: 'BACCALAUREAT', Description: 'mention bien',)),

      ],
    ),
    const Text(
      "2016",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 35,
          fontFamily: "Astrella",
          color: Colors.black),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),

        const SizedBox(
            width: 200,
            child: Textsousspec(Title: 'BTS MUC', Description: '',)),

      ],
    ),
    const Text(
      "2017",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 35,
          fontFamily: "Astrella",
          color: Colors.black),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),

        const SizedBox(
            width: 200,
            child: Textsousspec(Title: 'SMI', Description: 'Agent Immobilier',)),

      ],
    ),

    const Text(
      "2020",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 35,
          fontFamily: "Astrella",
          color: Colors.black),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),

        const SizedBox(
            width: 200,
            child: Textsousspec(Title: 'LICENCE', Description: 'GESTION ENTREPRISE',)),

      ],
    ),
    const Text(
      "2021",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 35,
          fontFamily: "Astrella",
          color: Colors.black),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),

        SizedBox(
            width: 200,
            child: const Textsousspec(Title: 'AUTO-ENTREPRISE', Description: 'informatique',)),

      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),

        SizedBox(
            width: 200,
            child: const Textsousspec(Title: 'FORMATION', Description: 'FLUTTER',)),

      ],
    ),
    const Text(
      "2023",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 35,
          fontFamily: "Astrella",
          color: Colors.black),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),

        SizedBox(
            width: 200,
            child: const Textsousspec(Title: 'DISPONIBLE ', Description: 'recherche de poste',)),

      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return phone();
  }
  Widget phone() => ListView.builder(
    itemCount: list.length,
    itemBuilder: (context, index) {
      return list.elementAt(index);
    },
  );
}
