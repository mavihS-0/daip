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
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Image.asset('images/epics.webp',fit: BoxFit.fitHeight,height: 20,),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Image.asset('images/ieee.png',fit: BoxFit.fitHeight,height: 30,),
        //   ),
        // ]
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.info_outline,size: 25,)
          ),
        ],
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