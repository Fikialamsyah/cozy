import 'package:cozy/const/theme.dart';
import 'package:cozy/models/city.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City? city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city!.imageUrl!,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city!.isPopular!
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(36))),
                          child: Image.asset(
                            'assets/star-icon.png',
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              city!.name!,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
