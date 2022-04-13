import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/back_ground/back_ground.dart';
import 'package:recipe_app/global/comman_boxdecoration.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303234),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              'Favourite',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              itemCount: 5,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 95,
                        child: Image.asset(
                          'assets/png/fv1.png',
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: InnerShadow(
                        blur: 5,
                        color: Colors.white,
                        offset: const Offset(1, 1),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Color(0xff303234),
                            ),
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Fruity bread',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            gradient: LinearGradient(
                                              begin: FractionalOffset.topCenter,
                                              end:
                                                  FractionalOffset.bottomCenter,
                                              colors: [
                                                Color(0xffEE5C5C),
                                                Color(0xffF3A52F),
                                              ],
                                            )),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: SvgPicture.asset(
                                              'assets/svg/heart.svg'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'By John Doe',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Nunito-Regular',
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/clock.svg'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('20 Mins',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/eye.svg'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('13K',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/graph.svg'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Easy',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}
