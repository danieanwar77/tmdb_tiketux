/// id : 1396
/// page : 1
/// results : [{"author":"slyone10001","author_details":{"name":"","username":"slyone10001","avatar_path":null,"rating":10},"content":"Wow....where to start. Not really into \"DRUG\" inspired shows. But this one had me from the start. The only bad about this show was the split seasons when it was a first run show. But now you can go right through to the next episode with out having to wait.....MUST WATCH ! !","created_at":"2018-04-10T15:44:38.134Z","id":"5accdbe6c3a3687e2702d058","updated_at":"2021-06-23T15:58:07.601Z","url":"https://www.themoviedb.org/review/5accdbe6c3a3687e2702d058"},{"author":"Dean","author_details":{"name":"Dean","username":"Ditendra","avatar_path":null,"rating":10},"content":"I'll be honest, at first when I started this TV show and finished first season, I didn't like it. It felt boring for me and I stopped watching, but after few years, I decided to give it a chance and continue. I'm so happy because of my decision, because after finishing this TV show, I can definitely tell that it was a masterpiece! 5th season is a bomb and 14th season was shocking! It left me with sad, euphoric shock feeling. It was mind blowing! I'm not gonna spoil you what happened, but if you started first season and you don't like it, for goodness sake, give it a chance and continue watching. I promise you won't regret.\r\n\r\nCharacters are very well developed. Acting is superb! Plot is very interesting. Whole TV show is tense, especially the last season. The only downside I can think about is camera. Sometimes it's shaking on some certain scenes. I don't know why they didn't pay attention to this, but this is nothing, just a very minor minus. Everything else is great about this TV show.","created_at":"2019-09-30T09:02:26.890Z","id":"5d91c4a2172d7f001759ca0a","updated_at":"2021-06-23T15:58:27.439Z","url":"https://www.themoviedb.org/review/5d91c4a2172d7f001759ca0a"},{"author":"l33t5p34k3r","author_details":{"name":"","username":"l33t5p34k3r","avatar_path":null,"rating":9},"content":"Started out really good, but dropped quality after the second to last season","created_at":"2020-06-10T07:29:33.686Z","id":"5ee08bdd90dde0001fa67192","updated_at":"2021-06-23T15:58:39.055Z","url":"https://www.themoviedb.org/review/5ee08bdd90dde0001fa67192"},{"author":"drystyx","author_details":{"name":"","username":"drystyx","avatar_path":"/hLLsAvAnVT0cFU7JuuaaItTWXv8.jpg","rating":3},"content":"This is the kind of TV show for the \"formula lovers\" who want to feel superior.\r\nThere is an air of the superiority complex of the \"drug knowledgeable\" crowd in this series about a \"smart guy\" breaking into the drug trade.\r\nHis \"talent\" makes him the important cog in the machine. He can call his shots.\r\nStill, the ruffians give him a rough way to go, because criminals really are stupid.\r\nOnce they learn that they are nothing without him, he gets his way.\r\nMuch like a Western town blacksmith, he's the needed ingredient.\r\nHowever, things get very formula early on in the show. And there's always this sense of a superiority complex from the sort of people who push shows like this onto their friends and acquaintances. The directing writing team tap into the control freak crowd very well.\r\nBut it is a dull show about dull people.","created_at":"2023-04-02T17:02:14.125Z","id":"6429b5168de0ae00978d836a","updated_at":"2023-04-03T16:45:23.650Z","url":"https://www.themoviedb.org/review/6429b5168de0ae00978d836a"}]
/// total_pages : 1
/// total_results : 4

class ReviewModel {
  ReviewModel({
      num? id, 
      num? page, 
      List<Results>? results, 
      num? totalPages, 
      num? totalResults,}){
    _id = id;
    _page = page;
    _results = results;
    _totalPages = totalPages;
    _totalResults = totalResults;
}

  ReviewModel.fromJson(dynamic json) {
    _id = json['id'];
    _page = json['page'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
    _totalPages = json['total_pages'];
    _totalResults = json['total_results'];
  }
  num? _id;
  num? _page;
  List<Results>? _results;
  num? _totalPages;
  num? _totalResults;
ReviewModel copyWith({  num? id,
  num? page,
  List<Results>? results,
  num? totalPages,
  num? totalResults,
}) => ReviewModel(  id: id ?? _id,
  page: page ?? _page,
  results: results ?? _results,
  totalPages: totalPages ?? _totalPages,
  totalResults: totalResults ?? _totalResults,
);
  num? get id => _id;
  num? get page => _page;
  List<Results>? get results => _results;
  num? get totalPages => _totalPages;
  num? get totalResults => _totalResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['page'] = _page;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = _totalPages;
    map['total_results'] = _totalResults;
    return map;
  }

}

/// author : "slyone10001"
/// author_details : {"name":"","username":"slyone10001","avatar_path":null,"rating":10}
/// content : "Wow....where to start. Not really into \"DRUG\" inspired shows. But this one had me from the start. The only bad about this show was the split seasons when it was a first run show. But now you can go right through to the next episode with out having to wait.....MUST WATCH ! !"
/// created_at : "2018-04-10T15:44:38.134Z"
/// id : "5accdbe6c3a3687e2702d058"
/// updated_at : "2021-06-23T15:58:07.601Z"
/// url : "https://www.themoviedb.org/review/5accdbe6c3a3687e2702d058"

class Results {
  Results({
      String? author, 
      AuthorDetails? authorDetails, 
      String? content, 
      String? createdAt, 
      String? id, 
      String? updatedAt, 
      String? url,}){
    _author = author;
    _authorDetails = authorDetails;
    _content = content;
    _createdAt = createdAt;
    _id = id;
    _updatedAt = updatedAt;
    _url = url;
}

  Results.fromJson(dynamic json) {
    _author = json['author'];
    _authorDetails = json['author_details'] != null ? AuthorDetails.fromJson(json['author_details']) : null;
    _content = json['content'];
    _createdAt = json['created_at'];
    _id = json['id'];
    _updatedAt = json['updated_at'];
    _url = json['url'];
  }
  String? _author;
  AuthorDetails? _authorDetails;
  String? _content;
  String? _createdAt;
  String? _id;
  String? _updatedAt;
  String? _url;
Results copyWith({  String? author,
  AuthorDetails? authorDetails,
  String? content,
  String? createdAt,
  String? id,
  String? updatedAt,
  String? url,
}) => Results(  author: author ?? _author,
  authorDetails: authorDetails ?? _authorDetails,
  content: content ?? _content,
  createdAt: createdAt ?? _createdAt,
  id: id ?? _id,
  updatedAt: updatedAt ?? _updatedAt,
  url: url ?? _url,
);
  String? get author => _author;
  AuthorDetails? get authorDetails => _authorDetails;
  String? get content => _content;
  String? get createdAt => _createdAt;
  String? get id => _id;
  String? get updatedAt => _updatedAt;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['author'] = _author;
    if (_authorDetails != null) {
      map['author_details'] = _authorDetails?.toJson();
    }
    map['content'] = _content;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    map['updated_at'] = _updatedAt;
    map['url'] = _url;
    return map;
  }

}

/// name : ""
/// username : "slyone10001"
/// avatar_path : null
/// rating : 10

class AuthorDetails {
  AuthorDetails({
      String? name, 
      String? username, 
      dynamic avatarPath, 
      num? rating,}){
    _name = name;
    _username = username;
    _avatarPath = avatarPath;
    _rating = rating;
}

  AuthorDetails.fromJson(dynamic json) {
    _name = json['name'];
    _username = json['username'];
    _avatarPath = json['avatar_path'];
    _rating = json['rating'];
  }
  String? _name;
  String? _username;
  dynamic _avatarPath;
  num? _rating;
AuthorDetails copyWith({  String? name,
  String? username,
  dynamic avatarPath,
  num? rating,
}) => AuthorDetails(  name: name ?? _name,
  username: username ?? _username,
  avatarPath: avatarPath ?? _avatarPath,
  rating: rating ?? _rating,
);
  String? get name => _name;
  String? get username => _username;
  dynamic get avatarPath => _avatarPath;
  num? get rating => _rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['username'] = _username;
    map['avatar_path'] = _avatarPath;
    map['rating'] = _rating;
    return map;
  }

}