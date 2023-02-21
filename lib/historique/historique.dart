import 'package:flutter/material.dart';

import '../back/backbutton.dart';
import '../homepage/customwidget/TextSpec.dart';

class historique extends StatefulWidget {
  const historique({Key? key}) : super(key: key);

  @override
  State<historique> createState() => _historiqueState();
}

class _historiqueState extends State<historique> {

  double size = 1;
  start() async{
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      size = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {


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
          const SizedBox( width: 249,height: 1,),

          Container(
            height: 150,
            width: 2,
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
            height: 2,
            width: 100,
          ),
          const Textsousspec(Title: 'BACCALAUREAT', Description: 'mention bien',),

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

          const Textsousspec(Title: 'BTS MUC', Description: 'NON OBTENUE',),
          Container(
            color: Colors.black,
            height: 2,
            width: 100,
          ),

          Container(
            height: 150,
            width: 2,
            color: Colors.black,
          ),
          const SizedBox( width: 210,height: 1,),

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
          const SizedBox( width: 257,height: 1,),

          Container(
            height: 150,
            width: 2,
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
            height: 2,
            width: 100,
          ),
          const Textsousspec(Title: 'SMI', Description: 'agent immobilier',),

        ],
      ),
      Center(
        child: Container(
          height: 150,
          width: 2,
          color: Colors.black,
        ),
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

          const Textsousspec(Title: 'LICENCE', Description: 'GESTION ENTREPRISE',),
          Container(
            color: Colors.black,
            height: 2,
            width: 100,
          ),

          Container(
            height: 150,
            width: 2,
            color: Colors.black,
          ),
          const SizedBox( width: 272,height: 1,),

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
          const SizedBox( width: 276,height: 1,),

          Container(
            height: 150,
            width: 2,
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
            height: 2,
            width: 100,
          ),
          const Textsousspec(Title: 'AUTO ENTREPRISE', Description: 'informatique',),

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

          const Textsousspec(Title: 'DISPONIBLE', Description: 'RECHERCHE DE POSTE',),
          Container(
            color: Colors.black,
            height: 2,
            width: 100,
          ),

          Container(
            height: 150,
            width: 2,
            color: Colors.black,
          ),
          const SizedBox( width: 272,height: 1,),

        ],
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffefedea),
      body: Stack(children: [
        // a passer dans un custom widget


        // a passer dans un custom widget
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 190),
            child: Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width / 3,
              height: 2,
            ),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: 650,
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return list.elementAt(index);
              },
            ),
          ),
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 170,
            width: 170,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 350,
                    width: 350,
                    //border for container

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profil.png'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0,1),
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: AnimatedContainer(
              curve: Curves.easeInOutCirc,
              duration: const Duration(milliseconds: 700),
              color: const Color(0xffefedea),

              width: 700,
              height: MediaQuery.of(context).size.height/2*size,
            ),
          ),
        ),
        Center(
          child: Container(
            color: const Color(0xffefedea),

            child: const Text(
              "HISTORIQUE",
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: "Astrella",
                  color: Colors.black),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(left: 170),
            child: AnimatedContainer(
              curve: Curves.easeInOutCirc,
              duration: const Duration(milliseconds: 600),
              color: const Color(0xffefedea),
              width: MediaQuery.of(context).size.width*size,
              height: 100,
            ),
          ),
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 180),
            child: SizedBox(
              width: 250,
              height: 100,
              child: Stack(
                children: const [
                  TextSpec(
                    Title: "COMPETENCE",
                    Description: "PERSONNEL",
                  ),
                ],
              ),
            ),
          ),
        ),



        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const backbtn(),
        ),
      ]),
    );
  }
}
