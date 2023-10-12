import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
}
