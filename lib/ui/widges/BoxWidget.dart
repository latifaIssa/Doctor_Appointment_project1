import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxWidget extends StatelessWidget {
  String title;
  IconData icon;
  String number;
  Color color;
  BoxWidget(this.title, this.icon, this.number, [this.color]);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(
          left: 130.w,
          top: 10.h,
          bottom: 10.h,
          right: 50.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 30.w,
                top: 5.h,
                // bottom: 5.h,
                // right: 20,
              ),
              child: Text(title),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15.w,
                bottom: 10.h,
                top: 5.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5.w,
                    ),
                    child: Icon(
                      icon,
                      color: color,
                    ),
                  ),
                  Text(
                    number,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
