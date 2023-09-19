part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState.initial(
      {required bool isLoading, List<Downloads>? downloads}) = _Initial;
}
