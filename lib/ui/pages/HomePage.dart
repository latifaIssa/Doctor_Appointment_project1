import 'package:doctor_appointment_project/models/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  User user;
  String userName = 'Sem';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      left: 20,
                    ),
                    child: Text(
                      'Hi $userName,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0x000000).withOpacity(0.6),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    // child: Container(
                    //   alignment: Alignment.centerRight,
                    //   margin: EdgeInsets.only(
                    //     top: 40,
                    //     right: 10,
                    //   ),
                    child: Icon(
                      Icons.doorbell,
                    ),
                    // ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
