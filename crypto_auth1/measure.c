#include "crypto_auth1.h"
#include "randombytes.h"
#include "cpucycles.h"

extern void printentry(long long,const char *,long long *,long long);
extern unsigned char *alignedcalloc(unsigned long long);
extern const char *primitiveimplementation;
extern const char *implementationversion;
extern const char *sizenames[];
extern const long long sizes[];
extern void allocate(void);
extern void measure(void);

const char *primitiveimplementation = crypto_auth1_IMPLEMENTATION;
const char *implementationversion = crypto_auth1_VERSION;
const char *sizenames[] = { "outputbytes", "keybytes", 0 };
const long long sizes[] = { crypto_auth1_BYTES, crypto_auth1_KEYBYTES };

#define MAXTEST_BYTES 4096

static unsigned char *k;
static unsigned char *m;
static unsigned char *h;

void allocate(void)
{
  k = alignedcalloc(crypto_auth1_KEYBYTES);
  m = alignedcalloc(MAXTEST_BYTES);
  h = alignedcalloc(crypto_auth1_BYTES);
}

#define TIMINGS 15
static long long cycles[TIMINGS + 1];

void measure(void)
{
  int i;
  int loop;
  int mlen;

  for (loop = 0;loop < 3;++loop) {
    for (mlen = 0;mlen <= MAXTEST_BYTES;mlen += 1 + mlen / 8192) {
      randombytes(k,crypto_auth1_KEYBYTES);
      randombytes(m,mlen);
      randombytes(h,crypto_auth1_BYTES);
      for (i = 0;i <= TIMINGS;++i) {
        cycles[i] = cpucycles();
	crypto_auth1(h,m,mlen,k);
      }
      for (i = 0;i < TIMINGS;++i) cycles[i] = cycles[i + 1] - cycles[i];
      printentry(mlen,"cycles",cycles,TIMINGS);
      for (i = 0;i <= TIMINGS;++i) {
        cycles[i] = cpucycles();
	crypto_auth1_verify(h,m,mlen,k);
      }
      for (i = 0;i < TIMINGS;++i) cycles[i] = cycles[i + 1] - cycles[i];
      printentry(mlen,"verify_cycles",cycles,TIMINGS);
    }
  }
}
