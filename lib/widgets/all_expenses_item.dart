import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';

import 'package:responsive_dash_board/widgets/selected_and_not_selected_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedItem(allExpensesItemModel: allExpensesItemModel)
        : NotSelectedItem(allExpensesItemModel: allExpensesItemModel);
  }
}
