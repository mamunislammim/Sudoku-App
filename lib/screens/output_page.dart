import 'package:flutter/material.dart';
import 'package:sudoku_app/Models/models.dart';
import 'package:sudoku_app/screens/second_level.dart';

class OutPutPage extends StatefulWidget {
  final List<int> getData;
  const OutPutPage({super.key, required this.getData});

  @override
  State<OutPutPage> createState() => _OutPutPageState();
}

class _OutPutPageState extends State<OutPutPage> {

  bool _getResult(){
    if((widget.getData[0] +  widget.getData[1]) == 6 &&
        (widget.getData[2] +  widget.getData[3]) == 5 &&
        (widget.getData[4] +  widget.getData[5]) == 3 &&
        (widget.getData[6] +  widget.getData[7]) == 4 &&

        (widget.getData[2] +  widget.getData[6]) == 5 &&
        (widget.getData[0] +  widget.getData[4]) == 6 &&
        (widget.getData[1] +  widget.getData[5]) == 3 &&
        (widget.getData[3] +  widget.getData[7]) == 4
    ){
      return true;
    }
    else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return _getResult() == true
        ? Scaffold(
            backgroundColor: const Color(0xff0d424d),
            body: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.cyan,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: height / 2.5,
                              width: width / 1.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.cyanAccent, width: 5),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/hattali.gif'))),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 25, bottom: 25),
                              decoration: BoxDecoration(
                                  color: const Color(0xff0d424d),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.cyanAccent, width: 2)),
                              child: Column(
                                children: [
                                  Text(
                                    "Passed...",
                                    style: TextStyle(
                                        color: const Color(0xffd5bbd1),
                                        fontSize: height / 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Lavel 1",
                                    style: TextStyle(
                                        color: const Color(0xffd5bbd1),
                                        fontSize: height / 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondLevel()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xff00709c)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Next Level",
                              style: TextStyle(
                                  color: l2TextFTColor,
                                  fontSize: height / 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                              Icon(
                              Icons.arrow_forward,
                              size: 33,
                              color: l2TextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        : Scaffold(
            backgroundColor: const Color(0xff0d424d),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.cyan,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: height / 2.5,
                            width: width / 1.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 5),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images/cry.gif'))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 25, bottom: 25),
                            decoration: BoxDecoration(
                                color: const Color(0xff0d424d),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 2)),
                            child: Column(
                              children: [
                                Text(
                                  "Opps..!!!",
                                  style: TextStyle(
                                      color: const Color(0xff87a4aa),
                                      fontSize: height / 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "You are Fail",
                                  style: TextStyle(
                                      color: const Color(0xff87a4aa),
                                      fontSize: height / 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orange),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.arrow_back,
                            size: 33,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Try Again",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: height / 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
