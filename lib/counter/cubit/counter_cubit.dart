import 'package:bloc/bloc.dart';
import 'package:equal_width_list/utils/topics.dart';

class CounterCubit extends Cubit<Topics> {
  CounterCubit() : super(Topics.topListed);

  void changeTopic(Topics topic) => emit(topic);
}
