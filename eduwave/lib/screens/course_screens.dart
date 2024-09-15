import 'dart:io';

import 'package:eduwave/widgets/description_section.dart';
import 'package:eduwave/widgets/videos_section.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  final String img;
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
            widget.img,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.blueAccent,
              ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                ),
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.blueAccent,
                    size: 45,
                  ),
              ),
            ),
          ),
            const SizedBox(height: 15),
            Text(
              "${widget.img} Complete Course", // Correct string interpolation
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 5),
            const Text(
              "Created by EduWave",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "29 videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    //if isVideoSection is true then color will be blueAccent, otherwise blueGrey
                    color: isVideoSection
                        ? Colors.blueAccent
                        : Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // Set isVideoSection to true when "Videos" is clicked
                          isVideoSection = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: const Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Material(
                    borderRadius: BorderRadius.circular(10),
                    color: isVideoSection
                        ? Colors.blueGrey
                        : Colors.blueAccent, // Set to blueAccent when "Description" is selected
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // Set isVideoSection to false when "Description" is clicked
                          isVideoSection = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: const Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //we will create 2 different section for video section and description section
            const SizedBox(height: 10),
            // if isVideosSection condition is true then Video Section will be shown and if condition is false it means DescriptionSection will be shown.
            isVideoSection
                ? VideosSection()
                : DescriptionSection(),
        ],
      ),
    ));
  }
}

