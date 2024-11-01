import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zegocloudsample/constants/callinfo.dart';

final userId = Random().nextInt(9999);

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String callID = Get.arguments;

    return ZegoUIKitPrebuiltCall(
      appID: Callinfo.appId,
      appSign: Callinfo.appSign,
      userID: userId.toString(),
      userName: 'user_name$userId',
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
















