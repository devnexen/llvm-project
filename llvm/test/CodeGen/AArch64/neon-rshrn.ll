; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple aarch64 -o - | FileCheck %s

define <16 x i8> @rshrn_v16i16_1(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_1:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #1
; CHECK-NEXT:    rshrn2 v0.16b, v1.8h, #1
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %s = lshr <16 x i16> %b, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_2(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_2:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #2
; CHECK-NEXT:    rshrn2 v0.16b, v1.8h, #2
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  %s = lshr <16 x i16> %b, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_3(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_3:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #3
; CHECK-NEXT:    rshrn2 v0.16b, v1.8h, #3
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4>
  %s = lshr <16 x i16> %b, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_4(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #4
; CHECK-NEXT:    rshrn2 v0.16b, v1.8h, #4
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %s = lshr <16 x i16> %b, <i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_5(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #5
; CHECK-NEXT:    rshrn2 v0.16b, v1.8h, #5
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16>
  %s = lshr <16 x i16> %b, <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_6(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_6:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #6
; CHECK-NEXT:    rshrn2 v0.16b, v1.8h, #6
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32>
  %s = lshr <16 x i16> %b, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_7(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_7:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #7
; CHECK-NEXT:    rshrn2 v0.16b, v1.8h, #7
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64>
  %s = lshr <16 x i16> %b, <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_8(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_8:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    movi v2.2d, #0000000000000000
; CHECK-NEXT:    raddhn v0.8b, v0.8h, v2.8h
; CHECK-NEXT:    raddhn2 v0.16b, v1.8h, v2.8h
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128>
  %s = lshr <16 x i16> %b, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <16 x i8> @rshrn_v16i16_9(<16 x i16> %a) {
; CHECK-LABEL: rshrn_v16i16_9:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    movi v2.8h, #1, lsl #8
; CHECK-NEXT:    add v1.8h, v1.8h, v2.8h
; CHECK-NEXT:    add v0.8h, v0.8h, v2.8h
; CHECK-NEXT:    uzp2 v0.16b, v0.16b, v1.16b
; CHECK-NEXT:    ushr v0.16b, v0.16b, #1
; CHECK-NEXT:    ret
entry:
  %b = add <16 x i16> %a, <i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256>
  %s = lshr <16 x i16> %b, <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>
  %m = trunc <16 x i16> %s to <16 x i8>
  ret <16 x i8> %m
}

define <8 x i16> @rshrn_v8i32_1(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_1:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #1
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #1
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %s = lshr <8 x i32> %b, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_2(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_2:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #2
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #2
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %s = lshr <8 x i32> %b, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_3(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_3:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #3
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #3
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %s = lshr <8 x i32> %b, <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_4(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #4
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #4
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %s = lshr <8 x i32> %b, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_5(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #5
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #5
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %s = lshr <8 x i32> %b, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_6(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_6:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #6
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #6
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %s = lshr <8 x i32> %b, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_7(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_7:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #7
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #7
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64>
  %s = lshr <8 x i32> %b, <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_8(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_8:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #8
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #8
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128>
  %s = lshr <8 x i32> %b, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_9(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_9:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #9
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #9
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %s = lshr <8 x i32> %b, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_10(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_10:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #10
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #10
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>
  %s = lshr <8 x i32> %b, <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_11(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_11:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #11
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #11
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024>
  %s = lshr <8 x i32> %b, <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_12(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_12:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #12
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #12
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 2048, i32 2048, i32 2048, i32 2048, i32 2048, i32 2048, i32 2048, i32 2048>
  %s = lshr <8 x i32> %b, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_13(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_13:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #13
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #13
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 4096, i32 4096, i32 4096, i32 4096, i32 4096, i32 4096, i32 4096, i32 4096>
  %s = lshr <8 x i32> %b, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_14(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_14:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #14
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #14
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>
  %s = lshr <8 x i32> %b, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_15(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_15:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #15
; CHECK-NEXT:    rshrn2 v0.8h, v1.4s, #15
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 16384, i32 16384, i32 16384, i32 16384, i32 16384, i32 16384, i32 16384, i32 16384>
  %s = lshr <8 x i32> %b, <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_16(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_16:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    movi v2.2d, #0000000000000000
; CHECK-NEXT:    raddhn v0.4h, v0.4s, v2.4s
; CHECK-NEXT:    raddhn2 v0.8h, v1.4s, v2.4s
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768>
  %s = lshr <8 x i32> %b, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <8 x i16> @rshrn_v8i32_17(<8 x i32> %a) {
; CHECK-LABEL: rshrn_v8i32_17:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    movi v2.4s, #1, lsl #16
; CHECK-NEXT:    add v1.4s, v1.4s, v2.4s
; CHECK-NEXT:    add v0.4s, v0.4s, v2.4s
; CHECK-NEXT:    uzp2 v0.8h, v0.8h, v1.8h
; CHECK-NEXT:    ushr v0.8h, v0.8h, #1
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536>
  %s = lshr <8 x i32> %b, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>
  %m = trunc <8 x i32> %s to <8 x i16>
  ret <8 x i16> %m
}

define <4 x i32> @rshrn_v4i64_1(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_1:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #1
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #1
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 1, i64 1, i64 1, i64 1>
  %s = lshr <4 x i64> %b, <i64 1, i64 1, i64 1, i64 1>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_2(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_2:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #2
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #2
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 2, i64 2, i64 2, i64 2>
  %s = lshr <4 x i64> %b, <i64 2, i64 2, i64 2, i64 2>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_3(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_3:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #3
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #3
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 4, i64 4, i64 4, i64 4>
  %s = lshr <4 x i64> %b, <i64 3, i64 3, i64 3, i64 3>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_4(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #4
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #4
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 8, i64 8, i64 8, i64 8>
  %s = lshr <4 x i64> %b, <i64 4, i64 4, i64 4, i64 4>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_5(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #5
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #5
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 16, i64 16, i64 16, i64 16>
  %s = lshr <4 x i64> %b, <i64 5, i64 5, i64 5, i64 5>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_6(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_6:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #6
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #6
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 32, i64 32, i64 32, i64 32>
  %s = lshr <4 x i64> %b, <i64 6, i64 6, i64 6, i64 6>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_7(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_7:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #7
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #7
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 64, i64 64, i64 64, i64 64>
  %s = lshr <4 x i64> %b, <i64 7, i64 7, i64 7, i64 7>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_8(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_8:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #8
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #8
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 128, i64 128, i64 128, i64 128>
  %s = lshr <4 x i64> %b, <i64 8, i64 8, i64 8, i64 8>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_9(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_9:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #9
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #9
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 256, i64 256, i64 256, i64 256>
  %s = lshr <4 x i64> %b, <i64 9, i64 9, i64 9, i64 9>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_10(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_10:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #10
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #10
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 512, i64 512, i64 512, i64 512>
  %s = lshr <4 x i64> %b, <i64 10, i64 10, i64 10, i64 10>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_11(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_11:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #11
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #11
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 1024, i64 1024, i64 1024, i64 1024>
  %s = lshr <4 x i64> %b, <i64 11, i64 11, i64 11, i64 11>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_12(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_12:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #12
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #12
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 2048, i64 2048, i64 2048, i64 2048>
  %s = lshr <4 x i64> %b, <i64 12, i64 12, i64 12, i64 12>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_13(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_13:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #13
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #13
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 4096, i64 4096, i64 4096, i64 4096>
  %s = lshr <4 x i64> %b, <i64 13, i64 13, i64 13, i64 13>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_14(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_14:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #14
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #14
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 8192, i64 8192, i64 8192, i64 8192>
  %s = lshr <4 x i64> %b, <i64 14, i64 14, i64 14, i64 14>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_15(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_15:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #15
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #15
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 16384, i64 16384, i64 16384, i64 16384>
  %s = lshr <4 x i64> %b, <i64 15, i64 15, i64 15, i64 15>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_16(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_16:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #16
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #16
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 32768, i64 32768, i64 32768, i64 32768>
  %s = lshr <4 x i64> %b, <i64 16, i64 16, i64 16, i64 16>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_17(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_17:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #17
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #17
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 65536, i64 65536, i64 65536, i64 65536>
  %s = lshr <4 x i64> %b, <i64 17, i64 17, i64 17, i64 17>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_18(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_18:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #18
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #18
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 131072, i64 131072, i64 131072, i64 131072>
  %s = lshr <4 x i64> %b, <i64 18, i64 18, i64 18, i64 18>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_19(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_19:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #19
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #19
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 262144, i64 262144, i64 262144, i64 262144>
  %s = lshr <4 x i64> %b, <i64 19, i64 19, i64 19, i64 19>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_20(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_20:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #20
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #20
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 524288, i64 524288, i64 524288, i64 524288>
  %s = lshr <4 x i64> %b, <i64 20, i64 20, i64 20, i64 20>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_21(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_21:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #21
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #21
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 1048576, i64 1048576, i64 1048576, i64 1048576>
  %s = lshr <4 x i64> %b, <i64 21, i64 21, i64 21, i64 21>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_22(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_22:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #22
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #22
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 2097152, i64 2097152, i64 2097152, i64 2097152>
  %s = lshr <4 x i64> %b, <i64 22, i64 22, i64 22, i64 22>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_23(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_23:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #23
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #23
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 4194304, i64 4194304, i64 4194304, i64 4194304>
  %s = lshr <4 x i64> %b, <i64 23, i64 23, i64 23, i64 23>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_24(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_24:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #24
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #24
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 8388608, i64 8388608, i64 8388608, i64 8388608>
  %s = lshr <4 x i64> %b, <i64 24, i64 24, i64 24, i64 24>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_25(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_25:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #25
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #25
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 16777216, i64 16777216, i64 16777216, i64 16777216>
  %s = lshr <4 x i64> %b, <i64 25, i64 25, i64 25, i64 25>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_26(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_26:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #26
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #26
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 33554432, i64 33554432, i64 33554432, i64 33554432>
  %s = lshr <4 x i64> %b, <i64 26, i64 26, i64 26, i64 26>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_27(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_27:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #27
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #27
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 67108864, i64 67108864, i64 67108864, i64 67108864>
  %s = lshr <4 x i64> %b, <i64 27, i64 27, i64 27, i64 27>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_28(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_28:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #28
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #28
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 134217728, i64 134217728, i64 134217728, i64 134217728>
  %s = lshr <4 x i64> %b, <i64 28, i64 28, i64 28, i64 28>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_29(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_29:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #29
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #29
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 268435456, i64 268435456, i64 268435456, i64 268435456>
  %s = lshr <4 x i64> %b, <i64 29, i64 29, i64 29, i64 29>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_30(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_30:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #30
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #30
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 536870912, i64 536870912, i64 536870912, i64 536870912>
  %s = lshr <4 x i64> %b, <i64 30, i64 30, i64 30, i64 30>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_31(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_31:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #31
; CHECK-NEXT:    rshrn2 v0.4s, v1.2d, #31
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 1073741824, i64 1073741824, i64 1073741824, i64 1073741824>
  %s = lshr <4 x i64> %b, <i64 31, i64 31, i64 31, i64 31>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_32(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_32:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    movi v2.2d, #0000000000000000
; CHECK-NEXT:    raddhn v0.2s, v0.2d, v2.2d
; CHECK-NEXT:    raddhn2 v0.4s, v1.2d, v2.2d
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 2147483648, i64 2147483648, i64 2147483648, i64 2147483648>
  %s = lshr <4 x i64> %b, <i64 32, i64 32, i64 32, i64 32>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <4 x i32> @rshrn_v4i64_33(<4 x i64> %a) {
; CHECK-LABEL: rshrn_v4i64_33:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    mov x8, #4294967296 // =0x100000000
; CHECK-NEXT:    dup v2.2d, x8
; CHECK-NEXT:    add v1.2d, v1.2d, v2.2d
; CHECK-NEXT:    add v0.2d, v0.2d, v2.2d
; CHECK-NEXT:    uzp2 v0.4s, v0.4s, v1.4s
; CHECK-NEXT:    ushr v0.4s, v0.4s, #1
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296>
  %s = lshr <4 x i64> %b, <i64 33, i64 33, i64 33, i64 33>
  %m = trunc <4 x i64> %s to <4 x i32>
  ret <4 x i32> %m
}

define <8 x i8> @rshrn_v8i16_5(<8 x i16> %a) {
; CHECK-LABEL: rshrn_v8i16_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #5
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i16> %a, <i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16>
  %s = lshr <8 x i16> %b, <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5>
  %m = trunc <8 x i16> %s to <8 x i8>
  ret <8 x i8> %m
}

define <4 x i16> @rshrn_v4i32_4(<4 x i32> %a) {
; CHECK-LABEL: rshrn_v4i32_4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #4
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i32> %a, <i32 8, i32 8, i32 8, i32 8>
  %s = lshr <4 x i32> %b, <i32 4, i32 4, i32 4, i32 4>
  %m = trunc <4 x i32> %s to <4 x i16>
  ret <4 x i16> %m
}

define <2 x i32> @rshrn_v2i64_5(<2 x i64> %a) {
; CHECK-LABEL: rshrn_v2i64_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #5
; CHECK-NEXT:    ret
entry:
  %b = add <2 x i64> %a, <i64 16, i64 16>
  %s = lshr <2 x i64> %b, <i64 5, i64 5>
  %m = trunc <2 x i64> %s to <2 x i32>
  ret <2 x i32> %m
}

define void @rshrn_v8i32i8_5(<8 x i32> %a, ptr %p) {
; CHECK-LABEL: rshrn_v8i32i8_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    uzp1 v0.8h, v0.8h, v1.8h
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #5
; CHECK-NEXT:    str d0, [x0]
; CHECK-NEXT:    ret
entry:
  %b = add <8 x i32> %a, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %s = lshr <8 x i32> %b, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %m = trunc <8 x i32> %s to <8 x i8>
  store <8 x i8> %m, ptr %p
  ret void
}

define void @rshrn_v4i64i16_4(<4 x i64> %a, ptr %p) {
; CHECK-LABEL: rshrn_v4i64i16_4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    uzp1 v0.4s, v0.4s, v1.4s
; CHECK-NEXT:    rshrn v0.4h, v0.4s, #4
; CHECK-NEXT:    str d0, [x0]
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i64> %a, <i64 8, i64 8, i64 8, i64 8>
  %s = lshr <4 x i64> %b, <i64 4, i64 4, i64 4, i64 4>
  %m = trunc <4 x i64> %s to <4 x i16>
  store <4 x i16> %m, ptr %p
  ret void
}

define void @rshrn_v4i16_5(<4 x i16> %a, ptr %p) {
; CHECK-LABEL: rshrn_v4i16_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    // kill: def $d0 killed $d0 def $q0
; CHECK-NEXT:    rshrn v0.8b, v0.8h, #5
; CHECK-NEXT:    str s0, [x0]
; CHECK-NEXT:    ret
entry:
  %b = add <4 x i16> %a, <i16 16, i16 16, i16 16, i16 16>
  %s = lshr <4 x i16> %b, <i16 5, i16 5, i16 5, i16 5>
  %m = trunc <4 x i16> %s to <4 x i8>
  store <4 x i8> %m, ptr %p
  ret void
}

define void @rshrn_v2i32_4(<2 x i32> %a, ptr %p) {
; CHECK-LABEL: rshrn_v2i32_4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    movi v1.2s, #8
; CHECK-NEXT:    add v0.2s, v0.2s, v1.2s
; CHECK-NEXT:    ushr v0.2s, v0.2s, #4
; CHECK-NEXT:    mov s1, v0.s[1]
; CHECK-NEXT:    str h0, [x0]
; CHECK-NEXT:    str h1, [x0, #2]
; CHECK-NEXT:    ret
entry:
  %b = add <2 x i32> %a, <i32 8, i32 8>
  %s = lshr <2 x i32> %b, <i32 4, i32 4>
  %m = trunc <2 x i32> %s to <2 x i16>
  store <2 x i16> %m, ptr %p
  ret void
}

define void @rshrn_v1i64_5(<1 x i64> %a, ptr %p) {
; CHECK-LABEL: rshrn_v1i64_5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    // kill: def $d0 killed $d0 def $q0
; CHECK-NEXT:    rshrn v0.2s, v0.2d, #5
; CHECK-NEXT:    str s0, [x0]
; CHECK-NEXT:    ret
entry:
  %b = add <1 x i64> %a, <i64 16>
  %s = lshr <1 x i64> %b, <i64 5>
  %m = trunc <1 x i64> %s to <1 x i32>
  store <1 x i32> %m, ptr %p
  ret void
}
