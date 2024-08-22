import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/models/book_model/book.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure,List<BookModel>>> fetechSearchBooks();
}