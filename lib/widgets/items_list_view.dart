import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class ItemsListView extends StatefulWidget {
  const ItemsListView({
    super.key,
  });

  @override
  State<ItemsListView> createState() => _ItemsListViewState();
}

class _ItemsListViewState extends State<ItemsListView> {
  List<DrawerItemModel> items = const [
    DrawerItemModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
        icon: Assets.imagesMyTransactions, title: 'My Transactions'),
    DrawerItemModel(icon: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWalletAcc, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selected != index) {
              setState(() {
                selected = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: index == selected,
            ),
          ),
        );
      },
    );
  }
}
