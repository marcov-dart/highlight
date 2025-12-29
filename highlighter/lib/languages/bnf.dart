// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final bnf = Mode(refs: {}, contains: [
  Mode(className: "attribute", begin: "<", end: ">"),
  Mode(
      begin: "::=",
      starts: Mode(end: "\$", contains: [
        Mode(begin: "<", end: ">"),
        cLimeCommentMode,
        cBlockCommentMode,
        aposStringMode,
        quoteStringMode
      ]))
]);
