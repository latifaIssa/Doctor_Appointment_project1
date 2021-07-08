import 'package:doctor_appointment_project/ui/pages/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
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
      bottomSheet: Container(
        // margin: EdgeInsets.only(top: 50),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.40),
              blurRadius: 0.10,
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0.10,
            ),
          ],
        ),
        height: 59,
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          child: Container(
            child: BottomNavigationBar(
              // backgroundColor: Colors.white,
              backgroundColor: Color.fromRGBO(255, 255, 255, 50),
              unselectedItemColor: Colors.black.withOpacity(0.6),
              fixedColor: Color(0xff09613d),
              // elevation: 10,
              onTap: (tapedIndex) {
                this.index = tapedIndex;
                tabController.animateTo(tapedIndex);
                setState(() {});
              },
              currentIndex: index,
              items: [
                BottomNavigationBarItem(
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
      ),
    );
  }
}
