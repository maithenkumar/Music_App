import "package:flutter/material.dart";

import 'listofplay.dart';

class playlist extends StatefulWidget {
  const playlist({super.key});

  @override
  State<playlist> createState() => _playlistState();
}

class _playlistState extends State<playlist> {
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
                      color: const Color.fromARGB(175, 83, 9, 232),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: const Image(
                              image: AssetImage(
                                'image/s.jpg',
                              ),
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Muragan Songs',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  '30',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(138, 255, 243, 243)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  '-',
                                  style: TextStyle(),
                                ),
                                const Text('songs',
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            138, 255, 243, 243))),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                          child: Text('View Song'),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => listofplay()));
                          },
                        )
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
