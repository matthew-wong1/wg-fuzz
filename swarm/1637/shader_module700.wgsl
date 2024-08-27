struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-121f, 785f), vec2<f32>(122f, -1304f), vec2<f32>(-394f, 484f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_div_i32(1i, -select(_wgslsmith_mod_i32(19325i, 59056i), _wgslsmith_mult_i32(_wgslsmith_add_i32(-26641i, -1i), 24492i), arg_0));
    return _wgslsmith_f_op_f32(sign(160f));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = abs(abs(_wgslsmith_add_u32(~u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(u_input.b.x, 49300u, 1u)) % 32u), ~(u_input.a.x & u_input.b.x))));
    var var_1 = abs(~_wgslsmith_sub_i32(~_wgslsmith_mult_i32(arg_0.x, arg_0.x), -2147483647i));
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    let var_2 = Struct_3(min(reverseBits(_wgslsmith_add_vec2_i32(arg_1.d.xw, arg_0)), firstLeadingBit(arg_1.d.zw)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1969f);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> vec4<f32> {
    var var_0 = 49840u;
    let var_1 = Struct_4(-(~max(select(vec4<i32>(arg_1.b.a.x, arg_1.a.x, -88955i, -2147483647i), vec4<i32>(-1i, arg_2.a.x, arg_1.a.x, -2147483647i), vec4<bool>(false, arg_1.b.e.x, false, true)), vec4<i32>(arg_2.a.x, arg_1.a.x, -1i, arg_2.a.x))), Struct_2(vec3<i32>(arg_1.a.x, ~arg_1.c, 0i), arg_1.b, -1i & (arg_2.a.x >> (_wgslsmith_sub_u32(u_input.a.x, u_input.b.x) % 32u))), Struct_2(vec3<i32>(firstTrailingBit(i32(-1i) * -2147483647i), arg_2.a.x, ~9018i), arg_1.b, arg_1.c));
    let var_2 = _wgslsmith_div_vec2_i32(arg_2.a, _wgslsmith_add_vec2_i32(reverseBits(arg_1.a.yz), vec2<i32>(var_1.c.a.x, _wgslsmith_mod_i32(-29328i, var_1.c.a.x))));
    var var_3 = !select(select(!(!arg_0.yzx), arg_0.zxy, select(arg_0.yxz, vec3<bool>(var_1.b.b.e.x, arg_0.x, var_1.b.b.e.x), 1u < arg_3)), arg_0.yxz, !all(vec4<bool>(false, false, arg_1.b.e.x, var_1.b.b.e.x)) & var_1.b.b.e.x);
    global0 = array<vec2<f32>, 3>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(arg_1.b.b, 638f), _wgslsmith_f_op_f32(func_3(vec2<i32>(arg_2.a.x, 2829i), Struct_1(var_1.b.b.d, var_1.b.b.c, 420f, vec4<i32>(arg_1.a.x, var_2.x, -35134i, arg_1.b.a.x), var_1.c.b.e))), 658f, _wgslsmith_f_op_f32(var_1.c.b.b - arg_1.b.c))))));
}

fn func_1(arg_0: f32) -> vec3<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1461f * _wgslsmith_f_op_f32(272f + arg_0))) + _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = -(~(~countOneBits(vec4<i32>(1i, 1i, 1i, 1i))));
    global0 = array<vec2<f32>, 3>();
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)), -770f, true)), _wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-652f, var_0.x))))), _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(1f != _wgslsmith_f_op_f32(func_3(var_1.xx, Struct_1(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), var_0.x, var_0.x, vec4<i32>(19035i, 1465i, 1i, 56978i), vec2<bool>(true, true)))), true, all(vec4<bool>(true, true, true, true)), true), Struct_2(reverseBits(var_1.zxz), Struct_1(countOneBits(vec4<i32>(7448i, -2147483647i, var_1.x, var_1.x)), _wgslsmith_f_op_f32(trunc(404f)), -248f, vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec2<bool>(false, true)), i32(-1i) * -2147483647i), Struct_3(vec2<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), _wgslsmith_clamp_i32(-21026i, var_1.x, -122i))), u_input.a.x)));
    let var_2 = Struct_2(max(countOneBits(~firstLeadingBit(vec3<i32>(54390i, var_1.x, 0i))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 1i, 2147483647i), vec3<i32>(var_1.x, -2147483647i, -21418i)), _wgslsmith_mod_vec3_i32(vec3<i32>(14870i, var_1.x, var_1.x), var_1.yyx), vec3<i32>(var_1.x, var_1.x, var_1.x))), Struct_1(-((vec4<i32>(-3330i, 2147483647i, 2147483647i, -3870i) << (vec4<u32>(34268u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (~vec4<u32>(u_input.b.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), arg_0, -1417f, vec4<i32>(-3859i, -(var_1.x >> (u_input.a.x % 32u)), _wgslsmith_clamp_i32(~var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 24599i, -2147483647i, 18123i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), firstTrailingBit(31745i)), -abs(var_1.x)), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, false, true))), all(vec3<bool>(true, true, true)))), abs(var_1.x));
    return ~var_2.b.a.xwx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    let var_0 = vec4<bool>(false, false, true, true);
    let var_1 = Struct_2(-_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 1i, -2147483647i)) & func_1(1424f), vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, -8853i, ~1i)), Struct_1(countOneBits(~vec4<i32>(-1i, 52821i, -2147483647i, 2147483647i)) ^ vec4<i32>(1i, 2147483647i << (u_input.a.x % 32u), -36383i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(-1i, 22435i), Struct_1(vec4<i32>(44133i, -1i, 20399i, 17203i), -1893f, -571f, vec4<i32>(-11558i, -25559i, 2147483647i, 38564i), var_0.yy)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_f32(-1621f - _wgslsmith_f_op_f32(max(1025f, -1029f))), false)), select(~vec4<i32>(-1i, -16839i, 5244i, 2147483647i), vec4<i32>(i32(-1i) * -1i, ~(-27253i), 7015i, max(-40563i, 4614i)), var_0), var_0.xx), 2147483647i);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -108f);
    var var_3 = 36847u;
    var var_4 = max(~(~var_1.a.x >> (countOneBits(u_input.b.x) % 32u)), -max(0i, var_1.c) | -8212i) << (~u_input.b.x % 32u);
    global0 = array<vec2<f32>, 3>();
    let var_5 = Struct_3(-vec2<i32>(~(-1i) ^ var_1.a.x, -min(24277i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(abs(0u), _wgslsmith_clamp_u32(62763u, u_input.b.x, u_input.a.x))), false && (_wgslsmith_clamp_i32(0i, 0i, 27563i) > -12803i)));
}

