struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec4<f32> {
    let var_0 = select(!(!(!(!arg_1))), vec3<bool>(all(!select(arg_1.yx, vec2<bool>(arg_1.x, arg_1.x), arg_1.x)), arg_1.x, false), arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 650f)) * _wgslsmith_f_op_f32(-972f - -697f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(715f + 679f))), _wgslsmith_f_op_f32(1432f * _wgslsmith_f_op_f32(1556f + -1048f)))));
    let var_2 = firstLeadingBit(_wgslsmith_mod_u32(63963u, ~u_input.d));
    var var_3 = Struct_1(u_input.d, u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1303f * 1000f), -1158f)), _wgslsmith_f_op_f32(floor(-137f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1068f)) - -704f), _wgslsmith_f_op_f32(f32(-1f) * -560f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, -136f, 562f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1491f, 122f, -225f) + vec3<f32>(-254f, -567f, -523f)))))), 4294967295u);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) + 308f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1821f, -1453f, var_3.d.x, -512f) - _wgslsmith_f_op_vec4_f32(sign(var_3.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(192f, var_3.d.x, 1161f, var_3.d.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.x, var_3.c.x, -403f, -419f), vec4<f32>(-1000f, 542f, -1000f, -341f), vec4<bool>(false, var_0.x, false, arg_1.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, -390f, var_3.d.x, _wgslsmith_f_op_f32(trunc(-814f))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3.c.x)), _wgslsmith_f_op_f32(sign(var_3.d.x)), _wgslsmith_f_op_f32(abs(-762f)), -869f))));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, _wgslsmith_sub_i32(u_input.e, -164i), ~u_input.e) >> (((vec3<u32>(20083u, u_input.d, 10927u) & firstTrailingBit(vec3<u32>(arg_0, 55055u, arg_0))) ^ ((vec3<u32>(u_input.d, arg_0, 0u) & vec3<u32>(4294967295u, 1585u, u_input.d)) ^ ~vec3<u32>(4294967295u, u_input.b, u_input.b))) % vec3<u32>(32u)), -vec3<i32>(_wgslsmith_div_i32(-28888i, -1i), ~(~(-2147483647i)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a, 0i)), vec2<i32>(-2147483647i, 51071i))));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(u_input.d << ((u_input.d & u_input.b) % 32u), 11651u, arg_0) << (28914u % 32u), 23549u, _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(30081i, u_input.c | (u_input.e ^ -1i)), vec3<bool>(!(u_input.c <= -5606i), false, true), vec2<u32>(u_input.d, 0u ^ _wgslsmith_add_u32(56471u, u_input.d)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -480f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1316f, 1636f)) * _wgslsmith_f_op_f32(sign(-660f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1537f + -417f)), -1026f), ~(u_input.b & (arg_0 ^ _wgslsmith_sub_u32(arg_0, 0u))));
    let var_2 = Struct_1(20223u, arg_0, _wgslsmith_f_op_vec4_f32(-var_1.c), var_1.d, _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, arg_0, 20872u) | max(vec3<u32>(arg_0, 22190u, 0u), vec3<u32>(var_1.b, 1u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.e, u_input.d, arg_0) | vec3<u32>(52822u, 1u, var_1.e), ~vec3<u32>(arg_0, arg_0, 4294967295u)))));
    let var_3 = 4294967295u;
    var var_4 = 0i;
    return var_0.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.c.yxx);
    var var_1 = all(!arg_0);
    let var_2 = min(~max(~u_input.b, arg_2.e), 0u) >> (~u_input.d % 32u);
    let var_3 = arg_2;
    var var_4 = Struct_1(u_input.b, 861u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(arg_1, -1i), vec3<bool>(true, false, true), vec2<u32>(4294967295u, 0u))).x))), arg_2.c.x, _wgslsmith_f_op_f32(arg_2.d.x * -322f), -149f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c.wxy) * _wgslsmith_f_op_vec3_f32(-arg_2.d))) * vec3<f32>(arg_2.d.x, _wgslsmith_f_op_f32(1487f - -1844f), -451f)), 0u);
    return Struct_1(~(~(~(~1u))), max(~((var_4.b ^ arg_2.a) >> (arg_2.b % 32u)), ~var_2), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, -842f, -953f, var_0.x) * vec4<f32>(-1521f, 677f, var_4.c.x, 774f))), var_3.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.c.x, arg_2.d.x, -130f))), vec3<f32>(440f, var_0.x, var_0.x), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_4.d, var_4.d))))), ~39632u);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(vec2<bool>(false, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), -_wgslsmith_sub_i32(~u_input.c, u_input.a) << (~(~min(4294967295u, u_input.d)) % 32u), func_4(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), any(vec4<bool>(true, false, false, true))), vec2<bool>(true, true), true), ~(-40092i), func_4(vec2<bool>(1892u == arg_0.b, any(vec4<bool>(false, true, true, true))), u_input.e, func_4(vec2<bool>(true, true), u_input.c, Struct_1(arg_0.e, arg_0.e, arg_0.c, arg_0.c.yyz, 22675u)))));
    var var_1 = 2147483647i <= (9178i | u_input.e);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_i32(u_input.c, func_2(0u));
    var var_1 = arg_1;
    var_1 = func_4(vec2<bool>(true, true), _wgslsmith_clamp_i32(1i, firstLeadingBit(-reverseBits(u_input.e)), -(~(~(-20580i)))), Struct_1((arg_0.b >> (~u_input.d % 32u)) | arg_1.a, 18333u, arg_1.c, arg_1.c.zyy, 4294967295u));
    let var_2 = Struct_1(~(~(~1u)), _wgslsmith_dot_vec3_u32(~(~min(vec3<u32>(4175u, 0u, arg_1.a), vec3<u32>(var_1.b, arg_1.b, 15428u))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, u_input.d), vec3<u32>(arg_0.a, arg_0.e, 77280u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(abs(var_1.d.x)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(arg_0.c, var_1.c)), _wgslsmith_f_op_vec4_f32(-arg_0.c))))), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1276f, 1791f, -1599f)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-688f + 1024f) - -596f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1571f))), 733f)), 0u);
    let var_3 = var_1.d.x;
    return all(vec2<bool>(!(u_input.c < 1i), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    var var_0 = arg_2;
    var var_1 = 1u << (u_input.b % 32u);
    var_0 = func_6(func_5(func_4(vec2<bool>(true, all(vec4<bool>(arg_2, false, true, true))), func_2(5799u) | _wgslsmith_add_i32(-3285i, u_input.a), Struct_1(_wgslsmith_div_u32(arg_1.x, 69111u), 7447u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, -1628f, 1409f, -942f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(845f, 1481f, -302f)), _wgslsmith_add_u32(1u, 0u)))), func_5(Struct_1(17564u, ~arg_1.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(492f, 1000f, 653f, 1666f) - vec4<f32>(-362f, 127f, 1241f, 827f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(138f, -333f, -2044f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(476f, -879f, -1529f) + vec3<f32>(778f, 676f, -1826f))), arg_1.x)));
    let var_2 = arg_2;
    var var_3 = 691f;
    return _wgslsmith_div_f32(561f, _wgslsmith_f_op_f32(f32(-1f) * -894f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.b, u_input.d, ~u_input.d, 1u);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1000f, 2321f)), 135f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec2<u32>(var_0.x, 4294967295u) ^ vec2<u32>(4294967295u, 17836u), var_0.www, select(false, false, true))), -576f, !select(true, true, true))));
    var_0 = vec4<u32>(var_0.x, u_input.b, ~abs(u_input.b & 152441u) << (~4294967295u % 32u), var_0.x);
    let var_2 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(16283u, u_input.d, var_0.x), vec3<u32>(u_input.d, 4294967295u, u_input.d)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.yxy, vec3<u32>(u_input.b, var_0.x, u_input.b)), var_0.zzy & var_0.yww)), ~(~var_0.x)), ~11989u, func_5(Struct_1(u_input.b, var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, 1071f, -281f, 458f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 582f, 359f, -370f))), vec3<f32>(_wgslsmith_f_op_f32(136f * -667f), -810f, _wgslsmith_f_op_f32(1000f + -878f)), var_0.x)).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(1i, 1i), !vec3<bool>(var_1, true, true), var_0.yz | vec2<u32>(69176u, u_input.d))).wxz)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, 1771f, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1612f, 318f, -749f))))), ~(_wgslsmith_dot_vec2_u32(var_0.ww, _wgslsmith_mult_vec2_u32(var_0.xy, var_0.zw)) ^ var_0.x));
    let var_3 = -441f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3, -1872f, -572f, _wgslsmith_f_op_f32(step(func_5(Struct_1(var_2.b, 1u, vec4<f32>(1524f, var_2.c.x, var_2.d.x, -199f), var_2.d, 0u)).d.x, var_2.c.x))), vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), ~max(0u, firstTrailingBit(68960u)), var_0.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.x, abs(u_input.b)), ~(var_2.a | var_2.a), (4294967295u & var_2.e) >> (var_2.b % 32u))), u_input.c, -vec4<i32>(1i, u_input.a << (u_input.d % 32u), -6201i, -u_input.a) << (~reverseBits(vec4<u32>(var_2.e, 9463u, 4294967295u, 27087u)) % vec4<u32>(32u)));
}

