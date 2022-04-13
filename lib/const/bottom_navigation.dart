import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:recipe_app/ui/favoitre_screen.dart';
import 'package:recipe_app/ui/home/home_screen.dart';
import 'package:recipe_app/ui/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: _selectedItem == 1
                      ? HomeScreen()
                      : _selectedItem == 0
                          ? const FavoriteScreen()
                          : ProfileScreen(),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      color: Color(0xff303234),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _selectedItem == 0
                              ? Padding(
                                  padding: EdgeInsets.only(bottom: 50),
                                  child: Neumorphic(
                                    padding: const EdgeInsets.all(25),
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.circle(),
                                      depth: 1,
                                      color: Colors.black.withOpacity(0.4),
                                      shadowLightColor:
                                          Colors.black.withOpacity(0.5),
                                    ),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/png/heart_select.png',
                                      ),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    _selectedItem = 0;
                                    setState(() {});
                                  },
                                  child: Neumorphic(
                                    padding: const EdgeInsets.all(20),
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.flat,
                                      boxShape: NeumorphicBoxShape.circle(),
                                      depth: 10,
                                      color: Color(0xff323233),
                                      shadowLightColor:
                                          Colors.white.withOpacity(0.4),
                                    ),
                                    child: Container(
                                      color: Color(0xff323233),
                                      child: Image.asset(
                                        'assets/png/heart.png',
                                      ),
                                    ),
                                  ),
                                ),
                          _selectedItem == 1
                              ? Padding(
                                  padding: EdgeInsets.only(bottom: 50),
                                  child: Neumorphic(
                                    padding: const EdgeInsets.all(25),
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.circle(),
                                      depth: 1,
                                      color: Colors.black.withOpacity(0.4),
                                      shadowLightColor:
                                          Colors.black.withOpacity(0.5),
                                    ),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/png/home_select.png',
                                      ),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    _selectedItem = 1;
                                    setState(() {});
                                  },
                                  child: Neumorphic(
                                    padding: const EdgeInsets.all(20),
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.flat,
                                      boxShape: NeumorphicBoxShape.circle(),
                                      depth: 10,
                                      color: Color(0xff323233),
                                      shadowLightColor:
                                          Colors.white.withOpacity(0.4),
                                    ),
                                    child: Container(
                                      color: Color(0xff323233),
                                      child: Image.asset(
                                        'assets/png/home.png',
                                      ),
                                    ),
                                  ),
                                ),
                          _selectedItem == 2
                              ? Padding(
                                  padding: EdgeInsets.only(bottom: 50),
                                  child: Neumorphic(
                                    padding: const EdgeInsets.all(25),
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.circle(),
                                      depth: 1,
                                      color: Colors.black.withOpacity(0.4),
                                      shadowLightColor:
                                          Colors.black.withOpacity(0.5),
                                    ),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/png/user_select.png',
                                      ),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    _selectedItem = 2;
                                    setState(() {});
                                  },
                                  child: Neumorphic(
                                    padding: const EdgeInsets.all(20),
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.flat,
                                      boxShape: NeumorphicBoxShape.circle(),
                                      depth: 10,
                                      color: Color(0xff323233),
                                      shadowLightColor:
                                          Colors.white.withOpacity(0.4),
                                    ),
                                    child: Container(
                                      color: Color(0xff323233),
                                      child: Image.asset(
                                        'assets/png/user.png',
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
