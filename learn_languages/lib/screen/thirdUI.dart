import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_languages/screen/home_page.dart';
import 'package:learn_languages/screen/second_ui.dart';

class ThirdUI extends StatelessWidget {
  ThirdUI({Key? key}) : super(key: key);
  TextEditingController massageController = TextEditingController();

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
          child: Column(children: [
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
                              builder: (context) => SecondUI()));
                        },
                        icon: Icon(Icons.arrow_back_ios_new_rounded),
                        color: Colors.purple,
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
                              builder: (context) => SecondUI()));
                        },
                        icon: Icon(Icons.more_horiz_rounded),
                        color: Colors.white,
                        iconSize: 40,
                      )
                    ]),
                Positioned(
                  top: 185,
                  left: 50,
                  child: Text(
                    "Translate these \n phrases to english",
                    style: TextStyle(fontSize: 30, color: Colors.black),
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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.pause,
                                    size: 40,
                                    color: Colors.blueAccent,
                                  ),
                                  Icon(
                                    Icons.sms_rounded,
                                    size: 40,
                                    color: Colors.blueAccent,
                                  ),
                                ],
                              ),
                              Text(
                                "Buenas noches,\n?como estuvo \n su dia?",
                                style: TextStyle(
                                    fontSize: 26, color: Colors.black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.pause,
                                    size: 40,
                                    color: Colors.blueAccent,
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
            Expanded(
              flex: 2,
              child: TextFormField(
                  maxLines: 200,
                  decoration: InputDecoration(
                    hintText: "Enter your answer",
                    focusColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )),
            ),
            Expanded(
                child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(
                  Icons.check_box_sharp,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
