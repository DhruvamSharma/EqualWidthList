import 'package:bloc/bloc.dart';
import 'package:equal_width_list/utils/topics.dart';

class TopicCubit extends Cubit<Topics> {
  TopicCubit() : super(Topics.topListed);

  void changeTopic(Topics topic) => emit(topic);
}
