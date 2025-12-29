// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final thrift = Mode(refs: {}, keywords: {
  "keyword":
      "namespace const typedef struct enum service exception void oneway set list map required optional",
  "built_in": "bool byte i16 i32 i64 double string binary",
  "literal": "true false"
}, contains: [
  quoteStringMode,
  numberMode,
  cLimeCommentMode,
  cBlockCommentMode,
  Mode(
      className: "class",
      beginKeywords: "struct enum service exception",
      end: "\\{",
      illegal: "\\n",
      contains: [
        Mode(
            className: "title",
            begin: "[a-zA-Z]\\w*",
            relevance: 0,
            starts: Mode(endsWithParent: true, excludeEnd: true))
      ]),
  Mode(
      begin: "\\b(set|list|map)\\s*<",
      end: ">",
      keywords: "bool byte i16 i32 i64 double string binary",
      contains: [Mode(self: true)])
]);
