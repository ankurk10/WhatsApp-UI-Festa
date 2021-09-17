class ChatModel {
  final String name;
  final String message;
  final String time;


  ChatModel({
    this.name,
    this.message,
    this.time,
  });
}

List<ChatModel> dummyData = [
  new ChatModel(
    name: "Ankur",
    message: "Ok I will do that",
    time: "15:30",

  ),
  new ChatModel(
    name: "Amit",
    message: "Fine",
    time: "15:30",

  ),
  new ChatModel(
    name: "Mohit",
    message: "No problem",
    time: "15:30",

  ),
  new ChatModel(
    name: "Ram",
    message: "Bye",
    time: "15:30",

  ),

];
