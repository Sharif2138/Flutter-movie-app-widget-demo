import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

final List<String> images = const [
  "assets/Exclusive poster comes with the pre-ordered movie….jpeg",
  "assets/movie1.jpg",
  "assets/movie2.jpg",
  "assets/movie3.jpg",
  "assets/movie4.jpg",
  "assets/movie5.jpg",
  "assets/The Martian.jpeg",
  "assets/UP.jpeg",
  "assets/Interstellar 11x17 Movie Poster (2014).jpeg",
  "assets/movie6.jpg",
  "assets/movie7.jpg",
  "assets/New Movie Posters for Doctor Strange.jpeg",
  "assets/Owned movie.jpeg",
  "assets/Pdf cross stitch pattern - The Hobbit, An….jpeg",
  "assets/Peaky Blinders _ Poster design on Behance.jpeg",
  "assets/Photo by prathool nt on behance｜Graphic Design….jpeg",
  "assets/Saving Private Ryan 1998.jpeg",
  "assets/Spider-man 3 (2007).jpeg",
  "assets/The Homesman.jpeg",
  "assets/The Notebook.jpeg",
  "assets/me before you - 2016 [image only].jpeg",
  "assets/Millie Bobby Brown stars in the latest poster for….jpeg",
  "assets/Movie Poster.jpeg",
  "assets/6db5107e-bbe9-47f1-860a-f08e927ca2d5.jpeg",
  "assets/8ae8e9f7-8706-4c76-ab49-9433f2caa5fb.jpeg",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                child: Text(
                  "What do you want to watch today?",
                  style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ),

              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(right: 70.0),
                child: SizedBox(
                  width: 500,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search movies",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.6,
                ),
                child: Text(
                  "Movies For You",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                    fontFamily: "poppins",
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                height: 270.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        width: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage(images[index]),
                          fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
