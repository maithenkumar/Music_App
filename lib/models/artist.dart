import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class artist extends StatefulWidget {
  const artist({super.key});

  @override
  State<artist> createState() => _artistState();
}

class _artistState extends State<artist> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            for (int i = 1; i < 30; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('image/s.jpg'),
                              ),
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.black),
                        ),
                        Text(
                          'Murgan Songs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('image/imag.jpg'),
                              ),
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.black),
                        ),
                        Text(
                          'Maitheen songs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
