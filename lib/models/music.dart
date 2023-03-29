import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'musicpage.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (int i = 1; i < 20; i++)
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 65,
                  width: 300,
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
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                                      color:
                                          Color.fromARGB(138, 255, 243, 243)),
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
                                        color:
                                            Color.fromARGB(138, 255, 243, 243)))
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
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => musicpage()));
                            },
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
