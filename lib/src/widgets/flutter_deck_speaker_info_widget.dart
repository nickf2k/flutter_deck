import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/src/flutter_deck_speaker_info.dart';
import 'package:flutter_deck/src/theme/widgets/flutter_deck_speaker_info_widget_theme.dart';

const _imageHeight = 160.0;

///
class FlutterDeckSpeakerInfoWidget extends StatelessWidget {
  ///
  const FlutterDeckSpeakerInfoWidget({
    required this.speakerInfo,
    super.key,
  });

  ///
  final FlutterDeckSpeakerInfo speakerInfo;

  @override
  Widget build(BuildContext context) {
    final theme = FlutterDeckSpeakerInfoWidgetTheme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          speakerInfo.imagePath,
          height: _imageHeight,
          width: _imageHeight,
        ),
        const SizedBox(width: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              speakerInfo.name,
              style: theme.nameTextStyle,
              maxLines: 1,
            ),
            AutoSizeText(
              speakerInfo.description,
              style: theme.descriptionTextStyle,
              maxLines: 1,
            ),
            AutoSizeText(
              speakerInfo.socialHandle,
              style: theme.socialHandleTextStyle,
              maxLines: 1,
            ),
          ],
        ),
      ],
    );
  }
}
