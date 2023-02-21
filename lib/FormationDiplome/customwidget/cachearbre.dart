import 'package:provider/provider.dart';
import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';

import 'competenceBLOC.dart';

class cacheArbre extends StatefulWidget {
  final List<String> titreaptitude;

  const cacheArbre({Key? key, required this.titreaptitude}) : super(key: key);

  @override
  State<cacheArbre> createState() => _cacheArbreState();
}

class _cacheArbreState extends State<cacheArbre> {

  double size = 1;
  List<double> deplacement = [430,690,960];


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
    return phone();
  }
  Widget phone() => Stack(
    children: [

      Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(left: 190),
          child: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            height: 2,
          ),
        ),
      ),

      Consumer<RecupDataHomeProvider>(
  builder: (context, provider, child) {
  return Align(
        alignment: Alignment.center,
        child: Container(
          height: 155,
          width: 1200,

          child: Stack(

            children: [
              competence(competencetext: widget.titreaptitude[0], position: 0,),


              competence(competencetext: widget.titreaptitude[1], position: 1,),


              competence(competencetext: widget.titreaptitude[2], position: 2,),







            ],
          ),
        ),
      );
  },
),

      Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(left: 160),
          child: AnimatedContainer(
            curve: Curves.easeInOutCirc,
            duration: const Duration(milliseconds: 600),
            color: const Color(0xffefedea),
            width: MediaQuery.of(context).size.width*size,
            height: 100,
          ),
        ),
      ),
    ],
  );
}
