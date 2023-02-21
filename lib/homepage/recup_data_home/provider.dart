import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecupDataHomeProvider extends ChangeNotifier {

  double rotate = 0;
  double result = 0;
  double size = 0;
  double ckicler = 0;
  List<double> deplacement = [430,690,960, 1000];
  bool check = false;



  methode(x) async{



    if(rotate > 0){
      if(x == ScrollDirection.forward){

        if(rotate > 0 ){

          rotate--;
          result = result - 0.15;


        }else{
          rotate = 0;
          result = 0;
        }
        if( result == -0.15){ result = 0;}


        notifyListeners();
      }
    }

    if(rotate <2){
      if (x == ScrollDirection.reverse){

        if(rotate < 2){
          rotate++;
          result = result + 0.15;
        }else{
          rotate = 2;
          result = 0.3;}


        notifyListeners();
      }
    }


    }

    methodev2(x){
      result = result + x;
    }







  resize(x){
    size = x;
    notifyListeners();
    return size;
  }

  clicker(double x){

    ckicler = x;
    deplacement = [430,690,960];
    notifyListeners();
    return ckicler;
  }
deplace(int x){
    ckicler = 1;

    if(x == 0){
      deplacement = [690,1200,1200, 1200];
    }
    else if(x ==1){
      deplacement =[-100,702,1200, 1200];
    }
    else if(x == 2){
      deplacement = [-100,-200,690, 1200];
    }

    notifyListeners();
}
}


