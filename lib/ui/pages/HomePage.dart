import 'package:doctor_appointment_project/data/category_data.dart';
import 'package:doctor_appointment_project/data/doctors_data.dart';
import 'package:doctor_appointment_project/models/User.dart';
import 'package:doctor_appointment_project/ui/widges/CategoriesWidget.dart';
import 'package:doctor_appointment_project/ui/widges/DoctorWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class HomePage extends StatelessWidget {
  User user;
  String userName = 'Sem';
  List<String> doctorsNames = doctors.map((e) {
    return e.doctorName;
  }).toList();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                right: 20,
                top: 50,
              ),
              child: Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                bottom: 15,
                left: 20,
              ),
              child: Text(
                'Hi $userName,',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0x000000).withOpacity(0.7),
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 250,
              margin: EdgeInsets.only(
                // top: 50,
                left: 20,
              ),
              child: Text(
                'How do you feel today?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 5,
              ),
            ),
            Container(
              child: Expanded(
                flex: 6,
                child: SearchField(
                  suggestions: doctorsNames,
                  hint: 'Serach doctor',
                  searchStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFcdd8d0),
                  ),
                  marginColor: Color(0xFFe8f3eb),
                  validator: (x) {
                    if (!doctorsNames.contains(x) || x.isEmpty) {
                      return 'Please Enter a valid doctor name';
                    }
                    return null;
                  },
                  hasOverlay: false,
                  searchInputDecoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFFcdd8d0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFe8f3eb),
                        width: 0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFe8f3eb),
                        width: 0,
                      ),
                    ),
                    labelStyle: TextStyle(
                      backgroundColor: Color(0xFFe8f3eb),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                  maxSuggestionsInViewPort: 6,
                  itemHeight: 40,
                  onTap: (x) {
                    print(x);
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 25,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF629f63),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  color: Color(0xFFFFFFFF),
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 25,
                bottom: 5,
                left: 20,
              ),
              child: Text(
                'Categories',
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
        ),
        Expanded(
          flex: 1,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryWidget(categories[index]);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 25,
                bottom: 15,
                left: 20,
              ),
              child: Text(
                'Nearest Specilist',
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
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return DoctorWidget(doctors[index]);
            },
          ),
        ),
      ],
    );
  }
}
