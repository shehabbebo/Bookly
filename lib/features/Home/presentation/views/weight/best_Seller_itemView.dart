import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: styles.TextStyle20.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              SizedBox(height: 3),
              Text(
                'J.K. Rowling',
                style: styles.TextStyle14,
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text('19.99 E',
                      style: styles.TextStyle20.copyWith(
                          fontWeight: FontWeight.bold))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
