import 'package:cozy/const/theme.dart';
import 'package:cozy/models/tips.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips? tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips!.imageUrl!,
          width: 80,
        ),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips!.title!,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            Text(tips!.updateAt!, style: greyTextStyle),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
