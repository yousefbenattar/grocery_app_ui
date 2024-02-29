import 'package:flutter/material.dart';
import 'package:grocery_app_ui/homescreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

PageController _pageController = PageController();
int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (v){
          number = v;
        },
      controller: _pageController,
      children: [
      HomeScreen(),
      ],),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        fixedColor : Colors.green,
        backgroundColor: Colors.green,
        onTap: (p){
          setState(() {
            number = p;
          _pageController.animateToPage(p, duration: Duration(milliseconds: 500), curve: Curves.linear);
          });
        },
      items:const [
        BottomNavigationBarItem(label: '',icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.bar_chart_sharp)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.check_sharp)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.mail)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.account_circle_outlined)),
      ],),
    );
  }
}



class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.amber,
    ),);
  }
}