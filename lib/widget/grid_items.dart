import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  List<String> pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7),
        itemCount: pNames.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("itemScreen");
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD4ECFF),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26, blurRadius: 4, spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("30% off",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          Icon(Icons.favorite, color: Colors.redAccent)
                        ],
                      ),
                      SizedBox(height: 5),
                      Image.asset(
                        "images/${pNames[index]}.png",
                        height: 120,
                      ),
                      SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pNames[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.8))),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text("\$500",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.redAccent)),
                              SizedBox(
                                width: 15,
                              ),
                              Text("\$130",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
