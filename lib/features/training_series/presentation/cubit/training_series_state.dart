part of 'training_series_cubit.dart';

abstract class TrainingSeriesState extends Equatable {
  const TrainingSeriesState();

  @override
  List<Object> get props => [];
}

class TrainingSeriesInitial extends TrainingSeriesState {}

class TrainingSeriesLoading extends TrainingSeriesState {}

class TrainingSeriesSuccess extends TrainingSeriesState {
  final TrainingSeriesEntity result;

  const TrainingSeriesSuccess({required this.result});
}

class TrainingSeriesError extends TrainingSeriesState {
  final String errorMessage;

  const TrainingSeriesError({required this.errorMessage});
}
