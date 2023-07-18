import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widget/grid_items.dart';

class HomeScreen extends StatelessWidget {
  Widget ContainerIcon(icon) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xFFD4ECF7),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 7),
            ]),
        child: Icon(icon, size: 31));
  }

  @override
  Widget build(BuildContext context) {
    List<Color> clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 232),
      Color.fromARGB(255, 63, 208, 143),
    ];

    List<String> imageList = [
      "images/slide1.png",
      "images/slide3.png",
      "images/slide4.png",
    ];

    List<String> iconList = [
      "images/icon1.png",
      "images/icon2.png",
      "images/icon3.png",
      "images/icon4.png",
      "images/icon5.png",
      "images/icon6.png",
      "images/icon7.png",
    ];
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContainerIcon(Icons.shopping_cart_outlined),
              ContainerIcon(Icons.search),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Dear",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Text("Let's Shop Something !",
                  style: TextStyle(fontSize: 18, color: Colors.black45))
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  for (int i = 0; i <= 2; i++)
                    Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: MediaQuery.of(context).size.height / 5.6,
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: clrs[i],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("30% off on winter collection",
                                    style: TextStyle(
                                        fontSize: 21, color: Colors.white)),
                                Container(
                                  child: Center(
                                      child: Text("Shop now",
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontWeight: FontWeight.bold))),
                                  width: 90,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            )),
                            Image.asset(imageList[i], height: 180, width: 110),
                          ],
                        )),
                ],
              ),
            )),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text("Sea All", style: TextStyle(color: Colors.black54))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (var i = 0; i < 7; i++)
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Image.asset(iconList[i]),
                      ))
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        GridItems(),
      ],
    ));
  }
}
