import 'package:daip/helper/constants.dart';
import 'package:flutter/material.dart';
import 'botTile.dart';

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
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.info,size: 25,)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,30,16,16),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          children: <Widget>[
            BotTile(connected: true, img: "images/bot.png",name : "Lorem ipsum something #249 ggez",onTap: (){
            },),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez", onTap: () {  },),
          ],
        ),
      ),
    );
  }
}