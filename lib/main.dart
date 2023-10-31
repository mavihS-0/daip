
import 'package:daip/screens/mapDemo.dart';
import 'package:daip/widgets/botTile.dart';
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
      ),
      home: HomeWidget(),
    );
  }
}

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


