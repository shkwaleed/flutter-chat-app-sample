//*************   © Copyrighted by Thinkcreative_Technologies. An Exclusive item of Envato market. Make sure you have purchased a Regular License OR Extended license for the Source Code from Envato to use this product. See the License Defination attached with source code. *********************

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fiberchat/Configs/Dbpaths.dart';
import 'package:fiberchat/Configs/Enum.dart';
import 'package:fiberchat/Configs/app_constants.dart';
import 'package:fiberchat/Screens/homepage/homepage.dart';
import 'package:fiberchat/Services/Providers/call_history_provider.dart';
import 'package:fiberchat/Services/localization/language_constants.dart';
import 'package:fiberchat/Screens/calling_screen/audio_call.dart';
import 'package:fiberchat/Screens/calling_screen/video_call.dart';
import 'package:fiberchat/widgets/Common/cached_image.dart';
import 'package:fiberchat/Utils/open_settings.dart';
import 'package:fiberchat/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fiberchat/Models/call.dart';
import 'package:fiberchat/Models/call_methods.dart';
import 'package:fiberchat/Utils/permissions.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PickupScreen extends StatelessWidget {
  final Call call;
  final String? currentuseruid;
  final CallMethods callMethods = CallMethods();

  PickupScreen({
    required this.call,
    required this.currentuseruid,
  });

  ClientRole _role = ClientRole.Broadcaster;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Consumer<FirestoreDataProviderCALLHISTORY>(
        builder: (context, firestoreDataProviderCALLHISTORY, _child) => h > w &&
                ((h / w) > 1.5)
            ? Scaffold(
                backgroundColor: fiberchatDeepGreen,
                body: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        alignment: Alignment.center,
                        color: DESIGN_TYPE == Themetype.messenger
                            ? fiberchatDeepGreen
                            : fiberchatDeepGreen,
                        width: w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 7,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  call.isvideocall == true
                                      ? Icons.videocam
                                      : Icons.mic_rounded,
                                  size: 40,
                                  color: DESIGN_TYPE == Themetype.whatsapp
                                      ? fiberchatWhite
                                      : fiberchatWhite,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  call.isvideocall == true
                                      ? getTranslated(context, 'incomingvideo')
                                      : getTranslated(context, 'incomingaudio'),
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: DESIGN_TYPE == Themetype.whatsapp
                                          ? fiberchatWhite
                                          : fiberchatWhite,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h / 9,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 7),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.1,
                                    child: Text(
                                      call.callerName!,
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: DESIGN_TYPE == Themetype.whatsapp
                                            ? fiberchatWhite
                                            : fiberchatWhite,
                                        fontSize: 27,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    call.callerId!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: DESIGN_TYPE == Themetype.whatsapp
                                          ? fiberchatWhite
                                          : fiberchatWhite,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(height: h / 25),

                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      call.callerPic == null || call.callerPic == ''
                          ? Container(
                              width: w,
                              padding: EdgeInsets.only(top: 90, bottom: 90),
                              color: fiberchatWhite,
                              child: Icon(
                                Icons.person,
                                size: 140,
                                color: fiberchatLightGreen,
                              ),
                            )
                          : Stack(
                              children: [
                                Container(
                                    width: w,
                                    padding: EdgeInsets.only(top: 90, bottom: 90),
                                    color: fiberchatWhite,
                                    child: CachedNetworkImage(
                                      imageUrl: call.callerPic!,
                                      fit: BoxFit.cover,
                                      height: w + (w / 140),
                                      width: w,
                                      placeholder: (context, url) => Center(
                                          child: Container(
                                        height: w + (w / 140),
                                        width: w,
                                        color: Colors.white12,
                                        child: Icon(
                                          Icons.person,
                                          size: 140,
                                          color: fiberchatLightGreen,
                                        ),
                                      )),
                                      errorWidget: (context, url, error) =>
                                          Container(
                                        height: w + (w / 140),
                                        width: w,
                                        color: Colors.white12,
                                        child: Icon(
                                          Icons.person,
                                          size: 140,
                                          color: fiberchatLightGreen,
                                        ),
                                      ),
                                    )),
                                Container(
                                  width: w,
                                  padding: EdgeInsets.only(top: 90, bottom: 90),
                                  color: fiberchatWhite,
                                ),
                              ],
                            ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 30 , bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () async {
                                  flutterLocalNotificationsPlugin.cancelAll();
                                  await callMethods.endCall(call: call);
                                  FirebaseFirestore.instance
                                      .collection(DbPaths.collectionusers)
                                      .doc(call.callerId)
                                      .collection(DbPaths.collectioncallhistory)
                                      .doc(call.timeepoch.toString())
                                      .set({
                                    'STATUS': 'rejected',
                                    'ENDED': DateTime.now(),
                                  }, SetOptions(merge: true));
                                  FirebaseFirestore.instance
                                      .collection(DbPaths.collectionusers)
                                      .doc(call.receiverId)
                                      .collection(DbPaths.collectioncallhistory)
                                      .doc(call.timeepoch.toString())
                                      .set({
                                    'STATUS': 'rejected',
                                    'ENDED': DateTime.now(),
                                  }, SetOptions(merge: true));
                                  //----------
                                  await FirebaseFirestore.instance
                                      .collection(DbPaths.collectionusers)
                                      .doc(call.receiverId)
                                      .collection('recent')
                                      .doc('callended')
                                      .set({
                                    'id': call.receiverId,
                                    'ENDED': DateTime.now().millisecondsSinceEpoch
                                  }, SetOptions(merge: true));

                                  firestoreDataProviderCALLHISTORY.fetchNextData(
                                      'CALLHISTORY',
                                      FirebaseFirestore.instance
                                          .collection(DbPaths.collectionusers)
                                          .doc(call.receiverId)
                                          .collection(
                                              DbPaths.collectioncallhistory)
                                          .orderBy('TIME', descending: true)
                                          .limit(14),
                                      true);
                                },
                                child: Icon(
                                  Icons.call_end,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                                shape: CircleBorder(),
                                elevation: 2.0,
                                fillColor: Colors.redAccent,
                                padding: const EdgeInsets.all(15.0),
                              ),
                              SizedBox(width: 45),
                              RawMaterialButton(
                                onPressed: () async {
                                  flutterLocalNotificationsPlugin.cancelAll();
                                  await Permissions
                                          .cameraAndMicrophonePermissionsGranted()
                                      .then((isgranted) async {
                                    if (isgranted == true) {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => call
                                                      .isvideocall ==
                                                  true
                                              ? VideoCall(
                                                  currentuseruid: currentuseruid,
                                                  call: call,
                                                  channelName: call.channelId,
                                                  role: _role,
                                                )
                                              : AudioCall(
                                                  currentuseruid: currentuseruid,
                                                  call: call,
                                                  channelName: call.channelId,
                                                  role: _role,
                                                ),
                                        ),
                                      );
                                    } else {
                                      Fiberchat.showRationale(
                                          getTranslated(context, 'pmc'));
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  OpenSettings()));
                                    }
                                  }).catchError((onError) {
                                    Fiberchat.showRationale(
                                        getTranslated(context, 'pmc'));
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                OpenSettings()));
                                  });
                                },
                                child: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                                shape: CircleBorder(),
                                elevation: 2.0,
                                fillColor: Colors.green[400],
                                padding: const EdgeInsets.all(15.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
            : Scaffold(
                backgroundColor: DESIGN_TYPE == Themetype.whatsapp
                    ? fiberchatgreen
                    : fiberchatWhite,
                body: SingleChildScrollView(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: w > h ? 60 : 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        w > h
                            ? SizedBox(
                                height: 0,
                              )
                            : Icon(
                                call.isvideocall == true
                                    ? Icons.videocam_outlined
                                    : Icons.mic,
                                size: 80,
                                color: DESIGN_TYPE == Themetype.whatsapp
                                    ? fiberchatWhite
                                    : fiberchatBlack,
                              ),
                        w > h
                            ? SizedBox(
                                height: 0,
                              )
                            : SizedBox(
                                height: 20,
                              ),
                        Text(
                          call.isvideocall == true
                              ? getTranslated(context, 'incomingvideo')
                              : getTranslated(context, 'incomingaudio'),
                          style: TextStyle(
                            fontSize: 19,
                            color: DESIGN_TYPE == Themetype.whatsapp
                                ? fiberchatWhite
                                : fiberchatBlack,
                          ),
                        ),
                        SizedBox(height: w > h ? 16 : 50),
                        CachedImage(
                          call.callerPic,
                          isRound: true,
                          height: w > h ? 60 : 110,
                          width: w > h ? 60 : 110,
                          radius: w > h ? 70 : 138,
                        ),
                        SizedBox(height: 15),
                        Text(
                          call.callerName!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: DESIGN_TYPE == Themetype.whatsapp
                                ? fiberchatWhite
                                : fiberchatBlack,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: w > h ? 30 : 75),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () async {
                                flutterLocalNotificationsPlugin.cancelAll();
                                await callMethods.endCall(call: call);
                                FirebaseFirestore.instance
                                    .collection(DbPaths.collectionusers)
                                    .doc(call.callerId)
                                    .collection(DbPaths.collectioncallhistory)
                                    .doc(call.timeepoch.toString())
                                    .set({
                                  'STATUS': 'rejected',
                                  'ENDED': DateTime.now(),
                                }, SetOptions(merge: true));
                                FirebaseFirestore.instance
                                    .collection(DbPaths.collectionusers)
                                    .doc(call.receiverId)
                                    .collection(DbPaths.collectioncallhistory)
                                    .doc(call.timeepoch.toString())
                                    .set({
                                  'STATUS': 'rejected',
                                  'ENDED': DateTime.now(),
                                }, SetOptions(merge: true));
                                //----------
                                await FirebaseFirestore.instance
                                    .collection(DbPaths.collectionusers)
                                    .doc(call.receiverId)
                                    .collection('recent')
                                    .doc('callended')
                                    .set({
                                  'id': call.receiverId,
                                  'ENDED': DateTime.now().millisecondsSinceEpoch
                                }, SetOptions(merge: true));

                                firestoreDataProviderCALLHISTORY.fetchNextData(
                                    'CALLHISTORY',
                                    FirebaseFirestore.instance
                                        .collection(DbPaths.collectionusers)
                                        .doc(call.receiverId)
                                        .collection(
                                            DbPaths.collectioncallhistory)
                                        .orderBy('TIME', descending: true)
                                        .limit(14),
                                    true);
                              },
                              child: Icon(
                                Icons.call_end,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
                              elevation: 2.0,
                              fillColor: Colors.redAccent,
                              padding: const EdgeInsets.all(15.0),
                            ),
                            SizedBox(width: 45),
                            RawMaterialButton(
                              onPressed: () async {
                                flutterLocalNotificationsPlugin.cancelAll();
                                await Permissions
                                        .cameraAndMicrophonePermissionsGranted()
                                    .then((isgranted) async {
                                  if (isgranted == true) {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => call
                                                    .isvideocall ==
                                                true
                                            ? VideoCall(
                                                currentuseruid: currentuseruid,
                                                call: call,
                                                channelName: call.channelId,
                                                role: _role,
                                              )
                                            : AudioCall(
                                                currentuseruid: currentuseruid,
                                                call: call,
                                                channelName: call.channelId,
                                                role: _role,
                                              ),
                                      ),
                                    );
                                  } else {
                                    Fiberchat.showRationale(
                                        getTranslated(context, 'pmc'));
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                OpenSettings()));
                                  }
                                }).catchError((onError) {
                                  Fiberchat.showRationale(
                                      getTranslated(context, 'pmc'));
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              OpenSettings()));
                                });
                              },
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
                              elevation: 2.0,
                              fillColor: fiberchatLightGreen,
                              padding: const EdgeInsets.all(15.0),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ));
  }
}
