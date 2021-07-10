import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentWidget extends StatelessWidget {
  // const AppointmentWidget({ Key? key }) : super(key: key);
  String appointment;
  AppointmentWidget(this.appointment);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // height: 10,
        // width: 30,
        alignment: Alignment(0, 0),
        margin: EdgeInsets.only(
          left: 20.w,
          top: 20.h,
          bottom: 30.h,
          right: 20.w,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFeafed3),
        ),
        child: Text(
          appointment,
          style: TextStyle(),
        ),
      ),
    );
  }
}
