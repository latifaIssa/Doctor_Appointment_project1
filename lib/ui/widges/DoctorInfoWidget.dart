import 'package:doctor_appointment_project/models/Doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorInfo extends StatelessWidget {
  Doctor doctor;
  DoctorInfo(this.doctor);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${doctor.doctorName}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        Text(
          '${doctor.doctorSpecilzation}',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          children: [
            Icon(
              Icons.add_location_outlined,
              size: 10,
              color: Colors.black.withOpacity(0.7),
            ),
            Text(
              '${doctor.site}',
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}
