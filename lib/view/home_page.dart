import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zegocloudsample/constants/styles.dart';
import 'package:zegocloudsample/controller/call_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final CallController callController = Get.put(CallController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: callController.callIDController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Call ID',
                  hintText: 'Enter Call ID',
                ),
              ),
              height15,
              ElevatedButton( 
                onPressed: () => callController.joinCall(),
                child: const Text('Join'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
