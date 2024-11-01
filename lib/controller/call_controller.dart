// controllers/call_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallController extends GetxController {
  final TextEditingController callIDController = TextEditingController();

  // Method to navigate to CallPage
  void joinCall() {
    final callID = callIDController.text;
    if (callID.isNotEmpty) {
      Get.toNamed('/call', arguments: callID);
    } else {
      Get.snackbar('Error', 'Please enter a valid Call ID');
    }
  }

  @override
  void onClose() {
    callIDController.dispose();
    super.onClose();
  }
}
