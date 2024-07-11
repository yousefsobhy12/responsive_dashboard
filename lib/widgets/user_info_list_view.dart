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
    return SizedBox(
      height: 75,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: items[index]));
          }),
    );
  }
}
