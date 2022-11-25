import 'dart:async';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List color = [
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.pink,
    Colors.white,
    Colors.grey,
    Colors.greenAccent,
    Colors.indigo,
    Colors.red,
    Colors.blue
  ];
  List que = [
    "Which cricketer name is chiku?",
    "who is king of bollywood?",
    "where is New York City?",
    "In which year india won world cup after 28 years?",
    "who is president of russia?",
    "Which state is smallest in india?",
    "Which day is independence day? ",
    "Who is current pm of india?",
    "In which year Red & White Institude Started?",
    "where is siliconvelly in india?"
  ];

  List oa = [
    "Virat kohli",
    "salman khan",
    "pakistan",
    "2011",
    "putin",
    "Rajasthan",
    "2005",
    "yogi",
    "Gautam Adani",
    "tamil nadu",
  ];
  List ob = [
    "Rohit Sharma",
    "Saharukh khan",
    "Usa",
    "2007",
    "donald trump",
    "keral",
    "2015",
    "Eknath Shinde",
    "Ratan Tata",
    "patna",
  ];
  List oc = [
    "ms dhoni",
    "ajay devgan",
    "Dubai",
    "2013",
    "Narendra Modi",
    "Goa",
    "2008",
    "Bhupendra Patel",
    "Mukesh Ambani",
    "Rajasthan",
  ];
  List od = [
    "kapil dev",
    "akshay kumar",
    "russia",
    "1999",
    "king jong",
    "Gujarat",
    "2010",
    "Narendra Modi",
    "Kumar Mangalam Birla",
    "Banglore",
  ];
  List ranswer = [
    "Virat kohli",
    "Saharukh khan",
    "Usa",
    "2011",
    "putin",
    "Goa",
    "2008",
    "Narendra Modi",
    "Gautam Adani",
    "Banglore",
  ];

  List money = [
    0,
    "10,000",
    "20,000",
    "50,000",
    "50,000",
    "1,00,000",
    "3,00,000",
    "5,00,000",
    "25,00,000",
    "70,00,000",
    "2,00,00,000"
  ];

  List uanswer = [];
  int point = 0;
  int i = 0;
  int sec = 60;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color[i],
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  i = 0;
                  uanswer.clear();
                });
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: color[i],
                    child: Text(
                      "${i + 1}.${que[i]}",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        w(20),
                        InkWell(
                          onTap: () {
                            result(oa[i]);
                          },
                          child: option(oa[i], 'A'),
                        ),
                        w(10),
                        InkWell(
                          onTap: () {
                            result(ob[i]);
                          },
                          child: option(ob[i], 'B'),
                        )
                      ],
                    ),
                    h(25),
                    Row(
                      children: [
                        w(20),
                        InkWell(
                          onTap: () {
                            result(oc[i]);
                          },
                          child: option(oc[i], 'C'),
                        ),
                        w(10),
                        InkWell(
                          onTap: () {
                            result(od[i]);
                          },
                          child: option(od[i], 'D'),
                        )
                      ],
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

  Widget w(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget h(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget option(String? name, op) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
      height: 50,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Text(
        "$op.${name}",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  void result(String? option) {
    setState(() {


      if (i <= 9) {
        uanswer.add(option);
        if (uanswer[i] == ranswer[i]) {
          Navigator.pushNamed(context, '1', arguments: money[i + 1]);
        } else {
          Navigator.pushNamed(context, '2', arguments: money[i]);
          i = 0;
          i--;
          uanswer.clear();
        }
      }
      i++;
      if (i == 10) {
        i = 0;
        uanswer.clear();
      }
    });
  }
}
