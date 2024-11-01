import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zegocloudsample/view/home_page.dart';
import 'package:zegocloudsample/view/call_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zego Cloud Sample',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/call', page: () => const CallPage()),
      ],
    );
  }
}
