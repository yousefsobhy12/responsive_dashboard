import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_section_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeSectionDetailsItem extends StatelessWidget {
  const IncomeSectionDetailsItem(
      {super.key, required this.incomeSectionItemModel});
  final IncomeSectionItemModel incomeSectionItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeSectionItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeSectionItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeSectionItemModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
