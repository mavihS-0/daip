import 'package:flutter/material.dart';
import 'botTile.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("DAIP"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          children: <Widget>[
            BotTile(connected: true, img: "images/bot.png",name : "Lorem ipsum something #249 ggez"),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez"),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez"),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez"),
            BotTile(connected: false, img: "images/bot.png",name : "Lorem ipsum something #249 ggez"),
          ],
        ),
      ),
    );
  }
}