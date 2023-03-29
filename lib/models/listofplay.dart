import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class listofplay extends StatefulWidget {
  const listofplay({super.key});

  @override
  State<listofplay> createState() => _listofplayState();
}

class _listofplayState extends State<listofplay> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(body: listsong()));
  }
}

class listsong extends StatefulWidget {
  const listsong({super.key});

  @override
  State<listsong> createState() => _listsongState();
}

class _listsongState extends State<listsong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
        backgroundColor: Color.fromARGB(255, 47, 17, 147),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 47, 17, 147),
                  Color.fromARGB(164, 25, 6, 45),
                ])),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  for (int i = 1; i < 30; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(175, 83, 9, 232),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  '$i',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Imagine Dragons- Belive',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Bass',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  138, 255, 243, 243)),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '-',
                                          style: TextStyle(),
                                        ),
                                        Text('04:31',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    138, 255, 243, 243)))
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                ],
              ),
            )),
      ),
    );
  }
}
