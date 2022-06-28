import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Error400 extends StatefulWidget {
  const Error400({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Error400> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                "Account activation pending from Admin.",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 closeApp(){
   Future.delayed(const Duration(seconds: 4), () {
     exit(0);
   });

 }
