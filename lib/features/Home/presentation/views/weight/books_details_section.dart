import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/weight/CustomBookImage_item.dart';
import 'package:bookly/features/Home/presentation/views/weight/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/weight/books_action.dart';
import 'package:flutter/material.dart';

class BookDetsildSeccion extends StatelessWidget {
  const BookDetsildSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: styles.TextStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: styles.TextStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 20,
        ),
        BooksAction(),
      ],
    );
  }
}
