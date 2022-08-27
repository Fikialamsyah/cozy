import 'package:flutter/material.dart';

import '../const/theme.dart';

class FaciltiyItem extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  final int? total;

  FaciltiyItem({
    this.name,
    this.imageUrl,
    this.total
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl!,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: '${total!}',
            style: purpleTextStyle.copyWith(fontSize: 16),
            children: [
              TextSpan(
                  text: ' ${name!}', style: greyTextStyle.copyWith(fontSize: 16))
            ])),
      ],
    );
  }
}
