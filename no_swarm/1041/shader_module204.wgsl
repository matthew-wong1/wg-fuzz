struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    let var_0 = countOneBits(u_input.c.x);
    var var_1 = -2147483647i;
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    var_1 = abs(-55652i);
    return -arg_1;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    global0 = array<Struct_4, 30>();
    var var_0 = Struct_4(arg_0, Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 45989u), vec2<u32>(arg_1, arg_1)) | (arg_1 << (32511u % 32u))), select(22014i, ~0i, true)), !select(vec2<bool>(true, all(vec4<bool>(false, true, true, true))), vec2<bool>(any(vec4<bool>(false, true, false, true)), false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-238f + -851f), _wgslsmith_f_op_f32(f32(-1f) * -669f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1500f - 1725f)))));
    let var_1 = Struct_4(~(~func_3(1i, -22226i)), var_0.b, !vec2<bool>(false, ~arg_0 <= -9625i), _wgslsmith_f_op_f32(max(var_0.d, var_0.d)));
    let var_2 = Struct_4(arg_0, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, ~vec3<u32>(var_1.b.a, u_input.d.x, 4294967295u)), ~abs(vec3<u32>(0u, 1u, arg_2.x))), -(~select(0i, -138i, var_1.c.x))), !vec2<bool>(any(vec3<bool>(var_1.c.x, var_0.c.x, true)), var_1.c.x), var_1.d);
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(1i, -(i32(-1i) * -32740i)) << (var_1.b.a % 32u), -2147483647i, ~max(firstLeadingBit(-1i), _wgslsmith_add_i32(_wgslsmith_div_i32(var_2.a, -23561i), 1i)), _wgslsmith_div_i32(2373i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a, var_0.b.b), -vec2<i32>(var_1.b.b, var_2.a)) | var_2.b.b));
    return 341f;
}

fn func_4(arg_0: f32) -> Struct_2 {
    global0 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) + _wgslsmith_f_op_f32(arg_0 + 215f))))));
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    let var_1 = Struct_1(~(max(4294967295u, 41123u) >> (_wgslsmith_mult_u32(~4294967295u, u_input.a.x) % 32u)), u_input.b.x);
    return Struct_2(var_1, Struct_1(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 0u, 4311u)) ^ var_1.a, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), -1273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1000f) - _wgslsmith_f_op_f32(floor(arg_0))), 349f));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_3(var_0.b.a, var_0.b);
    var var_2 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(u_input.b.x, 1u, u_input.a)))))))));
    let var_3 = all(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(arg_1, arg_1, arg_1), true)), vec3<bool>(arg_1, true, min(arg_0.b.b, 419i) >= 1i), any(vec2<bool>(all(vec2<bool>(false, arg_1)), select(arg_1, true, arg_1)))));
    var var_4 = func_4(-834f);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_4.c.x, -380f)), _wgslsmith_div_f32(var_4.c.x, var_4.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 30>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(func_1(Struct_3(u_input.a.x, Struct_1(u_input.d.x, u_input.b.x)), false)))), -469f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f - -1834f) * _wgslsmith_f_op_f32(func_2(-43220i, u_input.d.x, u_input.c))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(144f, 978f)))), _wgslsmith_f_op_f32(step(-936f, _wgslsmith_f_op_f32(abs(-462f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(528f)), -1485f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))));
    global0 = array<Struct_4, 30>();
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-809f, 1000f), var_0.x) + _wgslsmith_f_op_f32(-var_0.x))).a;
    let var_2 = !(!(!select(true, true, false)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f * _wgslsmith_f_op_f32(round(-1001f))) * 943f) * _wgslsmith_f_op_f32(-151f - -343f)), 181f));
    var_1 = Struct_1(reverseBits(0u), _wgslsmith_clamp_i32(12073i, u_input.b.x, -37424i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.xzx + var_0.yzz));
}

