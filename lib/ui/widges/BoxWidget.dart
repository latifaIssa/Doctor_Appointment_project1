import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  String title;
  IconData icon;
  String number;
  Color color;
  BoxWidget(this.title, this.icon, this.number, [this.color]);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.only(
          left: 25,
          top: 30,
          bottom: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
                top: 10,
                bottom: 5,
                // right: 20,
              ),
              child: Text(title),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                bottom: 10,
                top: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
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
