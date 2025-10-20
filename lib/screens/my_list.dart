import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  final List<String> images = const [
    "assets/b3de8fd2-6d02-4b5a-a66e-90f7f197126e.jpeg",
    "assets/b473be19-3b63-4072-8660-9af8dcada525.jpeg",
    "assets/bd8ace6c-b72a-42f9-9981-b2474acb6af3.jpeg",
    "assets/Beauty and the Beast 2017 - 13x19 D_S Original….jpeg",
    "assets/c8e279cd-2cab-47b5-812b-344390fa556b.jpeg",
    "assets/Captain Jack.jpeg",
    "assets/caratula de pelicula.jpeg",
    "assets/Cargo_ 3_6.jpeg",
    "assets/cca841f4-e7be-4374-8d5a-64f44f7ef431.jpeg",
    "assets/d0126dc7-162b-486a-8631-2886cb11147b.jpeg",
    "assets/ebb16949-89d2-4a4f-aac7-000774dbc0f2.jpeg",
    "assets/Exclusive poster comes with the pre-ordered movie….jpeg",
    "assets/f04ddd3c-04d1-486a-a809-b1f93d8e07a4.jpeg",
    "assets/Exclusive poster comes with the pre-ordered movie….jpeg",
    "assets/movie1.jpg",
    "assets/movie2.jpg",
    "assets/movie3.jpg",
    "assets/movie4.jpg",
    "assets/movie5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // Example placeholder data for titles, descriptions, ratings
    final movieTitles = [
      "Titanic",
      "Avatar",
      "Great Pwerful",
      "Beauty and the Beast",
      "Hulk",
      "Pirates of the Carribean",
      "Leyanda",
      "Cargo",
      "Avengers",
      "Call me by your name",
      "Thor",


    ];
    final movieDescriptions = [
          "On the maiden voyage of the RMS Titanic, a young couple from different worlds fall in love. Their romance blossoms amidst the luxury and excitement of the ship. But tragedy strikes as the Titanic faces its catastrophic sinking.",
          "Humans arrive on the lush planet Pandora to mine its resources. Jake Sully, a disabled marine, joins the native Na’vi and learns their ways. He must choose between his human side and his loyalty to Pandora.",
          "A small-time magician is swept into the magical land of Oz. He meets witches and faces challenges that test his courage. Ultimately, he discovers his inner hero and the true power of belief.",
          "Belle, a kind-hearted young woman, is held captive by a cursed prince. She learns to look beyond appearances and sees the goodness within. Their love breaks the curse, restoring magic and happiness.",
          "Scientist Bruce Banner is exposed to gamma radiation during an experiment. He transforms into the powerful Hulk whenever he loses control. Banner struggles to balance his human life with his unstoppable alter ego.",
          "Captain Jack Sparrow embarks on daring adventures at sea. He faces cursed pirates, treasure hunts, and dangerous enemies. Witty, clever, and unpredictable, Jack navigates a world of danger and intrigue.",
          "In a post-apocalyptic world, a father tries to protect his baby from a deadly virus. He faces desperate survivors and harsh environments during his journey. Love, sacrifice, and survival drive his every action.",
          "Earth’s greatest heroes come together to fight overwhelming threats. Iron Man, Captain America, Thor, and others unite their powers. Teamwork, sacrifice, and courage determine the fate of humanity.",
          "A young man spends a transformative summer in Italy. He meets an older guest, and a passionate, tender romance develops. Their relationship leaves a lasting impact on love, identity, and self-discovery.",
          "The mighty Norse god Thor is banished to Earth as punishment. He learns humility and gains a deeper understanding of heroism. With newfound wisdom, he fights to protect both Asgard and humanity."
    ];
    final movieRatings = [4.5, 4.7, 4.2, 4.0, 4.8];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.only(
                  right:
                      MediaQuery.of(context).size.width *
                      0.6,
                ),
                child: Text(
                  "My List",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 200,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              images[index],
                              width: 120,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  movieTitles[index % movieTitles.length],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  movieDescriptions[index %
                                      movieDescriptions.length],
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '${movieRatings[index % movieRatings.length]}/5',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
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
