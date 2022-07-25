import 'dart:io';

import 'package:fiberchat/Configs/app_constants.dart';
import 'package:flutter/material.dart';

class ErrorRoot extends StatefulWidget {
  const ErrorRoot({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ErrorRoot> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                '$ErrorImage',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                "Device is compromised. Unable to proceed.",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
