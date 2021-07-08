import 'package:doctor_appointment_project/models/Doctor.dart';
import 'package:doctor_appointment_project/ui/pages/DoctorDetailes.dart';
import 'package:doctor_appointment_project/ui/widges/ButtonWidget.dart';
import 'package:doctor_appointment_project/ui/widges/DoctorInfoWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  Doctor doctor;
  DoctorWidget(this.doctor);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      // height: 120,
      margin: EdgeInsets.only(
        bottom: 30,
        left: 15,
        right: 10,
      ),
      // padding: EdgeInsets.all(15),
      child: Card(
        margin: EdgeInsets.only(
          bottom: 55,
        ),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image(
                    width: 50,
                    image: AssetImage(
                      doctor.doctorPicture,
                    ),
                  ),
                  width: 63,
                  alignment: Alignment.topLeft,
                ),
                DoctorInfo(doctor),
              ],
            ),
            Row(
              children: [
                ButtonWidget(
                  left: 15,
                  right: 1,
                  fontColor: Color(0xFF08623a),
                  bacgroundColor: Color(0xFFe7efe8),
                  icon: Icons.email_outlined,
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: RaisedButton(
                      child: Text(
                        'MAKE AN APPOINTMENT',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFF08623a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorDetails(doctor),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
