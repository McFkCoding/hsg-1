#!/usr/bin/env python3

TESTS = [
    [12, 3, 8],
    [2, 15, 17],
    [456, 6, 1296],
    [1234, 100, 9],
    [11223344, 1000000, 142857],
    [55667788, 10000000, 1000000007],
    [1357, 24682468, 999999999],
    [24680, 1357913579, 777777777],
    [998, 1000000000000, 999],
    [1234, 11111111111111, 30],
    [1, 222222222222222, 123456789],
    [2016, 666666666666666, 8888888888],
    [11223344, 555666777888999, 1357924680],
    [999999999999999967, 999999999999999877, 999999999999999989],
    [123456789123456789, 123456789123456789, 987654321123456789]
]

# Gọi l là "chiều dài" của x, l = int(log10(x) + 1) hay l = len(str(x))
# Đặt l ** 10 = a, dễ thấy y = x * (a**(n-1) + a**(n-2) + ... + a + 1)
#                            = x * (a**n - 1) / (a - 1)
# y chia m bằng k dư q hay x * (a**n - 1) / (a - 1) = k * m + q
#                      <=> x * (a**n - 1) = k * (a*m - a) + q * (a - 1)
#                      <=> q = x * (a**n - 1) % (a*m - a) / (a - 1)

with open('REMAINDER.TXT', 'w') as f:
    for case in TESTS:
        a = 10 ** len(str(case[0]))
        case[2] *= a - 1
        p = pow(a, case[1], case[2])
        f.write(str(case[0] * (p - 1) % case[2] // (a - 1)) + '\n')
