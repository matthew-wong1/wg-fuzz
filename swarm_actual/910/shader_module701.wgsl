struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1013f * arg_1.x), _wgslsmith_div_f32(-155f, -547f), _wgslsmith_f_op_f32(1519f * arg_1.x), _wgslsmith_f_op_f32(trunc(-980f))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(arg_1.x, -528f)), -567f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(997f, -939f, arg_1.x, arg_1.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, arg_1.x, 140f, 372f))))))), ~vec2<i32>(arg_0.x, -(~(-24622i))), vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.a), 1i) <= -arg_0.x), vec3<i32>(-1i, countOneBits(i32(-1i) * -arg_0.x), abs(i32(-1i) * -arg_0.x)));
    var var_1 = !var_0.d.x;
    var_1 = true;
    var_1 = !any(select(var_0.d.xzz, var_0.d.yxw, var_0.d.zxx));
    let var_2 = Struct_1(var_0.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -449f, arg_1.x, 778f), var_0.b, var_0.d)) + var_0.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1640f * var_0.b.x), -973f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(arg_1.x * 1072f)))), var_0.c, vec4<bool>(var_0.a, true, any(var_0.d.zw), false), var_0.e);
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), 621f) + arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, arg_1.x), -1376f))) + _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1715f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), var_2.b.x)));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.b.x, _wgslsmith_f_op_f32(sign(arg_0.b.b.x))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(select(arg_0.b.b.x, arg_0.a.x, arg_0.b.d.x)))))));
    var_0 = 592f;
    let var_1 = select(select(!(!(!arg_0.b.d.yy)), !vec2<bool>(false, arg_0.b.a), select(vec2<bool>(false, false), select(!arg_0.b.d.yx, select(arg_0.b.d.wy, vec2<bool>(true, true), true), arg_0.b.d.yy), false)), !arg_0.b.d.wz, !(!arg_0.b.d.xz));
    var var_2 = ~vec2<i32>(0i, 1i);
    return ~(~min(-vec4<i32>(1i, 2147483647i, arg_0.b.c.x, u_input.b.x), select(vec4<i32>(0i, u_input.a, -2147483647i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -30166i, u_input.a), arg_0.b.a))) | vec4<i32>(1i, u_input.b.x, _wgslsmith_div_i32(_wgslsmith_div_i32(var_2.x, -10751i), var_2.x) ^ 52537i, var_2.x);
}

fn func_2() -> vec2<f32> {
    let var_0 = 4171i;
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, 1468f, -332f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(551f, -1188f, 404f)))) * _wgslsmith_f_op_vec3_f32(func_3(countOneBits(vec4<i32>(var_0, 33052i, -1i, 2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(187f, -1000f)), select(u_input.c.yxy, u_input.c.zzx, false)))), Struct_1(!any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2008f, -288f, 670f, 440f))), abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_0, -1i), u_input.b)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, false, false, false)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, 9415i), vec3<i32>(2147483647i, 0i, var_0)), vec3<i32>(-1i, var_0, var_0), true))));
    var var_2 = false;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-287f, -1000f, 165f), vec3<f32>(-948f, -883f, 1545f)))))), Struct_1(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)) | (true && any(vec3<bool>(false, false, false))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1468f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f)), -346f, -359f), _wgslsmith_mod_vec2_i32(min(var_1.yz, u_input.b), ~vec2<i32>(-63320i, 0i)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(56296u, 39367u), vec2<u32>(67366u, u_input.d)) % vec2<u32>(32u)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), _wgslsmith_add_vec3_i32(var_1.yyz, -vec3<i32>(2618i, 35055i, 0i))));
    let var_4 = var_3;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.b.wz) * vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_4.b.b.x)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, -240f, arg_1) - vec3<f32>(780f, 429f, 1478f)), arg_2.b.b.zww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, arg_2.b.b.x, 457f))))) - arg_2.a));
    let var_1 = firstLeadingBit(max(abs(vec3<u32>(~u_input.d, 4294967295u, 0u)), _wgslsmith_div_vec3_u32(u_input.c.wzz, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 4294967295u, u_input.c.x))));
    let var_2 = select(!select(vec4<bool>(any(vec2<bool>(true, arg_2.b.d.x)), true, arg_2.b.a, true), vec4<bool>(false, arg_2.b.a, arg_2.b.a, true), arg_2.b.a), !select(select(vec4<bool>(false, true, true, arg_2.b.d.x), vec4<bool>(arg_2.b.d.x, arg_2.b.a, false, true), select(true, false, true)), select(select(arg_2.b.d, arg_2.b.d, arg_2.b.a), select(arg_2.b.d, vec4<bool>(false, true, arg_2.b.a, false), vec4<bool>(arg_2.b.d.x, false, true, true)), arg_2.b.d), false), arg_2.b.d);
    var var_3 = _wgslsmith_sub_i32(arg_2.b.c.x, ~_wgslsmith_div_i32(u_input.b.x, 31193i)) < 1i;
    var var_4 = Struct_2(var_0, arg_2.b);
    return countOneBits(firstLeadingBit(arg_2.b.e));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = u_input.b;
    let var_1 = -43792i;
    let var_2 = Struct_1(var_1 == 0i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(-2060f)), _wgslsmith_f_op_f32(-arg_0), 526f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(173f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-767f + arg_0), arg_0), vec4<bool>(true, u_input.d < u_input.d, true, any(vec3<bool>(false, true, true))))))), vec2<i32>(~1i >> (~(u_input.c.x >> (u_input.c.x % 32u)) % 32u), ~var_0.x), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), true), true), func_5(_wgslsmith_f_op_vec2_f32(func_2()), arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(486f, arg_0, arg_0) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1689f, 557f, -1359f)))), Struct_1(true, vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(-1i, var_0.x)), vec4<bool>(true, false, false, false), vec3<i32>(27293i, -37651i, u_input.b.x))), _wgslsmith_f_op_f32(-1239f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(871f))))));
    var var_3 = var_2.d.x;
    var_3 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(floor(var_2.b.x)))) == arg_0;
    return _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(var_0, var_2.e.yz), -max(min(u_input.b, vec2<i32>(15104i, var_1)), countOneBits(u_input.b))), _wgslsmith_div_vec2_i32(func_5(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x)), var_2.b.x, Struct_2(vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x), var_2), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-var_2.b.x))).yy, abs(-var_2.c)));
}

fn func_6(arg_0: u32, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = 1250f;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(988f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -214f))), 682f, -138f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(199f, -1833f, 544f, -219f), vec4<f32>(-799f, 1220f, -1297f, -118f), true)) * _wgslsmith_div_vec4_f32(vec4<f32>(-791f, 1577f, -906f, 1585f), vec4<f32>(238f, -581f, 386f, -982f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, -675f, -1000f, -448f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, -512f, -204f, 436f) + vec4<f32>(282f, -158f, 957f, 331f)))))));
    var var_2 = Struct_1(!select(true, false, _wgslsmith_f_op_f32(var_1.x + -803f) > -596f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), 1406f, _wgslsmith_f_op_f32(var_1.x - 779f)))), vec2<i32>(-67348i, ~(arg_1.x ^ select(1i, 0i, true))), vec4<bool>(true, select(true, true, any(vec2<bool>(true, true))) & any(vec3<bool>(true, true, true)), select(all(vec2<bool>(false, true)), true, !all(vec4<bool>(true, true, false, false))), !any(vec4<bool>(true, true, false, true))), -(~(-vec3<i32>(-2147483647i, -63627i, u_input.a))) ^ ~(-select(vec3<i32>(-2147483647i, u_input.b.x, arg_1.x), vec3<i32>(13498i, -57021i, u_input.b.x), vec3<bool>(false, false, true))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_2.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_f_op_vec4_f32(-var_2.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 462f, var_1.x, var_1.x))))) + vec4<f32>(-366f, _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(2147483647i, -2147483647i, var_2.c.x, u_input.b.x), var_1.xy, u_input.c.wxy)).x, _wgslsmith_f_op_f32(ceil(-152f)), -446f))), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-718f - var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1208f), var_1.x)))));
    var var_3 = 13306i;
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-647f, _wgslsmith_div_f32(-1010f, _wgslsmith_f_op_f32(var_1.x - 354f)), 657f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.b.x, 600f, -921f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, var_1.x, -599f)))))), Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(floor(var_2.b)), vec2<i32>(2147483647i, _wgslsmith_mult_i32(~(-10641i), u_input.a)), !vec4<bool>(false, var_2.d.x, true, true), -(~vec3<i32>(32710i, arg_1.x, var_2.e.x)) ^ var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.c.x, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(7273i, u_input.b.x), u_input.b), select(u_input.b, func_1(-1000f), false)) >> (u_input.c.ww % vec2<u32>(32u)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-406f, _wgslsmith_f_op_f32(max(var_0.b.b.x, -304f)), var_0.b.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, -1326f, -1459f))))))), func_6(firstTrailingBit(0u), select(firstTrailingBit(var_0.b.e.xz), u_input.b, !var_0.b.d.xz)).b);
    var var_1 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(-1000f * -735f)) >= _wgslsmith_f_op_f32(round(2328f)), true, var_0.b.d.x, false & (var_0.b.c.x <= _wgslsmith_mod_i32(var_0.b.e.x << (u_input.d % 32u), u_input.b.x)));
    var var_2 = func_6(1u, firstTrailingBit(-var_0.b.c));
    var var_3 = var_0.b;
    let var_4 = select(var_1.zzy, var_1.zxy, all(var_2.b.d));
    var var_5 = false;
    var_2 = func_6(u_input.c.x, _wgslsmith_mult_vec2_i32(vec2<i32>(max(_wgslsmith_sub_i32(var_3.e.x, u_input.b.x), u_input.b.x), u_input.a), var_2.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(-7712i >> (~4294967295u % 32u), u_input.c, -(~(~(var_2.b.c.x & -9639i))));
}

