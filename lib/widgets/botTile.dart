import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/constants.dart';


class BotTile extends StatelessWidget {
  bool connected;
  String img;
  String name;
  Function() onTap;
  BotTile({super.key, required this.connected, required this.img, required this.name,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: connected? Border.all(color: Colors.green, width: 3.0) : null
        ),
        child: Card(
          margin: EdgeInsets.zero,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            onTap: onTap,
            onLongPress: (){
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (connected)
                  Align(
                    alignment: Alignment.topRight,
                    child: FractionallySizedBox(
                      widthFactor: 1,
                      child: Container(
                        height: 14,
                        color: connectedColor,
                        child: Center(
                          child: Text(
                            "CONNECTED",
                            style: TextStyle(
                                fontSize: 10,
                                color: bgColor
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 50),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: botTileColor,
                        ),
                        child: Image(
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(connected? 12: 16),
                      child: Text(name,
                        style: TextStyle(
                          // overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                        ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
