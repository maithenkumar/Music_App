import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'models/artist.dart';
import 'models/favortepage.dart';
import 'models/music.dart';
import 'models/playListPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(164, 25, 6, 45),
              Color.fromARGB(255, 47, 17, 147)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(164, 25, 6, 45),
            leading: const Icon(
              Icons.line_style_rounded,
              color: Colors.white,
            ),
            actions: [
              const Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              )
            ],
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello sathiesh",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const Text(
                  'whatyou want hear satheesh ?',
                  style: TextStyle(color: Colors.white60),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    height: 40,
                    width: 380,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromARGB(255, 102, 7, 255)),
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Form(child: TextField()),
                    )),
                const SizedBox(
                  height: 30,
                ),
                const TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 3,
                                color: Color.fromARGB(66, 31, 225, 255)))),
                    tabs: [
                      Tab(text: 'Music'),
                      Tab(text: 'Playlist'),
                      Tab(text: 'Artist'),
                      Tab(text: 'likes'),
                    ]),
                Flexible(
                    child: TabBarView(
                  children: [
                    Music(),
                    playlist(),
                    artist(),
                    Music(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
