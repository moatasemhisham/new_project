import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/training_series_model.dart';

abstract class TrainingSeriesDataSource {
  Future<TrainingSeriesModel> getTrainingSeriesList();
}

class TrainingSeriesDataSourceImpl implements TrainingSeriesDataSource {

  @override
  Future<TrainingSeriesModel> getTrainingSeriesList() async {
    /// TODO: handel app Strings

    final response = await rootBundle.loadString('assets/training_series_list.json');
    final data = json.decode(response);
    final result = TrainingSeriesModel.fromJson(data);
    return result;
  }
}
