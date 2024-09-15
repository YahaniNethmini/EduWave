import 'package:flutter/material.dart';

class VideosSection extends StatelessWidget {
  // Static data for videos
  final List<String> videoList = [
    "Introduction",
    "Installing",
    "Setup on Windows",
    "Creating our First App",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? Colors.blueAccent : Colors.blueGrey,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(
            videoList[index],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      },
    );
  }
}

