/**
 * Tutorial Q4
 * Bit Masking
 */

#define READING   0x01 // 0000 0001
#define WRITING   0x02 // 0000 0010
#define AS_BYTES  0x04 // 0000 0100
#define AS_BLOCKS 0x08 // 0000 1000
#define LOCKED    0x10 // 0001 0000
// 0001 1101

/**
 * We have this device and we want to change the settings of the device
 * using bitwise operations.
 * 
 * char -> 1 byte -> 8 bits
 * 
 * BITWISE OR | -> set bits 
 */
unsigned char device; //0000 0000

// mark the device as locked for reading bytes
// 0001 0101
device = LOCKED | AS_BYTES | READING 


// mark the device as locked for writing blocks
// 0001 1010
device = LOCKED | WRITING | AS_BLOCKS;

// set the device as locked, leaving other flags unchanged

// remove the lock on a device, leaving other flags unchanged
device = device & ~LOCKED

// swap a device between reading and writing, leaving other flags unchanged