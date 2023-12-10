import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voice_record_enhanced/providers/play_audio_provider.dart';
import 'package:voice_record_enhanced/providers/record_audio_provider.dart';

class RecorderInit extends StatelessWidget {
  final Widget child;

  const RecorderInit({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RecordAudioProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => PlayAudioProvider(),
        ),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: child,
        ),
      ),
    );
  }
}
