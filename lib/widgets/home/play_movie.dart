import 'package:flutter/material.dart';
import 'package:netflix_app/pages/video_detail_page.dart';

class PlayMovie extends StatelessWidget {
  const PlayMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: const [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(height: 5),
            Text(
              "My List",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const VideoDetailPage(
                    videoUrl: "assets/videos/video_1.mp4",
                  );
                },
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 13,
                left: 8,
                top: 2,
                bottom: 2,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Play",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: const [
            Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(height: 5),
            Text(
              "Info",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
