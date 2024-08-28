struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: u32 = 67487u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = arg_2.a.x;
    return _wgslsmith_f_op_f32(arg_3 + 321f);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    global0 = 12914u;
    var var_0 = _wgslsmith_add_u32(25580u, _wgslsmith_dot_vec3_u32(~u_input.a.zyz, select(~vec3<u32>(4294967295u, 0u, arg_1.x), vec3<u32>(13087u, 13885u, 0u), vec3<bool>(arg_0.d.x, false, arg_0.d.x)))) >= ~arg_1.x;
    var_0 = true;
    let var_1 = ~_wgslsmith_dot_vec2_u32(arg_1, _wgslsmith_add_vec2_u32(arg_1 ^ ~vec2<u32>(72482u, arg_1.x), abs(countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)))));
    let var_2 = ~u_input.a.x | 1u;
    return var_1 <= arg_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<f32> {
    global0 = arg_0.a.x;
    global0 = 4294967295u;
    global0 = ~_wgslsmith_add_u32(arg_0.a.x, u_input.a.x);
    let var_0 = min(1i, -2147483647i);
    let var_1 = Struct_1(countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 41861u, arg_1.x), u_input.a.www) >> (select(arg_0.a, vec3<u32>(59536u, u_input.a.x, arg_1.x), vec3<bool>(arg_0.c, false, arg_0.c)) % vec3<u32>(32u)), vec3<u32>(0u >> (0u % 32u), arg_1.x, 15921u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b)))), !(!arg_0.c), select(select(vec4<bool>(true, true, false, !arg_0.c), !select(vec4<bool>(true, arg_0.c, arg_0.d.x, false), arg_0.d, false), !vec4<bool>(false, true, arg_0.c, false)), vec4<bool>(all(arg_0.d.wxy), ~42473u >= (u_input.a.x << (0u % 32u)), arg_0.d.x, !(!arg_0.c)), select(select(arg_0.d, !arg_0.d, false), vec4<bool>(func_3(Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d), u_input.a.ww), true, true, 36471u > arg_0.a.x), arg_0.d.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b, -509f, var_1.b, 617f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, var_1.b, arg_0.b, -680f), vec4<f32>(var_1.b, 1958f, 1000f, var_1.b))), vec4<f32>(arg_0.b, -2234f, 1875f, -628f), select(arg_0.d, arg_0.d, var_1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(any(vec3<bool>(all(vec4<bool>(true, true, false, false)), true, true)), false || all(vec2<bool>(true, false))), vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), false), any(vec2<bool>(true, true)));
    global0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(20175i, 0i, -43654i, -2147483647i), Struct_1(u_input.a.www, -674f, var_0.x, vec4<bool>(var_0.x, true, false, false)), Struct_1(u_input.a.wzz, 145f, true, vec4<bool>(var_0.x, false, var_0.x, true)), 1215f)), _wgslsmith_f_op_f32(-934f - 1110f), _wgslsmith_f_op_f32(110f * 286f), _wgslsmith_f_op_f32(-768f * -571f)))))));
    var var_2 = vec2<u32>(~countOneBits(_wgslsmith_mult_u32(u_input.a.x, 80309u) >> (select(u_input.a.x, u_input.a.x, true) % 32u)), ~u_input.a.x);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, 521f, var_1.x, var_1.x) + vec4<f32>(var_1.x, -279f, 481f, var_1.x)) + vec4<f32>(1393f, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1144f, var_1.x, var_1.x) + vec4<f32>(var_1.x, var_1.x, -708f, var_1.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.a.xwz, var_1.x, var_0.x, vec4<bool>(true, true, true, var_0.x)), u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1988f, var_1.x, 780f, var_1.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(736f, var_1.x, var_1.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<u32>(4294967295u, 1u, var_2.x), var_1.x, var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, false)), ~u_input.a)).x) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x)), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.a.wwx, 1383f, var_0.x, vec4<bool>(var_0.x, var_0.x, false, var_0.x)), u_input.a)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(411f))), 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(14986u, ~_wgslsmith_mod_u32(90101u, var_2.x)));
}

