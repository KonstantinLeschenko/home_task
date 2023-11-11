part of 'image_bloc.dart';

// ignore: must_be_immutable
class ImageState extends Equatable {
  int number;
  ImageState({required this.number});

  @override
  List<Object> get props => [number];

  factory ImageState.initial() => ImageState(number: 1);

  ImageState copyWith({
    int? seedNumber,
  }) {
    return ImageState(
      number: seedNumber ?? number,
    );
  }

  @override
  bool get stringify => true;
}
