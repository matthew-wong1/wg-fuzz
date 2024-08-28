struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.b, _wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(-33006i, 8487i)), ~vec2<i32>(global1.a, global1.a) ^ min(vec2<i32>(global1.b, 1i), vec2<i32>(global1.a, -2147483647i)))), i32(-1i) * -min(global1.a, _wgslsmith_mult_i32(global1.b, global1.a)));
    global0 = _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, ~0u, 0u, 35546u));
    var var_1 = i32(-1i) * -1i;
    var var_2 = -1000f;
    var var_3 = arg_2.yx;
    return abs(select(~u_input.a, u_input.a, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = ~abs(arg_0.b | 12370i);
    let var_1 = arg_0;
    global1 = arg_2;
    global0 = u_input.b ^ _wgslsmith_add_u32(arg_1.x, u_input.b);
    var var_2 = true;
    return ~(-1i >> (func_3(true, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(261f, 554f, -1193f, 574f) + vec4<f32>(-1074f, -688f, -1000f, 1000f))).x % 32u)) << (firstTrailingBit(~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xy))) % 32u);
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(global1.b, func_4(Struct_1(32913i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, global1.b, 7810i, global1.a), vec4<i32>(13764i, global1.b, 1i, -11608i)), global1.c), _wgslsmith_sub_vec4_u32(func_3(true, all(vec4<bool>(global1.c, false, false, true)), vec4<f32>(-1215f, 1141f, 1000f, -1038f)), u_input.a), Struct_1(_wgslsmith_clamp_i32(0i, 0i, ~(-12468i)), -_wgslsmith_clamp_i32(global1.b, global1.b, global1.a), global1.c)), !all(!vec2<bool>(global1.c, false)));
    let var_0 = Struct_1(2147483647i, max(~global1.a, -9349i) | (global1.a & reverseBits(global1.b)), global1.c);
    global1 = var_0;
    let var_1 = 42359u;
    let var_2 = global1.a;
    return Struct_1(17363i, -_wgslsmith_dot_vec3_i32(-vec3<i32>(-9120i, -1i, var_0.b) >> (~u_input.a.wxw % vec3<u32>(32u)), reverseBits(vec3<i32>(28900i, var_0.a, var_0.b))), (true & var_0.c) | global1.c);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -875f, _wgslsmith_f_op_f32(sign(-567f)), _wgslsmith_div_f32(1000f, 1205f)), vec4<f32>(760f, _wgslsmith_f_op_f32(select(903f, 349f, global1.c)), -473f, _wgslsmith_f_op_f32(max(1000f, -284f))), !select(vec4<bool>(global1.c, false, global1.c, true), vec4<bool>(false, true, arg_0.c, false), false))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1828f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-108f))), -976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1415f, 365f, false))))));
    let var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, var_0.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, var_0.x))));
    let var_4 = _wgslsmith_f_op_f32(var_0.x * var_0.x);
    return var_1;
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    return func_5(arg_1, _wgslsmith_add_u32(abs(11173u), abs(1u)));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1019f, _wgslsmith_f_op_f32(trunc(-180f)), 613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(723f, 377f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-928f, -192f, -363f, -452f) * _wgslsmith_div_vec4_f32(vec4<f32>(117f, -791f, 524f, 183f), vec4<f32>(-511f, 375f, 1712f, -1073f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(409f, 1393f, -1017f, 368f), vec4<f32>(368f, 1176f, 1525f, -446f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-501f, -1428f, _wgslsmith_f_op_f32(1023f - 1662f), -1039f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, -303f, -586f, -141f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-170f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1178f, -721f) - -1559f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-486f)), _wgslsmith_f_op_f32(ceil(-958f))))), vec4<bool>(all(vec3<bool>(false, global1.c, arg_0.c)), true, arg_1.x != (u_input.b & 41284u), func_5(func_6(2174f, arg_0), arg_1.x).c))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f - -637f)))) - _wgslsmith_f_op_vec2_f32(exp2(var_0.xz)));
    let var_3 = _wgslsmith_add_vec2_i32(abs(vec2<i32>(-_wgslsmith_sub_i32(arg_3, 0i), arg_0.a)), ~firstLeadingBit(abs(vec2<i32>(arg_0.a, arg_0.b) << (u_input.a.zy % vec2<u32>(32u)))));
    global0 = arg_2;
    return func_2();
}

fn func_1() -> StorageBuffer {
    global1 = func_7(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1073f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1282f)))), func_5(func_2(), _wgslsmith_mult_u32(select(u_input.a.x, 102870u, global1.c), abs(u_input.a.x)))), vec4<u32>(~u_input.b, 0u, ~(max(u_input.a.x, 39581u) | u_input.b), ~_wgslsmith_add_u32(~u_input.b, 0u)), 17106u, global1.a);
    let var_0 = func_5(func_6(_wgslsmith_f_op_f32(-681f - _wgslsmith_f_op_f32(f32(-1f) * -1136f)), func_2()), ~u_input.b);
    var var_1 = func_6(867f, Struct_1(~global1.b, func_2().a, func_2().c));
    let var_2 = u_input.a;
    var var_3 = (_wgslsmith_sub_i32(-17059i, ~2147483647i) < global1.a) & (global1.c | (any(select(vec4<bool>(false, var_0.c, true, var_0.c), vec4<bool>(var_0.c, true, global1.c, var_0.c), true)) | any(!vec3<bool>(false, var_1.c, global1.c))));
    return StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b, var_0.b, 14414i), vec3<i32>(1i, var_1.b, global1.b)) | _wgslsmith_div_vec3_i32(vec3<i32>(global1.a, 2147483647i, 45437i), vec3<i32>(24433i, 46886i, -16661i)), -vec3<i32>(6822i, var_1.a, var_0.b)) >> (((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 22169u, 4294967295u), vec3<u32>(var_2.x, 4294967295u, var_2.x), vec3<u32>(15328u, u_input.b, var_2.x)) << (func_3(var_0.c, false, vec4<f32>(-635f, -125f, 1022f, 585f)).wyy % vec3<u32>(32u))) << (vec3<u32>(~36854u, 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), 1055f, -2508i ^ _wgslsmith_mod_i32(-var_1.b, _wgslsmith_sub_i32(reverseBits(global1.a), func_4(var_0, u_input.a, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 37655u;
    let x = u_input.a;
    s_output = func_1();
}

