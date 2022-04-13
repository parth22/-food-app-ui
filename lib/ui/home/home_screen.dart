import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/back_ground/back_ground.dart';
import 'package:recipe_app/global/comman_boxdecoration.dart';
import 'package:recipe_app/global/comman_list.dart';
import 'package:recipe_app/ui/home/item_detail.dart';
import 'package:recipe_app/ui/home/serach_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303234),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              topHader(
                  leftImage: 'assets/svg/menu.svg',
                  rightImage: 'assets/svg/notification.svg'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hello, Christine!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text('What do you want to cook today?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
              SizedBox(
                height: 20,
              ),
              InnerShadow(
                  blur: 5,
                  color: Colors.white,
                  offset: const Offset(3, 3),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextField(
                      onTap: () {
                        Navigator.of(context)
                            .push<void>(MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SerachScreen(),
                        ));
                      },
                      decoration: InputDecoration(
                        fillColor: Color(0xff303234),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(25)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        hintText: 'Search your fav food',
                        hintStyle: TextStyle(
                            fontFamily: 'Dosis-Regulars',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(19),
                          child: SvgPicture.asset(
                            'assets/svg/serach.svg',
                            color: Color(0xffB9BECC),
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Recommended',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/png/home_image.png'),
              SizedBox(
                height: 20,
              ),
              _buildItemName(),
              SizedBox(
                height: 20,
              ),
              _builGridList(),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _builGridList() {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        itemCount: gridList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        child: Image.asset(gridList[index]['image']),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Color(0xffEE5C5C),
                                  Color(0xffF3A52F),
                                ],
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: SvgPicture.asset('assets/svg/heart.svg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    gridList[index]['name'],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildItemName() {
    return Container(
      height: 60,
      color: Color(0xff303234),
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: homeList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 5),
            child: GestureDetector(
              onTap: () {
                _selectIndex = index;
                setState(() {});
              },
              child: Neumorphic(
                  style: index == _selectIndex
                      ? NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                          depth: 2,
                          color: Colors.black.withOpacity(0.4),
                          shadowLightColor: Color(0xff323233),
                        )
                      : NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                          depth: 5,
                          shadowLightColor: Color(0xff303234).withOpacity(0.4),
                          shadowDarkColor: Colors.black,
                        ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: index == _selectIndex
                          ? Colors.black.withOpacity(0.4)
                          : Color(0xff303234),
                      child: Text(
                        homeList[index]['name'],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
