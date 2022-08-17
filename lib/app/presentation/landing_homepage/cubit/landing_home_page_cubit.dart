import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:nomady_dependencies/nomady_dependencies.dart';

part 'landing_home_page_state.dart';

class LandingHomePageCubit extends Cubit<LandingHomePageState> {
  LandingHomePageCubit() : super(LandingHomePageInitial());
}
