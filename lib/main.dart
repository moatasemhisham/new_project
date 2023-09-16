import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project/features/training_series/data/data_sources/training_series_data_source.dart';
import 'package:new_project/features/training_series/data/repositories/training_series_repository_impl.dart';
import 'package:new_project/features/training_series/domain/use_cases/training_series_use_cases.dart';
import 'package:new_project/features/training_series/presentation/cubit/training_series_cubit.dart';
import 'package:new_project/features/training_series/presentation/pages/training_series_over_view_screen.dart';

import 'core/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingSeriesCubit(
        trainingSeriesUserCase: TrainingSeriesUseCase(
          trainingSeriesRepository: TrainingSeriesRepositoryImpl(
            trainingSeriesDataSource: TrainingSeriesDataSourceImpl(),
          ),
        ),
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: TrainingSeriesOverViewScreen(),
      ),
    );
  }
}
