// import 'package:flutter/material.dart';
// import 'package:zegocloudsample/view/call_page.dart';

// class HomePage extends StatelessWidget {
//    HomePage({super.key});

// final callIDController=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 controller:callIDController,
//                 decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Call ID',hintText: 'Enter Call ID'),),
//               SizedBox(height: 15,),
//               ElevatedButton(onPressed: (){
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CallPage(callID: callIDController.text)));
//               }, child: Text('Join'))
        
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// view/home_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zegocloudsample/controller/call_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Initialize the CallController using Get
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Call ID',
                  hintText: 'Enter Call ID',
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => callController.joinCall(),
                child: Text('Join'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
