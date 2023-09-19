import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDowloadsRepo downloadsrepo;
  DownloadsBloc(this.downloadsrepo) : super(DownloadsState.initial()) {
    on<_GetDownloadImages>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downlaodsFailureOrSucessOption: none()));
      final Either<MainFailures, List<Downloads>> downloadsOption =
          await downloadsrepo.getDownloadsimages();
      emit(downloadsOption.fold(
        (failure) => state.copyWith(
          isLoading: false,
          downlaodsFailureOrSucessOption: Some(Left(failure)),
        ),
        (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downlaodsFailureOrSucessOption: Some(Right(success))),
      ));
    });
  }
}
