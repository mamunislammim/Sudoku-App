

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ThirdLevel extends StatefulWidget {
  const ThirdLevel({Key? key}) : super(key: key);

  @override
  State<ThirdLevel> createState() => _ThirdLevelState();
}

class _ThirdLevelState extends State<ThirdLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 100),
          child: Container(
            padding: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.white),
              color: Colors.orange
            ),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/bback.png"),
                ),
                const SizedBox(height: 20,),
                GradientText(
                  'Sorry Dear..',
                  style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                  gradientType: GradientType.radial,
                  radius: 2.5,
                  colors:   const [
                    Colors.redAccent,
                    Colors.blue,
                    Colors.green,
                    Colors.pinkAccent,
                  ],
                ),
                const SizedBox(height: 20,),
                GradientText(
                  'সময় স্বল্পতার জন্য আর তৈরি করতে পারিনি,,,',
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                  gradientType: GradientType.radial,
                  radius: 2.5,
                  colors:   const [
                    Colors.redAccent,
                    Colors.blue,
                    Colors.green,
                    Colors.pinkAccent,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
