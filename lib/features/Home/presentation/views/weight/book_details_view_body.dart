import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_buttom.dart';
import 'package:bookly/features/Home/presentation/views/weight/CustomBookImage_item.dart';
import 'package:bookly/features/Home/presentation/views/weight/Custom_book_details_appBar.dart';
import 'package:bookly/features/Home/presentation/views/weight/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/weight/books_action.dart';
import 'package:bookly/features/Home/presentation/views/weight/similar_books_list_view.dart';
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
            height: 37,
          ),
          BooksAction(),
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like ',
              style: styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SimilarBooksListView(),
          // SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
