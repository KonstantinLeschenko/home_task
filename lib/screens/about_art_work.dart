import 'package:flutter/material.dart';
import 'package:home_task/data/art_work.dart';
import 'package:intl/intl.dart';

class AboutArtWork extends StatelessWidget {
  final ArtWork myArtWork;

  const AboutArtWork({super.key, required this.myArtWork});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: Image.asset(
                myArtWork.assetPath,
                fit: BoxFit.contain,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    myArtWork.category,
                    style: const TextStyle(backgroundColor: Colors.amber),
                  ),
                  Text(
                    myArtWork.name,
                    style: const TextStyle(backgroundColor: Colors.amber),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        myArtWork.description,
                        style: const TextStyle(backgroundColor: Colors.amber),
                      ),
                      Text(
                        DateFormat('dd-MM-yyyy').format(myArtWork.creationDate),
                        style: const TextStyle(backgroundColor: Colors.amber),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
