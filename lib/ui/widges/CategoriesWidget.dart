import 'package:doctor_appointment_project/models/Category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  Category category;
  CategoryWidget(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      width: 330.w,
      height: 120.w,
      child: Card(
        margin: EdgeInsets.only(
          left: 15.w,
          top: 5.h,
          bottom: 10.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        shadowColor: Color(0xFF629f63).withOpacity(0.2),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Image(
                  width: 100.w,
                  image: AssetImage(
                    category.categoryImage,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(15),
                alignment: Alignment.bottomCenter,
                child: Text(
                  '${category.categoryName}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // child: Positioned.fill(
                //   child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child: Text(
                //       '${category.categoryName}',
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
