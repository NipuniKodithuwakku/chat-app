import './user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

//current user
final User currentUser = User(id: 0, name: 'Current User', imageUrl: '');
//users
final User nipuni = User(
  id: 1,
  name: 'Nipuni',
  imageUrl: 'images/nipuni.jpg',
);
final User sachini = User(
  id: 2,
  name: 'Sachini',
  imageUrl: 'images/sachini.jpg',
);
final User subani = User(
  id: 3,
  name: 'Subani',
  imageUrl: 'images/subani.jpg',
);
final User dilmi = User(
  id: 4,
  name: 'Dilmi',
  imageUrl: 'images/dilmi.jpg',
);
final User muditha = User(
  id: 5,
  name: 'Muditha',
  imageUrl: 'images/muditha.jpg',
);

List<User> favorites = [nipuni, sachini, subani, dilmi, muditha];
//Example chat on home screen
List<Message> chats = [
  Message(
    sender: nipuni,
    time: '5.30 PM',
    text: 'hey how it\'s going? what did you do?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sachini,
    time: '4.30 PM',
    text: 'hey how it\'s going? what did you do?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: subani,
    time: '3.30 PM',
    text: 'hey how it\'s going? what did you do?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: dilmi,
    time: '5.30 PM',
    text: 'hey how it\'s going? what did you do?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: muditha,
    time: '5.30 PM',
    text: 'hey how it\'s going? what did you do?',
    isLiked: false,
    unread: true,
  )
];

//example message in the chat screen

List<Message> messages = [
  Message(
    sender: nipuni,
    time: '5.30 PM',
    text: 'hey how it\'s going? what did you do?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5.30 PM',
    text: "just walked with my dog.Don't you know I have brought a new dog",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nipuni,
    time: '5.30 PM',
    text: "How is the dog ? is it really interesting?",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5.30 PM',
    text: "Why not,It is so playfull.It plays with a ball also",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nipuni,
    time: '5.30 PM',
    text: "what kind of food does it eat?",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5.30 PM',
    text: "it eats rice ,meat and also milk",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nipuni,
    time: '5.30 PM',
    text: "nice,it's awesome",
    isLiked: false,
    unread: true,
  ),
];
