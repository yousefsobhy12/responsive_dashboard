import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesList extends StatefulWidget {
  const AllExpensesList({super.key});

  @override
  State<AllExpensesList> createState() => _AllExpensesListState();
}

class _AllExpensesListState extends State<AllExpensesList> {
  final items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      balance: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      balance: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      balance: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(allExpensesItemModel: item),
            ),
          );
        } else {
          // You should provide a default return value for all cases
          return Expanded(child: AllExpensesItem(allExpensesItemModel: item));
        }
      }).toList(),
    );
  }
}