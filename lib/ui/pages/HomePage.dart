import 'package:doctor_appointment_project/data/category_data.dart';
import 'package:doctor_appointment_project/data/doctors_data.dart';
import 'package:doctor_appointment_project/models/User.dart';
import 'package:doctor_appointment_project/ui/widges/ButtonWidget.dart';
import 'package:doctor_appointment_project/ui/widges/CategoriesWidget.dart';
import 'package:doctor_appointment_project/ui/widges/DoctorWidget.dart';
import 'package:doctor_appointment_project/ui/widges/SectionTitleWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                top: 50.h,
              ),
              child: Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    // bottom: 5.h,
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
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: 800.w,
                  margin: EdgeInsets.only(
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
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 2.h,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 5,
                ),
              ),
              Container(
                // alignment: Alignment.topRight,
                // clipBehavior: ,
                child: Expanded(
                  flex: 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
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
                      hasOverlay: true,
                      searchInputDecoration: InputDecoration(
                        isCollapsed: true,

                        // isDense: false,
                        enabledBorder: InputBorder.none,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFFcdd8d0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFe8f3eb),
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
              ),
              ButtonWidget(
                left: 10.w,
                right: 25.w,
                fontColor: Colors.white,
                bacgroundColor: Color(0xFF629f63),
                icon: Icons.settings,
              ),
            ],
          ),
        ),
        SectionTitle('Categories'),
        Expanded(
          flex: 4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Expanded(child: CategoryWidget(categories[index]));
            },
          ),
        ),
        SectionTitle('Nearest Specilist'),
        Expanded(
          flex: 5,
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
