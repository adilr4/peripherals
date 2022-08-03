#include "fir.h"

const float lpcoeff[20][FIR_N] = {
    {0.0001, 0.0005, 0.0013, 0.0028, 0.0052, 0.0088, 0.0136, 0.0199,
     0.0274, 0.0360, 0.0451, 0.0543, 0.0627, 0.0698, 0.0749, 0.0776,
     0.0776, 0.0749, 0.0698, 0.0627, 0.0543, 0.0451, 0.0360, 0.0274,
     0.0199, 0.0136, 0.0088, 0.0052, 0.0028, 0.0013, 0.0005, 0.0001},

    {-0.0001, -0.0004, -0.0009, -0.0014, -0.0016, -0.0009, 0.0014,  0.0063,
     0.0142,  0.0254,  0.0396,  0.0558,  0.0723,  0.0872,  0.0985,  0.1046,
     0.1046,  0.0985,  0.0872,  0.0723,  0.0558,  0.0396,  0.0254,  0.0142,
     0.0063,  0.0014,  -0.0009, -0.0016, -0.0014, -0.0009, -0.0004, -0.0001},

    {0.0001,  0.0002,  0.0001,  -0.0007, -0.0026, -0.0055, -0.0085, -0.0100,
     -0.0073, 0.0021,  0.0199,  0.0457,  0.0767,  0.1081,  0.1337,  0.1481,
     0.1481,  0.1337,  0.1081,  0.0767,  0.0457,  0.0199,  0.0021,  -0.0073,
     -0.0100, -0.0085, -0.0055, -0.0026, -0.0007, 0.0001,  0.0002,  0.0001},

    {-0.0000, 0.0001,  0.0008,  0.0019, 0.0028, 0.0017,  -0.0027, -0.0106,
     -0.0191, -0.0219, -0.0118, 0.0166, 0.0623, 0.1171,  0.1666,  0.1961,
     0.1961,  0.1666,  0.1171,  0.0623, 0.0166, -0.0118, -0.0219, -0.0191,
     -0.0106, -0.0027, 0.0017,  0.0028, 0.0019, 0.0008,  0.0001,  -0.0000},

    {-0.0000, -0.0004, -0.0009, -0.0007, 0.0013,  0.0052,  0.0081,  0.0050,
     -0.0073, -0.0250, -0.0352, -0.0205, 0.0295,  0.1081,  0.1902,  0.2427,
     0.2427,  0.1902,  0.1081,  0.0295,  -0.0205, -0.0352, -0.0250, -0.0073,
     0.0050,  0.0081,  0.0052,  0.0013,  -0.0007, -0.0009, -0.0004, -0.0000},

    {0.0001, 0.0004,  0.0002,  -0.0014, -0.0034, -0.0026, 0.0040,  0.0130,
     0.0135, -0.0042, -0.0339, -0.0478, -0.0120, 0.0828,  0.2034,  0.2881,
     0.2881, 0.2034,  0.0828,  -0.0120, -0.0478, -0.0339, -0.0042, 0.0135,
     0.0130, 0.0040,  -0.0026, -0.0034, -0.0014, 0.0002,  0.0004,  0.0001},

    {-0.0001, -0.0001, 0.0008,  0.0018,  0.0003,  -0.0048, -0.0075, 0.0010,
     0.0176,  0.0206,  -0.0089, -0.0521, -0.0500, 0.0448,  0.2052,  0.3315,
     0.3315,  0.2052,  0.0448,  -0.0500, -0.0521, -0.0089, 0.0206,  0.0176,
     0.0010,  -0.0075, -0.0048, 0.0003,  0.0018,  0.0008,  -0.0001, -0.0001},

    {0.0001,  -0.0003, -0.0009, 0.0000,  0.0033,  0.0033,  -0.0052, -0.0125,
     0.0000,  0.0258,  0.0224,  -0.0315, -0.0732, 0.0000,  0.1958,  0.3730,
     0.3730,  0.1958,  0.0000,  -0.0732, -0.0315, 0.0224,  0.0258,  0.0000,
     -0.0125, -0.0052, 0.0033,  0.0033,  0.0000,  -0.0009, -0.0003, 0.0001},

    {0.0000,  0.0004, 0.0002,  -0.0018, -0.0018, 0.0043,  0.0067, -0.0069,
     -0.0176, 0.0063, 0.0380,  0.0042,  -0.0749, -0.0448, 0.1755, 0.4121,
     0.4121,  0.1755, -0.0448, -0.0749, 0.0042,  0.0380,  0.0063, -0.0176,
     -0.0069, 0.0067, 0.0043,  -0.0018, -0.0018, 0.0002,  0.0004, 0.0000},

    {-0.0001, -0.0003, 0.0007,  0.0014,  -0.0024, -0.0040, 0.0062,  0.0093,
     -0.0135, -0.0191, 0.0269,  0.0379,  -0.0544, -0.0827, 0.1456,  0.4486,
     0.4486,  0.1456,  -0.0827, -0.0544, 0.0379,  0.0269,  -0.0191, -0.0135,
     0.0093,  0.0062,  -0.0040, -0.0024, 0.0014,  0.0007,  -0.0003, -0.0001},

    {0.0001, -0.0000, -0.0010, 0.0007,  0.0029,  -0.0037, -0.0057, 0.0112,
     0.0073, -0.0263, -0.0030, 0.0534,  -0.0180, -0.1081, 0.1076,  0.4825,
     0.4825, 0.1076,  -0.1081, -0.0180, 0.0534,  -0.0030, -0.0263, 0.0073,
     0.0112, -0.0057, -0.0037, 0.0029,  0.0007,  -0.0010, -0.0000, 0.0001},

    {-0.0001, 0.0003,  0.0003,  -0.0019, 0.0011,  0.0046,  -0.0071, -0.0041,
     0.0190,  -0.0084, -0.0308, 0.0434,  0.0238,  -0.1170, 0.0636,  0.5133,
     0.5133,  0.0636,  -0.1170, 0.0238,  0.0434,  -0.0308, -0.0084, 0.0190,
     -0.0041, -0.0071, 0.0046,  0.0011,  -0.0019, 0.0003,  0.0003,  -0.0001},

    {0.0000,  -0.0004, 0.0006,  0.0007,  -0.0034, 0.0029,  0.0046,  -0.0131,
     0.0073,  0.0176,  -0.0370, 0.0125,  0.0586,  -0.1081, 0.0162,  0.5410,
     0.5410,  0.0162,  -0.1081, 0.0586,  0.0125,  -0.0370, 0.0176,  0.0073,
     -0.0131, 0.0046,  0.0029,  -0.0034, 0.0007,  0.0006,  -0.0004, 0.0000},

    {0.0001,  0.0002,  -0.0010, 0.0014,  0.0005,  -0.0050, 0.0078,  -0.0021,
     -0.0135, 0.0267,  -0.0173, -0.0243, 0.0760,  -0.0827, -0.0322, 0.5653,
     0.5653,  -0.0322, -0.0827, 0.0760,  -0.0243, -0.0173, 0.0267,  -0.0135,
     -0.0021, 0.0078,  -0.0050, 0.0005,  0.0014,  -0.0010, 0.0002,  0.0001},

    {-0.0001, 0.0002,  0.0004,  -0.0018, 0.0032,  -0.0022, -0.0034, 0.0121,
     -0.0176, 0.0104,  0.0146,  -0.0495, 0.0711,  -0.0448, -0.0788, 0.5862,
     0.5862,  -0.0788, -0.0448, 0.0711,  -0.0495, 0.0146,  0.0104,  -0.0176,
     0.0121,  -0.0034, -0.0022, 0.0032,  -0.0018, 0.0004,  0.0002,  -0.0001},

    {0.0001,  -0.0004, 0.0006,  -0.0000, -0.0020, 0.0054,  -0.0083, 0.0077,
     -0.0000, -0.0159, 0.0362,  -0.0510, 0.0453,  -0.0000, -0.1210, 0.6034,
     0.6034,  -0.1210, -0.0000, 0.0453,  -0.0510, 0.0362,  -0.0159, -0.0000,
     0.0077,  -0.0083, 0.0054,  -0.0020, -0.0000, 0.0006,  -0.0004, 0.0001},

    {-0.0001, 0.0004,  -0.0010, 0.0018,  -0.0022, 0.0013,  0.0020,  -0.0085,
     0.0176,  -0.0270, 0.0325,  -0.0280, 0.0060,  0.0448,  -0.1565, 0.6170,
     0.6170,  -0.1565, 0.0448,  0.0060,  -0.0280, 0.0325,  -0.0270, 0.0176,
     -0.0085, 0.0020,  0.0013,  -0.0022, 0.0018,  -0.0010, 0.0004,  -0.0001},

    {-0.0000, -0.0001, 0.0005,  -0.0014, 0.0031,  -0.0056, 0.0087,  -0.0117,
     0.0135,  -0.0123, 0.0060,  0.0084,  -0.0350, 0.0827,  -0.1834, 0.6267,
     0.6267,  -0.1834, 0.0827,  -0.0350, 0.0084,  0.0060,  -0.0123, 0.0135,
     -0.0117, 0.0087,  -0.0056, 0.0031,  -0.0014, 0.0005,  -0.0001, -0.0000},

    {0.0001,  -0.0003, 0.0005,  -0.0007, 0.0008,  -0.0004, -0.0007, 0.0031,
     -0.0073, 0.0141,  -0.0247, 0.0408,  -0.0656, 0.1081,  -0.2002, 0.6325,
     0.6325,  -0.2002, 0.1081,  -0.0656, 0.0408,  -0.0247, 0.0141,  -0.0073,
     0.0031,  -0.0007, -0.0004, 0.0008,  -0.0007, 0.0005,  -0.0003, 0.0001},

    {-0.0001, 0.0004,  -0.0010, 0.0019,  -0.0034, 0.0056,  -0.0088, 0.0131,
     -0.0190, 0.0271,  -0.0381, 0.0536,  -0.0770, 0.1170,  -0.2059, 0.6345,
     0.6345,  -0.2059, 0.1170,  -0.0770, 0.0536,  -0.0381, 0.0271,  -0.0190,
     0.0131,  -0.0088, 0.0056,  -0.0034, 0.0019,  -0.0010, 0.0004,  -0.0001}

};

