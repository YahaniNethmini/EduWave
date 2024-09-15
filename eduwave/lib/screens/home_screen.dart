import 'package:eduwave/screens/course_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Creating static data in lists
  List<String> catNames = [
    "Category",
    "Classes",
    "Free Courses",
    "Book Store",
    "Live Courses",
    "LeaderBoard",
  ];

  List<Color> catColors = [
    Colors.orange,
    Colors.green,
    Colors.lightBlueAccent,
    Colors.deepOrange,
    Colors.pinkAccent,
    Colors.greenAccent,
  ];

  List<Icon> catIcons = [
    const Icon(Icons.category, color: Colors.white, size: 30),
    const Icon(Icons.video_library, color: Colors.white, size: 30),
    const Icon(Icons.assignment, color: Colors.white, size: 30),
    const Icon(Icons.store, color: Colors.white, size: 30),
    const Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    const Icon(Icons.emoji_events, color: Colors.white, size: 30),
  ];

  List<String> imgList = [
    "C",
    "JavaScript",
    "PHP",
    "Flutter",
    "Figma",
    "React",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Welcome to EduWave",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(children: [
              GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          catNames[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    );
                  }),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                itemCount: imgList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) /
                      (4 * 240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CourseScreen(imgList[index])
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "images/${imgList[index]}.png", // Make sure the extension is correct here
                              width: 100,
                              height: 100,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            imgList[index],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Colors.blueAccent,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Courses"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "WishList"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}

