# version 20080912
# D. J. Bernstein
# Public domain.

.data
.section .rodata
.p2align 5

.globl _crypto_auth1_poly1305_x86_constants
.globl crypto_auth1_poly1305_x86_constants
.globl crypto_auth1_poly1305_x86_scale
.globl crypto_auth1_poly1305_x86_two32
.globl crypto_auth1_poly1305_x86_two64
.globl crypto_auth1_poly1305_x86_two96
.globl crypto_auth1_poly1305_x86_alpha32
.globl crypto_auth1_poly1305_x86_alpha64
.globl crypto_auth1_poly1305_x86_alpha96
.globl crypto_auth1_poly1305_x86_alpha130
.globl crypto_auth1_poly1305_x86_doffset0
.globl crypto_auth1_poly1305_x86_doffset1
.globl crypto_auth1_poly1305_x86_doffset2
.globl crypto_auth1_poly1305_x86_doffset3
.globl crypto_auth1_poly1305_x86_doffset3minustwo128
.globl crypto_auth1_poly1305_x86_hoffset0
.globl crypto_auth1_poly1305_x86_hoffset1
.globl crypto_auth1_poly1305_x86_hoffset2
.globl crypto_auth1_poly1305_x86_hoffset3
.globl crypto_auth1_poly1305_x86_rounding

_crypto_auth1_poly1305_x86_constants:
crypto_auth1_poly1305_x86_constants:
crypto_auth1_poly1305_x86_scale:
.long 0x0,0x37f40000

crypto_auth1_poly1305_x86_two32:
.long 0x0,0x41f00000

crypto_auth1_poly1305_x86_two64:
.long 0x0,0x43f00000

crypto_auth1_poly1305_x86_two96:
.long 0x0,0x45f00000

crypto_auth1_poly1305_x86_alpha32:
.long 0x0,0x45e80000

crypto_auth1_poly1305_x86_alpha64:
.long 0x0,0x47e80000

crypto_auth1_poly1305_x86_alpha96:
.long 0x0,0x49e80000

crypto_auth1_poly1305_x86_alpha130:
.long 0x0,0x4c080000

crypto_auth1_poly1305_x86_doffset0:
.long 0x0,0x43300000

crypto_auth1_poly1305_x86_doffset1:
.long 0x0,0x45300000

crypto_auth1_poly1305_x86_doffset2:
.long 0x0,0x47300000

crypto_auth1_poly1305_x86_doffset3:
.long 0x0,0x49300000

crypto_auth1_poly1305_x86_doffset3minustwo128:
.long 0x0,0x492ffffe

crypto_auth1_poly1305_x86_hoffset0:
.long 0xfffffffb,0x43300001

crypto_auth1_poly1305_x86_hoffset1:
.long 0xfffffffe,0x45300001

crypto_auth1_poly1305_x86_hoffset2:
.long 0xfffffffe,0x47300001

crypto_auth1_poly1305_x86_hoffset3:
.long 0xfffffffe,0x49300003

crypto_auth1_poly1305_x86_rounding:
.byte 0x7f
.byte 0x13
