import 'package:dartz/dartz.dart';
import 'package:new_project/core/error/failures.dart';
import 'package:new_project/features/training_series/domain/entities/training_series_entity.dart';

abstract class TrainingSeriesRepository {
  Future<Either<Failure, TrainingSeriesEntity>> getTrainingSeriesList();
}
