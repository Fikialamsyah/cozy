import 'package:cozy/const/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {

  String? imageUrl;
  bool? isActive;

  BottomNavbarItem({
    this.imageUrl,
    this.isActive
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl!,
          width: 26,
        ),
        const Spacer(),
        isActive! ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(1000))),
        ) : Container(),
      ],
    );
  }
}
