import 'package:doctor_appointment_project/ui/pages/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  int index = 0;
  TabController tabController;

  initTabController() {
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    initTabController();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      designSize: Size(1036, 718),
      // orientation: Orientation.portrait,
    );

    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            // child: SingleChildScrollView(
            //   child: HomePage(),
            // ),
            child: HomePage(),
          ),
          Center(
            child: Text('Calendar Page'),
          ),
          Center(
            child: Text('Profile Page'),
          ),
          Center(
            child: Text('Menu'),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 65.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            iconSize: 25.h,
            // backgroundColor: Colors.white,
            backgroundColor: Color.fromRGBO(255, 255, 255, 50),
            unselectedItemColor: Colors.black.withOpacity(0.6),
            fixedColor: Color(0xff09613d),

            elevation: 10,
            onTap: (tapedIndex) {
              this.index = tapedIndex;
              tabController.animateTo(tapedIndex);
              setState(() {});
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                // title: Text('home'),
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                ),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_sharp),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
