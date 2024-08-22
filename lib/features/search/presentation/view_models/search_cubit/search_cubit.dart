import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model/book.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  SearchRepo searchRepo;

  Future<void> fetechSearchBooks() async {
    emit(SearchLoading());
    var result = await searchRepo.fetechSearchBooks();
    result.fold((failure) {
      emit(SearchFailure(failure.errorMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
