import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuth.CreateUserWithEmailAndPassword: ${e.toString()}',
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الرقم السري ضعيف');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'لقد تم استخدام هذا البريد الإلكتروني بالفعل',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت');
      } else {
        throw CustomException(message: "لقد حدث خطأ ما. يرجى المحاولة لاحقا.");
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuth.CreateUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomException(message: 'لقد حدث خطاء ما. يرجى المحاولة لاحقا.');
    }
  }
}
