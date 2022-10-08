import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_languages/modal/homeModalPage.dart';
import 'package:learn_languages/screen/second_ui.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondUI()));
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded),
                          color: Colors.purple,
                          iconSize: 30,
                        ),
                        Container(
                            padding: EdgeInsets.all(5),
                            height: 35,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: AssetImage("images/logo3.jpg"),
                                    height: 30,
                                    width: 30,
                                  ),
                                  Text('English',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                  IconButton(
                                      onPressed: (() {}),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                      )),
                                ])),
                      ]),
                  Positioned(
                    top: 200,
                    left: 50,
                    child: Text(
                      "Welcome back!",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
              Expanded(
                flex: 4,
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(16),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Card(
                            margin: EdgeInsets.all(10),
                            shadowColor: Colors.black,
                            color: Colors.white,
                            elevation: 30,
                            child: Stack(children: [
                              Positioned(
                                bottom: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.lightGreen,
                                  maxRadius: 500,
                                ),
                              ),
                              Positioned(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.all(8.0),
                                          padding: EdgeInsets.all(5),
                                          height: 35,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 159, 217, 243),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text('Intermediate',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ])),
                                      Icon(
                                        Icons.sms_rounded,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ]),
                              ),
                              Positioned(
                                top: 50,
                                left: 30,
                                child: Text(
                                  "Today's\nchallenge ",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 105,
                                left: 30,
                                child: Text(
                                  "German meals ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Positioned(
                                top: 150,
                                left: 15,
                                child: Image(
                                  image: AssetImage('images/logo2.jpg'),
                                  height: 25,
                                ),
                              ),
                              Positioned(
                                top: 140,
                                left: 50,
                                child: Text(
                                  "Take this lessone to \n earn a new milsstone ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black26,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      );
                    }),
              ),
              Text(
                "Your Courses",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          color: Colors.orange,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Spanish",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Begginer",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        maxRadius: 30,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.orange,
                                          maxRadius: 27,
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("43 %",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
