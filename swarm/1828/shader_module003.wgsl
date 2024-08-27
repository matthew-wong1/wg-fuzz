struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_2.a.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1001f, _wgslsmith_f_op_f32(f32(-1f) * -780f))));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> i32 {
    let var_0 = true;
    var var_1 = 472f;
    let var_2 = _wgslsmith_add_i32((firstTrailingBit(~7591i) | ~(arg_0.x << (u_input.a % 32u))) | arg_1, select(arg_3 & 1i, _wgslsmith_clamp_i32(arg_3, arg_3, 19817i), false));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1377f) * arg_2.x), arg_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-595f)) - -1602f)));
    let var_3 = u_input.b.x >> (u_input.a % 32u);
    return _wgslsmith_div_i32(-57929i & abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -arg_3)), arg_0.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_1(-2147483647i);
    let var_1 = Struct_3(Struct_2(arg_0.a, vec2<u32>(0u, 0u | (19339u << (arg_1.b.x % 32u)))));
    let var_2 = Struct_1(func_4(-abs(vec2<i32>(arg_3.x, var_0.a)) & countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1249i, u_input.c), u_input.b.xw)), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, 36838i), vec3<i32>(-2147483647i, 94064i, -4836i)), vec3<i32>(~arg_3.x, reverseBits(arg_3.x), ~2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-344f)) - _wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, 49710i), Struct_2(var_1.a.a, vec2<u32>(arg_0.b.x, 4294967295u)), var_1, var_0))), 1002f, _wgslsmith_f_op_f32(func_3(vec2<i32>(-2147483647i, var_0.a), Struct_2(vec3<f32>(-1153f, 209f, 183f), arg_1.b), Struct_3(var_1.a), Struct_1(u_input.c)))), -_wgslsmith_mult_i32(arg_3.x ^ 0i, countOneBits(-1i))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_1.a.x, 2333f) + vec3<f32>(arg_1.a.x, arg_0.a.x, 1035f)))), arg_0.b | arg_1.b));
    var var_4 = _wgslsmith_mod_u32(var_3.a.b.x, ~countOneBits(_wgslsmith_sub_u32(42190u, var_3.a.b.x)));
    return select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, true)), vec3<bool>(true, true, arg_0.a.x < -1061f), ~arg_2.x != _wgslsmith_add_i32(-17032i, var_0.a)), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), !vec3<bool>(true, any(vec3<bool>(false, false, true)), false), vec3<bool>(true, true, true));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = !select(!select(func_2(Struct_2(vec3<f32>(1000f, -1286f, 415f), vec2<u32>(arg_0, arg_0)), Struct_2(vec3<f32>(100f, arg_1.x, arg_1.x), vec2<u32>(arg_0, u_input.a)), u_input.b, u_input.b).zz, vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2)), vec2<bool>(!arg_2 || arg_2, any(vec2<bool>(arg_2, false)) | (u_input.c > 5787i)), !(!select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, true), vec2<bool>(true, arg_2))));
    let var_1 = vec3<i32>(u_input.c << (min(u_input.a, select(_wgslsmith_mod_u32(37385u, u_input.a), 50097u, false)) % 32u), -_wgslsmith_mod_i32(~_wgslsmith_mult_i32(u_input.e.x, u_input.d), 15377i), -select(-2147483647i, _wgslsmith_mod_i32(~1i, ~u_input.d), all(!vec2<bool>(arg_2, arg_2))));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, 1522f, -587f)), !vec3<bool>(var_0.x, var_0.x, true))))), vec2<u32>(37979u, ~reverseBits(u_input.a))));
    let var_3 = min(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, var_2.a.b.x, var_2.a.b.x), select(vec4<u32>(1u, var_2.a.b.x, u_input.a, 71530u), vec4<u32>(0u, 1u, 1u, arg_0), false)), ~_wgslsmith_div_u32(u_input.a ^ 88926u, 31954u), 4294967295u), vec3<u32>(153756u, var_2.a.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_2.a.b), ~vec2<u32>(22779u, var_2.a.b.x)), 0u)));
    var var_4 = ~74701u;
    return Struct_1(~u_input.b.x);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = u_input.e.x;
    var var_2 = arg_1;
    var_2 = func_5(~(~(~32902u)) & _wgslsmith_clamp_u32(u_input.a, min(21799u, 85193u), _wgslsmith_mod_u32(u_input.a >> (u_input.a % 32u), ~4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), 688f), any(vec4<bool>(!any(vec2<bool>(true, arg_0)), !arg_0 || arg_0, all(vec2<bool>(true, true)), func_2(Struct_2(vec3<f32>(-1213f, -191f, 136f), vec2<u32>(30340u, 4294967295u)), Struct_2(vec3<f32>(-1667f, 621f, -321f), vec2<u32>(u_input.a, 48815u)), u_input.b, -u_input.b).x)));
    var_1 = u_input.b.x;
    return func_5(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 104f)) - _wgslsmith_div_vec2_f32(vec2<f32>(407f, 454f), vec2<f32>(338f, -596f))))), 329f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2302f))) * _wgslsmith_f_op_f32(select(-1586f, _wgslsmith_f_op_f32(func_3(vec2<i32>(var_2.a, u_input.e.x), Struct_2(vec3<f32>(-458f, -503f, -1776f), vec2<u32>(6126u, u_input.a)), Struct_3(Struct_2(vec3<f32>(-697f, 1078f, -554f), vec2<u32>(arg_2, arg_2))), arg_1)), arg_0))));
}

fn func_1(arg_0: vec2<f32>) -> vec4<u32> {
    var var_0 = func_6(false, func_5(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-564f, 1429f)))), select(any(func_2(Struct_2(vec3<f32>(2188f, -1117f, arg_0.x), vec2<u32>(22387u, u_input.a)), Struct_2(vec3<f32>(1284f, arg_0.x, -1222f), vec2<u32>(68255u, u_input.a)), vec4<i32>(u_input.e.x, 1i, u_input.d, u_input.d), u_input.b)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true)), 4294967295u);
    let var_1 = ~select(~vec3<u32>(15937u, 1574u, _wgslsmith_add_u32(14635u, u_input.a)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 46378u, u_input.a), vec3<u32>(1u, 5890u, 62128u)) | ~vec3<u32>(27454u, 94840u, u_input.a)), vec3<bool>(true, true, ~u_input.a > ~1u));
    var var_2 = func_6(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 376f)) * vec3<f32>(-133f, arg_0.x, 921f)), vec2<u32>(4294967295u, 4294967295u | u_input.a)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-320f, arg_0.x, arg_0.x) - vec3<f32>(1534f, arg_0.x, 1069f))), firstLeadingBit(var_1.zy)), vec4<i32>(u_input.d, var_0.a, 70743i | u_input.d, ~var_0.a), vec4<i32>(reverseBits(func_6(false, Struct_1(60514i), 12548u).a), -2147483647i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -var_0.a), _wgslsmith_mult_i32(1i, min(u_input.e.x, -2147483647i)))).x, func_6(!(10002i > var_0.a), Struct_1(firstLeadingBit(max(var_0.a, 25957i))), 0u << (countOneBits(u_input.a ^ 4294967295u) % 32u)), _wgslsmith_add_u32(max(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), vec4<u32>(18725u, u_input.a, 51189u, 83954u))), 4294967295u));
    var_2 = Struct_1(var_2.a);
    var_0 = func_6(all(vec2<bool>(true, true)), func_5(_wgslsmith_mod_u32(~(~11825u), firstLeadingBit(abs(var_1.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-550f, arg_0.x))), true), var_1.x);
    return ~_wgslsmith_clamp_vec4_u32(~(~(vec4<u32>(u_input.a, u_input.a, u_input.a, var_1.x) << (vec4<u32>(13376u, var_1.x, 0u, 1171u) % vec4<u32>(32u)))), vec4<u32>(0u, 1u, max(54165u, 9118u), ~u_input.a) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(382u, 4294967295u, u_input.a, 29913u), vec4<u32>(u_input.a, 4294967295u, var_1.x, var_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(19450u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 106061u, 1u))) % vec4<u32>(32u)), ~vec4<u32>(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 3030u, var_1.x, var_1.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 13783u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.x, var_1.x, u_input.a), vec4<u32>(4294967295u, 4747u, var_1.x, 2087u)), 25292u));
}

fn func_7(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: f32) -> vec4<u32> {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_add_i32(firstTrailingBit(u_input.d), u_input.c) >> ((~arg_0.x | 1828u) % 32u);
    var var_2 = Struct_1(u_input.e.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1972f, -124f, -667f) - vec3<f32>(-220f, arg_3, -735f))))))), arg_0.ww);
    var_0 = -u_input.e.x;
    return vec4<u32>(_wgslsmith_clamp_u32(1u, ~4294967295u, var_3.b.x), 2324u, _wgslsmith_dot_vec3_u32(~(~arg_0.wxw), _wgslsmith_div_vec3_u32(vec3<u32>(13386u, 0u, 0u), arg_0.xww) & vec3<u32>(select(42129u, 4089u, true), _wgslsmith_sub_u32(12389u, arg_0.x), var_3.b.x)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, var_3.b.x, arg_0.x, 43454u), arg_0), 1u) | _wgslsmith_add_u32(select(var_3.b.x, arg_0.x, all(vec2<bool>(arg_1, arg_1))), max(4294967295u & u_input.a, var_3.b.x)));
}

fn func_8(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<f32>) -> StorageBuffer {
    let var_0 = u_input.a;
    var var_1 = false;
    var_1 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, -1440f) * vec3<f32>(arg_3.x, -535f, arg_3.x))))), abs(max(vec2<u32>(arg_1.x, 1u) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), ~vec2<u32>(6721u, arg_1.x)))), Struct_2(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), vec2<u32>(4294967295u, arg_1.x & var_0)), vec4<i32>(-_wgslsmith_div_i32(func_4(vec2<i32>(42261i, -67646i), -26168i, vec3<f32>(arg_3.x, arg_3.x, arg_3.x), u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -24972i, arg_2), u_input.b)), arg_2, u_input.e.x, 0i), vec4<i32>(_wgslsmith_mod_i32(~arg_2, u_input.b.x), -u_input.c, ~15069i, ~u_input.c)).x;
    var var_2 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_3.x)), -1665f), ~vec2<u32>(_wgslsmith_mod_u32(1u, var_0), ~0u)));
    let var_3 = ~abs(vec4<i32>(arg_0.a, max(u_input.b.x, u_input.c), firstTrailingBit(~2147483647i), u_input.e.x));
    return StorageBuffer(var_3.x, var_2.a.a.x, vec2<i32>(_wgslsmith_mult_i32(reverseBits(-u_input.e.x), _wgslsmith_clamp_i32(~(-1i), _wgslsmith_clamp_i32(-15380i, -30496i, arg_0.a), var_3.x)), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(450f, 1065f, 309f, -956f), vec4<f32>(-318f, -301f, -1297f, 1758f))))))));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(-5036i, u_input.e.x), ~28372i, _wgslsmith_add_i32(-2147483647i, 2147483647i & u_input.c)) << (4294967295u % 32u));
    let x = u_input.a;
    s_output = func_8(Struct_1(-30456i), ~func_7(func_1(vec2<f32>(var_0.x, -1497f)) | ~vec4<u32>(9810u, 0u, u_input.a, 1u), !any(vec2<bool>(false, true)), !func_2(Struct_2(var_0.zxy, vec2<u32>(u_input.a, u_input.a)), Struct_2(vec3<f32>(925f, var_0.x, -835f), vec2<u32>(30602u, u_input.a)), u_input.b, vec4<i32>(u_input.c, u_input.c, 0i, -59718i)).x, _wgslsmith_f_op_f32(-578f + var_0.x)), u_input.d, vec2<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x));
}

