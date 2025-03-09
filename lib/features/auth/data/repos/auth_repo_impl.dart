import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/repos/entities/user_entity.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.CreateUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        const ServerFailure('لقد حدث خطأ ما. يرجى المحاولة لاحقا'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.CreateUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        const ServerFailure('لقد حدث خطاء ما. يرجى المحاولة لاحقا'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.CreateUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        const ServerFailure(
          'لقد حدث خطاء ما. يرجى المحاولة لاحقا',
        ),
      );
    }
  }
}
