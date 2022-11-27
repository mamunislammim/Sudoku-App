import 'package:flutter/material.dart';
 import 'package:sudoku_app/screens/output_2.dart';

import '../Models/models.dart';

class SecondLevel extends StatefulWidget {
  const SecondLevel({Key? key}) : super(key: key);

  @override
  State<SecondLevel> createState() => _SecondLevelState();
}

class _SecondLevelState extends State<SecondLevel> {

  int? a,b,c,d,e,f,g,h;
  List<int> data = [];

  addDataList(){
    data.add(a ?? 0);
    data.add(b ?? 0);
    data.add(c ?? 0);
    data.add(d ?? 0);
    data.add(e ?? 0);
    data.add(f ?? 0);
    data.add(g ?? 0);
    data.add(h ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xff00709c),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          backgroundColor:  const Color(0x00136735),
          title: const Text(
            "Level 2",
            style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Card(
                        color: Color(0xff00384e),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              "ইংরেজি বর্ণগুলোর জায়গায় 1 to 9 এর মধ্যে এমন সংখ্যা গুলো বসাবি  যেন, সারি বরাবর ও কলাম বরাবর যোগাযোগ করলে, যোগফল 20 হয়",
                          style: TextStyle(fontSize: 9,color: Color(0xff89bd40)),
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: level2Container,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                           a= (int.parse(value));
                                            //print(data[0]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "A",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "6",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                           b=(int.parse(value));
                                            //print(data[1]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "B",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "4",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                           c=(int.parse(value));
                                            //print(data[2]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "C",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "7",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                         d=(int.parse(value));
                                            //print(data[3]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "D",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "4",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "7",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                           e=(int.parse(value));
                                            //print(data[4]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "E",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color:l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                           f=(int.parse(value));
                                            //print(data[5]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "F",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "6",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                         g = (int.parse(value));
                                            //print(data[6]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "G",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2RowColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "5",
                                          style: TextStyle(
                                              color: l2TextColor,
                                              fontSize: height / 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: l2TextFieldColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        // controller: _controllerH,
                                        onChanged: (value) {
                                          setState(() {
                                          h= (int.parse(value));
                                            print("Value is : $value");
                                          print("h is : $h");
                                          });
                                        },
                                        style: TextStyle(
                                            color: l2TextFTColor,
                                            fontSize: height / 20,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "H",
                                            hintStyle: TextStyle(
                                                color: l2TextFTColor,
                                                fontSize: height / 20,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: ()async{
                        addDataList();
                       await Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> OutputTwo(getData: data))
                       );
                       print("Test $data");
                       data.clear();
                       print("Test 2 $data");
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: l2ButtonColor
                        ),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: l2ButtonTextColor,
                              fontSize: height / 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
