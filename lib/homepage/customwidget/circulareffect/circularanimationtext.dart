import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Containertcircular.dart';


class circularanim extends StatelessWidget {
  final double variable;

  const circularanim({required this.variable});

  @override
  Widget build(BuildContext context) {
    return phone();
  }

  Widget phone() =>
      Consumer<RecupDataHomeProvider>(
        builder: (context, provider, child) {
          return AnimatedRotation(
            duration: const Duration(milliseconds: 500),

            turns: provider.result,
            child: Stack(

              children: [
                AnimatedOpacity(
                 duration: const Duration(milliseconds: 200),
                  opacity: provider.rotate == 0?1:0,
                  child: const containercircular(Ttile: 'FORMATION', subtitle: 'DIPLOME/CERTIFICATION',),
                ),

                AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: provider.rotate == 1?1:0,
                  child: const RotationTransition(

                    turns: AlwaysStoppedAnimation(0.85),
                    child: containercircular( Ttile: 'EXEPERIENCE',subtitle: 'PROFESSIONNEL',),
                  ),
                ),

                AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: provider.rotate == 2?1:0,
                  child: const RotationTransition(

                    turns: AlwaysStoppedAnimation(0.70),
                    child: Center(
                      child: containercircular(Ttile: 'COMPETENCE', subtitle: 'PERSONNELLE',),
                    ),
                  ),
                ),

              ],
            ),
          );
        },
      );
}
