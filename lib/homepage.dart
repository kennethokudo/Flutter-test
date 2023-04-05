import 'package:flutter/material.dart';
import 'package:flutter_project/pageview_pics/pic1.dart';
import 'package:flutter_project/pageview_pics/pic3.dart';
import 'package:flutter_project/pageview_pics/pics2.dart';
import 'package:flutter_project/pageview_pics/pics4.dart';
import 'package:flutter_project/widgets/expansiontile_widget.dart';
import 'package:flutter_project/widgets/tapping_container.dart';
import 'package:flutter_project/widgets/tinyContainer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  List mytext = [
    "Apartment",
    "3 Bedrooms",
    "2 Bathrooms",
    "Sitting Room",
  ];
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 320,
            child: Stack(
              children: [
                PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  children: const [
                    Pic1(),
                    Pic2(),
                    Pic3(),
                    Pic4(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 60,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.share_rounded,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: const Alignment(0.9, 0.8),
                  child: SmoothPageIndicator(
                    effect: const SlideEffect(
                      activeDotColor: Colors.white,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                    count: 4,
                    controller: _pageController,
                  ),
                ),
                Container(
                  alignment: const Alignment(-0.8, 0.85),
                  child: Row(
                    children: const [
                      TinyContainer(
                        image: "images/5.jpg",
                      ),
                      TinyContainer(
                        image: "images/3.jpg",
                      ),
                      TinyContainer(
                        image: "images/4.jpg",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffdfefe6),
                      child: const Center(
                        child: Text(
                          "For Sale",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "MLS#: E5579076",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Listed for:",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                      text: " \$1,549586",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_checkout_outlined,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                        "2118 Thornridge Cir. Syracuse, Connecticut 35624"),
                  ),
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: const [
                        TapContainer(
                          text: "View on Map",
                          icon: Icons.map_outlined,
                        ),
                        Spacer(),
                        TapContainer(
                          text: "Get Directions",
                          icon: Icons.directions_outlined,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xfff4f5f9),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "Notify similar properties like this",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.only(bottom: 30),
                    height: 100,
                    color: const Color(0xfff4f5f9),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Property Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Flexible(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: mytext.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 6),
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Icon(
                                          Icons.vpn_lock,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          mytext[index],
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ExpansionTile(
                    title: Text(
                      "Key Facts",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    backgroundColor: const Color(0xfff4f5f9),
                    leading: const Icon(
                      Icons.key,
                    ),
                    children: const [
                      Text(
                        "The key facts about this property",
                      )
                    ],
                  ),
                  const ExpansiontileWidget(
                    title: "Property History",
                    icon: Icons.timelapse,
                  ),
                  ExpansionTile(
                    title: Text(
                      "Demographics",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    backgroundColor: const Color(0xfff4f5f9),
                    leading: const Icon(
                      Icons.refresh_rounded,
                    ),
                    children: const [
                      Text(
                        "The key facts about this property",
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text(
                      "Points of interest",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    backgroundColor: const Color(0xfff4f5f9),
                    leading: const Icon(
                      Icons.location_on_outlined,
                    ),
                    children: const [
                      Text(
                        "The key facts about this property",
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        )),
                    child: Row(
                      children: [
                        const Text(
                          "My Notes",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                "Add Note",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xfff4f5f9),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Listing Agent",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text("Courtney Henry"),
                                Text("Business Monitor International"),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.phone_in_talk,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
