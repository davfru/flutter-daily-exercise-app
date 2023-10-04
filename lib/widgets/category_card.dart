import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.title,
      required this.svgSrc,
      required this.press});

  final String title;
  final String svgSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => press(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                const Spacer(),
                SvgPicture.asset(svgSrc),
                const Spacer(),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 15),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
