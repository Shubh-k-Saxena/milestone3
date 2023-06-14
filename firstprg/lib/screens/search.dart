import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        title: const Center(
          child: Text("Search Result", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                //..................
                Container(
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: const BoxDecoration(
                    color: Colors.lightGreen,
                  ),
                  child: Row(children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                        height: 40,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((10)),
                          color: Colors.white,
                        ),
                        child: const Row(
                          children: [
                            Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
                            Gap(5),
                            Text(
                              "Search",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Gap(200),
                            Icon(
                                FluentSystemIcons.ic_fluent_navigation_regular),
                            Icon(FluentSystemIcons.ic_fluent_search_regular),
                            Icon(FluentSystemIcons
                                .ic_fluent_more_vertical_filled),
                          ],
                        )),
                  ]),
                ),
                //..................
                const Gap(60),
                //....................
                Container(
                  height: h * 0.25,
                  width: w * 0.9,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xDFD8DAD7),
                          offset: Offset(0, 0),
                          blurRadius: 5.0,
                          spreadRadius: 2.0),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Gap(10),
                      Container(
                        child: Row(
                          children: [
                            Gap(5),
                            Container(
                              height: h * 0.11,
                              width: w * 0.25,
                              // child: const Image(image:AssetImage("assets/images/img1.jpg") ),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/img1.jpg")),
                                borderRadius: BorderRadius.circular(75),
                              ),
                            ),
                            Gap(10),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Lorem ipsum",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        fontFamily: "Dosis"),
                                  ),
                                  const Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontStyle: FontStyle.italic)),
                                  const Text("consetetur sadipscing elitr, sed",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontStyle: FontStyle.italic)),
                                  Container(
                                    child: Row(
                                      children: [
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            starCount: 5,
                                            rating: 4.5,
                                            size: 20.0,
                                            color: Colors.lightGreen,
                                            borderColor: Colors.green,
                                            spacing: 0.0),
                                        const Gap(10),
                                        const Text("4.5",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic)),
                                        const Gap(10),
                                        const Text("90.0\$/PH",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Gap(5)
                          ],
                        ),
                      ),
                      const Gap(20),
                      Container(
                        child: Row(
                          children: [
                            const Gap(5),
                            Container(
                              height: h * 0.06,
                              width: w * 0.4,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFEED1A2),
                              ),
                              child: const Center(
                                child: Text("PROFILE",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const Gap(5),
                            Container(
                              height: h * 0.06,
                              width: w * 0.4,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightGreen,
                              ),
                              child: const Center(
                                child: Text("HIRE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const Gap(5),
                          ],
                        ),
                      ),
                      const Gap(5),
                    ],
                  ),
                ),
                //....................
                const Gap(40),
                //....................
                Container(
                  height: h * 0.25,
                  width: w * 0.9,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xDFD8DAD7),
                          offset: Offset(0, 0),
                          blurRadius: 5.0,
                          spreadRadius: 2.0),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Gap(10),
                      Container(
                        child: Row(
                          children: [
                            Gap(5),
                            Container(
                              height: h * 0.11,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/img2.jpg")),
                                borderRadius: BorderRadius.circular(75),
                              ),
                            ),
                            Gap(10),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Lorem ipsum",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        fontFamily: "Dosis"),
                                  ),
                                  const Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontStyle: FontStyle.italic)),
                                  const Text("consetetur sadipscing elitr, sed",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontStyle: FontStyle.italic)),
                                  Container(
                                    child: Row(
                                      children: [
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            starCount: 5,
                                            rating: 4.5,
                                            size: 20.0,
                                            color: Colors.lightGreen,
                                            borderColor: Colors.green,
                                            spacing: 0.0),
                                        const Gap(10),
                                        const Text("4.5",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic)),
                                        const Gap(10),
                                        const Text("90.0\$/PH",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Gap(5)
                          ],
                        ),
                      ),
                      const Gap(20),
                      Container(
                        child: Row(
                          children: [
                            const Gap(5),
                            Container(
                              height: h * 0.06,
                              width: w * 0.4,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFEED1A2),
                              ),
                              child: const Center(
                                child: Text("PROFILE",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const Gap(5),
                            Container(
                              height: h * 0.06,
                              width: w * 0.4,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightGreen,
                              ),
                              child: const Center(
                                child: Text("HIRE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const Gap(5),
                          ],
                        ),
                      ),
                      const Gap(5),
                    ],
                  ),
                ),
                //....................
                const Gap(60)
              ],
            ),
          )
        ],
      ),
    );
  }
}
