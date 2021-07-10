import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  String direction;
  IconData icon;
  Color bacgroundColor;
  Color fontColor;
  double left;
  double right;
  ButtonWidget(
      {this.icon, this.left, this.right, this.bacgroundColor, this.fontColor});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        // height: 40.h,
        margin: EdgeInsets.only(
          left: left,
          right: right,
        ),
        decoration: BoxDecoration(
          color: bacgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          color: fontColor,
          onPressed: () {},
          icon: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}
