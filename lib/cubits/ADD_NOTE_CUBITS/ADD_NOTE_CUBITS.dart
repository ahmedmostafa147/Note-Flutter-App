import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ADD_NOTE_CUBIT.dart';

class NotesDartCubit extends Cubit<NotesDartState> {
  NotesDartCubit() : super(NotesDartInitial());
}
