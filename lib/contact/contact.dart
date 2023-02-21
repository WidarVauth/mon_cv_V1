import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  double size =1;
  @override
  Widget build(BuildContext context) {
    return windows();
  }

Widget windows() => Consumer<RecupDataHomeProvider>(
  builder: (context, provider, child) {
  return AnimatedOpacity(
    duration: const Duration(milliseconds: 400),
    opacity: provider.ckicler ==1 ? 0 : 1,
    child: Align(
    alignment: const Alignment(0,0.75),
    child:   GestureDetector(
      onTap:(){
        if(size == 1){setState(() {
          size =1.5;
        });}
        else if(size == 1.5){setState(() {
          size =1;
        });}


      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
        height: 40* (size*5-4),
        width: 65* (size+size+size-1),
      decoration: BoxDecoration(
        color: const Color(0xfff8f6f4),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(4, 3), // changes position of shadow
          ),
        ],

      ),
        child: ListView(

          children: [
            const SizedBox(height: 10,),

            const Text("contact",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Astrella",
                  color: Colors.black
              ),),
             const SizedBox(height: 29,),
            Row( children: const [ Icon(Icons.phone),SelectionArea(child: Text("0684855033"))],),
            Row( children: const [ Icon(Icons.mail),SelectionArea(child:Text("laffont.valentin@gmail.com")),],),


          ],
        ),

      ),
    ),
),
  );
  },
);

}
