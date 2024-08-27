struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    var var_0 = arg_2.c;
    var var_1 = arg_2.b;
    var var_2 = false;
    var_2 = true;
    var_2 = -8246i <= ~((-15022i >> (u_input.a % 32u)) << (countOneBits(_wgslsmith_mod_u32(1u, 46996u)) % 32u));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1388f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.b, 486f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.d.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.b.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.d.b.x))), 1573f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = 1f;
    var_0 = 1000f;
    return Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-885f, -516f, 1176f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -431f, -1200f), vec3<f32>(-1011f, -993f, 427f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1153f, 1299f, 1244f)) * _wgslsmith_f_op_vec3_f32(func_2(arg_1.x, vec4<bool>(false, false, true, arg_1.x), Struct_2(arg_0, -605f, -24794i, Struct_1(arg_1.x, vec3<f32>(1828f, 873f, -234f), arg_1.x)), arg_1.x))), vec3<f32>(-236f, _wgslsmith_f_op_f32(select(1079f, 1492f, arg_1.x)), _wgslsmith_f_op_f32(-982f * -1667f)), arg_1.x)), all(!vec2<bool>(arg_1.x, arg_1.x)))), Struct_2(firstTrailingBit(arg_0 ^ arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f * -1000f))), ~_wgslsmith_sub_i32(abs(-1i), i32(-1i) * -32939i), Struct_1(!(false && arg_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, 1030f, -1394f)) * vec3<f32>(-1108f, 1000f, -537f)), any(!vec4<bool>(true, arg_1.x, true, false)))), Struct_1(_wgslsmith_sub_u32(arg_0.x, u_input.a & 80052u) > _wgslsmith_dot_vec3_u32(arg_0.zyw, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.b.x), arg_0.zyx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-687f, -952f, -1205f), vec3<f32>(-1511f, 2311f, 1521f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(699f, -425f, -681f) + vec3<f32>(152f, 2178f, -611f)))), (all(vec4<bool>(true, false, true, true)) & false) || true));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = 1u;
    let var_1 = arg_1.b.d.c;
    let var_2 = Struct_4(func_1(countOneBits(vec4<u32>(arg_0.x, var_0, 0u, arg_1.b.a.x)) << (~arg_1.b.a % vec4<u32>(32u)), vec3<bool>(arg_1.c.c, var_1 & (-708f < arg_1.c.b.x), var_1)).b, func_1(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 54365u), vec4<u32>(arg_2.x, 0u, 110343u, 33523u)), min(arg_1.b.a, vec4<u32>(arg_0.x, 58120u, 1u, var_0))), !(!(!vec3<bool>(var_1, arg_1.b.d.a, var_1)))).c);
    var var_3 = countOneBits(66185u);
    let var_4 = Struct_5(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(11241u, 23014u), vec2<u32>(arg_1.b.a.x, 98986u)), vec2<u32>(var_0, 0u)), vec2<u32>(0u, 1u)) << (u_input.a % 32u));
    return func_1(_wgslsmith_div_vec4_u32(firstTrailingBit(~firstTrailingBit(vec4<u32>(4294967295u, var_2.a.a.x, 0u, u_input.b.x))), min(vec4<u32>(0u, var_0, 5917u, arg_2.x), var_2.a.a) | max(~var_2.a.a, arg_1.b.a ^ var_2.a.a)), !vec3<bool>(all(vec2<bool>(false, true)) | true, any(vec3<bool>(arg_1.b.d.c, var_1, arg_1.c.a)) || var_2.b.c, all(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_1.c.c, false), vec3<bool>(false, false, false)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(-828f + 1857f), _wgslsmith_f_op_f32(trunc(-1000f)))))), func_5(func_4(~(~vec2<u32>(u_input.a, 46124u)), func_1(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(false, true, false)), abs(u_input.b | u_input.b)), Struct_1(true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, -921f, 845f) - vec3<f32>(-1999f, -842f, -749f)), _wgslsmith_div_vec3_f32(vec3<f32>(494f, -253f, -1225f), vec3<f32>(169f, 173f, -1000f))), ~u_input.b.x < u_input.b.x), _wgslsmith_f_op_f32(1004f + -378f), func_4(u_input.b.yx, Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, 585f, 686f) * vec3<f32>(-237f, -126f, -777f)), func_1(vec4<u32>(4294967295u, u_input.a, 0u, u_input.b.x), vec3<bool>(true, false, true)).b, Struct_1(false, vec3<f32>(1849f, -753f, 1000f), false)), u_input.b)), Struct_1(select(true, false, any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec3<f32>(1f, 1f, 1f), (true & (u_input.b.x >= 0u)) || !all(vec3<bool>(true, false, true))));
    var var_1 = 542f;
    var var_2 = Struct_4(Struct_2(var_0.b.a | vec4<u32>(var_0.b.a.x, var_0.b.a.x ^ var_0.b.a.x, u_input.b.x, 4294967295u), _wgslsmith_f_op_f32(var_0.b.d.b.x + var_0.b.b), var_0.b.c, func_1(max(_wgslsmith_sub_vec4_u32(vec4<u32>(27145u, var_0.b.a.x, u_input.b.x, 39336u), vec4<u32>(0u, 11131u, u_input.a, u_input.b.x)), var_0.b.a), select(select(vec3<bool>(var_0.c.c, false, var_0.b.d.a), vec3<bool>(var_0.b.d.c, false, true), false), vec3<bool>(var_0.b.d.a, true, false), false)).c), func_5(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, var_0.b.d.b.x, 138f)), var_0.b, Struct_1(true, var_0.b.d.b, u_input.b.x < u_input.a)), var_0.b.d, -365f, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, 1000f, -283f)), Struct_2(vec4<u32>(var_0.b.a.x, 4294967295u, 46799u, 1u) ^ var_0.b.a, -820f, ~1i, Struct_1(true, var_0.a, var_0.c.a)), Struct_1(func_4(var_0.b.a.yw, Struct_3(var_0.b.d.b, var_0.b, Struct_1(true, var_0.b.d.b, true)), var_0.b.a.yxx).c.c, _wgslsmith_f_op_vec3_f32(max(var_0.c.b, var_0.b.d.b)), var_0.c.c))).d);
    let var_3 = vec2<i32>(func_5(func_1(func_1(vec4<u32>(u_input.b.x, var_0.b.a.x, var_2.a.a.x, 4294967295u), !vec3<bool>(var_0.c.a, var_2.b.a, true)).b.a, select(vec3<bool>(true, var_2.b.c, true), select(vec3<bool>(var_0.c.a, false, var_0.c.a), vec3<bool>(var_0.c.c, true, true), vec3<bool>(var_2.b.c, true, var_2.b.a)), vec3<bool>(true, false, var_0.b.d.c))), Struct_1(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(true, vec4<bool>(var_2.b.a, false, var_2.b.c, true), Struct_2(vec4<u32>(0u, 63092u, u_input.a, u_input.b.x), var_0.a.x, -1i, Struct_1(false, var_0.a, false)), false)), vec3<f32>(-988f, var_2.a.d.b.x, 1079f), func_5(Struct_3(var_0.a, Struct_2(var_0.b.a, var_2.a.b, 41676i, Struct_1(var_0.c.a, vec3<f32>(var_2.b.b.x, var_0.c.b.x, 1196f), false)), Struct_1(false, vec3<f32>(var_0.c.b.x, 475f, var_0.b.b), true)), var_0.c, var_0.a.x, Struct_3(vec3<f32>(-1482f, var_0.a.x, -1000f), Struct_2(var_0.b.a, var_2.b.b.x, var_0.b.c, var_2.b), var_2.a.d)).d.c)), true), 921f, func_1(_wgslsmith_mult_vec4_u32(~var_0.b.a, ~vec4<u32>(4294967295u, 17494u, var_2.a.a.x, u_input.a)), select(!vec3<bool>(var_0.b.d.a, false, true), vec3<bool>(true, true, var_2.b.a), vec3<bool>(var_0.c.c, false, false)))).c, func_1(var_2.a.a, !vec3<bool>(var_2.a.a.x != 1395u, true, var_2.b.a)).b.c);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 1f), var_0.a.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_2.a.d.b.x)) * -567f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.b.x))), (false || var_2.a.d.c) || false))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1346f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_2.a.d.b.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1770f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(all(vec3<bool>(var_2.b.a, false, var_2.b.a)), !vec4<bool>(false, var_0.c.a, true, var_2.a.d.a), var_2.a, !var_2.b.a)).x))));
    var_2 = Struct_4(Struct_2(vec4<u32>(~min(33013u, 32801u), ~1u, firstTrailingBit(func_1(vec4<u32>(var_2.a.a.x, var_2.a.a.x, u_input.a, var_0.b.a.x), vec3<bool>(var_2.a.d.a, var_2.a.d.a, false)).b.a.x), var_0.b.a.x), var_0.b.b, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-8721i, -3406i, -2147483647i) << (u_input.b % vec3<u32>(32u)), vec3<i32>(-2147483647i, var_2.a.c, var_2.a.c), -vec3<i32>(2147483647i, 71557i, -2147483647i)), vec3<i32>(var_2.a.c, firstTrailingBit(507i), var_2.a.c)), Struct_1(all(vec3<bool>(true, var_2.b.c, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, 1026f, 2812f))), var_2.a.d.a)), func_1(vec4<u32>(_wgslsmith_div_u32(var_2.a.a.x, ~4294967295u), 0u, ~(~u_input.a), var_2.a.a.x), vec3<bool>(!(var_2.a.d.c & var_2.b.c), var_0.b.d.c, any(!vec2<bool>(var_2.b.c, true)))).b.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_0.b.a.x, var_0.b.a.x), func_1(~vec4<u32>(_wgslsmith_div_u32(var_2.a.a.x, var_2.a.a.x), ~u_input.a, 31424u, var_2.a.a.x), vec3<bool>(any(vec2<bool>(true, true)), true, var_0.c.c)).b.c, ~vec4<u32>(func_1(var_2.a.a, vec3<bool>(var_0.c.c, false, var_2.b.c)).b.a.x >> (79568u % 32u), _wgslsmith_dot_vec3_u32(var_0.b.a.xxz, vec3<u32>(4294967295u, u_input.b.x, var_0.b.a.x)), var_0.b.a.x, abs(var_0.b.a.x)), var_2.a.c, var_0.a);
}

