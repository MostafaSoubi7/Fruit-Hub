import 'package:dartz/dartz.dart';
import 'package:fruit_hub/features/auth/domain/repos/entities/user_entity.dart';

import '../../../../core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
}
