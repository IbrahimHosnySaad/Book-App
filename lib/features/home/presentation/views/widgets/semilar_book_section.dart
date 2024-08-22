import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/semilar_book_list_view.dart';
import 'package:flutter/material.dart';

class SemilarBookSecion extends StatelessWidget {
  const SemilarBookSecion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You Can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SemilarBookListView(),
      ],
    );
  }
}
