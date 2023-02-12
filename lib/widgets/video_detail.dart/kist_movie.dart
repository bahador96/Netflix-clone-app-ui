import 'package:flutter/material.dart';
import 'package:netflix_app/json/video_detail_json.dart';

class ListMovie extends StatelessWidget {
  const ListMovie({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        movieList.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: (size.width - 30) * 0.85,
                      height: 100,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        movieList[index]['img'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 57,
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      ),
                                      color: Colors.black.withOpacity(0.4),
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: (size.width) * 0.35,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    movieList[index]['title'],
                                    style: TextStyle(
                                      fontSize: 15,
                                      height: 1.3,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.9),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    movieList[index]['duration'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: (size.width - 30) * 0.15,
                      height: 100,
                      child: Center(
                        child: Icon(
                          Icons.file_download,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  movieList[index]['description'],
                  style: TextStyle(
                    height: 1.4,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
