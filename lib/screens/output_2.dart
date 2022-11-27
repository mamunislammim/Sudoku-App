import 'package:flutter/material.dart';
import 'package:sudoku_app/screens/third_level.dart';


class OutputTwo extends StatefulWidget {
 final List<int> getData;
  const OutputTwo({super.key, required this.getData});
  @override
  State<OutputTwo> createState() => _OutputTwoState();
}

class _OutputTwoState extends State<OutputTwo> {
  bool _getResult() {
    if((widget.getData[0] +  widget.getData[1]) == 10 &&
      (widget.getData[2] +  widget.getData[3]) == 9 &&
      (widget.getData[4] +  widget.getData[5]) == 10 &&
      (widget.getData[6] +  widget.getData[7]) == 9 &&

      (widget.getData[0] +  widget.getData[2]) == 7 &&
      (widget.getData[1] +  widget.getData[3]) == 12 &&
      (widget.getData[4] +  widget.getData[6]) == 7 &&
      (widget.getData[5] +  widget.getData[7]) == 12
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
      backgroundColor: const Color(0xff27CC9A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xff165987),
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
                              color: const Color(0xff27CC44), width: 5),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/laugh2.gif'))),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 25, bottom: 25),
                      decoration: BoxDecoration(
                          color: const Color(0xff0C6364),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: Colors.cyanAccent, width: 2)),
                      child: Column(
                        children: [
                          Text(
                            "Wow",
                            style: TextStyle(
                                color: const Color(0xff95EE17),
                                fontSize: height / 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Level 2 Passed..!!",
                            style: TextStyle(
                                color: const Color(0xffB7EB6D),
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
               Navigator.push(context, MaterialPageRoute(builder: (context)=> const ThirdLevel()));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff97F216)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Next Level",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: height / 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 33,
                      color: Colors.indigoAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
              color: const Color(0xff89bd40),
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
                          color: const Color(0xff8BAA5E),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: Colors.cyanAccent, width: 2)),
                      child: Column(
                        children: [
                          Text(
                            "Opps..!!!",
                            style: TextStyle(
                                color: const Color(0xff0c2273),
                                fontSize: height / 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "You are Fail",
                            style: TextStyle(
                                color: const Color(0xff3c2a68),
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
                    color:   const Color(0xff89bd40)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      size: 33,
                      color: Colors.indigoAccent,
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
