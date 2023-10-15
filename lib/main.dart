import 'package:flutter/material.dart';
import 'package:screen1/widgets/counterWidget.dart';
import 'package:screen1/widgets/detailsWidget.dart';
import 'package:screen1/widgets/ratingWidget.dart';
import 'package:screen1/widgets/sizeWidget.dart';
import 'package:screen1/widgets/smoothPageIndicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> images = [
    Image.asset('assets/image/shirt.png'),
    Image.asset('assets/image/shirt.png'),
    Image.asset('assets/image/shirt.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0f0f0f),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.black,
                      height: 400,
                      width: 300,
                      child: SmoothPageIndicator(
                        images: images,
                      ),
                    ),
                    CustomContainer(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Belgium EURO',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Audiowide',
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '20/21 Away by Adisas',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontFamily: 'Audiowide',
                        ),
                      ),
                    ),
                  ]),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar(),
                  Counter(),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontFamily: 'Audiowide',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailsWidget(
                        title: "material",
                        value: "polyester",
                      ),
                      DetailsWidget(
                        title: "Shipping",
                        value: "In 5 to 6 days",
                      ),
                      DetailsWidget(
                        title: "Return",
                        value: "within 20 day",
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffe7323e),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "\$89",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Audiowide',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
