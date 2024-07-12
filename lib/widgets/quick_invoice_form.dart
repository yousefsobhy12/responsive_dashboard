import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/title_textfield.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item Mount',
                hint: 'Type item mount',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
