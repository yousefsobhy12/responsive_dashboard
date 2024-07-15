import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: IncomeChart()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
