import 'package:bookly/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButtom(
            text: '19.99E',
            backgroudColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: CustomButtom(
            fontSize: 16,
            text: 'Free Preview',
            backgroudColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          )),
        ],
      ),
    );
  }
}
