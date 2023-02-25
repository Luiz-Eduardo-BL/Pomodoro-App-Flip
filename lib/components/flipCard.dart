//refassa a logica da main.dart aqui dentro e depois chama ela no main.dart
import 'package:flutter/material.dart';
import 'package:flip_panel_plus/flip_panel_plus.dart';

class FlipCard extends StatefulWidget {
  const FlipCard({super.key});

  @override
  _FlipCardState createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlipClockPlus.countdown(  
          duration: const Duration(minutes:59),
          digitColor: Colors.white,
          backgroundColor: Colors.black,
          digitSize: 48.0,
          borderRadius: const BorderRadius.all(Radius.circular(3.0)),
        
          onDone: () {
            print('OnDone');
          },
        ),
      )
    );
  }
}
