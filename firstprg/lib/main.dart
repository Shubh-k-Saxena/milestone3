
import 'package:firstprg/screens/bottom_bar.dart';
import 'package:firstprg/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remove debugger mark
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const BottomBar(),
    );
  }
}


// void main() {
//   runApp(
//     MaterialApp(
//       home:Scaffold(
//         appBar: AppBar(
//           title:  const Center(
//             child: Text("input Widgets")
//             ),
//             backgroundColor: const Color.fromARGB(255, 121, 43, 5),
//         ),
//         // body:const Center(
//         //   child:TextField(
//         //     style:TextStyle(fontSize: 25,fontStyle:FontStyle.italic))
//         //   ),
//         body:const Center(child: Padding(
//           padding: EdgeInsets.all(10.0),
//           child: CupertinoTextField(
//             clearButtonMode: OverlayVisibilityMode.editing,
//             keyboardAppearance: Brightness.light,
//             placeholder: "Type the username",
//             // placeholderStyle: TextStyle(color: Color.fromARGB(255, 25, 6, 146)),
//           ),
//           ),
//           ),
//         backgroundColor: const Color.fromARGB(255, 48, 143, 221),
//       ) 
//   )
//   );
// }


