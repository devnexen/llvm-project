; RUN: opt %loadNPMPolly -polly-stmt-granularity=bb -polly-allow-differing-element-types '-passes=print<polly-function-scops>' -polly-allow-nonaffine -disable-output < %s 2>&1 | FileCheck %s
; RUN: opt %loadNPMPolly -polly-stmt-granularity=bb -polly-allow-differing-element-types -passes=polly-codegen -polly-allow-nonaffine -disable-output
;
;    // Check that accessing one array with different types works,
;    // even though some accesses are non-affine.
;    void multiple_types(char *Short, short *Char, char *Double) {
;      for (long i = 0; i < 100; i++) {
;        Short[i] = *(short *)&Short[i & 8];
;        Char[i] = *(float *)&Char[i & 8];
;        Double[i] = *(double *)&Double[i & 8];
;      }
;    }
;
; CHECK:    Arrays {
; CHECK:        i16 MemRef_Short[*]; // Element size 2
; CHECK:        i8 MemRef_Char[*]; // Element size 1
; CHECK:        i32 MemRef_Double[*]; // Element size 4
; CHECK:    }
;
; CHECK: Statements {
; CHECK-NEXT: Stmt_bb2
; CHECK-NEXT: Domain :=
; CHECK-NEXT:     { Stmt_bb2[i0] : 0 <= i0 <= 99 };
; CHECK-NEXT: Schedule :=
; CHECK-NEXT:     { Stmt_bb2[i0] -> [i0] };
; CHECK-NEXT: ReadAccess :=	[Reduction Type: NONE] [Scalar: 0]
; CHECK-NEXT:     { Stmt_bb2[i0] -> MemRef_Short[16] : 16*floor((8 + i0)/16) > i0; Stmt_bb2[i0] -> MemRef_Short[0] : 16*floor((8 + i0)/16) <= i0 }
; CHECK-NEXT: MustWriteAccess :=	[Reduction Type: NONE] [Scalar: 0]
; CHECK-NEXT:     { Stmt_bb2[i0] -> MemRef_Short[o0] : 2i0 <= o0 <= 1 + 2i0 };
; CHECK-NEXT: ReadAccess :=	[Reduction Type: NONE] [Scalar: 0]
; CHECK-NEXT:     { Stmt_bb2[i0] -> MemRef_Char[32] : 16*floor((8 + i0)/16) > i0; Stmt_bb2[i0] -> MemRef_Char[0] : 16*floor((8 + i0)/16) <= i0 }
; CHECK-NEXT: MustWriteAccess :=	[Reduction Type: NONE] [Scalar: 0]
; CHECK-NEXT:     { Stmt_bb2[i0] -> MemRef_Char[o0] : 4i0 <= o0 <= 3 + 4i0 };
; CHECK-NEXT: ReadAccess :=	[Reduction Type: NONE] [Scalar: 0]
; CHECK-NEXT:     { Stmt_bb2[i0] -> MemRef_Double[o0] : 0 <= o0 <= 9 and ((o0 >= 8 and 16*floor((8 + i0)/16) > i0) or (o0 <= 1 and 16*floor((8 + i0)/16) <= i0)) }
; CHECK-NEXT: MustWriteAccess :=	[Reduction Type: NONE] [Scalar: 0]
; CHECK-NEXT:     { Stmt_bb2[i0] -> MemRef_Double[i0] };
; CHECK-NEXT: }

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @multiple_types(ptr noalias %Short, ptr noalias %Char, ptr noalias %Double) {
bb:
  br label %bb1

bb1:                                              ; preds = %bb20, %bb
  %i.0 = phi i64 [ 0, %bb ], [ %tmp21, %bb20 ]
  %exitcond = icmp ne i64 %i.0, 100
  br i1 %exitcond, label %bb2, label %bb22

bb2:                                              ; preds = %bb1
  %quad = and i64 %i.0, 8
  %tmp3 = getelementptr inbounds i32, ptr %Short, i64 %quad
  %tmp5 = load i16, ptr %tmp3, align 2
  %tmp6 = zext i16 %tmp5 to i32
  %tmp7 = getelementptr inbounds i32, ptr %Short, i64 %i.0
  store i32 %tmp6, ptr %tmp7, align 1
  %tmp9 = getelementptr inbounds i32, ptr %Char, i64 %quad
  %tmp11 = load i8, ptr %tmp9, align 4
  %tmp12 = zext i8 %tmp11 to i32
  %tmp13 = getelementptr inbounds i32, ptr %Char, i64 %i.0
  store i32 %tmp12, ptr %tmp13, align 1
  %tmp15 = getelementptr inbounds i32, ptr %Double, i64 %quad
  %tmp17 = load double, ptr %tmp15, align 8
  %tmp18 = fptosi double %tmp17 to i32
  %tmp19 = getelementptr inbounds i32, ptr %Double, i64 %i.0
  store i32 %tmp18, ptr %tmp19, align 1
  br label %bb20

bb20:                                             ; preds = %bb2
  %tmp21 = add nuw nsw i64 %i.0, 1
  br label %bb1

bb22:                                             ; preds = %bb1
  ret void
}
