import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_rolling.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.c1, this.c2, {super.key});

  final Color c1;
  final Color c2;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(
          colors: [c1, c2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: diceRoller(),
      ),
    );
  }
}
