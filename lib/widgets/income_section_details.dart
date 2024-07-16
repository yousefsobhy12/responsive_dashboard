import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_section_item_model.dart';
import 'package:responsive_dash_board/widgets/income_section_details_item.dart';

class IncomeSectionDetails extends StatelessWidget {
  const IncomeSectionDetails({super.key});
  static const items = [
    IncomeSectionItemModel(
      color: Color(0xFF208BC7),
      title: 'Design service',
      value: '40%',
    ),
    IncomeSectionItemModel(
      color: Color(0xFF4DB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeSectionItemModel(
      color: Color(0xFF064060),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeSectionItemModel(
      color: Color(0xFFE2DECD),
      title: 'Others',
      value: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (e) => IncomeSectionDetailsItem(
              incomeSectionItemModel: e,
            ),
          )
          .toList(),
    );
  }
}
