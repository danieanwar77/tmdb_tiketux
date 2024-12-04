import 'dart:convert';

/// adult : false
/// backdrop_path : "/3wfpySz5pedy6FkVID1LXXQYeYq.jpg"
/// belongs_to_collection : {"id":558216,"name":"Venom Collection","poster_path":"/4bXIKqdZIjR8wKgZaGDaLhLj4yF.jpg","backdrop_path":"/vq340s8DxA5Q209FT8PHA6CXYOx.jpg"}
/// budget : 120000000
/// created_by : [{"id":1293994,"credit_id":"662bb340c1e56e011df1ccba","name":"Jon Watts","original_name":"Jon Watts","gender":2,"profile_path":"/fkXChMX6CUXY1yOxBehAzvaTCl7.jpg"},{"id":101814,"credit_id":"6679a71cd0e901289b572890","name":"Christopher Ford","original_name":"Christopher Ford","gender":2,"profile_path":"/qmEqDJfoQSzWx1pQkXRzXxxDFxp.jpg"}]
/// episode_run_time : []
/// first_air_date : "2024-12-02"
/// genres : [{"id":10759,"name":"Action & Adventure"},{"id":10765,"name":"Sci-Fi & Fantasy"}]
/// homepage : "https://www.disneyplus.com/series/star-wars-skeleton-crew/5V2Mi4qOaO77"
/// id : 202879
/// imdb_id : "tt16366836"
/// in_production : true
/// languages : ["en"]
/// last_air_date : "2024-12-02"
/// last_episode_to_air : {"id":5523676,"name":"Way, Way Out Past the Barrier","overview":"A surprising first stop marks the beginning of an unexpected journey.","vote_average":4.4,"vote_count":5,"air_date":"2024-12-02","episode_number":2,"episode_type":"standard","production_code":"","runtime":32,"season_number":1,"show_id":202879,"still_path":"/t7RIIiP1dLBGw5tW7mW5OTgwd8L.jpg"}
/// name : "Star Wars: Skeleton Crew"
/// next_episode_to_air : {"id":5523680,"name":"Episode 3","overview":"","vote_average":6,"vote_count":1,"air_date":"2024-12-10","episode_number":3,"episode_type":"standard","production_code":"","runtime":null,"season_number":1,"show_id":202879,"still_path":"/jR1RS0nd4rY9VfYbG1V5m9vB4JF.jpg"}
/// networks : [{"id":2739,"logo_path":"/1edZOYAfoyZyZ3rklNSiUpXX30Q.png","name":"Disney+","origin_country":""}]
/// number_of_episodes : 8
/// number_of_seasons : 1
/// origin_country : ["US"]
/// original_language : "en"
/// original_name : "Star Wars: Skeleton Crew"
/// overview : "Four ordinary kids search for their home planet after getting lost in the Star Wars galaxy."
/// popularity : 205.835
/// poster_path : "/srQbJhLRKoAwRrNN5ga7webPHbC.jpg"
/// production_companies : [{"id":1,"logo_path":"/tlVSws0RvvtPBwViUyOFAO0vcQS.png","name":"Lucasfilm Ltd.","origin_country":"US"}]
/// production_countries : [{"iso_3166_1":"US","name":"United States of America"}]
/// release_date : "2024-10-22"
/// revenue : 468425476
/// runtime : 109
/// seasons : [{"air_date":"2024-12-02","episode_count":8,"id":295165,"name":"Season 1","overview":"When four kids make a mysterious discovery on their seemingly safe home planet, they get lost in a strange and dangerous galaxy. Finding their way home, meeting unlikely allies and enemies will be a greater adventure than they ever imagined.","poster_path":"/srQbJhLRKoAwRrNN5ga7webPHbC.jpg","season_number":1,"vote_average":5.1}]
/// spoken_languages : [{"english_name":"English","iso_639_1":"en","name":"English"}]
/// status : "Returning Series"
/// tagline : "A Star Wars adventure."
/// title : "Venom: The Last Dance"
/// video : false
/// type : "Scripted"
/// vote_average : 7.4
/// vote_count : 18

class DetailModel {
  DetailModel({
      bool? adult, 
      String? backdropPath, 
      BelongsToCollection? belongsToCollection, 
      num? budget, 
      List<CreatedBy>? createdBy, 
      List<dynamic>? episodeRunTime, 
      String? firstAirDate, 
      List<Genres>? genres, 
      String? homepage, 
      num? id, 
      String? imdbId, 
      bool? inProduction, 
      List<String>? languages, 
      String? lastAirDate, 
      LastEpisodeToAir? lastEpisodeToAir, 
      String? name, 
      NextEpisodeToAir? nextEpisodeToAir, 
      List<Networks>? networks, 
      num? numberOfEpisodes, 
      num? numberOfSeasons, 
      List<String>? originCountry, 
      String? originalLanguage, 
      String? originalName, 
      String? overview, 
      num? popularity, 
      String? posterPath, 
      List<ProductionCompanies>? productionCompanies, 
      List<ProductionCountries>? productionCountries, 
      String? releaseDate, 
      num? revenue, 
      num? runtime, 
      List<Seasons>? seasons, 
      List<SpokenLanguages>? spokenLanguages, 
      String? status, 
      String? tagline, 
      String? title, 
      bool? video, 
      String? type, 
      num? voteAverage, 
      num? voteCount,}){
    _adult = adult;
    _backdropPath = backdropPath;
    _belongsToCollection = belongsToCollection;
    _budget = budget;
    _createdBy = createdBy;
    _episodeRunTime = episodeRunTime;
    _firstAirDate = firstAirDate;
    _genres = genres;
    _homepage = homepage;
    _id = id;
    _imdbId = imdbId;
    _inProduction = inProduction;
    _languages = languages;
    _lastAirDate = lastAirDate;
    _lastEpisodeToAir = lastEpisodeToAir;
    _name = name;
    _nextEpisodeToAir = nextEpisodeToAir;
    _networks = networks;
    _numberOfEpisodes = numberOfEpisodes;
    _numberOfSeasons = numberOfSeasons;
    _originCountry = originCountry;
    _originalLanguage = originalLanguage;
    _originalName = originalName;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _productionCompanies = productionCompanies;
    _productionCountries = productionCountries;
    _releaseDate = releaseDate;
    _revenue = revenue;
    _runtime = runtime;
    _seasons = seasons;
    _spokenLanguages = spokenLanguages;
    _status = status;
    _tagline = tagline;
    _title = title;
    _video = video;
    _type = type;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
}

  DetailModel.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _belongsToCollection = json['belongs_to_collection'] != null ? BelongsToCollection.fromJson(json['belongs_to_collection']) : null;
    _budget = json['budget'];
    if (json['created_by'] != null) {
      _createdBy = [];
      json['created_by'].forEach((v) {
        _createdBy?.add(CreatedBy.fromJson(v));
      });
    }
    if (json['episode_run_time'] != null) {
      _episodeRunTime = [];
      json['episode_run_time'].forEach((v) {
        _episodeRunTime?.add(jsonDecode(v));
      });
    }
    _firstAirDate = json['first_air_date'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    _homepage = json['homepage'];
    _id = json['id'];
    _imdbId = json['imdb_id'];
    _inProduction = json['in_production'];
    _languages = json['languages'] != null ? json['languages'].cast<String>() : [];
    _lastAirDate = json['last_air_date'];
    _lastEpisodeToAir = json['last_episode_to_air'] != null ? LastEpisodeToAir.fromJson(json['last_episode_to_air']) : null;
    _name = json['name'];
    _nextEpisodeToAir = json['next_episode_to_air'] != null ? NextEpisodeToAir.fromJson(json['next_episode_to_air']) : null;
    if (json['networks'] != null) {
      _networks = [];
      json['networks'].forEach((v) {
        _networks?.add(Networks.fromJson(v));
      });
    }
    _numberOfEpisodes = json['number_of_episodes'];
    _numberOfSeasons = json['number_of_seasons'];
    _originCountry = json['origin_country'] != null ? json['origin_country'].cast<String>() : [];
    _originalLanguage = json['original_language'];
    _originalName = json['original_name'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      _productionCompanies = [];
      json['production_companies'].forEach((v) {
        _productionCompanies?.add(ProductionCompanies.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      _productionCountries = [];
      json['production_countries'].forEach((v) {
        _productionCountries?.add(ProductionCountries.fromJson(v));
      });
    }
    _releaseDate = json['release_date'];
    _revenue = json['revenue'];
    _runtime = json['runtime'];
    if (json['seasons'] != null) {
      _seasons = [];
      json['seasons'].forEach((v) {
        _seasons?.add(Seasons.fromJson(v));
      });
    }
    if (json['spoken_languages'] != null) {
      _spokenLanguages = [];
      json['spoken_languages'].forEach((v) {
        _spokenLanguages?.add(SpokenLanguages.fromJson(v));
      });
    }
    _status = json['status'];
    _tagline = json['tagline'];
    _title = json['title'];
    _video = json['video'];
    _type = json['type'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }
  bool? _adult;
  String? _backdropPath;
  BelongsToCollection? _belongsToCollection;
  num? _budget;
  List<CreatedBy>? _createdBy;
  List<dynamic>? _episodeRunTime;
  String? _firstAirDate;
  List<Genres>? _genres;
  String? _homepage;
  num? _id;
  String? _imdbId;
  bool? _inProduction;
  List<String>? _languages;
  String? _lastAirDate;
  LastEpisodeToAir? _lastEpisodeToAir;
  String? _name;
  NextEpisodeToAir? _nextEpisodeToAir;
  List<Networks>? _networks;
  num? _numberOfEpisodes;
  num? _numberOfSeasons;
  List<String>? _originCountry;
  String? _originalLanguage;
  String? _originalName;
  String? _overview;
  num? _popularity;
  String? _posterPath;
  List<ProductionCompanies>? _productionCompanies;
  List<ProductionCountries>? _productionCountries;
  String? _releaseDate;
  num? _revenue;
  num? _runtime;
  List<Seasons>? _seasons;
  List<SpokenLanguages>? _spokenLanguages;
  String? _status;
  String? _tagline;
  String? _title;
  bool? _video;
  String? _type;
  num? _voteAverage;
  num? _voteCount;
DetailModel copyWith({  bool? adult,
  String? backdropPath,
  BelongsToCollection? belongsToCollection,
  num? budget,
  List<CreatedBy>? createdBy,
  List<dynamic>? episodeRunTime,
  String? firstAirDate,
  List<Genres>? genres,
  String? homepage,
  num? id,
  String? imdbId,
  bool? inProduction,
  List<String>? languages,
  String? lastAirDate,
  LastEpisodeToAir? lastEpisodeToAir,
  String? name,
  NextEpisodeToAir? nextEpisodeToAir,
  List<Networks>? networks,
  num? numberOfEpisodes,
  num? numberOfSeasons,
  List<String>? originCountry,
  String? originalLanguage,
  String? originalName,
  String? overview,
  num? popularity,
  String? posterPath,
  List<ProductionCompanies>? productionCompanies,
  List<ProductionCountries>? productionCountries,
  String? releaseDate,
  num? revenue,
  num? runtime,
  List<Seasons>? seasons,
  List<SpokenLanguages>? spokenLanguages,
  String? status,
  String? tagline,
  String? title,
  bool? video,
  String? type,
  num? voteAverage,
  num? voteCount,
}) => DetailModel(  adult: adult ?? _adult,
  backdropPath: backdropPath ?? _backdropPath,
  belongsToCollection: belongsToCollection ?? _belongsToCollection,
  budget: budget ?? _budget,
  createdBy: createdBy ?? _createdBy,
  episodeRunTime: episodeRunTime ?? _episodeRunTime,
  firstAirDate: firstAirDate ?? _firstAirDate,
  genres: genres ?? _genres,
  homepage: homepage ?? _homepage,
  id: id ?? _id,
  imdbId: imdbId ?? _imdbId,
  inProduction: inProduction ?? _inProduction,
  languages: languages ?? _languages,
  lastAirDate: lastAirDate ?? _lastAirDate,
  lastEpisodeToAir: lastEpisodeToAir ?? _lastEpisodeToAir,
  name: name ?? _name,
  nextEpisodeToAir: nextEpisodeToAir ?? _nextEpisodeToAir,
  networks: networks ?? _networks,
  numberOfEpisodes: numberOfEpisodes ?? _numberOfEpisodes,
  numberOfSeasons: numberOfSeasons ?? _numberOfSeasons,
  originCountry: originCountry ?? _originCountry,
  originalLanguage: originalLanguage ?? _originalLanguage,
  originalName: originalName ?? _originalName,
  overview: overview ?? _overview,
  popularity: popularity ?? _popularity,
  posterPath: posterPath ?? _posterPath,
  productionCompanies: productionCompanies ?? _productionCompanies,
  productionCountries: productionCountries ?? _productionCountries,
  releaseDate: releaseDate ?? _releaseDate,
  revenue: revenue ?? _revenue,
  runtime: runtime ?? _runtime,
  seasons: seasons ?? _seasons,
  spokenLanguages: spokenLanguages ?? _spokenLanguages,
  status: status ?? _status,
  tagline: tagline ?? _tagline,
  title: title ?? _title,
  video: video ?? _video,
  type: type ?? _type,
  voteAverage: voteAverage ?? _voteAverage,
  voteCount: voteCount ?? _voteCount,
);
  bool? get adult => _adult;
  String? get backdropPath => _backdropPath;
  BelongsToCollection? get belongsToCollection => _belongsToCollection;
  num? get budget => _budget;
  List<CreatedBy>? get createdBy => _createdBy;
  List<dynamic>? get episodeRunTime => _episodeRunTime;
  String? get firstAirDate => _firstAirDate;
  List<Genres>? get genres => _genres;
  String? get homepage => _homepage;
  num? get id => _id;
  String? get imdbId => _imdbId;
  bool? get inProduction => _inProduction;
  List<String>? get languages => _languages;
  String? get lastAirDate => _lastAirDate;
  LastEpisodeToAir? get lastEpisodeToAir => _lastEpisodeToAir;
  String? get name => _name;
  NextEpisodeToAir? get nextEpisodeToAir => _nextEpisodeToAir;
  List<Networks>? get networks => _networks;
  num? get numberOfEpisodes => _numberOfEpisodes;
  num? get numberOfSeasons => _numberOfSeasons;
  List<String>? get originCountry => _originCountry;
  String? get originalLanguage => _originalLanguage;
  String? get originalName => _originalName;
  String? get overview => _overview;
  num? get popularity => _popularity;
  String? get posterPath => _posterPath;
  List<ProductionCompanies>? get productionCompanies => _productionCompanies;
  List<ProductionCountries>? get productionCountries => _productionCountries;
  String? get releaseDate => _releaseDate;
  num? get revenue => _revenue;
  num? get runtime => _runtime;
  List<Seasons>? get seasons => _seasons;
  List<SpokenLanguages>? get spokenLanguages => _spokenLanguages;
  String? get status => _status;
  String? get tagline => _tagline;
  String? get title => _title;
  bool? get video => _video;
  String? get type => _type;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    if (_belongsToCollection != null) {
      map['belongs_to_collection'] = _belongsToCollection?.toJson();
    }
    map['budget'] = _budget;
    if (_createdBy != null) {
      map['created_by'] = _createdBy?.map((v) => v.toJson()).toList();
    }
    if (_episodeRunTime != null) {
      map['episode_run_time'] = _episodeRunTime?.map((v) => v.toJson()).toList();
    }
    map['first_air_date'] = _firstAirDate;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    map['homepage'] = _homepage;
    map['id'] = _id;
    map['imdb_id'] = _imdbId;
    map['in_production'] = _inProduction;
    map['languages'] = _languages;
    map['last_air_date'] = _lastAirDate;
    if (_lastEpisodeToAir != null) {
      map['last_episode_to_air'] = _lastEpisodeToAir?.toJson();
    }
    map['name'] = _name;
    if (_nextEpisodeToAir != null) {
      map['next_episode_to_air'] = _nextEpisodeToAir?.toJson();
    }
    if (_networks != null) {
      map['networks'] = _networks?.map((v) => v.toJson()).toList();
    }
    map['number_of_episodes'] = _numberOfEpisodes;
    map['number_of_seasons'] = _numberOfSeasons;
    map['origin_country'] = _originCountry;
    map['original_language'] = _originalLanguage;
    map['original_name'] = _originalName;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    if (_productionCompanies != null) {
      map['production_companies'] = _productionCompanies?.map((v) => v.toJson()).toList();
    }
    if (_productionCountries != null) {
      map['production_countries'] = _productionCountries?.map((v) => v.toJson()).toList();
    }
    map['release_date'] = _releaseDate;
    map['revenue'] = _revenue;
    map['runtime'] = _runtime;
    if (_seasons != null) {
      map['seasons'] = _seasons?.map((v) => v.toJson()).toList();
    }
    if (_spokenLanguages != null) {
      map['spoken_languages'] = _spokenLanguages?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    map['tagline'] = _tagline;
    map['title'] = _title;
    map['video'] = _video;
    map['type'] = _type;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

}

/// english_name : "English"
/// iso_639_1 : "en"
/// name : "English"

class SpokenLanguages {
  SpokenLanguages({
      String? englishName, 
      String? iso6391, 
      String? name,}){
    _englishName = englishName;
    _iso6391 = iso6391;
    _name = name;
}

  SpokenLanguages.fromJson(dynamic json) {
    _englishName = json['english_name'];
    _iso6391 = json['iso_639_1'];
    _name = json['name'];
  }
  String? _englishName;
  String? _iso6391;
  String? _name;
SpokenLanguages copyWith({  String? englishName,
  String? iso6391,
  String? name,
}) => SpokenLanguages(  englishName: englishName ?? _englishName,
  iso6391: iso6391 ?? _iso6391,
  name: name ?? _name,
);
  String? get englishName => _englishName;
  String? get iso6391 => _iso6391;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['english_name'] = _englishName;
    map['iso_639_1'] = _iso6391;
    map['name'] = _name;
    return map;
  }

}

/// air_date : "2024-12-02"
/// episode_count : 8
/// id : 295165
/// name : "Season 1"
/// overview : "When four kids make a mysterious discovery on their seemingly safe home planet, they get lost in a strange and dangerous galaxy. Finding their way home, meeting unlikely allies and enemies will be a greater adventure than they ever imagined."
/// poster_path : "/srQbJhLRKoAwRrNN5ga7webPHbC.jpg"
/// season_number : 1
/// vote_average : 5.1

class Seasons {
  Seasons({
      String? airDate, 
      num? episodeCount, 
      num? id, 
      String? name, 
      String? overview, 
      String? posterPath, 
      num? seasonNumber, 
      num? voteAverage,}){
    _airDate = airDate;
    _episodeCount = episodeCount;
    _id = id;
    _name = name;
    _overview = overview;
    _posterPath = posterPath;
    _seasonNumber = seasonNumber;
    _voteAverage = voteAverage;
}

  Seasons.fromJson(dynamic json) {
    _airDate = json['air_date'];
    _episodeCount = json['episode_count'];
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _posterPath = json['poster_path'];
    _seasonNumber = json['season_number'];
    _voteAverage = json['vote_average'];
  }
  String? _airDate;
  num? _episodeCount;
  num? _id;
  String? _name;
  String? _overview;
  String? _posterPath;
  num? _seasonNumber;
  num? _voteAverage;
Seasons copyWith({  String? airDate,
  num? episodeCount,
  num? id,
  String? name,
  String? overview,
  String? posterPath,
  num? seasonNumber,
  num? voteAverage,
}) => Seasons(  airDate: airDate ?? _airDate,
  episodeCount: episodeCount ?? _episodeCount,
  id: id ?? _id,
  name: name ?? _name,
  overview: overview ?? _overview,
  posterPath: posterPath ?? _posterPath,
  seasonNumber: seasonNumber ?? _seasonNumber,
  voteAverage: voteAverage ?? _voteAverage,
);
  String? get airDate => _airDate;
  num? get episodeCount => _episodeCount;
  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  String? get posterPath => _posterPath;
  num? get seasonNumber => _seasonNumber;
  num? get voteAverage => _voteAverage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['air_date'] = _airDate;
    map['episode_count'] = _episodeCount;
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['poster_path'] = _posterPath;
    map['season_number'] = _seasonNumber;
    map['vote_average'] = _voteAverage;
    return map;
  }

}

/// iso_3166_1 : "US"
/// name : "United States of America"

class ProductionCountries {
  ProductionCountries({
      String? iso31661, 
      String? name,}){
    _iso31661 = iso31661;
    _name = name;
}

  ProductionCountries.fromJson(dynamic json) {
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
  }
  String? _iso31661;
  String? _name;
ProductionCountries copyWith({  String? iso31661,
  String? name,
}) => ProductionCountries(  iso31661: iso31661 ?? _iso31661,
  name: name ?? _name,
);
  String? get iso31661 => _iso31661;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = _iso31661;
    map['name'] = _name;
    return map;
  }

}

/// id : 1
/// logo_path : "/tlVSws0RvvtPBwViUyOFAO0vcQS.png"
/// name : "Lucasfilm Ltd."
/// origin_country : "US"

class ProductionCompanies {
  ProductionCompanies({
      num? id, 
      String? logoPath, 
      String? name, 
      String? originCountry,}){
    _id = id;
    _logoPath = logoPath;
    _name = name;
    _originCountry = originCountry;
}

  ProductionCompanies.fromJson(dynamic json) {
    _id = json['id'];
    _logoPath = json['logo_path'];
    _name = json['name'];
    _originCountry = json['origin_country'];
  }
  num? _id;
  String? _logoPath;
  String? _name;
  String? _originCountry;
ProductionCompanies copyWith({  num? id,
  String? logoPath,
  String? name,
  String? originCountry,
}) => ProductionCompanies(  id: id ?? _id,
  logoPath: logoPath ?? _logoPath,
  name: name ?? _name,
  originCountry: originCountry ?? _originCountry,
);
  num? get id => _id;
  String? get logoPath => _logoPath;
  String? get name => _name;
  String? get originCountry => _originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['logo_path'] = _logoPath;
    map['name'] = _name;
    map['origin_country'] = _originCountry;
    return map;
  }

}

/// id : 2739
/// logo_path : "/1edZOYAfoyZyZ3rklNSiUpXX30Q.png"
/// name : "Disney+"
/// origin_country : ""

class Networks {
  Networks({
      num? id, 
      String? logoPath, 
      String? name, 
      String? originCountry,}){
    _id = id;
    _logoPath = logoPath;
    _name = name;
    _originCountry = originCountry;
}

  Networks.fromJson(dynamic json) {
    _id = json['id'];
    _logoPath = json['logo_path'];
    _name = json['name'];
    _originCountry = json['origin_country'];
  }
  num? _id;
  String? _logoPath;
  String? _name;
  String? _originCountry;
Networks copyWith({  num? id,
  String? logoPath,
  String? name,
  String? originCountry,
}) => Networks(  id: id ?? _id,
  logoPath: logoPath ?? _logoPath,
  name: name ?? _name,
  originCountry: originCountry ?? _originCountry,
);
  num? get id => _id;
  String? get logoPath => _logoPath;
  String? get name => _name;
  String? get originCountry => _originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['logo_path'] = _logoPath;
    map['name'] = _name;
    map['origin_country'] = _originCountry;
    return map;
  }

}

/// id : 5523680
/// name : "Episode 3"
/// overview : ""
/// vote_average : 6
/// vote_count : 1
/// air_date : "2024-12-10"
/// episode_number : 3
/// episode_type : "standard"
/// production_code : ""
/// runtime : null
/// season_number : 1
/// show_id : 202879
/// still_path : "/jR1RS0nd4rY9VfYbG1V5m9vB4JF.jpg"

class NextEpisodeToAir {
  NextEpisodeToAir({
      num? id, 
      String? name, 
      String? overview, 
      num? voteAverage, 
      num? voteCount, 
      String? airDate, 
      num? episodeNumber, 
      String? episodeType, 
      String? productionCode, 
      dynamic runtime, 
      num? seasonNumber, 
      num? showId, 
      String? stillPath,}){
    _id = id;
    _name = name;
    _overview = overview;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
    _airDate = airDate;
    _episodeNumber = episodeNumber;
    _episodeType = episodeType;
    _productionCode = productionCode;
    _runtime = runtime;
    _seasonNumber = seasonNumber;
    _showId = showId;
    _stillPath = stillPath;
}

  NextEpisodeToAir.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _airDate = json['air_date'];
    _episodeNumber = json['episode_number'];
    _episodeType = json['episode_type'];
    _productionCode = json['production_code'];
    _runtime = json['runtime'];
    _seasonNumber = json['season_number'];
    _showId = json['show_id'];
    _stillPath = json['still_path'];
  }
  num? _id;
  String? _name;
  String? _overview;
  num? _voteAverage;
  num? _voteCount;
  String? _airDate;
  num? _episodeNumber;
  String? _episodeType;
  String? _productionCode;
  dynamic _runtime;
  num? _seasonNumber;
  num? _showId;
  String? _stillPath;
NextEpisodeToAir copyWith({  num? id,
  String? name,
  String? overview,
  num? voteAverage,
  num? voteCount,
  String? airDate,
  num? episodeNumber,
  String? episodeType,
  String? productionCode,
  dynamic runtime,
  num? seasonNumber,
  num? showId,
  String? stillPath,
}) => NextEpisodeToAir(  id: id ?? _id,
  name: name ?? _name,
  overview: overview ?? _overview,
  voteAverage: voteAverage ?? _voteAverage,
  voteCount: voteCount ?? _voteCount,
  airDate: airDate ?? _airDate,
  episodeNumber: episodeNumber ?? _episodeNumber,
  episodeType: episodeType ?? _episodeType,
  productionCode: productionCode ?? _productionCode,
  runtime: runtime ?? _runtime,
  seasonNumber: seasonNumber ?? _seasonNumber,
  showId: showId ?? _showId,
  stillPath: stillPath ?? _stillPath,
);
  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;
  String? get airDate => _airDate;
  num? get episodeNumber => _episodeNumber;
  String? get episodeType => _episodeType;
  String? get productionCode => _productionCode;
  dynamic get runtime => _runtime;
  num? get seasonNumber => _seasonNumber;
  num? get showId => _showId;
  String? get stillPath => _stillPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    map['air_date'] = _airDate;
    map['episode_number'] = _episodeNumber;
    map['episode_type'] = _episodeType;
    map['production_code'] = _productionCode;
    map['runtime'] = _runtime;
    map['season_number'] = _seasonNumber;
    map['show_id'] = _showId;
    map['still_path'] = _stillPath;
    return map;
  }

}

/// id : 5523676
/// name : "Way, Way Out Past the Barrier"
/// overview : "A surprising first stop marks the beginning of an unexpected journey."
/// vote_average : 4.4
/// vote_count : 5
/// air_date : "2024-12-02"
/// episode_number : 2
/// episode_type : "standard"
/// production_code : ""
/// runtime : 32
/// season_number : 1
/// show_id : 202879
/// still_path : "/t7RIIiP1dLBGw5tW7mW5OTgwd8L.jpg"

class LastEpisodeToAir {
  LastEpisodeToAir({
      num? id, 
      String? name, 
      String? overview, 
      num? voteAverage, 
      num? voteCount, 
      String? airDate, 
      num? episodeNumber, 
      String? episodeType, 
      String? productionCode, 
      num? runtime, 
      num? seasonNumber, 
      num? showId, 
      String? stillPath,}){
    _id = id;
    _name = name;
    _overview = overview;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
    _airDate = airDate;
    _episodeNumber = episodeNumber;
    _episodeType = episodeType;
    _productionCode = productionCode;
    _runtime = runtime;
    _seasonNumber = seasonNumber;
    _showId = showId;
    _stillPath = stillPath;
}

  LastEpisodeToAir.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _airDate = json['air_date'];
    _episodeNumber = json['episode_number'];
    _episodeType = json['episode_type'];
    _productionCode = json['production_code'];
    _runtime = json['runtime'];
    _seasonNumber = json['season_number'];
    _showId = json['show_id'];
    _stillPath = json['still_path'];
  }
  num? _id;
  String? _name;
  String? _overview;
  num? _voteAverage;
  num? _voteCount;
  String? _airDate;
  num? _episodeNumber;
  String? _episodeType;
  String? _productionCode;
  num? _runtime;
  num? _seasonNumber;
  num? _showId;
  String? _stillPath;
LastEpisodeToAir copyWith({  num? id,
  String? name,
  String? overview,
  num? voteAverage,
  num? voteCount,
  String? airDate,
  num? episodeNumber,
  String? episodeType,
  String? productionCode,
  num? runtime,
  num? seasonNumber,
  num? showId,
  String? stillPath,
}) => LastEpisodeToAir(  id: id ?? _id,
  name: name ?? _name,
  overview: overview ?? _overview,
  voteAverage: voteAverage ?? _voteAverage,
  voteCount: voteCount ?? _voteCount,
  airDate: airDate ?? _airDate,
  episodeNumber: episodeNumber ?? _episodeNumber,
  episodeType: episodeType ?? _episodeType,
  productionCode: productionCode ?? _productionCode,
  runtime: runtime ?? _runtime,
  seasonNumber: seasonNumber ?? _seasonNumber,
  showId: showId ?? _showId,
  stillPath: stillPath ?? _stillPath,
);
  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;
  String? get airDate => _airDate;
  num? get episodeNumber => _episodeNumber;
  String? get episodeType => _episodeType;
  String? get productionCode => _productionCode;
  num? get runtime => _runtime;
  num? get seasonNumber => _seasonNumber;
  num? get showId => _showId;
  String? get stillPath => _stillPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    map['air_date'] = _airDate;
    map['episode_number'] = _episodeNumber;
    map['episode_type'] = _episodeType;
    map['production_code'] = _productionCode;
    map['runtime'] = _runtime;
    map['season_number'] = _seasonNumber;
    map['show_id'] = _showId;
    map['still_path'] = _stillPath;
    return map;
  }

}

/// id : 10759
/// name : "Action & Adventure"

class Genres {
  Genres({
      num? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Genres.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;
Genres copyWith({  num? id,
  String? name,
}) => Genres(  id: id ?? _id,
  name: name ?? _name,
);
  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}

/// id : 1293994
/// credit_id : "662bb340c1e56e011df1ccba"
/// name : "Jon Watts"
/// original_name : "Jon Watts"
/// gender : 2
/// profile_path : "/fkXChMX6CUXY1yOxBehAzvaTCl7.jpg"

class CreatedBy {
  CreatedBy({
      num? id, 
      String? creditId, 
      String? name, 
      String? originalName, 
      num? gender, 
      String? profilePath,}){
    _id = id;
    _creditId = creditId;
    _name = name;
    _originalName = originalName;
    _gender = gender;
    _profilePath = profilePath;
}

  CreatedBy.fromJson(dynamic json) {
    _id = json['id'];
    _creditId = json['credit_id'];
    _name = json['name'];
    _originalName = json['original_name'];
    _gender = json['gender'];
    _profilePath = json['profile_path'];
  }
  num? _id;
  String? _creditId;
  String? _name;
  String? _originalName;
  num? _gender;
  String? _profilePath;
CreatedBy copyWith({  num? id,
  String? creditId,
  String? name,
  String? originalName,
  num? gender,
  String? profilePath,
}) => CreatedBy(  id: id ?? _id,
  creditId: creditId ?? _creditId,
  name: name ?? _name,
  originalName: originalName ?? _originalName,
  gender: gender ?? _gender,
  profilePath: profilePath ?? _profilePath,
);
  num? get id => _id;
  String? get creditId => _creditId;
  String? get name => _name;
  String? get originalName => _originalName;
  num? get gender => _gender;
  String? get profilePath => _profilePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['credit_id'] = _creditId;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['gender'] = _gender;
    map['profile_path'] = _profilePath;
    return map;
  }

}

/// id : 558216
/// name : "Venom Collection"
/// poster_path : "/4bXIKqdZIjR8wKgZaGDaLhLj4yF.jpg"
/// backdrop_path : "/vq340s8DxA5Q209FT8PHA6CXYOx.jpg"

class BelongsToCollection {
  BelongsToCollection({
      num? id, 
      String? name, 
      String? posterPath, 
      String? backdropPath,}){
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
}

  BelongsToCollection.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
  }
  num? _id;
  String? _name;
  String? _posterPath;
  String? _backdropPath;
BelongsToCollection copyWith({  num? id,
  String? name,
  String? posterPath,
  String? backdropPath,
}) => BelongsToCollection(  id: id ?? _id,
  name: name ?? _name,
  posterPath: posterPath ?? _posterPath,
  backdropPath: backdropPath ?? _backdropPath,
);
  num? get id => _id;
  String? get name => _name;
  String? get posterPath => _posterPath;
  String? get backdropPath => _backdropPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    return map;
  }

}