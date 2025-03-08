import 'package:bookly/features/Home/presentation/views/weight/Custom_book_details_appBar.dart';
import 'package:bookly/features/Home/presentation/views/weight/Similar_Books_Section.dart';
import 'package:bookly/features/Home/presentation/views/weight/books_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetsildSeccion(),
                const Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
                // SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
