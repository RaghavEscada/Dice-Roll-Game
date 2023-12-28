import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class diceRoller extends StatefulWidget
{
  //for widget 
const diceRoller({super.key});
  @override
   State<diceRoller> createState() {
    return _diceRollerState();
   }
}
//for setting the state
class _diceRollerState extends State<diceRoller> { 
  var activeDiceImage = 'dice-images/dice-4.png';

  void rollDice() {
    setState(() { 
      var randomDiceNumber =randomizer.nextInt(6) + 1;
      activeDiceImage = 'dice-images/dice-$randomDiceNumber.png';
      print('changing image...');
    });
    
  }

@override
Widget build (context){
  return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
               width: 200),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: rollDice,
              child: const Text(
                'Roll the dice',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
}
}