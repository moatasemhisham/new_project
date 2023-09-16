import 'package:equatable/equatable.dart';

class TrainingSeriesEntity extends Equatable {
  final List<SeriesItemEntity> seriesList;

  TrainingSeriesEntity({required this.seriesList});

  @override
  List<Object?> get props => [seriesList];
}

class SeriesItemEntity extends Equatable {
  final String seriesId;
  final String seriesName;
  final String seriesCoverPhoto;
  final String totalRunTime;
  final int videosNumber;
  final String seriesDescription;
  final String seriesDifficulty;
  final String seriesIntensity;
  final List<CoachesListEntity> coachesList;
  final List<ClassesListEntity> classesList;
  final List<CommunityPostEntity> communityPosts;

  SeriesItemEntity({
    required this.seriesId,
    required this.seriesName,
    required this.seriesCoverPhoto,
    required this.totalRunTime,
    required this.videosNumber,
    required this.seriesDescription,
    required this.seriesDifficulty,
    required this.seriesIntensity,
    required this.coachesList,
    required this.classesList,
    required this.communityPosts,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        seriesId,
        seriesName,
        seriesCoverPhoto,
        totalRunTime,
        videosNumber,
        seriesDescription,
        seriesDifficulty,
        seriesIntensity,
        coachesList,
        classesList,
        communityPosts
      ];
}

class ClassesListEntity extends Equatable {
  final String classId;
  final String classTitle;
  final String classDuration;
  final String classDescription;
  final List<ClassVideoEntity> classVideos;

  ClassesListEntity({
    required this.classId,
    required this.classTitle,
    required this.classDuration,
    required this.classDescription,
    required this.classVideos,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [classId, classTitle, classDuration, classDescription, classVideos];
}

class ClassVideoEntity extends Equatable {
  final String videoId;
  final String videoTitle;
  final String videoUrl;

  ClassVideoEntity({
    required this.videoId,
    required this.videoTitle,
    required this.videoUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [videoId, videoTitle, videoUrl];
}

class CoachesListEntity extends Equatable {
  final String coachId;
  final String coachName;
  final String coachProfileUrl;
  final String coachBio;

  CoachesListEntity({
    required this.coachId,
    required this.coachName,
    required this.coachProfileUrl,
    required this.coachBio,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        coachId,
        coachName,
        coachProfileUrl,
        coachBio,
      ];
}

class CommunityPostEntity extends Equatable {
  final String postId;
  final String userName;
  final String userPhotoUrl;
  final String seriesName;
  final String postContent;
  final String postTime;
  final int likesCount;

  CommunityPostEntity({
    required this.postId,
    required this.userName,
    required this.userPhotoUrl,
    required this.seriesName,
    required this.postContent,
    required this.postTime,
    required this.likesCount,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [postId, userName, userPhotoUrl, seriesName, postContent, postTime, likesCount];
}
