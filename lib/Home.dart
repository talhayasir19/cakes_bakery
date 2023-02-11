import 'package:cakes_bakery/StartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 245, 255, 1.000),
                  borderRadius: BorderRadius.circular(40)),
              height: customHeight(size: 0.93),
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 147, 152, 168),
                    height: MediaQuery.of(context).padding.top,
                    width: customWidth(),
                  ),
                  Expanded(
                      flex: 25,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: customWidth(size: 0.05),
                            right: customWidth(size: 0.05)),
                        child: Header(),
                      )),
                  Expanded(flex: 67, child: Body()),
                  //  Spacer(flex: 8)
                ],
              ),
            ),
            Container(
              height: customHeight(size: 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: customFontSize(size: 0.045),
                  ),
                  Icon(
                    Icons.camera,
                    color: Colors.white,
                    size: customFontSize(size: 0.045),
                  ),
                  Icon(
                    Icons.messenger,
                    color: Colors.white,
                    size: customFontSize(size: 0.045),
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: customFontSize(size: 0.045),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.share_outlined), Icon(Icons.search_outlined)],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fresh Healthy",
                  style: TextStyle(
                      fontSize: customFontSize(size: 0.05),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Delicious Cakes",
                  style: TextStyle(fontSize: customFontSize(size: 0.035)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: customWidth(size: customWidth(size: 0.8)),

        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: customWidth(size: 0.95),
            // height: customHeight(size: 0.06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: customWidth(size: 0.25),
                  height: customHeight(size: 0.06),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.donut_large_sharp,
                          color: Colors.orange,
                          size: customFontSize(size: 0.022),
                        ),
                        Text(
                          "Cakes  ",
                          style: TextStyle(
                              fontSize: customFontSize(size: 0.025),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: customWidth(size: 0.25),
                  height: customHeight(size: 0.06),
                  child: Center(
                    child: Text(
                      "Soups",
                      style: TextStyle(
                          fontSize: customFontSize(size: 0.025),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: customWidth(size: 0.25),
                  height: customHeight(size: 0.06),
                  child: Center(
                    child: Text(
                      "Rolls",
                      style: TextStyle(
                          fontSize: customFontSize(size: 0.025),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Icon(
                  Icons.thumbs_up_down,
                  size: customFontSize(size: 0.032),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  left: customFontSize(size: 0.02),
                  right: customFontSize(size: 0.02)),
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: customHeight(size: 0.06),
                      crossAxisSpacing: customWidth(size: 0.05),
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            stops: [0.5, 0.7],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(242, 245, 255, 1.000),
                              Colors.white
                            ]),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                      ),
                      width: customWidth(size: 0.3),
                      height: customHeight(size: 0.25),
                      child: Padding(
                        padding: EdgeInsets.all(customFontSize(size: 0.016)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/cake3.png",
                              width: customWidth(size: 0.4),
                              height: customHeight(size: 0.10),
                            ),
                            SizedBox(
                              height: customHeight(size: 0.02),
                              child: FittedBox(
                                child: Text(
                                  "Kani Makki",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: customHeight(size: 0.018),
                              child: FittedBox(
                                child: Text(
                                  "Cold Sticks",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: customFontSize(size: 0.02)),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: customHeight(size: 0.02),
                                  child: FittedBox(
                                    child: Text(
                                      "\$4.90",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        //     fontSize:
                                        //     customFontSize(size: 0.024)
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: customHeight(size: 0.02),
                                  child: FittedBox(
                                    child: Icon(
                                      Icons.heart_broken,
                                      //   size: customFontSize(size: 0.025),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })),
            ),
          )
        ],
      ),
    ));
  }
}
