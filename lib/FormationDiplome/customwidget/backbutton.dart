import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//class utilisé pour creer la fleche
class back extends StatefulWidget {
  const back({Key? key}) : super(key: key);

  @override
  State<back> createState() => _backState();
}

class _backState extends State<back> {
  @override
  Widget build(BuildContext context) {
    return phone();
  }

  Widget phone() =>
      Consumer<RecupDataHomeProvider>(
        builder: (context, provider, child) {
          return AnimatedPadding(
            curve: Curves.easeInOutBack,
            duration: const Duration(milliseconds: 900),
            padding: EdgeInsets.only(top: provider.ckicler == 1 ? 0 : 20),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 900),
              opacity:provider.ckicler == 1 ? 1 : 0,
              child: GestureDetector(
                onTap:(){

                  //ajouter animation bouton
                  Provider.of<RecupDataHomeProvider>(context, listen: false).clicker(0);
                } ,
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: const Color(0xffefedea),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
            ),
          );
        },
      );
}
