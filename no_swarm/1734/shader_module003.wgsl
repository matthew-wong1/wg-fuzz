struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> bool {
    global0 = array<Struct_5, 22>();
    return any(vec3<bool>(arg_3.a, all(vec3<bool>(arg_1 < 436f, any(vec2<bool>(false, false)), true)), select(!(false || arg_3.a), arg_3.a, any(vec4<bool>(true, arg_0, false, true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1854f, 461f) - _wgslsmith_f_op_f32(round(-101f)))))) + _wgslsmith_f_op_f32(-259f - -354f));
    global0 = array<Struct_5, 22>();
    var var_1 = Struct_3(arg_0, u_input.c, vec3<bool>(9706i >= (-u_input.c.x << (500u % 32u)), !arg_0.x, any(vec2<bool>(all(vec4<bool>(true, arg_1, arg_0.x, arg_0.x)), func_3(arg_0.x, 495f, 2147483647i, Struct_4(false))))));
    global0 = array<Struct_5, 22>();
    var var_2 = func_3(any(var_1.a.zw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), -_wgslsmith_div_i32(9635i, u_input.e), Struct_4(arg_0.x));
    return Struct_4(arg_0.x);
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = -vec2<i32>(firstLeadingBit(~2147483647i) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22354u, 94875u, 38283u), vec3<u32>(1u, 1u, 0u)), ~4294967295u) % 32u), 1i);
    global0 = array<Struct_5, 22>();
    let var_1 = true;
    var var_2 = func_2(!select(!vec4<bool>(true, var_1, arg_0, true), vec4<bool>(true, true, true, !var_1), any(!vec2<bool>(arg_0, true))), true);
    let var_3 = Struct_2(~(~vec3<u32>(52882u, 0u, reverseBits(32608u))), !all(vec3<bool>(all(vec2<bool>(var_2.a, false)), var_1, true)));
    return vec3<bool>(false, true, arg_0);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, _wgslsmith_f_op_f32(-131f + 1770f), 1288f, _wgslsmith_f_op_f32(step(-237f, 729f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-539f, -163f) - vec2<f32>(-1919f, -1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(334f, 1000f)))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(arg_3.b, true, arg_1.x, false)), false, false, any(vec4<bool>(arg_3.b, arg_1.x, arg_3.b, arg_1.x))), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(!arg_1.xz), true, true), !select(!vec4<bool>(true, arg_3.b, arg_1.x, false), !vec4<bool>(arg_3.b, false, arg_1.x, arg_1.x), select(vec4<bool>(true, arg_1.x, arg_3.b, arg_3.b), vec4<bool>(false, false, arg_3.b, arg_1.x), arg_3.b))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1101f + 2616f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(163f * 1957f), -765f, true)))));
    var_0 = Struct_5(var_0.a, vec4<bool>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.x, 35414u), arg_3.a.zy), _wgslsmith_div_u32(arg_3.a.x, 4294967295u), ~1u) >= arg_0, any(vec3<bool>(true, var_0.b.x, select(true, false, arg_3.b))), true, arg_3.b | false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(137f, _wgslsmith_f_op_f32(step(var_0.c.x, var_0.a.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1826f), -1000f))));
    return var_0.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1117f;
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    var var_1 = ~0u;
    var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f))))));
    global0 = array<Struct_5, 22>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~min(vec3<u32>(89002u, 46362u, 1u), vec3<u32>(1u, 1u, 1u))), select(func_1(true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), false), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c.xww >> (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-19981i, u_input.c.x, u_input.b) ^ u_input.c.yxw), ~(~1i), u_input.c.x), Struct_2(vec3<u32>(~35113u, _wgslsmith_mod_u32(1u, 25974u), reverseBits(39648u)), -1260f >= var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-720f)), -183f));
}

