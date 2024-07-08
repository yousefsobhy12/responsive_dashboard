import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.userAvatar,
      required this.title,
      required this.subTitle});
  final String userAvatar, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SvgPicture.asset(userAvatar),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
