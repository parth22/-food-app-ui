import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/back_ground/back_ground.dart';
import 'package:recipe_app/const/bottom_navigation.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackGroundDesign(imageUrl: 'assets/png/on_bordeing.png'),
          SafeArea(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Time to cook, Let’s!',
                        style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'Dosis-SemiBold',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Cooking, cookery, or culinary arts is the art, science, and craft of using heat to prepare food for consumption. ... Some modern cooks apply advanced scientific techniques to food preparation to further enhance the flavor of the dish served.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Dosis-SemiBold',
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BottomNavBar(),
                            ));
                          },
                          child: Neumorphic(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                depth: 5,
                                shadowLightColor:
                                    Color(0xffffffff).withOpacity(0.4),
                                shadowDarkColor: Colors.black,
                              ),
                              child: Container(
                                color: Color(0xff303234),
                                padding: EdgeInsets.all(20),
                                child: SvgPicture.asset(
                                    'assets/svg/forword_arrow.svg'),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
