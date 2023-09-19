import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/api_endpoints.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';
import 'package:dio/dio.dart';

class DownloadsRepository implements IDowloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsimages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.kdownloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadsList = [];
        for (final raw in response.data) {
          downloadsList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
