import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List<String> pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];
  List<String> pSize = [
    "36",
    "M",
    "S",
    "40",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Text("My Cart",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset("images/${pNames[i]}.png",
                                height: 70, width: 70),
                            height: 100,
                            width: MediaQuery.of(context).size.width / 4,
                            margin: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10))),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 20, bottom: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(pNames[i],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                Row(
                                  children: [
                                    Text("Size:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(pSize[i],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("\$50.55",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.redAccent)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          width: MediaQuery.of(context).size.width / 1.8,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total:",
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                Text("\$300",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                  child: Text("Order Now",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
              height: 50,
              width: MediaQuery.of(context).size.width / 2 * 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.redAccent),
            )
          ],
        ),
      ),
    );
  }
}
