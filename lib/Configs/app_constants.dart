//*************   © Copyrighted by Thinkcreative_Technologies. An Exclusive item of Envato market. Make sure you have purchased a Regular License OR Extended license for the Source Code from Envato to use this product. See the License Defination attached with source code. *********************

import 'package:fiberchat/Configs/Enum.dart';
import 'package:flutter/material.dart';

//*--App Colors : Replace with your own colours---
//-**********---------- WHATSAPP Color Theme: -------------------------
final fiberchatBlack = Color(0xFF006AFF);
final fiberchatBlue = Color(0xFF02ac88);
final fiberchatDeepGreen = Color(0xFF006AFF); //new Color(0xFF01826b);
final fiberchatLightGreen = Color(0xFF02ac88);
final fiberchatgreen = Color(0xFF098b74);
final fiberchatteagreen = Color(0xFFe9fedf);
final fiberchatWhite = Colors.white;
final fiberchatGrey = Color(0xff85959f);
final fiberchatChatbackground = new Color(0xffe8ded5);
const DESIGN_TYPE = Themetype.whatsapp;
const IsSplashOnlySolidColor = false;
const SplashBackgroundSolidColor = Color(
    0xFF006AFF); //applies this colors if "IsSplashOnlySolidColor" is set to true. Color Code: 0xFF005f56 for Whatsapp theme & 0xFFFFFFFF for messenger theme.

//-*********---------- MESSENGER Color Theme: ---------------// Remove below comments for Messenger theme //------------
// final fiberchatBlack = new Color(0xFF353f58);
// final fiberchatBlue = new Color(0xFF3d9df5);
// final fiberchatDeepGreen = new Color(0xFF296ac6);
// final fiberchatLightGreen = new Color(0xFF036eff);
// final fiberchatgreen = new Color(0xFF06a2ff);
// final fiberchatteagreen = Color(0xFFeefcf8);
// final fiberchatWhite = Colors.white;
// final fiberchatGrey = Colors.grey;
// final fiberchatChatbackground = new Color(0xffdde6ea);
// const DESIGN_TYPE = Themetype.messenger;
// const IsSplashOnlySolidColor = false;
// const SplashBackgroundSolidColor = Color(
//     0xFFFFFFFF); //applies this colors if "IsSplashOnlySolidColor" is set to true. Color Code: 0xFF005f56 for Whatsapp theme & 0xFFFFFFFF for messenger theme.

//*--Admob Configurations- (By default Test Ad Units pasted)----------
const IsBannerAdShow =
    false; // Set this to 'true' if you want to show Banner ads throughout the app
const Admob_BannerAdUnitID_Android =
    'ca-app-pub-3940256099942544/6300978111'; // Test Id: 'ca-app-pub-3940256099942544/6300978111'
const Admob_BannerAdUnitID_Ios =
    'ca-app-pub-3940256099942544/2934735716'; // Test Id: 'ca-app-pub-3940256099942544/2934735716'
const IsInterstitialAdShow =
    false; // Set this to 'true' if you want to show Interstitial ads throughout the app
const Admob_InterstitialAdUnitID_Android =
    'ca-app-pub-3940256099942544/1033173712'; // Test Id:  'ca-app-pub-3940256099942544/1033173712'
const Admob_InterstitialAdUnitID_Ios =
    'ca-app-pub-3940256099942544/4411468910'; // Test Id: 'ca-app-pub-3940256099942544/4411468910'
const IsVideoAdShow =
    false; // Set this to 'true' if you want to show Video ads throughout the app
const Admob_RewardedAdUnitID_Android =
    'ca-app-pub-3940256099942544/5224354917'; // Test Id: 'ca-app-pub-3940256099942544/5224354917'
const Admob_RewardedAdUnitID_Ios =
    'ca-app-pub-3940256099942544/1712485313'; // Test Id: 'ca-app-pub-3940256099942544/1712485313'
//Also don't forget to Change the Admob App Id in "fiberchat/android/app/src/main/AndroidManifest.xml" & "fiberchat/ios/Runner/Info.plist"

//*--Agora Configurations---
const Agora_APP_IDD =
    '1254bcf3b84340acb5cf149bde9ecf14'; // Grab it from: https://www.agora.io/en/
const dynamic Agora_TOKEN =
    null; // not required until you have planned to setup high level of authentication of users in Agora.

//*--Giphy Configurations---
const GiphyAPIKey =
    'XFlZ6AxjEcfnbPoJUnS246mfm2RIQQaG'; // Grab it from: https://developers.giphy.com/

//*--App Configurations---
const Appname =
    'SecureChat'; //app name shown evrywhere with the app where required
const DEFAULT_COUNTTRYCODE_ISO =
    'PK'; //default country ISO 2 letter for login screen
const DEFAULT_COUNTTRYCODE_NUMBER =
    '+92'; //default country code number for login screen
const FONTFAMILY_NAME =
    null; // make sure you have registered the font in pubspec.yaml

//--WARNING----- PLEASE DONT EDIT THE BELOW LINES UNLESS YOU ARE A DEVELOPER -------
const SplashPath = 'assets/images/splash_new.png';
const AppLogoPath = 'assets/images/splash_new.png';
