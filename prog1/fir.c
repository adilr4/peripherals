#include "fir.h"
/// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
/// 20-May-2017
/// Low pass & High pass FIR Symmetrical Filter, First Half of coefficients
///---------------------------------------------------------------------

float* lpcoeffs[20] = {lpcoeff1, lpcoeff2};

float lpcoeff1[FIR_N] = {-0.0003, -0.0019, -0.0025, 0.0065, 0.0373, 0.0938,
                         0.1605,  0.2065,  0.2065,  0.1605, 0.0938, 0.0373,
                         0.0065,  -0.0025, -0.0019, -0.0003};

float lpcoeff2[FIR_N] = {0};

