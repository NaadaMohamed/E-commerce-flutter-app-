
import 'package:flutter/material.dart';

import 'login_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.purple,
        actions: [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Container(
        child:
        Text('BUT IT',style: TextStyle(color: Colors.cyan,fontSize:30),),
      ),
      // body: Center(
      //   child: Image.asset('assets/loading.JPG'),
      // ),
    );
  }
}
