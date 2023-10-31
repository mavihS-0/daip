import 'package:flutter/material.dart';

class BotTile extends StatefulWidget {
  bool connected;
  String img;
  String name;
  BotTile({super.key, required this.connected, required this.img, required this.name, });

  @override
  State<BotTile> createState() => _BotTileState();
}

class _BotTileState extends State<BotTile> {
  @override
  Widget build(BuildContext context) {

    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Card(
    //     child: InkWell(
    //       customBorder: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(8)
    //       ),
    //       // radius: 8,
    //       onTap: (){
    //         // on click walla shid idhar
    //         //TODO: Bot onTap Function
    //       },
    //       child: Stack(
    //         alignment: Alignment.center,
    //         children: [
    //           Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [
    //               const SizedBox(height: 50),
    //               Container(
    //                 width: 80,
    //                 height: 80,
    //                 decoration: const BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   color: Color(0xffefefef),
    //                 ),
    //                 child: const Image(
    //                   image: AssetImage('images/bot.png'),
    //                   width: 60,
    //                   height: 60,
    //                 ),
    //               ),
    //               const SizedBox(height: 50),
    //               const Padding(
    //                 padding: EdgeInsets.symmetric(horizontal: 16),
    //                 child: Text("Lorem ipsum something #249 ggez",
    //                 style: TextStyle(
    //                   fontSize: 16,
    //                 ),),
    //               ),
    //               const SizedBox(height: 14),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: widget.connected? Border.all(color: Colors.green, width: 3.0) : null
        ),
        child: Card(
          margin: EdgeInsets.zero,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            onTap: (){
              // on click walla shid idhar
              //TODO: Bot onTap Function
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (widget.connected)
                Align(
                  alignment: Alignment.topRight,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: Container(
                      height: 14,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          "CONNECTED",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white
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
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffefefef),
                      ),
                      child: const Image(
                        image: AssetImage('images/bot.png'),
                        width: 60,
                        height: 60,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text("Lorem ipsum something #249 ggez",
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
