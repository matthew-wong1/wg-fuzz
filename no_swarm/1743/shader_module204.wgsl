struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = arg_0.b.x;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1590f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(706f, -1000f) * 181f) + _wgslsmith_f_op_f32(f32(-1f) * -427f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -589f))), -318f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, 1000f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, 963f), vec2<f32>(var_1.x, var_1.x)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(411f, 115f), vec2<f32>(588f, 116f)))), vec2<bool>(false, var_0))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = Struct_2(arg_0.a, arg_0.b);
    let var_3 = 0i;
    return 2147483647i;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_1(~((~arg_0 ^ ~vec3<u32>(arg_1, arg_1, 1u)) & ~arg_0), select(~func_3(Struct_2(vec2<i32>(arg_2, 0i), vec2<bool>(false, false))), -(i32(-1i) * -u_input.d), true), ~(~arg_0.xx), _wgslsmith_f_op_f32(select(-354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1084f, -1107f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) + _wgslsmith_f_op_f32(f32(-1f) * -202f))), select(true, true, any(vec2<bool>(false, false))))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(arg_0, vec3<u32>(_wgslsmith_sub_u32(~18372u, 106707u | u_input.e), 1u, 19391u)), _wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(var_0.b), arg_2), -53919i), vec2<u32>(abs(abs(20196u) >> (~arg_0.x % 32u)), 27118u), 737f);
    var var_2 = Struct_4(-32081i);
    var var_3 = vec4<f32>(var_0.d, 1310f, -561f, _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(max(var_1.d, -1000f))) - var_0.d)));
    var_2 = Struct_4(_wgslsmith_add_i32(var_0.b, ~select(~u_input.c, _wgslsmith_div_i32(5653i, -9840i), u_input.e >= 10017u)));
    return vec2<f32>(1109f, _wgslsmith_div_f32(var_0.d, 422f));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    var var_0 = -829f;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-448f, -669f), vec2<f32>(-518f, 402f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, -1106f))))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2132f)), _wgslsmith_f_op_f32(sign(-508f))))), _wgslsmith_div_vec2_f32(vec2<f32>(310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), -243f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(arg_3 | vec3<u32>(11074u, 10476u, 4294967295u), _wgslsmith_add_u32(87963u, arg_3.x), -9110i)))))));
    var var_3 = arg_3;
    return 7292i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-4103i, -6018i), vec2<i32>(11942i, u_input.d))), select(vec2<bool>(all(vec4<bool>(true, false, true, true)), false), vec2<bool>(all(vec3<bool>(true, false, true)), select(false, false, true)), vec2<bool>(true, true))), ~(~u_input.a), vec2<i32>(~select(func_1(u_input.d, Struct_5(u_input.d, false, vec3<i32>(-49396i, u_input.c, u_input.d)), -36295i, vec3<u32>(u_input.e, 1u, u_input.a)), u_input.b << (31250u % 32u), any(vec4<bool>(false, true, true, true))), _wgslsmith_add_i32(1i, u_input.b)));
    var var_1 = ~(var_0.b & 1u);
    var var_2 = Struct_5(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, u_input.b) << (u_input.e % 32u), func_1(u_input.c ^ -1i, Struct_5(19759i, var_0.a.b.x, vec3<i32>(var_0.c.x, 2147483647i, -1i)), _wgslsmith_clamp_i32(0i, 31760i, u_input.d), vec3<u32>(var_0.b, 27130u, u_input.e))) ^ ~var_0.a.a.x, var_0.a.a.x > ~abs(_wgslsmith_mult_i32(var_0.a.a.x, u_input.d)), vec3<i32>(i32(-1i) * -u_input.b, firstTrailingBit(u_input.c), abs(0i)));
    let var_3 = var_0.a;
    var var_4 = _wgslsmith_clamp_u32(reverseBits(1u), ~_wgslsmith_sub_u32(~(~4184u), 1u), 4294967295u);
    let var_5 = !vec3<bool>(false, all(select(vec4<bool>(true, var_0.a.b.x, true, var_0.a.b.x), !vec4<bool>(var_0.a.b.x, false, true, var_2.b), !var_0.a.b.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(763f)), _wgslsmith_div_f32(-199f, -436f), -247f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1104f, -560f, 494f), vec3<f32>(-1026f, 759f, -184f), var_5)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, 1000f, -1239f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-728f, 387f, -274f) - vec3<f32>(-225f, 1644f, 469f)))) - vec3<f32>(-366f, _wgslsmith_f_op_f32(-732f * -840f), 2287f))), var_0.a.a.x, _wgslsmith_f_op_f32(floor(-1154f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f), 1f) - _wgslsmith_f_op_vec2_f32(func_2(~vec3<u32>(var_0.b, var_0.b, var_0.b), _wgslsmith_sub_u32(11980u, var_0.b), _wgslsmith_mod_i32(u_input.c, 1i))).x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(575f + _wgslsmith_f_op_f32(round(1663f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1314f, -617f)) - _wgslsmith_f_op_f32(428f + 1917f)), false))));
}

