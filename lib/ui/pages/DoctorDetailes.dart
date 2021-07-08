import 'package:doctor_appointment_project/models/Doctor.dart';
import 'package:doctor_appointment_project/ui/widges/BoxWidget.dart';
import 'package:doctor_appointment_project/ui/widges/DoctorInfoWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorDetails extends StatelessWidget {
  Doctor doctor;
  DoctorDetails(this.doctor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  // width: 100,
                  margin: EdgeInsets.only(
                    left: 25,
                    // right: 20,
                    top: 50,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF629f63),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    tooltip: 'Back',
                    alignment: Alignment.center,
                    color: Color(0xFFFFFFFF),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    // left: 20,
                    right: 50,
                    top: 70,
                  ),
                  child: Text(
                    'Dr. Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 70, right: 50, top: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  child: Container(
                    // margin: EdgeInsets.all(30),
                    alignment: Alignment.center,
                    child: Image.asset(
                      doctor.doctorPicture,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  top: 30,
                ),
                child: DoctorInfo(doctor),
              ),
            ],
          ),
          Row(
            children: [
              BoxWidget(
                  'Reviews', Icons.star_outlined, '5.0', Color(0xFFe4921b)),
              BoxWidget(
                  'Patients', Icons.groups_rounded, '10k', Color(0xFF669c6a)),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      bottom: 5,
                      top: 20,
                    ),
                    child: Text(
                      'Availability',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '10 AM to 08 PM',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
