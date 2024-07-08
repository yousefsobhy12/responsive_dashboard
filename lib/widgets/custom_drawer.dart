import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inActive_listTile.dart';
import 'package:responsive_dash_board/widgets/items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userAvatar: Assets.imagesAvatar3,
              title: 'Yousef Sobhy',
              subTitle: 'yousefsobhy124@gmail.com',
            ),
          ),
          ItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                      icon: Assets.imagesSettings, title: 'Settings'),
                ),
                InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                      icon: Assets.imagesLogout, title: 'Logout'),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
