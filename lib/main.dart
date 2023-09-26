import 'package:flutter/material.dart';
import 'package:flutterz_act/screen/RollDiceScreen.dart';

void main(){
  runApp(rolldiceapp());
}
class rolldiceapp extends StatelessWidget {
  const rolldiceapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RollDiceScreen(),
    );
  }
}