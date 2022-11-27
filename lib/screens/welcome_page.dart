import 'package:flutter/material.dart';
import 'package:sudoku_app/screens/first_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Future<void> goFirstPage() async {
    await Future.delayed(const Duration(seconds: 5)).then((value) =>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FirstScreen())));
  }

  @override
  void initState() {
   goFirstPage();
   // display();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/sudo.png'),
          ),
        ),
        child: Center(
          child: Column(
            children:  const [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/hattali.gif'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
