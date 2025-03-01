import 'package:bookly/features/Home/presentation/views/weight/CustomBookImage_item.dart';
import 'package:bookly/features/Home/presentation/views/weight/Custom_book_details_appBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
