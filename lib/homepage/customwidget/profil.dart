import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class profilcircle extends StatefulWidget {
  const profilcircle({Key? key}) : super(key: key);

  @override
  State<profilcircle> createState() => _profilcircleState();
}

class _profilcircleState extends State<profilcircle> {
  double size = 1;


  resize() async {
    if (size == 1) {
      await Future.delayed(Duration(milliseconds: 2300));
      setState(() {
        size = 0.98;
      });
    } else if (size == 0.98) {
      await Future.delayed(Duration(milliseconds: 2300));
      setState(() {
        size = 1;
      });
    }
  }

  method() {

  }

  @override
  void initState() {
    method();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    resize();

    return Phone();
  }

  Widget Phone() =>
      Consumer<RecupDataHomeProvider>(
        builder: (context, provider, child) {
          return AnimatedAlign(
            duration: Duration(milliseconds: 250),
            alignment: Alignment((-provider.ckicler), 0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 370 - (provider.ckicler * 200),
              width: 370 - (provider.ckicler * 200),


              child: Stack(
                children: [
                  Center(
                    child: AnimatedContainer(
                      curve: Curves.ease,
                      duration: Duration(milliseconds: 2000),
                      height: size * 350,
                      width: size * 350,
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
                    child: AnimatedContainer(
                      curve: Curves.slowMiddle,
                      duration: Duration(milliseconds: 2300),
                      height: size * 300,
                      width: size * 300,
                      decoration: BoxDecoration(
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
          );
        },
      );
}
