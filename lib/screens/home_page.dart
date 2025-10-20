import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> images = const [
    "assets/The Notebook.jpeg",
    "assets/me before you - 2016 [image only].jpeg",
    "assets/d0126dc7-162b-486a-8631-2886cb11147b.jpeg",
    "assets/Exclusive poster comes with the pre-ordered movie….jpeg",
    "assets/b3de8fd2-6d02-4b5a-a66e-90f7f197126e.jpeg",
    "assets/Movie Poster.jpeg",
    "assets/6db5107e-bbe9-47f1-860a-f08e927ca2d5.jpeg",
    "assets/8ae8e9f7-8706-4c76-ab49-9433f2caa5fb.jpeg",
    "assets/Amazon_com_ Póster de la película DUNE 1 cara….jpeg",
    "assets/Millie Bobby Brown stars in the latest poster for….jpeg",
    "assets/cca841f4-e7be-4374-8d5a-64f44f7ef431.jpeg",
    "assets/ebb16949-89d2-4a4f-aac7-000774dbc0f2.jpeg",
    "assets/f04ddd3c-04d1-486a-a809-b1f93d8e07a4.jpeg",
    "assets/b473be19-3b63-4072-8660-9af8dcada525.jpeg",
    "assets/bd8ace6c-b72a-42f9-9981-b2474acb6af3.jpeg",
    "assets/Beauty and the Beast 2017 - 13x19 D_S Original….jpeg",
    "assets/c8e279cd-2cab-47b5-812b-344390fa556b.jpeg",
    "assets/Captain Jack.jpeg",
    "assets/caratula de pelicula.jpeg",
    "assets/Cargo_ 3_6.jpeg",
    
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
    
    final romanticMovies = images.sublist(0, 8);
    final actionMovies = images.sublist(8, 16);
    final dramaMovies = images.sublist(16, 24);
    final sciFiMovies = images.sublist(24, images.length);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
    right: MediaQuery.of(context).size.width * 0.55,
  ),
                child: Text(
                  "Movie Hub",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ),
              SizedBox(height: 15),

              
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildCategory("Romance", romanticMovies),
                      SizedBox(height: 20),
                      buildCategory("Action", actionMovies),
                      SizedBox(height: 20),
                      buildCategory("Drama", dramaMovies),
                      SizedBox(height: 20),
                      buildCategory("Sci-Fi", sciFiMovies),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String title, List<String> movies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 18.0)),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    movies[index],
                    width: 120,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
