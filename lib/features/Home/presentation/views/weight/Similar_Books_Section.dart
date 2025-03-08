import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/weight/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like ',
          style: styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}
