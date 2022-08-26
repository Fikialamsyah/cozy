import 'package:cozy/const/theme.dart';
import 'package:cozy/models/space.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space? space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(space!.imageUrl!),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(36))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/star-icon.png',
                            ),
                            Text(
                              '${space!.rating!}/5',
                              style: whiteTextStle.copyWith(fontSize: 13),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space!.name!,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            Text.rich(TextSpan(
                text: '\$ ${space!.price!}',
                style: purpleTextStyle.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                      text: ' / Month',
                      style: greyTextStyle.copyWith(fontSize: 16))
                ])),
            const SizedBox(
              height: 16,
            ),
            Text(
              '${space!.city!}, ${space!.country!}',
              style: greyTextStyle.copyWith(fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
