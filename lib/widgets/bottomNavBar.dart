import 'package:flutter/material.dart';

import '../helper/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: bottomNavBarColor.withOpacity(0.4),
      height: 27,
      child: Text('IEEE-EPICS-VITC-DAIP',style: TextStyle(
          height: 0.1,
          color: bottomNavBarTitleColor,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.7
      ),textAlign: TextAlign.center,),
    );
  }
}
