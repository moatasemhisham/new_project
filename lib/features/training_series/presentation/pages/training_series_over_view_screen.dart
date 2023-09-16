import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project/features/training_series/domain/entities/training_series_entity.dart';

import '../cubit/training_series_cubit.dart';
import '../widgets/series_layout_widget.dart';

class TrainingSeriesOverViewScreen extends StatefulWidget {
  const TrainingSeriesOverViewScreen({super.key});

  @override
  State<TrainingSeriesOverViewScreen> createState() => _TrainingSeriesOverViewScreenState();
}

class _TrainingSeriesOverViewScreenState extends State<TrainingSeriesOverViewScreen> {
  getSeriesTraining() => BlocProvider.of<TrainingSeriesCubit>(context).getTrainingSeries();
  final List<SeriesItemEntity> _trainingSeriesList = [];

  @override
  void initState() {
    getSeriesTraining();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<TrainingSeriesCubit, TrainingSeriesState>(
          listener: (context, state) {
            if (state is TrainingSeriesLoading) {
              const Center(
                child: Text('Loading...'),
              );
            } else if (state is TrainingSeriesError) {
              const Text(
                'No Data Found',
              );
            } else if (state is TrainingSeriesSuccess) {
              _trainingSeriesList.clear();
              _trainingSeriesList.addAll(
                state.result.seriesList,
              );

              // SeriesLayoutWidget(trainingSeriesList: _trainingSeriesList);
            } else {
              const Text(
                'Time Out',
              );
            }
          },
          builder: (context, state) {
            return SeriesLayoutWidget(trainingSeriesList: _trainingSeriesList);
          },
        ),
      ),
    );
  }
}
