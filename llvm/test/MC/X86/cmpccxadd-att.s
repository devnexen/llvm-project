// RUN: llvm-mc -triple x86_64 --show-encoding %s | FileCheck %s
// RUN: not llvm-mc -triple i386 -show-encoding %s 2>&1 | FileCheck %s --check-prefix=ERROR

// ERROR-COUNT-193: error:
// ERROR-NOT: error:

// CHECK: cmpbexadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe6,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpbexadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpbexadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe6,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpbexadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpbexadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe6,0x0d,0x00,0x00,0x00,0x00]
          cmpbexadd  %eax, %ecx, (%rip)

// CHECK: cmpbexadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe6,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpbexadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpbexadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe6,0x89,0xfc,0x01,0x00,0x00]
          cmpbexadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpbexadd  %eax, %ecx, -512(%edx)
// CHECK: encoding: [0x67,0xc4,0xe2,0x79,0xe6,0x8a,0x00,0xfe,0xff,0xff]
          cmpbexadd  %eax, %ecx, -512(%edx)

// CHECK: cmpbexadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe6,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpbexadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpbexadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe6,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpbexadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpbexadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe6,0x0d,0x00,0x00,0x00,0x00]
          cmpbexadd  %r10, %r9, (%rip)

// CHECK: cmpbexadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe6,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpbexadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpbexadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe6,0x89,0xf8,0x03,0x00,0x00]
          cmpbexadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpbexadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe6,0x8a,0x00,0xfc,0xff,0xff]
          cmpbexadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpbxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe2,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpbxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpbxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe2,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpbxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpbxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe2,0x0d,0x00,0x00,0x00,0x00]
          cmpbxadd  %eax, %ecx, (%rip)

// CHECK: cmpbxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe2,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpbxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpbxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe2,0x89,0xfc,0x01,0x00,0x00]
          cmpbxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpbxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe2,0x8a,0x00,0xfe,0xff,0xff]
          cmpbxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpbxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe2,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpbxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpbxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe2,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpbxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpbxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe2,0x0d,0x00,0x00,0x00,0x00]
          cmpbxadd  %r10, %r9, (%rip)

// CHECK: cmpbxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe2,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpbxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpbxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe2,0x89,0xf8,0x03,0x00,0x00]
          cmpbxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpbxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe2,0x8a,0x00,0xfc,0xff,0xff]
          cmpbxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmplexadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xee,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmplexadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmplexadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xee,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmplexadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmplexadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xee,0x0d,0x00,0x00,0x00,0x00]
          cmplexadd  %eax, %ecx, (%rip)

// CHECK: cmplexadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xee,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmplexadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmplexadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xee,0x89,0xfc,0x01,0x00,0x00]
          cmplexadd  %eax, %ecx, 508(%rcx)

// CHECK: cmplexadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xee,0x8a,0x00,0xfe,0xff,0xff]
          cmplexadd  %eax, %ecx, -512(%rdx)

// CHECK: cmplexadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xee,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmplexadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmplexadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xee,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmplexadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmplexadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xee,0x0d,0x00,0x00,0x00,0x00]
          cmplexadd  %r10, %r9, (%rip)

// CHECK: cmplexadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xee,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmplexadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmplexadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xee,0x89,0xf8,0x03,0x00,0x00]
          cmplexadd  %r10, %r9, 1016(%rcx)

// CHECK: cmplexadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xee,0x8a,0x00,0xfc,0xff,0xff]
          cmplexadd  %r10, %r9, -1024(%rdx)

// CHECK: cmplxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xec,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmplxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmplxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xec,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmplxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmplxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xec,0x0d,0x00,0x00,0x00,0x00]
          cmplxadd  %eax, %ecx, (%rip)

// CHECK: cmplxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xec,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmplxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmplxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xec,0x89,0xfc,0x01,0x00,0x00]
          cmplxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmplxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xec,0x8a,0x00,0xfe,0xff,0xff]
          cmplxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmplxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xec,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmplxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmplxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xec,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmplxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmplxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xec,0x0d,0x00,0x00,0x00,0x00]
          cmplxadd  %r10, %r9, (%rip)

// CHECK: cmplxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xec,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmplxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmplxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xec,0x89,0xf8,0x03,0x00,0x00]
          cmplxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmplxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xec,0x8a,0x00,0xfc,0xff,0xff]
          cmplxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnbexadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe7,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnbexadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnbexadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe7,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnbexadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnbexadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe7,0x0d,0x00,0x00,0x00,0x00]
          cmpnbexadd  %eax, %ecx, (%rip)

// CHECK: cmpnbexadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe7,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnbexadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnbexadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe7,0x89,0xfc,0x01,0x00,0x00]
          cmpnbexadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnbexadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe7,0x8a,0x00,0xfe,0xff,0xff]
          cmpnbexadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnbexadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe7,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnbexadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnbexadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe7,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnbexadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnbexadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe7,0x0d,0x00,0x00,0x00,0x00]
          cmpnbexadd  %r10, %r9, (%rip)

// CHECK: cmpnbexadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe7,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnbexadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnbexadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe7,0x89,0xf8,0x03,0x00,0x00]
          cmpnbexadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnbexadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe7,0x8a,0x00,0xfc,0xff,0xff]
          cmpnbexadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnbxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe3,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnbxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnbxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe3,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnbxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnbxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe3,0x0d,0x00,0x00,0x00,0x00]
          cmpnbxadd  %eax, %ecx, (%rip)

// CHECK: cmpnbxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe3,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnbxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnbxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe3,0x89,0xfc,0x01,0x00,0x00]
          cmpnbxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnbxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe3,0x8a,0x00,0xfe,0xff,0xff]
          cmpnbxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnbxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe3,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnbxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnbxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe3,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnbxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnbxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe3,0x0d,0x00,0x00,0x00,0x00]
          cmpnbxadd  %r10, %r9, (%rip)

// CHECK: cmpnbxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe3,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnbxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnbxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe3,0x89,0xf8,0x03,0x00,0x00]
          cmpnbxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnbxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe3,0x8a,0x00,0xfc,0xff,0xff]
          cmpnbxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnlexadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xef,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnlexadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnlexadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xef,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnlexadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnlexadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xef,0x0d,0x00,0x00,0x00,0x00]
          cmpnlexadd  %eax, %ecx, (%rip)

// CHECK: cmpnlexadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xef,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnlexadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnlexadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xef,0x89,0xfc,0x01,0x00,0x00]
          cmpnlexadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnlexadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xef,0x8a,0x00,0xfe,0xff,0xff]
          cmpnlexadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnlexadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xef,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnlexadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnlexadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xef,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnlexadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnlexadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xef,0x0d,0x00,0x00,0x00,0x00]
          cmpnlexadd  %r10, %r9, (%rip)

// CHECK: cmpnlexadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xef,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnlexadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnlexadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xef,0x89,0xf8,0x03,0x00,0x00]
          cmpnlexadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnlexadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xef,0x8a,0x00,0xfc,0xff,0xff]
          cmpnlexadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnlxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xed,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnlxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnlxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xed,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnlxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnlxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xed,0x0d,0x00,0x00,0x00,0x00]
          cmpnlxadd  %eax, %ecx, (%rip)

// CHECK: cmpnlxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xed,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnlxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnlxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xed,0x89,0xfc,0x01,0x00,0x00]
          cmpnlxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnlxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xed,0x8a,0x00,0xfe,0xff,0xff]
          cmpnlxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnlxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xed,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnlxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnlxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xed,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnlxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnlxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xed,0x0d,0x00,0x00,0x00,0x00]
          cmpnlxadd  %r10, %r9, (%rip)

// CHECK: cmpnlxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xed,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnlxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnlxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xed,0x89,0xf8,0x03,0x00,0x00]
          cmpnlxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnlxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xed,0x8a,0x00,0xfc,0xff,0xff]
          cmpnlxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnoxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe1,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnoxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnoxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe1,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnoxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnoxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe1,0x0d,0x00,0x00,0x00,0x00]
          cmpnoxadd  %eax, %ecx, (%rip)

// CHECK: cmpnoxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe1,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnoxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnoxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe1,0x89,0xfc,0x01,0x00,0x00]
          cmpnoxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnoxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe1,0x8a,0x00,0xfe,0xff,0xff]
          cmpnoxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnoxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe1,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnoxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnoxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe1,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnoxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnoxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe1,0x0d,0x00,0x00,0x00,0x00]
          cmpnoxadd  %r10, %r9, (%rip)

// CHECK: cmpnoxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe1,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnoxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnoxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe1,0x89,0xf8,0x03,0x00,0x00]
          cmpnoxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnoxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe1,0x8a,0x00,0xfc,0xff,0xff]
          cmpnoxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnpxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xeb,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnpxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnpxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xeb,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnpxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnpxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xeb,0x0d,0x00,0x00,0x00,0x00]
          cmpnpxadd  %eax, %ecx, (%rip)

// CHECK: cmpnpxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xeb,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnpxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnpxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xeb,0x89,0xfc,0x01,0x00,0x00]
          cmpnpxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnpxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xeb,0x8a,0x00,0xfe,0xff,0xff]
          cmpnpxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnpxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xeb,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnpxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnpxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xeb,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnpxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnpxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xeb,0x0d,0x00,0x00,0x00,0x00]
          cmpnpxadd  %r10, %r9, (%rip)

// CHECK: cmpnpxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xeb,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnpxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnpxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xeb,0x89,0xf8,0x03,0x00,0x00]
          cmpnpxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnpxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xeb,0x8a,0x00,0xfc,0xff,0xff]
          cmpnpxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnsxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe9,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnsxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnsxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe9,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnsxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnsxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe9,0x0d,0x00,0x00,0x00,0x00]
          cmpnsxadd  %eax, %ecx, (%rip)

// CHECK: cmpnsxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe9,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnsxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnsxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe9,0x89,0xfc,0x01,0x00,0x00]
          cmpnsxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnsxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe9,0x8a,0x00,0xfe,0xff,0xff]
          cmpnsxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnsxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe9,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnsxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnsxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe9,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnsxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnsxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe9,0x0d,0x00,0x00,0x00,0x00]
          cmpnsxadd  %r10, %r9, (%rip)

// CHECK: cmpnsxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe9,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnsxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnsxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe9,0x89,0xf8,0x03,0x00,0x00]
          cmpnsxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnsxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe9,0x8a,0x00,0xfc,0xff,0xff]
          cmpnsxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpnzxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe5,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnzxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpnzxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe5,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnzxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpnzxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe5,0x0d,0x00,0x00,0x00,0x00]
          cmpnzxadd  %eax, %ecx, (%rip)

// CHECK: cmpnzxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe5,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpnzxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpnzxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe5,0x89,0xfc,0x01,0x00,0x00]
          cmpnzxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpnzxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe5,0x8a,0x00,0xfe,0xff,0xff]
          cmpnzxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpnzxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe5,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpnzxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpnzxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe5,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpnzxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpnzxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe5,0x0d,0x00,0x00,0x00,0x00]
          cmpnzxadd  %r10, %r9, (%rip)

// CHECK: cmpnzxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe5,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpnzxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpnzxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe5,0x89,0xf8,0x03,0x00,0x00]
          cmpnzxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpnzxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe5,0x8a,0x00,0xfc,0xff,0xff]
          cmpnzxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpoxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe0,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpoxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpoxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe0,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpoxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpoxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe0,0x0d,0x00,0x00,0x00,0x00]
          cmpoxadd  %eax, %ecx, (%rip)

// CHECK: cmpoxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe0,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpoxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpoxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe0,0x89,0xfc,0x01,0x00,0x00]
          cmpoxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpoxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe0,0x8a,0x00,0xfe,0xff,0xff]
          cmpoxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpoxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe0,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpoxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpoxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe0,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpoxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpoxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe0,0x0d,0x00,0x00,0x00,0x00]
          cmpoxadd  %r10, %r9, (%rip)

// CHECK: cmpoxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe0,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpoxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpoxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe0,0x89,0xf8,0x03,0x00,0x00]
          cmpoxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpoxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe0,0x8a,0x00,0xfc,0xff,0xff]
          cmpoxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmppxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xea,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmppxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmppxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xea,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmppxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmppxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xea,0x0d,0x00,0x00,0x00,0x00]
          cmppxadd  %eax, %ecx, (%rip)

// CHECK: cmppxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xea,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmppxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmppxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xea,0x89,0xfc,0x01,0x00,0x00]
          cmppxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmppxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xea,0x8a,0x00,0xfe,0xff,0xff]
          cmppxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmppxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xea,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmppxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmppxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xea,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmppxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmppxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xea,0x0d,0x00,0x00,0x00,0x00]
          cmppxadd  %r10, %r9, (%rip)

// CHECK: cmppxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xea,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmppxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmppxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xea,0x89,0xf8,0x03,0x00,0x00]
          cmppxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmppxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xea,0x8a,0x00,0xfc,0xff,0xff]
          cmppxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpsxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe8,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpsxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpsxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe8,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpsxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpsxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe8,0x0d,0x00,0x00,0x00,0x00]
          cmpsxadd  %eax, %ecx, (%rip)

// CHECK: cmpsxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe8,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpsxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpsxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe8,0x89,0xfc,0x01,0x00,0x00]
          cmpsxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpsxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe8,0x8a,0x00,0xfe,0xff,0xff]
          cmpsxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpsxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe8,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpsxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpsxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe8,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpsxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpsxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe8,0x0d,0x00,0x00,0x00,0x00]
          cmpsxadd  %r10, %r9, (%rip)

// CHECK: cmpsxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe8,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpsxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpsxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe8,0x89,0xf8,0x03,0x00,0x00]
          cmpsxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpsxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe8,0x8a,0x00,0xfc,0xff,0xff]
          cmpsxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpzxadd  %eax, %ecx, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0xa2,0x79,0xe4,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpzxadd  %eax, %ecx, 268435456(%rbp,%r14,8)

// CHECK: cmpzxadd  %eax, %ecx, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0xc2,0x79,0xe4,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpzxadd  %eax, %ecx, 291(%r8,%rax,4)

// CHECK: cmpzxadd  %eax, %ecx, (%rip)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe4,0x0d,0x00,0x00,0x00,0x00]
          cmpzxadd  %eax, %ecx, (%rip)

// CHECK: cmpzxadd  %eax, %ecx, -128(,%rbp,2)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe4,0x0c,0x6d,0x80,0xff,0xff,0xff]
          cmpzxadd  %eax, %ecx, -128(,%rbp,2)

// CHECK: cmpzxadd  %eax, %ecx, 508(%rcx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe4,0x89,0xfc,0x01,0x00,0x00]
          cmpzxadd  %eax, %ecx, 508(%rcx)

// CHECK: cmpzxadd  %eax, %ecx, -512(%rdx)
// CHECK: encoding: [0xc4,0xe2,0x79,0xe4,0x8a,0x00,0xfe,0xff,0xff]
          cmpzxadd  %eax, %ecx, -512(%rdx)

// CHECK: cmpzxadd  %r10, %r9, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0xc4,0x22,0xa9,0xe4,0x8c,0xf5,0x00,0x00,0x00,0x10]
          cmpzxadd  %r10, %r9, 268435456(%rbp,%r14,8)

// CHECK: cmpzxadd  %r10, %r9, 291(%r8,%rax,4)
// CHECK: encoding: [0xc4,0x42,0xa9,0xe4,0x8c,0x80,0x23,0x01,0x00,0x00]
          cmpzxadd  %r10, %r9, 291(%r8,%rax,4)

// CHECK: cmpzxadd  %r10, %r9, (%rip)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe4,0x0d,0x00,0x00,0x00,0x00]
          cmpzxadd  %r10, %r9, (%rip)

// CHECK: cmpzxadd  %r10, %r9, -256(,%rbp,2)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe4,0x0c,0x6d,0x00,0xff,0xff,0xff]
          cmpzxadd  %r10, %r9, -256(,%rbp,2)

// CHECK: cmpzxadd  %r10, %r9, 1016(%rcx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe4,0x89,0xf8,0x03,0x00,0x00]
          cmpzxadd  %r10, %r9, 1016(%rcx)

// CHECK: cmpzxadd  %r10, %r9, -1024(%rdx)
// CHECK: encoding: [0xc4,0x62,0xa9,0xe4,0x8a,0x00,0xfc,0xff,0xff]
          cmpzxadd  %r10, %r9, -1024(%rdx)

// CHECK: cmpbexadd  %ecx, %r8d, (%rip)
// CHECK: encoding: [0xc4,0x62,0x71,0xe6,0x05,0x00,0x00,0x00,0x00]
          cmpbexadd  %ecx, %r8d, (%rip)
