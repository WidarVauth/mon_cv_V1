import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class bacphoneversion extends StatelessWidget {
  final int indexo;
   bacphoneversion({Key? key, required this.indexo}) : super(key: key);
  late ScrollController _controller;
 static  List<Widget> FORMATIONLISTE = [
   const Text("Bac Professionnel Commerce • 2014 • Sainte Louise deMarillac",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
   const SizedBox(height: 8,),
   const Text("Obtention avec mention assez bien",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

   const SizedBox(height: 10,),
   const Text("Durant mes études à l'établissement Saint Louise de marillac\n"
       "j'ai pu acquérir des compétences dans le domaine du commerce,\n"
       "de la comptabilité et la gestion de marchandise"
       "Je me suis également familliarisé avec plusieurs concept de marketing utile dans la vie d'une enteprise\n"
       "j'ai effectué plusieurs stage pendant ma période de formation\n"
       "qui qui m'ont permis de m'adapter à au contact avec la clientelle\n"
       "à la fin de mes perriode de stage l'entreprise ma cordialement signé une lettre de recomandation \n ",

     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20, color: Colors.black87),),

   const Text("RESPONSABLE D’AGENCE COMMERCIALE ET DE SERVICES• 2021 • Ecole Superieur Dimension Pro",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

   const SizedBox(height: 8,),
   const Text("Obtention avec mention  bien",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
   const SizedBox(height: 10,),
   const Text("suite à mon experience dans l'entreprise Saint marcel immobilier\n"
   "j'ai effectué une formation afin de valider plus ne profondeur mes competences.\n"
   "durant ce bachelor j'ai poussé mes compétences en gestion de commmerce de services\n"
   "mais aussi dans le domaine de la vente de bien immobilier, la gestion locative\n"
   "et la gestion de co proprieté.\n",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20, color: Colors.black87),),
   const SizedBox(height: 10,),
   const Text("DIPLOME DE FORMATION FEDERALES",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
   const SizedBox(height: 10,),
   const Text("CERTIFICAT D'APTITUDE A L'UTILISATION DES LANGAGES FLUTTER/DART",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
   const SizedBox(height: 20,),
   const Text("MES +",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
   const SizedBox(height: 10,),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/office.png", height: 50,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Container(
           width: 80,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
       ),






     ],
   ),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/ai.png", height: 50,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
         child: Container(
           width: 90,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
         ),






     ],
   ),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/ps.png", height: 50,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Container(
           width: 80,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
       ),






     ],
   ),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/kotlin.png", height: 52,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Container(
           width: 72,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
       ),






     ],
   ),
   const SizedBox(height: 3,),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/flutter.png", height: 40,),
       SizedBox(width: 10,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Container(
           width: 85,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
       ),






     ],
   ),
   const SizedBox(height: 7,),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/python.png", height: 40,),
       SizedBox(width: 15,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Container(
           width: 75,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
       ),






     ],
   ),
   const SizedBox(height: 10,),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/android.png", height: 40,),
       SizedBox(width: 10,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Container(
           width: 87,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
       ),






     ],
   ),
   const SizedBox(height: 10,),
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset("assets/angl.png", height: 40,),
       SizedBox(width: 10,),
       Container(
         alignment: Alignment.topLeft,
         width: 100,
         height: 7,
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Container(
           width: 65,
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(10),

           ),

         ),
       ),






     ],
   ),
   const SizedBox(height: 10,),
 ];
 static const List<Widget>EXPLISTE = [
   Text("Agent immobilier - SMI • 2017-2021",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
   SizedBox(height: 8,),
   Text("Au sein de l'enteprise SMI et grace à l'aide du gérant de l'agence Mr Czyz\n"
       "J'ai appris le metier d'agent immobilier et ses  réglementations.\n"
       "J'etais en charge, dans une premier temps, de la prospection puis ensuite de tous les élements qui consistuent ce metier\n"
       "tel que la visite de biens la prise en charge de mandat d'achat et de vente , la négociation\n"
       "l'accompagnement jusqu'a à l'acte authentique\n",

     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20, color: Colors.black87),),
   SizedBox(height: 8,),
   Text("Gestionnaire reseau - INFOCO • 2021-2022",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
   SizedBox(height: 10,),
   Text("A la suite de mon experience acquise dans le domaine immobilier j'ai souhaité poursuivre des études\n"
       "afin d'obtenir un diplome et ainsi de valider mes acquis.\n"
       "Durant mon cycle d'étude j'ai crée une petite activité lié à ma passion, l'informatique\n"
       "j'ai donc modifié des programmes et répare du materiel hardware \n"
       "\n",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 20, color: Colors.black87),),
 ];

  @override
  Widget build(BuildContext context) {

    _controller = ScrollController();
    return phone();
  }
  Widget phone() => Consumer<RecupDataHomeProvider>(

  builder: (context, provider, child) {
  return AnimatedOpacity(
      opacity: provider.ckicler,
      duration: const Duration(milliseconds: 500),
  child: ListView.builder(
    controller: _controller,
    itemCount: indexo == 0 ? FORMATIONLISTE.length : EXPLISTE.length,
    itemBuilder: ( context,  index) {

      if(indexo == 0){
       return FORMATIONLISTE.elementAt(index);
      }
      else if(indexo ==1){
        return  EXPLISTE.elementAt(index);
      }


    },
  ), );
  },
  );
}
