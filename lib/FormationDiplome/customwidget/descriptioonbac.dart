import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class bac extends StatelessWidget {
  final int x;
   bac({Key? key, required this.x}) : super(key: key);
   late ScrollController _controller;

   static const List<Widget> listbac = [

     Text("Bac Professionnel Commerce • 2014 • Sainte Louise deMarillac",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 8,),

     Text("Obtention avec mention assez bien",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 10,),

     Text("Au cours de mes études Au sein de l'établissement Saint Louise de marillac\n"
         "j'ai pu acquérir des compétences dans le domaine du commerce et de la vente.\n"
         "mais aussi dans des domaines tels que la comptabilité et la gestion de marchandise"
       "Je me suis également familiarisé avec plusieurs concepts de marketing utile dans la vie d'une entreprise\n",

       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),

     SizedBox(height: 10,),

     Text("j'ai effectué plusieurs stages pendant ma période de formation la plupart l'entreprise Boulanger.\n"
         "c'est là que j'ai pu m'adapter à au contact avec la clientèle et metre en pratique les techniques de vente.\n"
         "à la fin de mes périodes de stage l'entreprise m'a cordialement signé une lettre de recommandation \n"
         "et m'a offert la possibilité de poursuivre avec eux via une alternance \n",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),


   ];
   static const List<Widget> listlicence = [

     Text("RESPONSABLE D’AGENCE COMMERCIALE ET DE SERVICES• 2021 • Ecole Superieur Dimension Pro",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 8,),

     Text("Obtention avec mention  bien",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 10,),

     Text("Suite à mon expérience dans l'entreprise Saint-Marcel Immobilier et\n"
         "pour valider mes compétences j'ai decidé de recommencer un cycle d'études, une Licence, gestion d'entreprise...\n"
         "durant ce dernier j'ai pu approfondir mes connaissances dans le domaine de la  gestion de commerce de services\n"
         "mais aussi de la vente de biens immobiliers ainsi que de la gestion locative\n"
         "et de la gestion de copropriété.\n",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),

     SizedBox(height: 10,),

     Text("cette formation m'a permis également d'étre éligible à la carte professionnelle.\n"
         "de transaction immobilière, ce qui peut être utile dans certaines situations professionnelles\n",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),


   ];
   static const List<Widget> listcertif = [

     Text("DIPLOME DE FORMATION FEDERALES",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 8,),


     Text("Diplome de commissaire de piste 1er degre\n"
         "reconnaissant ma capacité à remplir plusieurs fonctions lors d'évenements sportifs.\n"
         "tel que l'accompagnement des participants, la rédaction des reglements\n"
         "mais également veiller à la sécurité des participants et prévenir les risques d'accidents\n",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),

     SizedBox(height: 10,),

     Text("CERTIFICAT D'APTITUDE A L'UTILISATION DES LANGAGES FLUTTER/DART",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),
     SizedBox(height: 10,),

     Text("J'ai suivi une formation complète dans le langage de programation orienté objet\n"
         "spécialisation flutter et dart. Cette formation fait suite à mon aprentissage en autodidacte\n"
         "du langage python qui a ete mon initiation au monde du developpement, ce site est par ailleur fait en dart\n",

       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),




   ];

   static const List<Widget> listSalariale = [
     Text("Agent immobilier - SMI • 2017-2021",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 8,),

     Text("Agent Immobilier",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 10,),

     Text("Au sein de l'enteprise SMI et grace à l'aide du gérant de l'agence Mr Czyz\n"
         "J'ai appris le metier d'agent immobilier et ses  réglementations.\n"
         "J'etais en charge, dans une premier temps, de la prospection puis ensuite de tous les élements qui consistuent ce metier\n"
         "tel que la visite de biens la prise en charge de mandat d'achat et de vente , la négociation\n"
         "l'accompagnement jusqu'a à l'acte authentique\n",

       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),

     SizedBox(height: 10,),

     Text("La vente immobilière ne se résumant pas qu'a de simple transaction , l'accompagnement durant parfois pendant plusiers mois\n"
         "des clients dans leur projet d'achat developpe les capacités de negociations.\n"
          "Cette experience enrichissante est la base de mes acquis actuels dans les domaines de la relation client.\n"
         "De plus la gestion de biens immobiliers demande d'être rigoureux et méthodique.\n"
         "Ces deux compétences peuvent apporter un plus dans plusieurs domaine dans l'immobilier bien sur\n "
         " \n"
         "Mais aussi dans plusieurs domaines professionnels divers et variés \n"
       ,
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),
   ];
   static const List<Widget> listAuto = [
     Text("Gestionnaire reseau - INFOCO • 2021-2023",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 8,),

     Text("informaticien",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 10,),

     Text("A la suite de mon experience acquise dans le domaine immobilier j'ai souhaité poursuivre des études\n"
         "afin d'obtenir un diplome et ainsi de valider mes acquis.\n"
         "Durant mon cycle d'étude j'ai crée une petite activité lié à ma passion, l'informatique\n"
         "j'ai donc modifié des programmes et répare du materiel hardware \n"
         "\n"
         ,

       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),

     SizedBox(height: 10,),

     Text("Cette activité à pris une ampleur  telle, qu'elle m'a permis de ne pas reprendre un poste dans l'immobilier\n"
         "à la suite de mes études\n"
         "Aujourd'hui dans un but de perennisation de mon capital et de mes objectifs je souhaite la releguer à une activité secondaire \n"
         "pour pouvoir me concentrer sur une nouvelle activité au sein d'une entreprise\n"
         "Ces deux compétences peuvent apporter un plus dans plusieurs domaines, dans l'immobilier entre autre.\n "
       ,
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),
   ];
   static const List<Widget> listExp = [
     Text("EXEPRIENCE ou LEAD DE BENEVOLAT",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20,fontFamily: "Astrella", color: Colors.black),),

     SizedBox(height: 8,),

     Text("Rénovation 2nd oeuvre\n"
         "rénovation compléte d'un commerce transformé en habitation\n"
         "\n"
         "Captation vidéo/photo\n"
         "composition et réalisation de vidéo pour le compte de particulier et proffessionnel\n"
         "\n"
         "Edution musical\n"
         "composition et réalisation de musique à titre personnel\n"
         "\n"
         "Formation python\n"
         "depuis plus de 3 ans à titre personnel je me forme sur le langage python\n"
         "\n"

       ,

       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),

     SizedBox(height: 10,),

     Text("divers\n"
         "\n"
         "je suis un pratiquant passioné de sport, ainsi que de sport mechanique\n"
         "je me passionne également pour la mécanique ainsi que l'électronique hardware\n"
       ,

       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),

     SizedBox(height: 10,),

     Text("",
       textAlign: TextAlign.center,
       style: TextStyle(fontSize: 20, color: Colors.black87),),
   ];



  @override
  Widget build(BuildContext context) {
_controller = ScrollController();

    return phone();
  }
  Widget phone() =>


      Consumer<RecupDataHomeProvider>(
  builder: (context, provider, child) {

  return AnimatedOpacity(
        duration: Duration(milliseconds: 700),
        opacity: provider.ckicler,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: provider.ckicler ==1 ? 500 : 0,
          width: 500,

    child: ListView.builder(

        controller: _controller,
        itemCount: 7,
          itemBuilder: (context, index){
            if(provider.deplacement[1] == 1200 ) {


              if(x == 0){return listbac.elementAt(index);}
              else if(x == 1){return listSalariale.elementAt(index);}


            }
            else if (provider.deplacement[1]==702){

              if(x == 0 ) {return listlicence.elementAt(index);}
              else if(x == 1 ) {return listAuto.elementAt(index);}

            }

            else if(provider.deplacement[1]==-200){

              if(x == 0 ) {return listcertif.elementAt(index);}
              else if(x == 1 ) {return listExp.elementAt(index);}

            }

          }

    ),
  ),
      );
  },
);
}
