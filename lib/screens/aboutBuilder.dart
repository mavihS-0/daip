import 'package:daip/helper/constants.dart';
import 'package:daip/screens/homeBuilder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/bottomNavBar.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("About"),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: 20,),
          RoundedContainer(title: "Team Members Info", onTap: () { },),
          RoundedContainer(title: "Project Info", onTap: () {  },),
          RoundedContainer(title: "Software Info", onTap: () {  },),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const RoundedContainer({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            color: appBarColor
          ),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 20,
            ),
          ),
          ),
      ),
    );
  }
}
