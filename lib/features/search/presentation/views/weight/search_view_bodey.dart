import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/weight/best_Seller_itemView.dart';
import 'package:bookly/features/search/presentation/views/custom_search_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchText(),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Search Result',
              style: styles.TextStyle18,
            ),
          ),
          SizedBox(height: 16),
          Expanded(child: SearcResultListView()),
        ],
      ),
    );
  }
}

class SearcResultListView extends StatelessWidget {
  const SearcResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        });
  }
}
