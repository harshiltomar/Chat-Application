import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'my_app.dart';

final apiKey = "3b64bhmjpqec";
final userToken = "cesua9nwrg9c54pc6kvktkfnwwp4rfxhh5558m6saeeb5zrvapf2b8araf5hqt45";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Stream Chat Client
  final client = StreamChatClient(apiKey, logLevel: Level.INFO);

  //Current User
  await client.connectUser(User(id: "Hartdraws"), userToken);

  //Get Channel or Groups
  final channel = client.channel("messaging",id: "flutterdevs");

  await channel.watch();

  runApp( MyApp(client: client,channel: channel));
}

