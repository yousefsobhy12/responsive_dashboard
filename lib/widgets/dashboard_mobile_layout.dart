import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_section_details.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              children: [
                IncomeSectionHeader(),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: IncomeChart(),
                ),
                SizedBox(
                  width: 40,
                ),
                IncomeSectionDetails()
              ],
            ),
          )
        ],
      ),
    );
  }
}
