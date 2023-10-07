import 'package:flutter/material.dart';
import 'package:flutter_daily_exercise_app/constants.dart';
import 'package:flutter_daily_exercise_app/widgets/bottom_nav_bar.dart';
import 'package:flutter_daily_exercise_app/widgets/search_bar.dart';
import 'package:flutter_daily_exercise_app/widgets/session_card.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        bottomNavigationBar: BottomNavBar(size: size),
        body: Stack(
          children: [
            Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                  color: kBlueLightColor,
                  image: DecorationImage(
                      image: AssetImage("assets/images/meditation_bg.png"),
                      fit: BoxFit.fitWidth)),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text("Meditation",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 45)),
                  const SizedBox(height: 10),
                  const Text("3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: size.width * .6,
                    child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness"),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: size.width * .5,
                    child: const CustomSearchBar(),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      SessionCard(
                        sessionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 2,
                        isDone: false,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 3,
                        isDone: false,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 4,
                        isDone: false,
                        press: () {},
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Meditation",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: kShadowColor)
                        ]),
                    child: Row(children: [
                      SvgPicture.asset(
                          "assets/icons/Meditation_women_small.svg"),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Basic 2",
                                  style: Theme.of(context).textTheme.bodyLarge),
                              Text("Start your deepen your practice")
                            ]),
                      ),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: SvgPicture.asset("assets/icons/Lock.svg"))
                    ]),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
