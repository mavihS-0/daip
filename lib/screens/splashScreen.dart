import 'package:daip/screens/mapDemo.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState=
    super.initState();
    Future.delayed(const Duration(seconds: 3, milliseconds: 500), () {
      Get.to(() => const MapDemo());
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset('assets/splash.riv'),
      ),
    );
  }
}