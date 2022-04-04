import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rest_firebase/presentation/model.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<UserModel> {
  ProfileCubit() : super(UserModel());
}
