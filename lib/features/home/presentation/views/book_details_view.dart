import 'package:bookly_app/core/models/book_model/book.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}