import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pertemuan3/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen(){
    var _duration = Duration(seconds: 5);
    return Timer(_duration, () async {
      Get.off(Dashboard());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ramadhan Kareem", style: TextStyle(fontFamily: "RamadhanKareem", fontSize: 30, fontWeight: FontWeight.bold),),
            Lottie.asset("assets/lottie/ramadhan.json", height: 300)
          ],
        ),
      ),
    );
  }
}
