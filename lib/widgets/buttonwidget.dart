import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;

  // final Colors? colors;
  const ButtonWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(

      color: const Color(0xff38AB66),
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 140,vertical: 18),
      onPressed: () { },
      child: Text(
      text,
       style: const TextStyle(color: Colors.white, fontSize: 17),

  ),
  );
  }

