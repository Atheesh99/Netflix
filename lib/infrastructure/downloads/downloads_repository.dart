import 'package:dio/dio.dart';
import 'package:netflix/Domain/core/api_end_pointes.dart';
import 'package:netflix/Domain/download/models/downloads.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/download/i_downloads_repo.dart';

class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadsList = [];
        for (final raw in response.data) {
          downloadsList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
