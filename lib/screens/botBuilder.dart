import 'package:daip/helper/constants.dart';
import 'package:daip/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotWidget extends StatelessWidget {
  const BotWidget({super.key});

  @override
  Widget build(BuildContext context) {

    bool isConnected = false;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        // leading: IconButton(
        //   onPressed: (){
        //     Get.back();
        //   },
        //   icon: const Icon(Icons.arrow_back_ios),
        // ),
        // title: const Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 16.0),
        //   child: Text("Bot Ka Naam Kya Rakhein?"),
        // ),
        // actions: [
        //   IconButton(
        //       onPressed: (){
        //       },
        //       icon: const Icon(Icons.info,size: 27,)
        //   ),
        // ],
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                        Text("Bot Ka Naam Kya Rakhein?",style: TextStyle(
                          fontSize: 24,
                        ),),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                      },
                      icon: const Icon(Icons.info,size: 27,)
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Image.asset('images/bot.png',height: 100,width: 50,),
                    const SizedBox(width: 20,),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text("Viewing 89%" ,style: TextStyle(
                              fontSize: 16,
                            ),),
                            Icon(Icons.battery_full,size: 16,)
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                          decoration: BoxDecoration(
                            color: isConnected?connectedColor:disconnectedColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(isConnected?'Connected':'Disconnected',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
