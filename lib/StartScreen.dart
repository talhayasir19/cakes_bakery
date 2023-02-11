import 'package:cakes_bakery/Home.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

late Size size;
late double screenWidth, screenHeight, fontSize, clientHeight;

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    fontSize = (screenWidth + screenHeight) / 2;
    clientHeight = screenHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color.fromRGBO(242, 245, 255, 1.000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Container(
                  // color: Colors.amber,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(242, 245, 255, 1.000),
                      // color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 18,
                            spreadRadius: 2,
                            color: Colors.grey.shade400,
                            offset: Offset(16, 16))
                      ]),
                  width: customWidth(size: 0.8),
                  // height: customHeight(size: 0.3),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: customHeight(size: 0.02),
                        bottom: customHeight(size: 0.02),
                        left: customWidth(size: 0.1),
                        right: customWidth(size: 0.1)),
                    child: Image.asset(
                      "assets/images/maincake.png",
                    ),
                  )),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: customWidth(size: 0.85),
                    height: customHeight(size: 0.16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: customWidth(size: 0.8),
                          height: customHeight(size: 0.05),
                          child: FittedBox(
                            child: Text(
                              "The world of Cakes",
                              style: TextStyle(
                                  // fontSize: customFontSize(size: 0.08),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: customWidth(size: 0.72),
                          child: Center(
                            child: Text(
                              "Healthy and tasty cakes available 24 / 7 across the week",
                              style: TextStyle(
                                  fontSize: customFontSize(size: 0.03),
                                  color: Colors.grey

                                  //  fontWeight: FontWeight.bold),
                                  ),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: customHeight(size: 0.03)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                          ),
                          //color: Colors.black,
                          width: customWidth(size: 0.1),
                          height: 3,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: ((context) {
                        return Home();
                      })));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      width: customHeight(size: 0.08),
                      height: customHeight(size: 0.08),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double customWidth({double size = 1}) {
  return screenWidth * size;
}

double customHeight({double size = 1}) {
  return screenHeight * size;
}

double customFontSize({double size = 0.05}) {
  return fontSize * size;
}
