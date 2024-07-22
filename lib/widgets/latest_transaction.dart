import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/user_info_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const UserInfoListView(),
      ],
    );
  }
}
