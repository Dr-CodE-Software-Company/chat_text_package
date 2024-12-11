class Message { 
  int id; 
  String body;
  bool fromLoggedUser;
  String createdAt; 

  Message({
    required this.id,
    required this.body,
    required this.fromLoggedUser,
    required this.createdAt,
  });
}
