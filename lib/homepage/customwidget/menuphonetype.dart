import 'package:cv/layoutwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../FormationDiplome/customwidget/descriptionBACformattel.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../historique/widgetcustom historique.dart';
import '../recup_data_home/provider.dart';
import 'TextSpec.dart';

class menuphone extends StatefulWidget {
  const menuphone({Key? key}) : super(key: key);

  @override
  State<menuphone> createState() => _menuphoneState();
}

class _menuphoneState extends State<menuphone> {
  //[formation,experience,competence]
  List<double> position = [180, 330, 480];
  double size = 1;
  bool check = false;
  bool activehistorique = false;
  int index = 0;

  resize() {
    setState(() {
      size = 0;
    });
  }

  // method permetant de generer sur les iphone une case d'appel
  static Future<void> openDialer(String phoneNumber) async {
    Uri callUrl = Uri.parse('tel:=$phoneNumber');
    if (await canLaunchUrl(callUrl)) {
      await launchUrl(callUrl);
    } else {
      throw 'Could not open the dialler.';
    }
  }

  @override
  Widget build(BuildContext context) {
    resize();
    return phone();
  }

  Widget phone() => Center(
    child: SizedBox(
          width: 300,
          child: Stack(
            children: [
              Center(
                child: Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height,
                  width: 2,
                ),
              ),
              //contenue text
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Center(
                    child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  color: const Color(0xffefedea),
                  height: check ? MediaQuery.of(context).size.height : 0,
                  width: 300,
                  child:activehistorique?histo():bacphoneversion(indexo: index,),
                )),
              ),

              AnimatedPositioned(
                //formation
                top: position[0],
                duration: const Duration(milliseconds: 500),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      position = [150, 1000, 1000];
                      Provider.of<RecupDataHomeProvider>(context, listen: false)
                          .deplace(0);
                      check = true;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 300,
                    alignment: Alignment.center,
                    color: const Color(0xffefedea),
                    child: layout(
                        Widget1: const TextSpec(
                          Title: 'FORMATION',
                          Description: 'DIPLOME/CERTIFICATION',
                        ),
                        Widget2: SizedBox(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'FORMATION',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: "Astrella",
                                      color: Colors.black),
                                ),
                                Text(
                                  'DIPLOME/CERTIFICATION',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: "Astrella",
                                      color: Colors.black26),
                                ),
                              ]),
                        )),
                  ),
                ),
              ),
              AnimatedPositioned(
                //experience
                top: position[1],
                duration: const Duration(milliseconds: 500),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      position = [-200, 150, 1000];
                      Provider.of<RecupDataHomeProvider>(context, listen: false)
                          .clicker(1);
                      index = 1;
                      check = true;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 300,
                    color: const Color(0xffefedea),
                    child: layout(
                      Widget1: const TextSpec(
                        Title: 'EXPERIENCE',
                        Description: 'PROFESSIONNEL',
                      ),
                      Widget2: SizedBox(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'EXPERIENCE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 40,
                                    fontFamily: "Astrella",
                                    color: Colors.black),
                              ),
                              Text(
                                'PROFESSIONNEL',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Astrella",
                                    color: Colors.black26),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                //competence
                duration: const Duration(milliseconds: 500),
                top: position[2],
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      position = [-200, -200, 150];
                      Provider.of<RecupDataHomeProvider>(context, listen: false)
                          .clicker(1);
                      index = 0;
                      check = true;
                      activehistorique = true;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 300,
                    color: const Color(0xffefedea),
                    child: layout(
                      Widget1: const TextSpec(
                        Title: 'COMPETENCE',
                        Description: 'PERSONNELLE',
                      ),
                      Widget2: SizedBox(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'COMPETENCE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 40,
                                    fontFamily: "Astrella",
                                    color: Colors.black),
                              ),
                              Text(
                                'PERSONELLE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Astrella",
                                    color: Colors.black26),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),


              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1200),
                  height: MediaQuery.of(context).size.height * size,
                  color: const Color(0xffefedea),
                  width: 310,
                ),
              ),

              check?GestureDetector(
                onTap: () {
                  setState(() {
                    check = false;
                    position = [180, 330, 480];
                   activehistorique = false;
                   index = 0;

                  });
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 30,
                ),
              ):const SizedBox(height: 10,width: 10,),

              Positioned(
                top: 50,
                right: 10,
                child: GestureDetector(
                  onTap: () {

                    launchUrl(Uri.parse("https://www.linkedin.com/in/valentin-laffont-a405a8133/"));
                  },
                    child: Image.asset("assets/linkedin.png",height: 20,width: 20,)),
              ),

              Align(
                alignment: Alignment.topRight,
                child: IconButton(icon: new Icon(Icons.phone),
                  onPressed: ()
                  {
                    setState(() {
                      openDialer('33684855033');
                    });
                  },
                ),
              ),
            ],
          ),
        ),
  );
}
