import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'landing_mobile_state.dart';

class LandingMobileCubit extends Cubit<LandingMobileState> {
  LandingMobileCubit() : super(LandingMobileInitial());
}
