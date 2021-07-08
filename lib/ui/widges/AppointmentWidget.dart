import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {
  // const AppointmentWidget({ Key? key }) : super(key: key);
  String appointment;
  AppointmentWidget(this.appointment);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 30,
        bottom: 50,
        right: 10,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFeafed3),
      ),
      child: Text(
        appointment,
        style: TextStyle(),
      ),
    );
  }
}
