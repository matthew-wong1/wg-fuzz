struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global1 = array<bool, 13>();
    let var_0 = ~(-u_input.c);
    global1 = array<bool, 13>();
    var var_1 = global0.d;
    var var_2 = _wgslsmith_add_i32(var_0, var_0) | ~(-2147483647i);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.b.a.a.x * var_1.b.a.c.x) + _wgslsmith_f_op_f32(298f - 315f)))), global0.e.c.x)), var_1.b.a.c.x));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(global1[_wgslsmith_index_u32(global0.a.x, 13u)], !global0.d.a.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(682f, -1000f), -267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-301f, -543f)))))), global0.d.a.a.b, _wgslsmith_f_op_vec2_f32(global0.e.a.yz - vec2<f32>(_wgslsmith_f_op_f32(629f * 621f), 1000f)), _wgslsmith_f_op_f32(1218f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    global1 = array<bool, 13>();
    global0 = Struct_4(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 0u, 8323u, 1u), u_input.a) ^ vec4<u32>(~1u, _wgslsmith_mod_u32(min(global0.c.b, var_1.b), 4294967295u), 4294967295u, u_input.a.x), select(global0.b, vec2<bool>(!(global0.b.x | var_0.x), all(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(7406u, 13u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 13u)], false, true), global0.b.x))), true), global0.e, global0.d, Struct_1(_wgslsmith_f_op_vec3_f32(abs(global0.e.a)), 0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.d.a.a.c.x, var_1.d), vec2<f32>(var_1.c.x, -996f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, 1863f) * vec2<f32>(-248f, global0.e.d)))), _wgslsmith_f_op_f32(global0.e.a.x * _wgslsmith_f_op_f32(floor(454f)))));
    let var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1137f))), _wgslsmith_f_op_f32(-866f + -166f))), 17206u, vec2<f32>(global0.d.b.a.a.x, var_1.c.x), _wgslsmith_f_op_f32(var_2.c.x + var_1.a.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_3(Struct_2(func_2(), any(!select(vec4<bool>(global0.d.b.b, false, global0.d.b.b, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global0.b.x, global1[_wgslsmith_index_u32(0u, 13u)], global0.d.a.b), false))), Struct_2(global0.d.b.a, true));
    let var_1 = arg_0.yx;
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    var var_2 = global0.b;
    return _wgslsmith_dot_vec4_u32(~global0.a, _wgslsmith_mult_vec4_u32(u_input.a, abs(u_input.a)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> StorageBuffer {
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    return StorageBuffer(arg_3, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xwy, vec3<u32>(1u, 4294967295u, 0u)) & (41461u & (arg_0.a.x | arg_1.a.b)), 42801u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.a.a.a.x;
    let x = u_input.a;
    s_output = func_4(Struct_4(((global0.a & global0.a) ^ firstLeadingBit(global0.a)) << (vec4<u32>(~5096u, ~18376u, func_1(vec3<i32>(37630i, u_input.b.x, u_input.c), u_input.b), func_1(vec3<i32>(u_input.c, 20849i, -2803i), u_input.b)) % vec4<u32>(32u)), global0.b, global0.e, global0.d, global0.e), global0.d.b, ~(-27885i ^ u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -200f));
}

