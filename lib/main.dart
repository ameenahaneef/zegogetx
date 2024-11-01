// import 'package:flutter/material.dart';
// import 'package:zegocloudsample/view/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home:  HomePage()
//     );
//   }
// }
// main.dart
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
        GetPage(name: '/call', page: () => CallPage()),
      ],
    );
  }
}
