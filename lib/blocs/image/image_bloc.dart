// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageState.initial()) {
    on<NextImageEvent>((event, emit) {
      if (state.number < 30) {
        emit(ImageState(number: state.number + 1));
      }
    });
    on<PreviousImageEvent>(
      (event, emit) {
        if(state.number > 1) {
          emit(ImageState(number: state.number - 1));
        }
      }
    );
  }
}
