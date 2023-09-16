import 'package:flutter/material.dart';

import '../../domain/entities/training_series_entity.dart';

class ExerciseCardWidget extends StatelessWidget {
  final SeriesItemEntity seriesItem;

  const ExerciseCardWidget({super.key, required this.seriesItem});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.network(seriesItem.seriesCoverPhoto),
      Text('Got the data'),
    ]);
  }
}
