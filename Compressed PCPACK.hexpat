struct CompressedBlock {
    char magic[4]; // NCH.
    u32 CompressedDataSize;
    u32 unknown1;
    u32 UncompressedDataSize;
    u32 unknown2;
    u32 unknown3;
    u32 CompressedEnd; // Header size (0x20) + CompressedDataSize
    u32 IsCompressedFlag; // 1 is Compressed
    u8 Data[CompressedDataSize];
    
    // Rest is Padding (A1)
    
    // Compression Method is Lzo1X
    // Max Block Size is 0x80000
};





CompressedBlock CompressedBlock @0x00;
