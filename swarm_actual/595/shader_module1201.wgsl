struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    return Struct_1(vec2<bool>(false, select(true, -24498i < ~u_input.a.x, true)), true, _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>((-2147483647i >> (u_input.b % 32u)) | -u_input.a.x, -(i32(-1i) * -17356i), u_input.a.x), ~(-vec3<i32>(29970i, 2147483647i, 1i))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = func_2(_wgslsmith_mod_i32(u_input.a.x, arg_0.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1151f, 486f, 1042f), vec3<f32>(-155f, 642f, -2474f)))))));
    var var_1 = Struct_1(arg_0.a, all(select(vec3<bool>(func_2(arg_1.c.x, vec3<f32>(162f, -1790f, -1000f)).a.x, true, true), vec3<bool>(true, arg_1.a.x || true, !var_0.a.x), !select(vec3<bool>(arg_0.b, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_0.b, var_0.a.x, true), vec3<bool>(false, arg_0.b, true)))), -vec3<i32>(reverseBits(_wgslsmith_div_i32(u_input.a.x, arg_0.c.x)), u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 1i, -25589i, var_0.c.x), vec4<i32>(-5479i, 11637i, 43220i, arg_0.c.x) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))));
    let var_2 = func_2(arg_0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(1000f, -1276f, arg_0.a.x)), _wgslsmith_f_op_f32(-689f - 669f), -212f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1028f, -1248f, 516f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(753f, -670f, 1671f))))));
    var var_3 = min(vec4<i32>(var_0.c.x, arg_1.c.x, _wgslsmith_sub_i32(2147483647i ^ _wgslsmith_div_i32(var_1.c.x, u_input.a.x), var_0.c.x), -21049i), vec4<i32>(func_2(var_2.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-677f, 460f, 374f))).c.x, ~((var_0.c.x >> (u_input.b % 32u)) & (2147483647i ^ var_0.c.x)), abs(~(-arg_1.c.x)), func_2(reverseBits(0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(247f, 1176f, 2027f), vec3<f32>(280f, -1144f, -373f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(966f, 1671f, 2704f) - vec3<f32>(900f, 829f, -1002f)))).c.x));
    var_0 = func_2(-1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(370f, _wgslsmith_f_op_f32(min(-323f, 1847f)), 1f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), 1f, _wgslsmith_f_op_f32(-177f - _wgslsmith_div_f32(1484f, 439f)))));
    return u_input.b;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2065f));
    var var_1 = arg_3.a.x;
    let var_2 = u_input.a.yz | _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.a.xy, _wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(19142i, -36708i)) ^ vec2<i32>(arg_3.c.x, arg_3.c.x)), _wgslsmith_mod_vec2_i32(arg_3.c.zz, ~vec2<i32>(1i, 1i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 973f, arg_2)))))));
    var var_4 = vec3<bool>(true, !any(vec4<bool>(arg_3.b, arg_3.a.x, true, !arg_3.a.x)), arg_3.b || !(_wgslsmith_f_op_f32(var_3.x * arg_2) != _wgslsmith_f_op_f32(-403f * arg_2)));
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = any(vec2<bool>(true, false)) && (5857i <= func_2(min(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(u_input.a.x, arg_2.x, u_input.a.x, 0i)), 2147483647i), arg_1.yxy).c.x);
    var var_1 = _wgslsmith_f_op_f32(-1f);
    return Struct_1(!vec2<bool>(var_0, true), !(!all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), false))), _wgslsmith_div_vec3_i32(max(vec3<i32>(2147483647i, 1i, arg_2.x) & (u_input.a << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), u_input.a), vec3<i32>(u_input.a.x & -1137i, arg_2.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-4967i, u_input.a.x, arg_2.x)) | -39502i)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(Struct_1(vec2<bool>(true, true), false, vec3<i32>(-24821i, u_input.a.x, u_input.a.x)), func_2(0i, vec3<f32>(1015f, 2097f, -1201f))), ~_wgslsmith_sub_i32(0i, u_input.a.x), _wgslsmith_f_op_f32(1f + 254f), func_2(_wgslsmith_mult_i32(1i, u_input.a.x), vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_f32(trunc(-246f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-802f, -402f, -1070f, 1528f), vec4<f32>(-1000f, -1136f, 151f, -1767f))))), ~(-vec4<i32>(-u_input.a.x, ~(-1i), firstTrailingBit(u_input.a.x), u_input.a.x | -20268i)), ~(~(~(vec4<u32>(1u, u_input.b, 0u, u_input.b) & vec4<u32>(19902u, u_input.b, 26431u, 74520u)))));
    let var_1 = 1u;
    var_0 = func_2(~u_input.a.x, vec3<f32>(-1826f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f * -1605f) + -1612f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(717f, _wgslsmith_f_op_f32(-234f * -684f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-582f, -2767f))), _wgslsmith_f_op_f32(670f + _wgslsmith_f_op_f32(floor(-916f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2074f, -838f)) - 1000f))));
    let var_3 = func_2(~(-var_0.c.x), _wgslsmith_f_op_vec3_f32(ceil(var_2.yxx)));
    return Struct_1(func_2(-45440i, _wgslsmith_f_op_vec3_f32(abs(var_2.zyy))).a, u_input.b >= ~16724u, firstLeadingBit(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c.x, 26687i, var_0.c.x), vec3<i32>(24045i, 72906i, var_3.c.x)), -1i, select(2147483647i, -1i, var_3.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = func_5(_wgslsmith_f_op_f32(trunc(-467f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-551f, -373f, -476f, 1776f))), vec4<f32>(490f, -534f, 617f, -1000f), true)))), vec4<i32>(var_0.c.x, 2147483647i << (u_input.b % 32u), 2147483647i, ~(-16402i)), ~min(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1436u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec4<u32>(~u_input.b, ~3045u, _wgslsmith_mult_u32(34939u, 42438u), 1u << (u_input.b % 32u))));
    let var_2 = !(!var_1.a);
    var_0 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(277f * _wgslsmith_div_f32(553f, -1000f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))))), firstTrailingBit(min(_wgslsmith_mult_vec4_i32(vec4<i32>(7123i, u_input.a.x, var_1.c.x, 2147483647i), vec4<i32>(u_input.a.x, var_1.c.x, -1i, u_input.a.x)) & firstLeadingBit(vec4<i32>(-2147483647i, var_1.c.x, -9964i, 1i)), vec4<i32>(~u_input.a.x, 0i, -20626i, var_0.c.x))), min(vec4<u32>(~40131u, u_input.b, 1u, abs(u_input.b)), vec4<u32>(u_input.b, u_input.b, ~4294967295u, 0u)));
    var var_3 = -1032f;
    var var_4 = ~(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.c.x, -var_0.c.x), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, min(u_input.b, countOneBits(4294967295u)), 25946u, 42704u), ~firstLeadingBit(firstLeadingBit(~vec3<u32>(u_input.b, u_input.b, 43111u))), ~86077u);
}

