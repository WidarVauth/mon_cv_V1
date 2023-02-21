import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cv/homepage/recup_data_home/provider.dart';

class competence extends StatefulWidget {
  final String competencetext;
  final int position;

  const competence({Key? key, required this.competencetext, required this.position,}) : super(key: key);

  @override
  State<competence> createState() => _competenceState();
}

class _competenceState extends State<competence> {
  @override
  Widget build(BuildContext context) {
    return  phone();
  }
  Widget phone() => Consumer<RecupDataHomeProvider>(
  builder: (context, provider, child) {
  return AnimatedPositioned(
    curve: Curves.easeInOutCubic,
    duration: const Duration(milliseconds: 1300),
    left: provider.deplacement[widget.position],
    child: GestureDetector(
      onTap: (){
        setState(() {
          Provider.of<RecupDataHomeProvider>(context, listen: false).deplace(widget.position);

        });
      },
      child: Container(
        height: 155,
        width: 190,  color: const Color(0xffefedea),
        child: Center(
          child: Text(widget.competencetext,
            style: TextStyle(
                fontSize: 35,fontFamily: "Astrella", color: Colors.black
            ),),
        ),
      ),
    ),
  );
  },
);
}
