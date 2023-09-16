import 'package:dartz/dartz.dart';
import 'package:new_project/core/error/exceptions.dart';
import 'package:new_project/core/error/failures.dart';
import 'package:new_project/features/training_series/data/data_sources/training_series_data_source.dart';
import 'package:new_project/features/training_series/domain/entities/training_series_entity.dart';
import 'package:new_project/features/training_series/domain/repositories/training_series_repository.dart';

class TrainingSeriesRepositoryImpl implements TrainingSeriesRepository {
  final TrainingSeriesDataSource trainingSeriesDataSource;

  TrainingSeriesRepositoryImpl({required this.trainingSeriesDataSource});

  @override
  Future<Either<Failure, TrainingSeriesEntity>> getTrainingSeriesList() async {
    try {
      final response = await trainingSeriesDataSource.getTrainingSeriesList();
      return response.seriesList.isNotEmpty ? right(response) : left(const GeneralFailure('General Failure'));
    } on CacheException catch (_) {
      return left(const CacheFailure('No Cached data found'));
    }
  }
}
