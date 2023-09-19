import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

abstract class IDowloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsimages();
}
