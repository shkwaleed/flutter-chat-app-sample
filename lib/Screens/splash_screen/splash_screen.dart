//*************   © Copyrighted by Thinkcreative_Technologies. An Exclusive item of Envato market. Make sure you have purchased a Regular License OR Extended license for the Source Code from Envato to use this product. See the License Defination attached with source code. *********************

import 'package:fiberchat/Configs/app_constants.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IsSplashOnlySolidColor == true
        ? Scaffold(
            backgroundColor: SplashBackgroundSolidColor,
            body: Center(
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(fiberchatBlack)),
            ))
        : Scaffold(
            backgroundColor: SplashBackgroundSolidColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '$SplashPath',
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "SecureChat",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  "Scanning your device..",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 14),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(fiberchatWhite),
                ),
              ],
            ),
          );
  }
}
