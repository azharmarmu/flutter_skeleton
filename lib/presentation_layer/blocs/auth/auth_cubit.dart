import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/data_layer/appwrite_api.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AppWriteApi api;
  AuthCubit(this.api) : super(AuthInitial());

  void checkSession() {
    Future.delayed(
      const Duration(seconds: 2),
      () {},
    );
  }
}
