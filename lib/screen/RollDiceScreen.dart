import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
    int Activeface=5;
   List<String> DiceImage=
   [
   'https://www.pinclipart.com/picdir/middle/4-41599_dice-7-dots-clipart-the-original-frankenstein-png.png',
   'https://clipground.com/images/1-die-clipart-4.jpg',
   'https://th.bing.com/th/id/OIP.6MDIIoj3yGh3Q_pZzH0IbQAAAA?pid=ImgDet&rs=1',
   'https://th.bing.com/th/id/OIP._b2LF_H-03bfgcudzGA-WQAAAA?pid=ImgDet&rs=1',
   'https://th.bing.com/th/id/OIP.6MDIIoj3yGh3Q_pZzH0IbQAAAA?pid=ImgDet&rs=1',
   'https://gifdb.com/images/high/dice-black-and-white-spinning-roll-udp16m9dmi84bgu8.webp'];

  @override   Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade600,
          Colors.purple.shade800],
          begin: Alignment.topLeft,end: Alignment.bottomRight
        ),
      ), child: Center(
        child: Column(mainAxisSize: MainAxisSize.min,
      children: [
        Text('Hi',  style: TextStyle(color: Colors.white)),
          SizedBox(
          height: 20,
        ),
        Image.network(DiceImage[Activeface]), 
        SizedBox(
          height: 20,
        ),
       TextButton(onPressed: ()
       {
            var runNum=Random().nextInt(6);
        setState(() {
      Activeface=runNum;
        });
        print('Botton Pressed');
  
       }, child: Text('Roll', style: TextStyle(color: Colors.white),)),
      ],),),
    )
    );
  }
}