import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';

import '../../../../../core/helper_function/build_error_bar.dart';
import '../../cubits/sign_in_cubit/sign_in_cubit.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SignInFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is SignInLoading ? true : false,
            child: const SigninViewBody());
      },
    );
  }
}
