import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_languages/screen/home_page.dart';
import 'package:learn_languages/screen/thirdUI.dart';
import 'package:learn_languages/widget/sndUiCard.dart';

class SecondUI extends StatefulWidget {
  const SecondUI({Key? key}) : super(key: key);

  @override
  State<SecondUI> createState() => _HomePageState();
}

class _HomePageState extends State<SecondUI> {
  @override
  Widget build(BuildContext context) {
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
    );
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(children: [
                  Positioned(
                    bottom: 9,
                    child: CircleAvatar(
                      maxRadius: 500,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded),
                          color: Colors.blue,
                          iconSize: 30,
                        ),
                        Text(
                          "Curse",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ThirdUI()));
                          },
                          icon: Icon(Icons.more_horiz_rounded),
                          color: Colors.white,
                          iconSize: 40,
                        )
                      ]),
                  Positioned(
                    top: 80,
                    left: 30,
                    child: Text(
                      "Spanish",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 27,
                    child: Container(
                        padding: EdgeInsets.all(5),
                        height: 35,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Begginer',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              IconButton(
                                  onPressed: (() {}),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 30,
                                    color: Colors.black,
                                  )),
                            ])),
                  ),
                  Positioned(
                    top: 200,
                    left: 15,
                    child: Image(
                      image: AssetImage('images/logo2.jpg'),
                      height: 25,
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 50,
                    child: Image(
                      image: AssetImage('images/logo2.jpg'),
                      height: 25,
                    ),
                  ),
                  Positioned(
                      top: 195,
                      left: 90,
                      child: Text(
                        "2 Milestones",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20,
                        ),
                      )),
                  Positioned(
                    left: 220,
                    top: 85,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        maxRadius: 57,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("43 %",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  )),
                              Text("Completed",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              elevation: 20,
                              shadowColor: Colors.black54,
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 40,
                                            child: Icon(
                                              Icons.list_alt_sharp,
                                              color: Colors.yellow,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Basics",
                                          style: TextStyle(
                                            color: Colors.yellow,
                                            fontSize: 22,
                                          )),
                                      Text("4/5",
                                          style: TextStyle(
                                            color: Colors.yellow,
                                            fontSize: 16,
                                          )),
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(32)),
                                          height: 5,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(32)),
                                            height: 5,
                                            width: 95,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 20,
                              shadowColor: Colors.black54,
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 40,
                                            child: Icon(
                                              Icons.badge_sharp,
                                              color: Colors.red,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Occupation",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 22,
                                          )),
                                      Text("1/5",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                          )),
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(32)),
                                          height: 5,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(32)),
                                            height: 5,
                                            width: 20,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              elevation: 20,
                              shadowColor: Colors.black54,
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 40,
                                            child: Icon(
                                              Icons.sms_sharp,
                                              color: Colors.blue,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Conversation",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 22,
                                          )),
                                      Text("3/5",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                          )),
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(32)),
                                          height: 5,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(32)),
                                            height: 5,
                                            width: 80,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 20,
                              shadowColor: Colors.black54,
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 40,
                                            child: Icon(
                                              Icons.location_on,
                                              color: Colors.green,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Places",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 22,
                                          )),
                                      Text("1/5",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 16,
                                          )),
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(32)),
                                          height: 5,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(32)),
                                            height: 5,
                                            width: 20,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              elevation: 20,
                              shadowColor: Colors.black54,
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 40,
                                            child: Icon(
                                              Icons.person_rounded,
                                              color: Colors.purple,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Family Members",
                                          style: TextStyle(
                                            color: Colors.purple,
                                            fontSize: 16,
                                          )),
                                      Text("3/5",
                                          style: TextStyle(
                                            color: Colors.purple,
                                            fontSize: 16,
                                          )),
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(32)),
                                          height: 5,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.purple,
                                                borderRadius:
                                                    BorderRadius.circular(32)),
                                            height: 5,
                                            width: 80,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 20,
                              shadowColor: Colors.black54,
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 40,
                                            child: Icon(
                                              Icons.list_alt_sharp,
                                              color: Colors.blueAccent,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Foods",
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 22,
                                          )),
                                      Text("2/5",
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 16,
                                          )),
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(32)),
                                          height: 5,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.blueAccent,
                                                borderRadius:
                                                    BorderRadius.circular(32)),
                                            height: 5,
                                            width: 50,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Center(
                        //   child: TextButton(
                        //       onPressed: () {},
                        //       child: Text(
                        //         "Feedback",
                        //         style:
                        //             TextStyle(fontSize: 20, color: Colors.white),
                        //       )),
                        // ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
