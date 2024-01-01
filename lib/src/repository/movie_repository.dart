import 'package:ent_max/src/features/home/model/movie_model.dart';

final forYouImages = [
  MovieModal(imageAsset: "assets/images/movie/for_your_image_1.jpeg"),
  MovieModal(imageAsset: "assets/images/movie/for_your_image_2.jpeg"),
  MovieModal(imageAsset: "assets/images/movie/for_your_image_3.jpeg"),
  MovieModal(imageAsset: "assets/images/movie/for_your_image_4.jpeg"),
];

final popularImages = [
  MovieModal(
      imageAsset: "assets/images/movie/popular_image_1.jpeg",
      movieName: "Dune",
      director: "Denis Villeneuve",
      description:
          'Dune is a 2021 epic science fiction film directed by Denis Villeneuve with a screenplay by '
          'Jon Spaihts, Villeneuve, and Eric Roth. It is the first of a planned two-part adaptation'
          ' of the 1965 novel of the same name by Frank Herbert, which will cover roughly the first '
          'half of the book. The film stars an ensemble cast including Timothée Chalamet, Rebecca'
          ' Ferguson, Oscar Isaac, Josh Brolin, Stellan Skarsgård, Dave Bautista, Stephen McKinley '
          'Henderson, Zendaya, David Dastmalchian, Chang Chen, Sharon Duncan-Brewster, Charlotte '
          'Rampling, Jason Momoa, and Javier Bardem.',
      categoryTag: [
        'Epic',
        'Fantasy',
        'Drama',
      ],
      cast: [
        {
          "name": "Timothee Chalamet",
          "role": "Paul Atreides",
          "image": "assets/images/movie/actor_1.jpeg",
        },
        {
          "name": "Zendaya",
          "role": "Chani",
          "image": "assets/images/movie/actor_2.jpeg",
        },
        {
          "name": "Rebecca Ferguson",
          "role": "Lady Jessica",
          "image": "assets/images/movie/actor_3.jpeg",
        },
        {
          "name": "Oscar Isaac",
          "role": "Duke Leto",
          "image": "assets/images/movie/actor_4.jpeg",
        },
        {
          "name": "Jaon Momoa",
          "role": "Duncan Idaho",
          "image": "assets/images/movie/actor_5.jpeg",
        },
      ],
      comments: [
        {
          "name": "Cody Fisher",
          "imageUrl": "assets/images/movie/actor_1.png",
          "date": "June 14, 2022",
          "rating": "5.0",
          "comment":
              "Great movie! I will review ite more than once. Special thanks to one the operator!"
        },
        {
          "name": "Theresa Webb",
          "imageUrl": "assets/images/movie/actor_2.png",
          "date": "Aug 2, 2021",
          "rating": "4.0",
          "comment": "Not a bad movie, but not much impressed"
        },
        {
          "name": "Caitriona Balfe",
          "imageUrl": "assets/images/movie/actor_3.png",
          "date": "June 26, 2020",
          "rating": "4.8",
          "comment": "Love the way it is designed."
        },
      ],
      year: "2021",
      movieRating: "8.3"),
  MovieModal(
    imageAsset: "assets/images/movie/popular_image_2.jpeg",
    movieName: "Shang-Chi",
    director: "Destin Daniel Cretton",
    description: 'Shang-Chi and the Legend of the Ten Rings is a 2021 American superhero '
        'film based on Marvel Comics featuring the character Shang-Chi. Produced by Marvel '
        'Studios and distributed by Walt Disney Studios Motion Pictures, it is the 25th film '
        'in the Marvel Cinematic Universe (MCU). The film is directed by Destin Daniel Cretton'
        ' from a screenplay he wrote with Dave Callaham and Andrew Lanham, from a story by Cretton'
        ' and Callaham. It stars Simu Liu as Shang-Chi alongside Awkwafina, Meng’er Zhang, Fala '
        'Chen, Florian Munteanu, Benedict Wong, Michelle Yeoh, Ben Kingsley, and Tony Leung. In '
        'the film, Shang-Chi is forced to confront his past after he is drawn into the Ten Rings'
        ' organization.',
    categoryTag: ['Action', 'Adventure', 'Fantasy'],
    year: "2022",
    movieRating: "6.4",
  ),
  MovieModal(
      imageAsset: "assets/images/movie/popular_image_3.jpeg",
      movieName: "Narcos",
      director: "Chris Brancato",
      description: 'Narcos is an American crime drama television series created and produced by '
          'Chris Brancato, Carlo Bernard, and Doug Miro. Set and filmed in Colombia, seasons 1 and 2 '
          'are based on the story of drug kingpin Pablo Escobar, who became a billionaire through the '
          'production and distribution of cocaine. The series also focuses on Escobar\'s interactions '
          'with drug lords, Drug Enforcement Administration (DEA) agents, and various opposition entities.',
      categoryTag: ['Crime', 'Drama', 'Thriller'],
      year: "2020",
      movieRating: "9.7"),
  MovieModal(
      imageAsset: "assets/images/movie/for_your_image_2.jpeg",
      movieName: "Shazam!",
      director: "David F. Sandberg",
      description: 'Shazam is a 2021 American superhero film based on the DC Comics character of'
          "the same name. A boy is given the ability to become an adult superhero in times of need "
          "with a single magic word, Shazam! Shazam was released in 2021, directed by David F. Sandberg",
      categoryTag: ['Action', 'Adventure', 'Comedy'],
      year: "2021",
      movieRating: "7.5"),
  MovieModal(
      imageAsset: "assets/images/movie/for_your_image_3.jpeg",
      movieName: "Stranger Things",
      description: 'Stranger Things, an American science fiction horror drama television series '
          'created by the Duffer Brothers, premiered on Netflix on July 15, 2016. The series '
          'revolves around the fictional town of Hawkins, Indiana, where a secret government '
          'laboratory accidentally opens a portal to another dimension referred to as the Upside Down.',
      year: "2021",
      categoryTag: ['Horror', 'Drama', 'Thriller'],
      director: "Matt Duffer",
      movieRating: "9.2"),
];
final legendaryImages = [
  MovieModal(
      imageAsset: "assets/images/movie/legendary_movie_1.jpeg",
      movieName: "Alien",
      year: "1979",
      director: "Ridley Scott",
      description: 'Alien is a 1979 science fiction horror film directed by Ridley Scott and '
          'written by Dan O\'Bannon. Based on a story by O\'Bannon and Ronald Shusett, it follows '
          'the crew of the commercial space tug Nostromo, who encounter the eponymous Alien, a '
          'deadly and aggressive extraterrestrial set loose on the ship. The film stars Tom Skerritt,'
          ' Sigourney Weaver, Veronica Cartwright, Harry Dean Stanton, John Hurt, Ian Holm, and Yaphet Kotto.',
      categoryTag: ['Horror', 'Sci-Fi', 'Thriller'],
      movieRating: "7.3"),
  MovieModal(
      imageAsset: "assets/images/movie/legendary_movie_2.jpeg",
      movieName: "300",
      director: "Zack Snyder",
      description: '300 is a 2006 American epic period action film based on the 1998 comic series '
          'of the same name by Frank Miller and Lynn Varley. Both are fictionalized retellings of '
          'the Battle of Thermopylae within the Persian Wars. The film was co-written and directed '
          'by Zack Snyder, while Miller served as executive producer and consultant. It was filmed '
          'mostly with a superimposition chroma key technique, to help replicate the imagery of the '
          'original comic book.',
      categoryTag: ['Action', 'Fantasy'],
      year: "2006",
      movieRating: "9.4"),
  MovieModal(
      imageAsset: "assets/images/movie/popular_image_3.jpeg",
      movieName: "Narcos",
      director: "Chris Brancato",
      year: "2020",
      description: 'Narcos is an American crime drama television series created and produced by '
          'Chris Brancato, Carlo Bernard, and Doug Miro. Set and filmed in Colombia, seasons 1 and 2 '
          'are based on the story of drug kingpin Pablo Escobar, who became a billionaire through the '
          'production and distribution of cocaine. The series also focuses on Escobar\'s interactions '
          'with drug lords, Drug Enforcement Administration (DEA) agents, and various opposition entities.',
      categoryTag: ['Crime', 'Drama', 'Thriller'],
      movieRating: "8.7"),
  MovieModal(
      imageAsset: "assets/images/movie/for_your_image_2.jpeg",
      movieName: "Shazam!",
      director: "David F. Sandberg",
      year: "2021",
      description: 'Shazam is a 2021 American superhero film based on the DC Comics character',
      categoryTag: ['Action', 'Adventure', 'Comedy'],
      movieRating: "7.5"),
  MovieModal(
      imageAsset: "assets/images/movie/for_your_image_1.jpeg",
      movieName: "Cruella",
      director: "Craig Gillespie",
      description: 'Cruella is a 2021 American crime comedy film based on the character Cruella '
          'de Vil from Dodie Smith\'s 1956 novel The Hundred and One Dalmatians. The film is directed '
          'by Craig Gillespie with a screenplay by Dana Fox and Tony McNamara, from a story by Aline Brosh McKenna,'
          ' Kelly Marcel, and Steve Zissis. It is the third live-action adaptation in the 101 Dalmatians franchise '
          'and serves as a prequel to both the 1961 animated film and the 1996 live-action film, '
          '101 Dalmatians. Emma Stone stars as the title character, with Emma Thompson, Joel Fry, Paul Walter Hauser, '
          'Emily Beecham, Kirby Howell-Baptiste, and Mark Strong in supporting roles.',
      categoryTag: ['Comedy', 'Crime'],
      year: "2021",
      movieRating: "9.2"),
];

final genresList = [
  MovieModal(movieName: "Horror", imageAsset: "assets/images/movie/genres_1.png"),
  MovieModal(movieName: "Fantasy", imageAsset: "assets/images/movie/genres_2.jpeg"),
  MovieModal(movieName: "History", imageAsset: "assets/images/movie/genres_3.jpeg"),
  MovieModal(movieName: "Detective", imageAsset: "assets/images/movie/genres_4.jpeg"),
  MovieModal(movieName: "Action", imageAsset: "assets/images/movie/genres_5.jpeg"),
];
