import 'package:flutter/material.dart';

import '../../domain/entities/training_series_entity.dart';
import 'exercise_card_widget.dart';

class SeriesLayoutWidget extends StatelessWidget {
  const SeriesLayoutWidget({
    super.key,
    required List<SeriesItemEntity> trainingSeriesList,
  }) : _trainingSeriesList = trainingSeriesList;

  final List<SeriesItemEntity> _trainingSeriesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        _trainingSeriesList.length,
        (index) => ExerciseCardWidget(seriesItem: _trainingSeriesList[index]),
      ),
    );
  }
}
