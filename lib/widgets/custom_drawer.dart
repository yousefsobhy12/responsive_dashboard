import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            userAvatar: Assets.imagesAvatar3,
            title: 'Yousef Sobhy',
            subTitle: 'yousefsobhy124@gmail.com',
          )
        ],
      ),
    );
  }
}
