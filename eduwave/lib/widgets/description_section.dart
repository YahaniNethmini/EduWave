import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(children: [
            Text(
              "Course Length : ",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(
              Icons.timer,
              color: Colors.blueAccent,
            ),
            SizedBox(width: 5),
            Text(
                "2hours",
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                 ),
            )
          ],
          ),
          SizedBox(width: 10),
          Row(children: [
            Text(
              "Rating : ",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            SizedBox(width: 5),
            Text(
              "4.5",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
          ),
        ],
      ),
    );
  }
}
