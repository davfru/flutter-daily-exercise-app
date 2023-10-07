import 'package:flutter/material.dart';
import 'package:flutter_daily_exercise_app/constants.dart';

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function press;

  const SessionCard({
    super.key,
    required this.sessionNum,
    required this.isDone,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor)
          ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => press(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(children: [
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor)),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Session $sessionNum",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ]),
              ),
            ),
          ),
        ),
      );
    });
  }
}