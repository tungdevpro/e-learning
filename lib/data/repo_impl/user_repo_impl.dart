import 'package:flutter_bloc_template/base/repo/base_repo.dart';
import 'package:flutter_bloc_template/data/data_source/remote/service/user_service.dart';
import 'package:flutter_bloc_template/domain/entity/user/user_entity.dart';
import 'package:flutter_bloc_template/domain/repo/user_repo.dart';
import 'package:injectable/injectable.dart';

import '../../base/helper/result.dart';
import '../mapper/user/user_mapper.dart';

@LazySingleton(as: UserRepo)
class UserRepoImpl extends BaseRepository implements UserRepo {
  final UserService _userService;

  UserRepoImpl(this._userService);

  @override
  Future<Result<UserEntity>> fetchProfile() {
    return handleApiCall(_userService.fetchProfile(), mapper: (resp) => UserMapper.mapToEntity(resp?.data));
  }
}
