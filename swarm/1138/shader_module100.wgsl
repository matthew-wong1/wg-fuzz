struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_div_i32(u_input.c.x, -firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.c.x, 0i)))));
    var_0 = arg_1;
    global1 = 1u;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1234f)))), -1053f)) - 1349f);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1275f, 299f, -239f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, 439f, -576f) + vec3<f32>(-1415f, 1000f, 255f)), vec3<f32>(636f, -807f, 266f))))))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-439f, -2121f, -1000f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(726f, 941f, 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-187f, -690f, 1798f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(145f, -1393f)), _wgslsmith_f_op_f32(-250f + 642f)), _wgslsmith_f_op_f32(814f - _wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_f_op_f32(floor(-199f)))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -687f, var_1.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1170f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1002f, 437f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-268f, -1226f), _wgslsmith_f_op_f32(-var_1.x), var_1.x)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = Struct_1(-1i);
    global0 = -1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_f_op_f32(max(arg_1.x, arg_2)), arg_1.x, arg_2) * vec4<f32>(_wgslsmith_div_f32(arg_1.x, arg_2), arg_1.x, arg_2, _wgslsmith_f_op_f32(-arg_1.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, 146f, arg_1.x, -470f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 751f, arg_2, arg_1.x)))), vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -2251f), _wgslsmith_f_op_f32(sign(-834f)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-627f)) - 201f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -588f)), var_1.x);
    var var_3 = _wgslsmith_mult_u32(u_input.e.x >> (112743u % 32u), ~max(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, u_input.b, u_input.a), vec4<u32>(32289u, u_input.b, u_input.e.x, u_input.a)), countOneBits(vec4<u32>(u_input.a, 1u, 24386u, u_input.a))), u_input.b));
    return u_input.a;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    global1 = abs(func_4(~(~1i & u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(arg_0, 59094u), Struct_1(u_input.c.x), vec4<bool>(true, false, false, false), Struct_1(-2147483647i)))), _wgslsmith_f_op_f32(-2156f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(u_input.e, Struct_1(u_input.c.x), vec4<bool>(true, true, true, false), Struct_1(u_input.d.x))).x)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - -1000f));
    let var_1 = 24968i;
    var var_2 = Struct_1(-8829i);
    global0 = -_wgslsmith_add_i32(u_input.d.x, 2147483647i);
    return select(select(select(vec4<bool>(true, true, arg_0 > 4294967295u, any(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), false), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, any(vec2<bool>(true, true)), true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_0 > 8245u, any(vec2<bool>(false, false))))), select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), !(var_0 > -1260f), any(vec2<bool>(false, true)) || false, false), vec4<bool>(!any(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, true, true)), false, true)), vec4<bool>(true, false, false, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), false))));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(u_input.c.x);
    let var_1 = -u_input.d.yy;
    var var_2 = vec4<bool>(!all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), func_2(45041u), vec4<bool>(false, true, true, false))), any(func_2(1u << (_wgslsmith_add_u32(u_input.e.x, u_input.a) % 32u)).wwx), false, true & all(vec2<bool>(any(vec4<bool>(false, true, true, false)), false)));
    global0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-9984i, -52560i), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a, var_1.x), min(var_1, vec2<i32>(-2147483647i, var_0.a))) << (48536u % 32u)) | -(_wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.d.x, 2147483647i, var_0.a))) ^ _wgslsmith_mod_i32(u_input.d.x, ~30749i));
    var var_3 = var_2.x;
    return select(var_0.a, ~(-1i), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_sub_i32(u_input.d.x, ~select(_wgslsmith_dot_vec2_i32(u_input.d.zy, vec2<i32>(u_input.d.x, 0i)), func_1(), false));
    let x = u_input.a;
    s_output = StorageBuffer(17538i, 594f);
}

