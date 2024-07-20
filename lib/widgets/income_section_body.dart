import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sized_config.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_section_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width.toDouble();
    if (width >= SizedConfig.desktop && width <= 1890) {
      return const SizedBox();
    } else {
      return const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IncomeChart(),
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: IncomeSectionDetails(),
          ),
        ],
      );
    }
  }
}
