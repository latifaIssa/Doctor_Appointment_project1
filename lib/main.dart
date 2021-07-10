import 'package:doctor_appointment_project/ui/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MainPage(),
//   ));
// }
// void main() {
//   MyApp();
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //   designSize: Size(1036, 718),
    //   builder: () => MaterialApp(
    //     builder: (context, child) {
    //       return MainPage();
    //     },
    //   ),
    // );
    return MaterialApp(
      home: MainPage(),
    );
  }
}
