class Details {
  final List _recentlyWatchedData = [
    {
      "url": "assets/images/recents/arrow_pic.jpg",
      "name": "Arrow"
    },
    {
      "url": "assets/images/recents/dark_pic.jpg",
      "name": "Dark"
    },
    {
      "url": "assets/images/recents/lock_and_key_pic.jpg",
      "name": "Lock And Key"
    },
    {
      "url": "assets/images/recents/vampire_diaries_pic.jpg",
      "name": "Vampire Dairies"
    },
  ];


  final List _hollywoodMoviesData = [
    {
      "url": "assets/images/hollywood/antman_pic.jpg",
      "name": "Antman"
    },
    {
      "url": "assets/images/hollywood/invictus_pic.jpg",
      "name": "Invictus"
    },
    {
      "url": "assets/images/hollywood/miracle_pic.jpg",
      "name": "Miracle"
    },
    {
      "url": "assets/images/hollywood/stowaway_pic.jpg",
      "name": "Stowaway"
    }
  ];

  Details();

  List get recentlyWatchedData => _recentlyWatchedData;

  List get hollywoodMoviesData => _hollywoodMoviesData;

}