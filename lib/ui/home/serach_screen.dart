import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipe_app/back_ground/back_ground.dart';
import 'package:recipe_app/global/comman_boxdecoration.dart';
import 'package:recipe_app/global/comman_list.dart';

class SerachScreen extends StatelessWidget {
  const SerachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303234),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topHader(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  leftImage: 'assets/svg/back_arrow.svg',
                  rightImage: 'assets/svg/notification.svg'),
              SizedBox(
                height: 20,
              ),
              Text('What do you want\n to cook today?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 20,
              ),
              commanTextfiled(),
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: gridListItem.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    child: Image.asset(gridListItem[index]['image']),
                  ),
                  staggeredTileBuilder: (int index) =>
                      StaggeredTile.count(1, index.isEven ? 1 : 1),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 12,
                ),
              )
            ],
          )),
    );
  }
}
