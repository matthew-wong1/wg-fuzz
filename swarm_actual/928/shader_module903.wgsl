struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-198f)), -621f, u_input.a > -1i))));
}

fn func_3() -> bool {
    let var_0 = -2103f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0, 829f)), _wgslsmith_f_op_f32(1037f + var_0))) + 1f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2001f)), var_0), _wgslsmith_f_op_f32(sign(var_0))), 738f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, var_0)))));
    let var_2 = any(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    global0 = select(1u, _wgslsmith_sub_u32(firstLeadingBit(~_wgslsmith_mult_u32(3156u, 76314u)), reverseBits(~_wgslsmith_clamp_u32(0u, 4544u, 4294967295u))), true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(362f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) != var_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    global0 = 21076u;
    let var_0 = Struct_2(Struct_1(!arg_1.a), select(!(!vec4<bool>(arg_1.a, arg_0.a, arg_1.a, true)), !vec4<bool>(func_3(), true && arg_1.a, true, !arg_1.a), false), _wgslsmith_mod_i32(select(~(-2147483647i >> (0u % 32u)), -48423i, arg_1.a), u_input.a), abs(vec2<i32>(-_wgslsmith_clamp_i32(-12508i, -3011i, -19886i), _wgslsmith_add_i32(abs(0i), u_input.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-625f)) + _wgslsmith_f_op_f32(min(-247f, -1320f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-459f + 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-216f, -1275f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(702f, -147f) + vec2<f32>(1f, 1f)))));
    global0 = _wgslsmith_sub_u32(max(firstLeadingBit(9046u), firstLeadingBit(15056u) | _wgslsmith_mod_u32(arg_2 ^ arg_2, arg_2)), 36030u);
    let var_1 = arg_2;
    let var_2 = var_0.a;
    return var_0.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec3<f32> {
    global0 = ~4294967295u;
    var var_0 = Struct_1(arg_3.x);
    var_0 = arg_0;
    global0 = _wgslsmith_mult_u32(~0u, _wgslsmith_add_u32(min(min(_wgslsmith_clamp_u32(27573u, 1u, 0u), 1u), ~16720u), 1u));
    let var_1 = ~abs(~4294967295u << (1u % 32u));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a ^ _wgslsmith_dot_vec2_i32(abs(-(~vec2<i32>(-1i, -30354i))), -(firstLeadingBit(vec2<i32>(1i, -1i)) | -vec2<i32>(u_input.a, u_input.a)));
    global0 = 47948u;
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(select(_wgslsmith_f_op_f32(func_1()) == _wgslsmith_f_op_f32(f32(-1f) * -643f), true, all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2384f) - _wgslsmith_f_op_f32(-806f - 959f))) * -1000f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -719f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-625f + -1150f))), _wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(sign(-1791f)))))), !select(vec3<bool>(true, true, true), vec3<bool>(func_2(Struct_1(true), Struct_1(false), 4294967295u), any(vec3<bool>(true, true, false)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false)))));
    var var_3 = Struct_2(Struct_1(false), vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true)), max(~var_1, -19059i) <= var_1, false, func_2(Struct_1(true), Struct_1(true), firstLeadingBit(max(4294967295u, 25389u)))), 7701i, max(abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_1, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(-92002i, var_0), vec2<i32>(var_1, var_1)))), vec2<i32>(var_1 | max(u_input.a, -2147483647i), ~(-74309i))), var_2.xz);
    var_3 = Struct_2(var_3.a, !select(!vec4<bool>(true, false, var_3.a.a, false), select(select(vec4<bool>(false, false, var_3.a.a, var_3.b.x), var_3.b, false), var_3.b, vec4<bool>(false, var_3.a.a, false, true)), var_3.b), -max(0i, _wgslsmith_div_i32(var_3.d.x, u_input.a) << (4294967295u % 32u)), -var_3.d, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(exp2(var_3.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1043f, var_2.x))), false)), 1f));
    var var_4 = vec3<i32>(-28800i, -_wgslsmith_mult_i32(-abs(-33923i), -var_0), u_input.a);
    let var_5 = ~_wgslsmith_sub_u32(~10896u, firstLeadingBit(70296u)) << (abs(0u) % 32u);
    var var_6 = vec2<u32>(_wgslsmith_add_u32(~var_5, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_5, 27033u), 4294967295u)), ~51045u) ^ ~(~countOneBits(vec2<u32>(0u, 0u)) & ~_wgslsmith_div_vec2_u32(vec2<u32>(var_5, 0u), vec2<u32>(17168u, 38903u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.x, var_6.x, min(var_3.c, ~7726i), firstTrailingBit(select(max(vec4<i32>(2147483647i, var_1, 10011i, -1i), vec4<i32>(-32037i, var_0, -1i, var_3.c)), vec4<i32>(var_3.c, var_0, var_1, var_3.d.x) & vec4<i32>(-13729i, -5916i, var_3.d.x, var_4.x), !var_3.b.x) | -vec4<i32>(var_4.x, 2147483647i, u_input.a, var_0)), var_4.yx);
}

