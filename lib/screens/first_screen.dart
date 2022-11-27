import 'package:flutter/material.dart';
import 'package:sudoku_app/screens/output_page.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int? A, B, C, D, E, F, G, H;
  List<int> dataFirst = [];

  void _addList() {
    dataFirst.add(A!);
    dataFirst.add(B!);
    dataFirst.add(C!);
    dataFirst.add(D!);
    dataFirst.add(E!);
    dataFirst.add(F!);
    dataFirst.add(G!);
    dataFirst.add(H!);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xffd4cbfd),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          backgroundColor: Colors.teal,
          title: const Text(
            "Level 1",
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
                       color: Color(0xff0d424d),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "ইংরেজি বর্ণগুলোর জায়গায় 1 to 9 এর মধ্যে এমন সংখ্যা গুলো বসাবি যেন, সারি বরাবর ও কলাম বরাবর যোগাযোগ করলে, যোগফল ১০ হয়",
                          style: TextStyle(fontSize: 10, color: Colors.greenAccent),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xfffba75f),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            A = int.parse(value);
                                            //print(data[0]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "A",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            B = int.parse(value);
                                            //print(data[1]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "B",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            C = int.parse(value);
                                            //print(data[2]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "C",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "2",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            D = int.parse(value);
                                            //print(data[3]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "D",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "4",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            E = int.parse(value);
                                            //print(data[4]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "E",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            F = int.parse(value);
                                            //print(data[5]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "F",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            G = int.parse(value);
                                            //print(data[6]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "G",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "2",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
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
                                      color: const Color(0xffd1b4cc),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: SizedBox(
                                      height: height / 17,
                                      child: TextField(
                                        // controller: _controllerH,
                                        onChanged: (value) {
                                          setState(() {
                                            H = int.parse(value);
                                            //print(data[7]);
                                          });
                                        },
                                        style: TextStyle(
                                            color: const Color(0xff145597),
                                            fontSize: height / 17,
                                            fontWeight: FontWeight.bold),
                                        scrollPadding: EdgeInsets.zero,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "H",
                                            hintStyle: TextStyle(
                                                color: const Color(0xff000e4b),
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
                                      color: const Color(0xfff48b36),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "4",
                                      style: TextStyle(
                                          color: const Color(0xff000e4b),
                                          fontSize: height / 20,
                                          fontWeight: FontWeight.bold),
                                    )),
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
                      onTap: () async{
                        print("First List : $dataFirst");
                        _addList();
                      await  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                OutPutPage(getData: dataFirst),
                          ),
                        );
                        print("F 2 List : $dataFirst");
                            dataFirst.clear();
                        print("F 3 List : $dataFirst");

                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.orange),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: const Color(0xff1A927A),
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
