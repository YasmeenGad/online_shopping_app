import 'package:flutter/material.dart';

import '../widget/product_images_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Center(
                      child: ProductImagesSlider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    )),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Apple Watch Series 6",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) =>
                                  Icon(Icons.star, color: Colors.amber),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(width: 5),
                            Text("(450)"),
                          ],
                        )),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("\$140",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        SizedBox(width: 8),
                        Text("\$200",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 103, 101, 101))),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Apple Watch Series 6 reveals a refined taste of beauty and technologyA glossy and skin-friendly fluoroelastomer band ensures a comfortable wearing.Apple Watch Series 6 is water-resistant up to 50 meters. whatever you want to do, do it worry-free.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                child: Center(
                    child: Text("Add To Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(30)),
                width: MediaQuery.of(context).size.width / 1.5,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Center(
                    child:
                        Icon(Icons.favorite_outline, color: Colors.redAccent)),
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width / 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
