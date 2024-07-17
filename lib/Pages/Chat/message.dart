class Message {
  final String text;
  final DateTime date;
  final bool isSendByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSendByMe,
  });
}