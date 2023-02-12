import 'package:flutter/material.dart';
import 'package:netflix_app/json/video_detail_json.dart';

class LijesListMovie extends StatelessWidget {
  const LijesListMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(likesList.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Column(
            children: [
              Icon(
                likesList[index]['icon'],
                color: Colors.white.withOpacity(0.9),
                size: 25,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                likesList[index]['text'],
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.withOpacity(0.9),
                  height: 1.4,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
