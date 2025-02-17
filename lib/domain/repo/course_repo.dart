import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/promote_entity.dart';

import '../../base/helper/result.dart';
import '../entity/course/mentor_entity.dart';

abstract class CourseRepo {
  Future<Result<List<PromoteEntity>>> fetchPromotes();

  Future<Result<List<CourseEntity>>> fetchMostPopularCourse();

  Future<Result<List<MentorEntity>>> fetchTopMentors();
}
