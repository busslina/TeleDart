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

/// Represents a link to a file. By default, this file will be sent by the user with an optional caption.
///
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the file.
/// Currently, only **.PDF** and **.ZIP** files can be sent using this method.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultdocument
@JsonSerializable(fieldRename: FieldRename.snake)
class InlineQueryResultDocument implements InlineQueryResult {
  @override
  String id;
  @override
  String type;
  String title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  String documentUrl;
  String mimeType;
  String? description;
  @override
  InlineKeyboardMarkup? replyMarkup;
  InputMessageContent? inputMessageContent;
  String? thumbUrl;
  int? thumbWidth;
  int? thumbHeight;
  InlineQueryResultDocument({
    required this.id,
    this.type = InlineQueryResult.typeDocument,
    required this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    required this.documentUrl,
    required this.mimeType,
    this.description,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  });
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultDocumentFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InlineQueryResultDocumentToJson(this);
}
