import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';
import 'package:netflix/Domain/download/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
