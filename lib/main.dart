import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/image/image_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageBloc(),
      child: MaterialApp(
        home: BlocBuilder<ImageBloc, ImageState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 914 / 1317,
                      child: Image.asset(
                        'assets/${state.number}.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: const Text('Previous'),
                      onPressed: () {
                        context.read<ImageBloc>().add(PreviousImageEvent());
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<ImageBloc>().add(NextImageEvent());
                      },
                      child: const Text('Next Image'),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
