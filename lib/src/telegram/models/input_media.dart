/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2019  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

/// This object represents the content of a media message to be sent.
///
/// It should be one of
/// * [InputMediaAnimation](https://core.telegram.org/bots/api#inputmediaanimation)
/// * [InputMediaDocument](https://core.telegram.org/bots/api#inputmediadocument)
/// * [InputMediaAudio](https://core.telegram.org/bots/api#inputmediaaudio)
/// * [InputMediaPhoto](https://core.telegram.org/bots/api#inputmediaphoto)
/// * [InputMediaVideo](https://core.telegram.org/bots/api#inputmediavideo)
///
/// https://core.telegram.org/bots/api#inputmedia
@JsonSerializable(fieldRename: FieldRename.snake)
class InputMedia {
  static const typeAnimation = 'animation';
  static const typeAudio = 'audio';
  static const typeDocument = 'document';
  static const typePhoto = 'photo';
  static const typeVideo = 'video';

  String type;
  String media;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;

  InputMedia({
    required this.type,
    required this.media,
    this.caption,
    this.parseMode,
    this.captionEntities,
  });

  factory InputMedia.fromJson(Map<String, dynamic> json) =>
      _$InputMediaFromJson(json);
  Map<String, dynamic> toJson() => _$InputMediaToJson(this);
}
