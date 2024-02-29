import 'package:flutter/material.dart';
import 'package:grocery_app_ui/home.dart';

import 'main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.fill)),
        child: Container(
          margin:const EdgeInsets.only(bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Buy Grosories\nEasly With Us',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Liston Podcats and open',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('your world with us',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              smallbox,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                    backgroundColor: maincolor,
                  ),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: ((context) =>const Home())));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

