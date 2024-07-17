import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:humanai_v2/Pages/Chat/message.dart';
import 'package:humanai_v2/data/model/local_notification_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';
void main() {
  runApp(const ChatPageView());
}
class variables{
  static bool loadingIcon = false;
  static bool imageSend = false;
}
class ChatPageView extends StatefulWidget {
  const ChatPageView({super.key});
  @override
  State<ChatPageView> createState() => _ChatPageViewState();
}

////////////////////////
// Local message list //
////////////////////////

class _ChatPageViewState extends State<ChatPageView>{
  List<Message>messages = [
    Message(
      text: "Ask me anything and i will answer it!",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSendByMe: false,
    ),
    Message(
      text: "Hello, Humanai Bot With You!",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSendByMe: false,
    ),
  ].reversed.toList();

  File? file;
  int selected_index = 0;
  int page_index = 0;
  PageController pageController = PageController(initialPage: 0);
  TextEditingController textController = TextEditingController();


   ////////////////////////////////////////////////////////////////
  var _selectedTab = _SelectedTab.home;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  ///////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Humanai ChatBot',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              if(variables.loadingIcon) const CircularProgressIndicator(color: Color(0xff4B2579), semanticsLabel: "Loading",),
              Expanded(
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height*0.65,
                  // color: Colors.white,
                  child: Container(
                    color: Colors.white,
                    child: GroupedListView<Message, DateTime>(
                      padding: const EdgeInsets.all(8),
                      reverse: true,
                      order: GroupedListOrder.DESC,
                      useStickyGroupSeparators: true,
                      floatingHeader: true,
                      elements: messages,
                      groupBy: (message) => DateTime(
                        message.date.year,
                        message.date.month,
                        message.date.day,
                      ),
                      groupHeaderBuilder: (Message message) => SizedBox(
                        height: 40,
                        child: Center(
                          child: Card(
                            elevation: 10,
                            color: const Color(0xff0C0C0C),
                            surfaceTintColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                DateFormat.yMMMd().format(message.date),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      itemBuilder: (context, Message message) => Align(
                        alignment: message.isSendByMe ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width*0.8,
                          ),
                          child:
                          // variables.loadingIcon==true ? Card(
                          //       elevation: 8,
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(50.0),
                          //       ),
                          //       color: const Color.fromRGBO(135, 135, 135, 0.6) ,
                          //       surfaceTintColor: Colors.white,
                          //       child: const Padding(
                          //         padding: EdgeInsets.all(20),
                          //         child: Center(child: CircularProgressIndicator(),),
                          //       ),
                          //     )
                          //       :
                          //   Card(
                          //       elevation: 8,
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(50.0),
                          //       ),
                          //       color: message.isSendByMe ? const Color(0xff3E5A96) : const Color.fromRGBO(75, 37, 121, 0.9) ,
                          //       surfaceTintColor: Colors.white,
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(20),
                          //         child: Text(message.text, style: const TextStyle(fontSize: 12, color: Colors.white),),
                          //       ),
                          //     ),
                          // variables.imageSend == true ?
                          // Card(
                          //   elevation: 8,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(50.0),
                          //   ),
                          //   color: message.isSendByMe ? const Color(0xff3E5A96) : const Color.fromRGBO(75, 37, 121, 0.9) ,
                          //   surfaceTintColor: Colors.white,
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(10),
                          //     child: Container(
                          //       width: MediaQuery.of(context).size.width*0.6,
                          //       height: MediaQuery.of(context).size.width*0.6,
                          //       child: Image.file(file!),
                          //     )
                          //   ),
                          // )
                          //     :
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            color: message.isSendByMe ? const Color(0xff3E5A96) : const Color.fromRGBO(75, 37, 121, 0.9) ,
                            surfaceTintColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(message.text, style: const TextStyle(fontSize: 12, color: Colors.white),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
              Container(
                color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextField(
                    controller: textController,
                    enabled: variables.loadingIcon == true ? false : true,
                    style: const TextStyle(color: Colors.white),
                    decoration:  InputDecoration(
                      border: InputBorder.none,
                        prefixIcon: IconButton(
                            icon: const Icon(Icons.image,),
                            color: Colors.grey[200] ,       //Color(0xff0497B0)
                            splashColor: Colors.white12,
                            alignment: Alignment.centerRight,
                            onPressed: () {
                              _getImage();
                              // LocalNotificationService.showBasicNotification(id: 0, title: "Humanai", body: "first notification in app", payload: "payload", sound: 'default');
                            }
                        ),
                        suffixIcon: IconButton(
                            icon: const Icon(Icons.send_rounded,) ,
                            color:   Colors.grey[200] ,       //Color(0xff0497B0)
                            splashColor: Colors.white12,
                            alignment: Alignment.centerLeft,
                            onPressed: () {
                              if(textController.text.isEmpty){
                                null;
                              }else{
                                _SendAction();
                              }
                            }
                        ),
                        contentPadding: const EdgeInsets.all(20),
                        hintText: 'Ask me here....',
                        hintStyle: const TextStyle(color: Colors.grey)
                    ),
                    onChanged: (val) => textController.text = val,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _SendAction() async {
    setState(() => variables.loadingIcon = true,);
    // setState(() => variables.imageSend = false);
    print("start icon state : ${variables.loadingIcon}");
    if(file != null){
      final String sendMessage = textController.text;
      textController.clear();
      final message = Message(
          text: sendMessage,
          date: DateTime.now(),
          isSendByMe: true
      );
      setState(() => messages.add(message),);
      final gemini = Gemini.instance;
       // botchat;
      var result= await gemini.textAndImage(text: sendMessage, images: [file!.readAsBytesSync()],)
          .then((value) {
            String botchat = value?.content?.parts?.last.text ?? 'Invalid Prompet \" null value \"  in Image  ';
            final message = Message(
                text:  botchat ,
                date: DateTime.now(),
                isSendByMe: false
            );
            setState(() => messages.add(message),);
          })
          .catchError((e) {
            final message = Message(
                text:  "Error : " + e,
                date: DateTime.now(),
                isSendByMe: false
            );
            setState(() => messages.add(message),);
            setState(() =>variables.loadingIcon = false);
          });
      setState(() {
        file = null;
      });

    }else{
      setState(() {});
      final String sendMessage = textController.text;
      textController.clear();
      final message = Message(
          text: sendMessage,
          date: DateTime.now(),
          isSendByMe: true
      );
      setState(() {
        messages.add(message);
      });
      final gemini = Gemini.instance;
      var result = await gemini.text(sendMessage).then((value) {
            String botchat = value?.content?.parts?.last.text ?? 'Invalid Prompet \" null value \"  in text ';
            final message = Message(text:  botchat,date: DateTime.now(),isSendByMe: false);
        setState(() => messages.add(message),);
      }).catchError((e) {
        final message = Message(text:  e,date: DateTime.now(),isSendByMe: false);
        setState(() =>messages.add(message),);
        setState(() =>variables.loadingIcon = false);

      });
    }
    setState(() =>variables.loadingIcon = false);
    print("end icon state : ${variables.loadingIcon}");
  }

  _getImage() async {
    // setState(() => variables.imageSend = true);
    print("Start imageSend value : ${variables.imageSend}");
    final ImagePicker picker = ImagePicker();
    final XFile? imageGallary = await picker.pickImage(source: ImageSource.gallery);
    file = File(imageGallary!.path);
    // setState(() => variables.imageSend = true);
    print("End imageSend value : ${variables.imageSend}");
  }
}

  enum _SelectedTab { home, favorite, search, person }

