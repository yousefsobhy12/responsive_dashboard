import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesItemModel,
    this.imageBackground,
    this.imageColor,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                color: imageBackground ?? const Color(0xFFFAFAFA),
                shape: const OvalBorder(),
              ),
              child: Center(
                child: SvgPicture.asset(
                  allExpensesItemModel.image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                ),
              ),
            ),
          ),
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
