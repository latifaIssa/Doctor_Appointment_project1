import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  String title;
  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 25,
            bottom: 15,
            left: 20,
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
        Container(
          margin: EdgeInsets.only(
            right: 25,
            top: 25,
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
      ],
    );
  }
}
