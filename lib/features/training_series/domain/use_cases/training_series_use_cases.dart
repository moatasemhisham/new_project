import 'package:dartz/dartz.dart';
import 'package:new_project/core/use_cases/use_cases.dart';
import 'package:new_project/features/training_series/domain/entities/training_series_entity.dart';
import 'package:new_project/features/training_series/domain/repositories/training_series_repository.dart';

import '../../../../core/error/failures.dart';

class TrainingSeriesUseCase implements UseCase {
  final TrainingSeriesRepository trainingSeriesRepository;

  TrainingSeriesUseCase({required this.trainingSeriesRepository});

  @override
  Future<Either<Failure, TrainingSeriesEntity>> call(params) {
    return trainingSeriesRepository.getTrainingSeriesList();
  }

}