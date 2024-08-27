struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32) -> f32 {
    return -446f;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.a, arg_2.x, arg_1)), 424f, _wgslsmith_f_op_f32(ceil(125f)), -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, 2492f, 116f, 1483f) - vec4<f32>(-2086f, -812f, -709f, -662f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, -840f, 1902f, -1743f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(111f, -2129f, 608f, -640f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, 854f, 1490f, 502f)))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32) -> bool {
    var var_0 = arg_0.a.a;
    var_0 = !arg_1.x != false;
    var var_1 = _wgslsmith_sub_i32(countOneBits(1i), -29025i);
    var var_2 = vec4<bool>(arg_1.x, false, any(vec2<bool>(true, u_input.c <= ~13072u)), all(!select(vec4<bool>(arg_0.a.a, false, true, arg_0.a.a), !vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a, arg_0.a.a), !vec4<bool>(true, arg_0.a.a, arg_0.a.a, false))));
    var_1 = u_input.a;
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2102f;
    let var_1 = !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, all(vec2<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(reverseBits(u_input.c), -(~(-2147483647i)), !vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    var var_3 = ~(~(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec3<i32>(1i, 2147483647i, u_input.a)), 2147483647i, u_input.a, u_input.a | u_input.b.x)));
    let var_4 = Struct_4(Struct_1(func_3(Struct_4(Struct_1(var_1.x)), vec4<bool>(!var_1.x, var_3.x <= 2147483647i, true | var_1.x, var_1.x), u_input.c)));
    var var_5 = !(!vec2<bool>(var_4.a.a | true, var_4.a.a));
    var_3 = vec4<i32>(_wgslsmith_clamp_i32(~var_3.x, u_input.b.x, u_input.a), abs(-_wgslsmith_mult_i32(-18383i, _wgslsmith_mod_i32(u_input.a, 1i))), u_input.b.x, i32(-1i) * -1i);
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.x)), 100f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_i32(abs(var_3.x) << (6122u % 32u), i32(-1i) * -u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_3.x, -27080i, var_3.x), vec4<i32>(var_3.x, 53782i, 0i, u_input.b.x)), -1i << (u_input.c % 32u), -8377i | u_input.a))), var_3.x);
}

