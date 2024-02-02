import 'package:daip/helper/constants.dart';
import 'package:daip/screens/botBuilder.dart';
import 'package:daip/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/botTile.dart';
import 'aboutBuilder.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("DAIP"),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Get.to(() => AboutWidget());
            },
            icon: Icon(Icons.info,size: 27,)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,30,16,16),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          children: <Widget>[
            BotTile(connected: true, img: "images/bot.png",name : "Lorem ipsum something #249 ggez",onTap: (){ Get.to(()=>const BotWidget());},),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}