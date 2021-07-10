import 'package:doctor_appointment_project/models/Doctor.dart';
import 'package:doctor_appointment_project/ui/pages/DoctorDetailes.dart';
import 'package:doctor_appointment_project/ui/widges/ButtonWidget.dart';
import 'package:doctor_appointment_project/ui/widges/DoctorInfoWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorWidget extends StatelessWidget {
  Doctor doctor;
  DoctorWidget(this.doctor);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 800.w,
        // height: 200.h,
        margin: EdgeInsets.only(
          bottom: 10.h,
          left: 25.w,
          right: 20.w,
        ),
        // padding: EdgeInsets.all(.w),
        child: Card(
          margin: EdgeInsets.all(5.h),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                            image: AssetImage(
                              doctor.doctorPicture,
                            ),
                          ),
                          width: 130.w,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      Expanded(flex: 4, child: DoctorInfo(doctor)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      ButtonWidget(
                        left: 15.w,
                        right: 1.w,
                        fontColor: Color(0xFF08623a),
                        bacgroundColor: Color(0xFFe7efe8),
                        icon: Icons.email_outlined,
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          // height: 40.h,
                          margin: EdgeInsets.only(
                            top: 10.h,
                            left: 15.w,
                            right: 15.w,
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
