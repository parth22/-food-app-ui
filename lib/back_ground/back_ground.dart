import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackGroundDesign extends StatelessWidget {
  const BackGroundDesign({this.imageUrl});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                  Colors.transparent, BlendMode.exclusion),
              child: Image.asset(imageUrl!),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: <Color>[
                    Color(0xff0A0F12).withOpacity(0.01),
                    Color(0xff303234),
                  ],
                  stops: const <double>[0.1, 0.7],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget topHader(
    {required String leftImage,
    required String rightImage,
    Function()? onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(15),
        child:
            GestureDetector(onTap: onTap, child: SvgPicture.asset(leftImage)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Color(0xffEE5C5C),
                Color(0xffF3A52F),
              ],
            )),
      ),
      Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(15),
        child: SvgPicture.asset(rightImage),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Color(0xffEE5C5C),
                Color(0xffF3A52F),
              ],
            )),
      ),
    ],
  );
}
