import 'package:flutter/material.dart';

import '../FormationDiplome/customwidget/backbutton.dart';
import '../FormationDiplome/customwidget/cachearbre.dart';
import '../FormationDiplome/customwidget/descriptioonbac.dart';
import '../back/backbutton.dart';
import '../homepage/customwidget/TextSpec.dart';



class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffefedea),
      body: Stack(children: [
        const cacheArbre(titreaptitude: ["SALARIAT", "ENTREPRISE", "EXPERIENCE"],),
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
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 180),
            child: Container(
              width: 250,
              height: 100,
              child: Stack(
                children: const [
                  TextSpec(
                    Title: "EXPERIENCE",
                    Description: "PROFESSIONNEL",
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 380, top: 550),
            child: bac( x: 1,),
          ),
        ),
        const Center(
            child: Padding(
                padding: EdgeInsets.only(left: 390, bottom: 200),
                child: back())),

        GestureDetector(
          onTap:(){
            Navigator.pop(context);
          },

          child: const backbtn(),
        ),
      ]),
    );
  }
}
