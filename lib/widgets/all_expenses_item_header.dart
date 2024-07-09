import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: SvgPicture.asset(allExpensesItemModel.image),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 1.5708 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff064060),
          ),
        ),
      ],
    );
  }
}