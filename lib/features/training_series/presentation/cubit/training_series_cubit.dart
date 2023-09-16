import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:new_project/core/use_cases/use_cases.dart';
import 'package:new_project/features/training_series/domain/entities/training_series_entity.dart';

import '../../../../core/error/failures.dart';
import '../../domain/use_cases/training_series_use_cases.dart';

part 'training_series_state.dart';

class TrainingSeriesCubit extends Cubit<TrainingSeriesState> {
  final TrainingSeriesUseCase trainingSeriesUserCase;

  TrainingSeriesCubit({required this.trainingSeriesUserCase}) : super(TrainingSeriesInitial());

  Future<void> getTrainingSeries() async {
    emit(TrainingSeriesLoading());
    Either<Failure, TrainingSeriesEntity> result = await trainingSeriesUserCase.call(NoParams());
    result.fold(
      (failure) => emit(TrainingSeriesError(errorMessage: mapFailureToMessage(failure))),
      (response) => emit(TrainingSeriesSuccess(result: response)),
    );
  }
}
