import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(),
      ],
    );
  }
}
