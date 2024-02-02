import 'package:daip/helper/constants.dart';
import 'package:daip/screens/mapDemo.dart';
import 'package:daip/screens/homeBuilder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
          backgroundColor: appBarColor,
          titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
          foregroundColor: Colors.black,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),

      ),
      home: HomeWidget(),
    );
  }
}




