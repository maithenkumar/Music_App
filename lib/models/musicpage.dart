import 'package:flutter/material.dart';

class musicpage extends StatefulWidget {
  const musicpage({super.key});

  @override
  State<musicpage> createState() => _musicpageState();
}

class _musicpageState extends State<musicpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(164, 25, 6, 45),
            Color.fromARGB(255, 47, 17, 147)
          ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 100, right: 20),
            child: Container(
              //  margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(color: Colors.black38),
              height: 400,
              width: 300,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.heart_broken_outlined,
                          color: Colors.red[500],
                          size: 35,
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.music_note_outlined,
                    size: 280,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.skip_next,
                        color: Colors.white60,
                        size: 40,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      Icon(
                        Icons.skip_previous_sharp,
                        color: Colors.white60,
                        size: 40,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Maithee',
              style: TextStyle(
                  color: Colors.white60,
                  inherit: false,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Text(
              'Song :',
              style: TextStyle(inherit: false, color: Colors.white38),
            ),
          )
        ],
      ),
    );
  }
}
