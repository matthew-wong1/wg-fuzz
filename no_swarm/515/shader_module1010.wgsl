struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false, vec2<f32>(129f, 127f), true), Struct_1(false, vec2<f32>(-1093f, -659f), false), Struct_1(true, vec2<f32>(-209f, -342f), false));

var<private> global2: f32 = -320f;

var<private> global3: array<vec3<i32>, 24>;

var<private> global4: array<vec4<bool>, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    global3 = array<vec3<i32>, 24>();
    global3 = array<vec3<i32>, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(559f)), _wgslsmith_f_op_f32(1875f * 244f), -136f, -1615f)))));
    var var_1 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.c.x, -89441i), abs(u_input.a)) & ~max(14291i, _wgslsmith_add_i32(20854i, u_input.c.x)), -2147483647i);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(floor(992f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f * var_0.x) - var_0.x), 774f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -251f), !any(vec3<bool>(true, true, false))))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec4<f32> {
    global3 = array<vec3<i32>, 24>();
    var var_0 = ~max(_wgslsmith_div_u32(abs(arg_1.x) << (0u % 32u), u_input.b), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_1.x, abs(arg_1.x)), ~arg_1.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -1573f), _wgslsmith_f_op_f32(arg_0 + 584f), _wgslsmith_f_op_f32(143f + -205f), _wgslsmith_f_op_f32(-arg_0)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0, _wgslsmith_f_op_f32(-arg_0), -1697f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    global0 = array<vec4<bool>, 21>();
    let var_0 = 16459u;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(step(227f, _wgslsmith_f_op_f32(1000f - -294f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(462f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(2629f, vec3<u32>(u_input.b, var_0, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -566f, -1819f, -442f) * vec4<f32>(322f, -247f, 1956f, 1954f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.c.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.c.x) >> (vec4<u32>(27264u, 0u, 41033u, var_0) % vec4<u32>(32u))), 2147483647i, i32(-1i) * -1i)));
}

