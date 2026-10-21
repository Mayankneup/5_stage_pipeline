/* Minimal runtime support for compiler-generated bare-metal memory operations. */
void *memset(void *destination, int value, __SIZE_TYPE__ count)
{
    unsigned char *bytes = destination;
    while (count != 0) {
        *bytes++ = (unsigned char)value;
        --count;
    }
    return destination;
}
