import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const Text(
          'Monthly',
          style: AppStyles.styleSemiBold16,
        ),
        const SizedBox(
          width: 18,
        ),
        Transform.rotate(
          angle: -1.5708,
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff064060),
          ),
        ),
      ],
    );
  }
}
