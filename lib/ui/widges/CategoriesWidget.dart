import 'package:doctor_appointment_project/models/Category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  Category category;
  CategoryWidget(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(
      //   left: 20,
      // ),
      width: 110,
      height: 120,
      child: Card(
        margin: EdgeInsets.only(
          left: 15,
          top: 5,
          bottom: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        shadowColor: Color(0xFF629f63).withOpacity(0.2),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Image(
                width: 50,
                image: AssetImage(
                  category.categoryImage,
                ),
              ),
            ),
            Container(
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
          ],
        ),
      ),
    );
  }
}
