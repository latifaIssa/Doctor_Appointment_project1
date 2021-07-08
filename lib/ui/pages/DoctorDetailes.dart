import 'package:doctor_appointment_project/data/doctors_data.dart';
import 'package:doctor_appointment_project/models/Doctor.dart';
import 'package:doctor_appointment_project/ui/widges/AppointmentWidget.dart';
import 'package:doctor_appointment_project/ui/widges/BoxWidget.dart';
import 'package:doctor_appointment_project/ui/widges/ButtonWidget.dart';
import 'package:doctor_appointment_project/ui/widges/DoctorInfoWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class DoctorDetails extends StatelessWidget {
  Doctor doctor;
  DoctorDetails(this.doctor);
  var dateString = DateFormat.E().format(DateTime.now());

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      '${doctor.availability[dateString][0]} to ${doctor.availability[dateString][doctor.availability[dateString].length - 1]}',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 20,
                  top: 20,
                ),
                child: RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 12,
                        color: Color(0xFF87b5a3),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Check',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFF87b5a3),
                        ),
                      ),
                    ],
                  ),
                  color: Color(0xFFf5f6f6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                      color: Color(0xFF87b5a3),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctor.availability[dateString].length,
              itemBuilder: (context, index) {
                return AppointmentWidget(
                  '${doctor.availability[dateString][index]}',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
