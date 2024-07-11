import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class UserInfoListView extends StatelessWidget {
  const UserInfoListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Yousef Sobhy',
      subTitle: 'yousefsobhy124@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Abdelrahman Sobhy',
      subTitle: 'abdosobhy124@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Ayatullah Sobhy',
      subTitle: 'ayasobhy124@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );
  }
}
