
#ifndef PSP_ENDIAN_H__
	#define PSP_ENDIAN_H__
	#include <machine/endian.h>

	#if defined(BIG_ENDIAN)
		#define __BYTE_ORDER BIG_ENDIAN
	#elif defined(LITTLE_ENDIAN)
		#define __BYTE_ORDER LITTLE_ENDIAN
	#endif

	#define __BIG_ENDIAN BIG_ENDIAN
	#define __LITTLE_ENDIAN LITTLE_ENDIAN

	#define htole16(v) (v&0xff00>>8)|(v&0x00ff<<8) 
	#define le16toh(v) (v&0xff00>>8)|(v&0x00ff<<8) 
	#define htole32(v) (v&0xff000000>>24)|(v&0x00ff0000>>8)|(v&0x0000ff00<<8)|(v&0x000000ff<<24)
	#define le32toh(v) (v&0xff000000>>24)|(v&0x00ff0000>>8)|(v&0x0000ff00<<8)|(v&0x000000ff<<24)
#endif

