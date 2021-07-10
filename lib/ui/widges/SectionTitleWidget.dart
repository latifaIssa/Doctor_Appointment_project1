import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTitle extends StatelessWidget {
  String title;
  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.only(
              top: 25.h,
              bottom: 10.h,
              left: 50.w,
            ),
            child: Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              right: 50.w,
              top: 25.h,
            ),
            child: Text(
              'See All',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF629f63),
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
