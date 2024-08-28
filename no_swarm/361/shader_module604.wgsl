struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_mod_vec2_i32(select(-vec2<i32>(arg_1.x << (arg_0.e % 32u), abs(-1i)), vec2<i32>(-_wgslsmith_clamp_i32(u_input.a, 0i, -4582i), -select(arg_1.x, -2147483647i, true)), select(vec2<bool>(arg_0.b.b.b.x == -18074i, select(true, true, false)), select(select(vec2<bool>(false, true), arg_0.b.e.d.wx, true), arg_0.c.d.wx, select(vec2<bool>(arg_0.b.b.a, arg_0.b.e.d.x), arg_0.c.d.xx, true)), true)), min(arg_1, vec2<i32>(~(-arg_0.b.e.b.x), min(-arg_0.b.e.b.x, 1504i))));
    let var_1 = Struct_1(arg_0.b.e.a, countOneBits(countOneBits(reverseBits(vec3<i32>(var_0.x, var_0.x, -2147483647i)))) ^ max(firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.d, arg_0.c.b)), vec3<i32>(var_0.x, -2147483647i, 41732i) ^ vec3<i32>(arg_0.b.c.b.x, u_input.a, -20775i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-736f, -1836f, 645f, -105f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(344f)), arg_0.a.x, false)), _wgslsmith_f_op_f32(max(-743f, _wgslsmith_f_op_f32(max(-675f, arg_0.c.c.x)))))), !arg_0.c.d);
    let var_2 = 930f;
    var var_3 = Struct_3(vec2<f32>(var_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 3158f), -636f)), _wgslsmith_div_f32(742f, _wgslsmith_f_op_f32(-var_1.c.x))))), _wgslsmith_div_i32(66550i, ~_wgslsmith_sub_i32(var_1.b.x, arg_0.c.b.x)) >> (arg_2.x % 32u), arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(481f + 416f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + 559f)) * arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(floor(-251f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(var_2 * -1200f)))));
    var var_4 = vec2<i32>(-1i, min(1i, firstTrailingBit(36418i)));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = 4294967295u;
    var var_1 = 1u;
    let var_2 = Struct_4(vec4<f32>(-716f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(757f, -173f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-123f, _wgslsmith_f_op_f32(min(468f, 1068f)))), _wgslsmith_f_op_f32(-1196f + _wgslsmith_f_op_f32(f32(-1f) * -1753f))), -302f), Struct_2(Struct_1(func_3(Struct_4(vec4<f32>(699f, 1273f, 523f, 611f), Struct_2(Struct_1(arg_1.x, vec3<i32>(21478i, -38737i, -45211i), vec4<f32>(-259f, 460f, 511f, 1101f), vec4<bool>(false, arg_0.x, arg_0.x, arg_1.x)), Struct_1(false, u_input.d, vec4<f32>(106f, -1735f, -1293f, -1000f), vec4<bool>(false, arg_1.x, arg_1.x, true)), Struct_1(false, vec3<i32>(0i, u_input.d.x, 2147483647i), vec4<f32>(143f, -1000f, -445f, -756f), vec4<bool>(true, arg_1.x, true, arg_1.x)), 4294967295u, Struct_1(arg_0.x, u_input.d, vec4<f32>(-558f, 669f, 961f, 292f), vec4<bool>(arg_1.x, arg_0.x, arg_1.x, arg_1.x))), Struct_1(true, u_input.d, vec4<f32>(1318f, 1116f, -1000f, -499f), vec4<bool>(arg_0.x, false, false, arg_1.x)), vec3<u32>(var_0, 4294967295u, u_input.c.x), u_input.e.x), vec2<i32>(12121i, 1i), vec3<u32>(u_input.c.x, u_input.e.x, 26135u)), u_input.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1361f, 1244f, -468f, -1350f), vec4<f32>(-596f, -131f, -1000f, -1410f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -572f, 429f, 1000f)))), select(vec4<bool>(arg_0.x, arg_1.x, arg_0.x, arg_1.x), select(vec4<bool>(false, arg_1.x, arg_0.x, arg_0.x), vec4<bool>(arg_1.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, true, true)), !vec4<bool>(arg_1.x, arg_1.x, arg_0.x, false))), Struct_1(true, vec3<i32>(-1i, u_input.a << (var_0 % 32u), -64976i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1260f, -1018f, -1593f, -656f))))), vec4<bool>(false & arg_0.x, all(vec4<bool>(arg_1.x, arg_1.x, false, true)), u_input.e.x <= var_0, true)), Struct_1(any(vec3<bool>(true, false, true)), abs(~u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 672f, 703f, 478f)))), !vec4<bool>(arg_0.x, true, true, arg_0.x)), firstTrailingBit(~min(var_0, u_input.c.x)), Struct_1(true, u_input.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-340f, 777f, -950f, 266f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-291f, -593f, -955f, -238f))), vec4<bool>(false, arg_0.x, arg_0.x, false))), vec4<bool>(true, true, true, true))), Struct_1(arg_0.x, vec3<i32>(1i, 1i ^ u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.d.x, 1i) | vec4<i32>(-20108i, -61266i, u_input.a, -48068i), vec4<i32>(u_input.d.x, 2147483647i, 1i, -23680i))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1030f, -517f, -1000f, -115f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1165f, 286f, -1405f, -1081f)))))), vec4<bool>(true, any(vec2<bool>(arg_1.x, false)), arg_1.x, select(false, false, true))), _wgslsmith_add_vec3_u32(u_input.c.ywy, vec3<u32>(u_input.e.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 48419u), 0u), firstLeadingBit(18750u))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(39856u, var_0, u_input.c.x), countOneBits(_wgslsmith_add_u32(4294967295u, var_0))) ^ 0u);
    let var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.c.x, -1689f) * var_2.b.c.c.yy), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(113f, var_2.c.c.x)))))), var_2.a.wy), ~(-_wgslsmith_div_i32(-1i, u_input.a)), Struct_1(var_2.b.c.a, ~abs(vec3<i32>(u_input.a, 15976i, -34392i)) >> (var_2.d % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(249f, var_2.b.c.c.x, var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec4_f32(exp2(var_2.b.b.c)), !vec4<bool>(var_2.b.c.a, false, arg_0.x, true))), var_2.c.c)), var_2.b.c.d), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.b.a.c.x * _wgslsmith_f_op_f32(var_2.a.x + 219f)), 880f, var_2.b.a.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.c.x, var_2.a.x, -1593f, var_2.b.a.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1316f, var_2.c.c.x, var_2.b.b.c.x))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.c.c))))));
    var var_4 = !any(var_3.c.d.xww);
    return Struct_3(var_2.a.xx, _wgslsmith_mod_i32(var_2.c.b.x & var_2.b.e.b.x, var_2.c.b.x), var_3.c, vec4<f32>(-415f, 651f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_3.a.x)), _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(var_2.a.x * var_2.b.a.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.d.x)) - _wgslsmith_f_op_f32(var_3.a.x * -882f)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: u32) -> vec2<i32> {
    let var_0 = func_2(vec2<bool>(!all(vec4<bool>(arg_1.b.a.a, arg_1.c.d.x, arg_1.b.c.d.x, arg_1.c.a)), arg_1.c.a), vec2<bool>(arg_1.b.a.a, true));
    var var_1 = !func_2(vec2<bool>(func_2(vec2<bool>(true, arg_1.b.a.d.x), vec2<bool>(true, true)).c.d.x, true), arg_1.c.d.zz).c.d.xwy;
    let var_2 = arg_1;
    var var_3 = max(abs(_wgslsmith_mult_vec2_i32(abs(firstLeadingBit(vec2<i32>(var_0.c.b.x, u_input.d.x))), vec2<i32>(-1i) * -var_2.c.b.xz)), reverseBits(vec2<i32>(~firstLeadingBit(-12442i), var_0.b)));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.a.c.zw), _wgslsmith_f_op_vec2_f32(trunc(arg_0)))), ~reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.a.b.x, -27170i, var_2.b.b.b.x), vec3<i32>(26554i, 0i, -5471i))), var_2.c, _wgslsmith_div_vec4_f32(vec4<f32>(1502f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-102f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b.a.c * vec4<f32>(arg_1.a.x, arg_1.b.b.c.x, -282f, arg_1.b.b.c.x)) + _wgslsmith_f_op_vec4_f32(step(var_2.b.c.c, arg_1.a))))));
    return min(u_input.d.yz, var_4.c.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = min(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(abs(-vec2<i32>(-2147483647i, u_input.a)), ~u_input.d.zx), -func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-223f, -1834f), vec2<f32>(-1047f, -1000f)), Struct_4(vec4<f32>(2066f, 1051f, -265f, -1000f), Struct_2(Struct_1(false, u_input.d, vec4<f32>(-707f, 226f, 586f, 444f), vec4<bool>(false, false, true, false)), Struct_1(true, vec3<i32>(u_input.d.x, u_input.d.x, u_input.a), vec4<f32>(311f, 1000f, 471f, 1067f), vec4<bool>(true, true, false, true)), Struct_1(true, vec3<i32>(-20422i, -1i, -2147483647i), vec4<f32>(1993f, 3147f, -988f, 212f), vec4<bool>(true, false, true, true)), u_input.b, Struct_1(false, u_input.d, vec4<f32>(-566f, -1093f, -1203f, 1021f), vec4<bool>(false, true, false, true))), Struct_1(false, vec3<i32>(1i, u_input.d.x, u_input.d.x), vec4<f32>(1000f, 920f, 611f, -267f), vec4<bool>(false, true, true, true)), vec3<u32>(u_input.c.x, u_input.e.x, u_input.e.x), 11756u), _wgslsmith_add_u32(28597u, 51878u)), vec2<i32>(_wgslsmith_div_i32(-u_input.a, -64851i), -24559i)), func_2(select(vec2<bool>(true, true), func_2(vec2<bool>(true, true), vec2<bool>(true, true)).c.d.yz, false), !vec2<bool>(true, any(vec2<bool>(true, false)))).c.b.xx);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-899f, -1000f) + vec2<f32>(525f, 964f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-276f, 761f), vec2<f32>(985f, 1265f)))))));
    var_0 = u_input.d.x;
    var var_3 = Struct_2(Struct_1(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, var_2.x, var_2.x, var_2.x)), Struct_2(Struct_1(true, vec3<i32>(-22064i, 27089i, 7189i), vec4<f32>(var_2.x, var_2.x, var_2.x, -317f), vec4<bool>(false, false, true, true)), Struct_1(false, vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i), vec4<f32>(1275f, 1000f, var_2.x, -1673f), vec4<bool>(false, false, false, false)), Struct_1(true, u_input.d, vec4<f32>(-232f, var_2.x, var_2.x, 674f), vec4<bool>(true, false, true, false)), u_input.e.x, Struct_1(true, vec3<i32>(0i, var_1.x, u_input.a), vec4<f32>(var_2.x, -1000f, 188f, -786f), vec4<bool>(false, true, false, true))), func_2(vec2<bool>(true, true), vec2<bool>(false, true)).c, ~vec3<u32>(24624u, u_input.c.x, u_input.e.x), 14044u), ~vec2<i32>(0i, var_1.x) ^ ~u_input.d.yx, u_input.c.wzy), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_1.x), countOneBits(u_input.d.zz)), (i32(-1i) * -26625i) ^ (u_input.a & u_input.d.x), 1i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(-341f, var_2.x)), var_2.x, _wgslsmith_f_op_f32(floor(-844f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1000f, 129f, -1361f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, -975f, 193f))), select(true, true, false)))), func_2(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)).c.d), Struct_1(all(vec4<bool>(true, true, true, true)) & true, -(-u_input.d ^ -u_input.d), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x, _wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-253f, 169f, var_2.x, var_2.x)))))), select(func_2(vec2<bool>(false, false), vec2<bool>(true, true)).c.d, vec4<bool>(true, true, false, func_2(vec2<bool>(true, false), vec2<bool>(true, false)).c.d.x), vec4<bool>(true, true, true, true))), func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true | all(vec3<bool>(true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true))).c, ~min(_wgslsmith_mod_u32(~u_input.e.x, _wgslsmith_div_u32(50475u, u_input.c.x)), ~_wgslsmith_mod_u32(1u, u_input.b)), func_2(select(!func_2(vec2<bool>(true, true), vec2<bool>(true, false)).c.d.xz, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), var_2.x >= var_2.x), select(true, true, true)), vec2<bool>(true, true)).c);
    var var_4 = Struct_1(var_3.e.d.x, _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(24836i, var_1.x, var_3.c.b.x), -vec3<i32>(-46338i, 2147483647i, var_1.x))), vec3<i32>(-2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18668u, u_input.b, 1u), u_input.c) % 32u), _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(-41383i, -2147483647i, u_input.a)), var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 2078f), var_3.a.c.x, _wgslsmith_f_op_f32(trunc(-1422f)), _wgslsmith_f_op_f32(abs(var_2.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(vec2<bool>(var_3.e.a, false), var_3.c.d.yw).d.x, -743f, _wgslsmith_div_f32(1000f, var_3.a.c.x), -294f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-751f, var_2.x, -2282f, 604f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.c.x, var_2.x, 320f, var_3.a.c.x) * var_3.c.c))))), select(select(var_3.e.d, var_3.a.d, var_3.a.d), select(var_3.b.d, select(!var_3.a.d, vec4<bool>(true, false, var_3.c.d.x, true), !var_3.e.d), true), func_2(!var_3.a.d.yw, vec2<bool>(var_3.b.d.x, true)).c.a));
    var var_5 = _wgslsmith_mod_i32(var_4.b.x, -(~(_wgslsmith_div_i32(-1249i, 2147483647i) >> ((u_input.c.x ^ 1u) % 32u))));
    let var_6 = select(_wgslsmith_add_i32(min(2147483647i, -15551i), _wgslsmith_add_i32(var_1.x, -2147483647i)) != var_1.x, !(_wgslsmith_f_op_f32(sign(-1241f)) > _wgslsmith_f_op_f32(-var_3.b.c.x)), true) | func_2(select(vec2<bool>(var_3.b.a, all(vec2<bool>(true, true))), var_3.e.d.yw, func_2(func_2(var_3.b.d.zy, vec2<bool>(true, var_3.c.d.x)).c.d.xw, vec2<bool>(var_3.a.d.x, false)).c.d.zx), func_2(!select(vec2<bool>(true, true), vec2<bool>(var_4.a, false), var_3.e.d.x), func_2(!vec2<bool>(var_3.c.a, false), var_4.d.wx).c.d.ww).c.d.wx).c.a;
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x - 846f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.c, -15079i, var_1.x, ~var_4.b ^ firstLeadingBit(var_4.b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_add_i32(0i, var_3.a.b.x | var_4.b.x)), abs(11645i | _wgslsmith_sub_i32(var_1.x, var_3.b.b.x))));
}

