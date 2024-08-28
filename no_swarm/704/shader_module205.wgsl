struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    return _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = u_input.b;
    var var_2 = vec2<bool>(false, true);
    var var_3 = _wgslsmith_f_op_f32(sign(2141f));
    var_2 = !(!vec2<bool>(!var_2.x || all(vec2<bool>(true, var_2.x)), all(vec4<bool>(false, var_2.x, var_2.x, false))));
    return Struct_2(vec4<i32>(var_1.x, select(u_input.a.x, firstLeadingBit(-2147483647i), true) & abs(select(-1i, var_0, var_2.x)), 2147483647i, func_3(vec2<u32>(1u, ~35799u), Struct_3(Struct_1(110804u)), Struct_1(1u))));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(1u >> (0u % 32u));
    let var_1 = var_0.a;
    var var_2 = vec3<u32>(~32231u, ~var_0.a, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11213u, 31498u, var_0.a), vec4<u32>(13763u, 4294967295u, var_0.a, var_0.a))) | (var_0.a << (4294967295u % 32u)));
    var var_3 = Struct_2(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b.x, abs(u_input.a.x), _wgslsmith_add_i32(u_input.b.x, -2147483647i), u_input.b.x), -vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, 2147483647i), 33718i, -44770i, u_input.b.x)));
    var_3 = func_2();
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), -111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1606f)))));
    let var_1 = !(!select(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, any(vec4<bool>(true, true, true, true))), func_1(), vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = vec3<f32>(var_2.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - var_0.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1345f, var_2.x, -1000f));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(505f, _wgslsmith_f_op_f32(trunc(var_2.x)), true)), _wgslsmith_div_f32(-1670f, -998f), _wgslsmith_f_op_f32(-var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 23024u, 1u, 4294967295u)), ~0u));
}

