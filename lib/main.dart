

 import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
 import 'package:sudoku_app/screens/welcome_page.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
      builder: EasyLoading.init(),
    );
  }
}
