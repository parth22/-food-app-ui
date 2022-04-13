import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/back_ground/back_ground.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                'Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Image.asset('assets/png/profile.png'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Johndoe',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700)),
                      Text('Johndoe@gmail.com',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ],
                  )),
              SizedBox(
                height: 40,
              ),
              _buildListile(
                leadingImage: 'assets/svg/Two_user.svg',
                titleText: 'Account',
              ),
              _buildListile(
                leadingImage: 'assets/svg/Setting - 3.svg',
                titleText: 'Setting',
              ),
              _buildListile(
                leadingImage: 'assets/svg/Document.svg',
                titleText: 'Terms of service',
              ),
              _buildListile(
                leadingImage: 'assets/svg/Info.svg',
                titleText: 'App info',
              ),
              _buildListile(
                leadingImage: 'assets/svg/Turn off.svg',
                titleText: 'Logout',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListile({
    required String leadingImage,
    required String titleText,
  }) {
    return ListTile(
      leading: SvgPicture.asset(
        leadingImage,
      ),
      title: Text(
        titleText,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: SvgPicture.asset('assets/svg/Arrow - Right.svg'),
    );
  }
}
