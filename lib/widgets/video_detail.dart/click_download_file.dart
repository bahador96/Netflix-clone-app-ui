import 'package:flutter/material.dart';

class ClickDownloadFile extends StatelessWidget {
  const ClickDownloadFile({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.withOpacity(0.3),
        elevation: 0,
        fixedSize: Size(size.width, 38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.file_download,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Download",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
