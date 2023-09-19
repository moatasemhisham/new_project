import 'package:new_project/core/extentions.dart';
import 'package:new_project/features/training_series/domain/entities/training_series_entity.dart';

class TrainingSeriesModel extends TrainingSeriesEntity {
  TrainingSeriesModel({
    final List<SeriesListModel>? seriesList,
  }) : super(seriesList: seriesList.orEmptyList());

  factory TrainingSeriesModel.fromJson(Map<String, dynamic> json) => TrainingSeriesModel(
        seriesList: json["series_list"] == null ? [] : List<SeriesListModel>.from(json["series_list"].map((x) => SeriesListModel.fromJson(x))),
      );
}

class SeriesListModel extends SeriesItemEntity {
  SeriesListModel({
    final String? seriesId,
    final String? seriesName,
    final String? seriesCoverPhoto,
    final String? totalRunTime,
    final int? videosNumber,
    final String? seriesDescription,
    final String? seriesDifficulty,
    final String? seriesIntensity,
    final List<CoachesList>? coachesList,
    final List<ClassesList>? classesList,
    final List<CommunityPost>? communityPosts,
  }) : super(
            seriesId: seriesId.orEmpty(),
            seriesName: seriesName.orEmpty(),
            seriesCoverPhoto: seriesCoverPhoto.orEmpty(),
            totalRunTime: totalRunTime.orEmpty(),
            videosNumber: videosNumber.orZero(),
            seriesDescription: seriesDescription.orEmpty(),
            seriesDifficulty: seriesDifficulty.orEmpty(),
            seriesIntensity: seriesIntensity.orEmpty(),
            coachesList: coachesList.orEmptyList(),
            classesList: classesList.orEmptyList(),
            communityPosts: communityPosts.orEmptyList());

  factory SeriesListModel.fromJson(Map<String, dynamic> json) => SeriesListModel(
        seriesId: json["series_id"],
        seriesName: json["series_name"],
        seriesCoverPhoto: json["series_cover_photo"],
        totalRunTime: json["total_run_time"],
        videosNumber: json["videos_number"],
        seriesDescription: json["series_description"],
        seriesDifficulty: json["series_difficulty"],
        seriesIntensity: json["series_intensity"],
        coachesList: List<CoachesList>.from(json["coaches_list"].map((x) => CoachesList.fromJson(x))),
        classesList: List<ClassesList>.from(json["classes_List"].map((x) => ClassesList.fromJson(x))),
        communityPosts: List<CommunityPost>.from(json["community_posts"].map((x) => CommunityPost.fromJson(x))),
      );
}

class ClassesList extends ClassesListEntity {
  ClassesList({
    final String? classId,
    final String? classTitle,
    final String? classDuration,
    final String? classDescription,
    final List<ClassVideo>? classVideos,
  }) : super(
            classId: classId.orEmpty(),
            classTitle: classTitle.orEmpty(),
            classDuration: classDuration.orEmpty(),
            classDescription: classDuration.orEmpty(),
            classVideos: classVideos.orEmptyList());

  factory ClassesList.fromJson(Map<String, dynamic> json) => ClassesList(
        classId: json["class_id"],
        classTitle: json["class_title"],
        classDuration: json["class_duration"],
        classDescription: json["class_description "],
        classVideos: List<ClassVideo>.from(json["class_videos"].map((x) => ClassVideo.fromJson(x))),
      );
}

class ClassVideo extends ClassVideoEntity {
  ClassVideo({
    final String? videoId,
    final String? videoTitle,
    final String? videoUrl,
  }) : super(
          videoId: videoId.orEmpty(),
          videoTitle: videoTitle.orEmpty(),
          videoUrl: videoUrl.orEmpty(),
        );

  factory ClassVideo.fromJson(Map<String, dynamic> json) => ClassVideo(
        videoId: json["video_id"],
        videoTitle: json["video_title"],
        videoUrl: json["video_url"],
      );
}

class CoachesList extends CoachesListEntity {
  CoachesList({
    final String? coachId,
    final String? coachName,
    final String? coachProfileUrl,
    final String? coachBio,
  }) : super(
          coachId: coachId.orEmpty(),
          coachName: coachName.orEmpty(),
          coachProfileUrl: coachProfileUrl.orEmpty(),
          coachBio: coachBio.orEmpty(),
        );

  factory CoachesList.fromJson(Map<String, dynamic> json) => CoachesList(
        coachId: json["coach_id"],
        coachName: json["coach_name"],
        coachProfileUrl: json["coach_profile_url"],
        coachBio: json["coach_bio"],
      );
}

class CommunityPost extends CommunityPostEntity {
  CommunityPost({
    final String? postId,
    final String? userName,
    final String? userPhotoUrl,
    final String? seriesName,
    final String? postContent,
    final String? postTime,
    final int? likesCount,
  }) : super(
          postId: postId.orEmpty(),
          userName: userName.orEmpty(),
          userPhotoUrl: userPhotoUrl.orEmpty(),
          seriesName: seriesName.orEmpty(),
          postContent: postContent.orEmpty(),
          postTime: postTime.orEmpty(),
          likesCount: likesCount.orZero(),
        );

  factory CommunityPost.fromJson(Map<String, dynamic> json) => CommunityPost(
        postId: json["post_id"],
        userName: json["user_name"],
        userPhotoUrl: json["user_photo_url"],
        seriesName: json["series_name"],
        postContent: json["post_content"],
        postTime: json["post_time"],
        likesCount: json["likes_count"],
      );
}
