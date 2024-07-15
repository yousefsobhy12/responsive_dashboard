import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryItemListView extends StatelessWidget {
  const TransactionHistoryItemListView({super.key});
  static const items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isDrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 ',
      amount: r'$2000',
      isDrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionHistoryItem(transactionHistoryModel: items[index]);
        });
  }
}
