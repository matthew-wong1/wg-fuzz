struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1016f, 1765f);

var<private> global1: array<f32, 4> = array<f32, 4>(-1334f, -629f, 913f, 452f);

var<private> global2: f32 = 2810f;

var<private> global3: array<vec4<f32>, 27>;

var<private> global4: array<bool, 7> = array<bool, 7>(true, false, true, true, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_5) -> f32 {
    var var_0 = select(_wgslsmith_div_u32(~0u, ~_wgslsmith_clamp_u32(39777u, 0u, 18396u)) >> (~1u % 32u), abs(~select(abs(60619u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 84135u)), arg_1)), !any(!vec4<bool>(true, arg_2.a.x, arg_2.a.x, true)));
    var var_1 = _wgslsmith_f_op_f32(global0.x - global0.x);
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~45532u, 4u)], global1[_wgslsmith_index_u32(~(~85090u), 4u)])))));
    var var_2 = -530f;
    let var_3 = arg_2;
    return -243f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, 621f)));
    var var_0 = any(vec3<bool>(true, !any(vec3<bool>(arg_1.a.a, global4[_wgslsmith_index_u32(10499u, 7u)], false)), true));
    let var_1 = Struct_5(vec2<bool>(global4[_wgslsmith_index_u32(arg_1.a.c.x, 7u)], !(!(arg_1.a.a || global4[_wgslsmith_index_u32(105752u, 7u)]))));
    return min(u_input.b, 2147483647i) != (i32(-1i) * -(~12773i));
}

fn func_2() -> bool {
    let var_0 = Struct_5(!vec2<bool>(global4[_wgslsmith_index_u32(min(1u, abs(3599u)), 7u)], any(vec4<bool>(true, true, true, false))));
    global4 = array<bool, 7>();
    global1 = array<f32, 4>();
    var var_1 = Struct_3(Struct_2(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -767f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1873f, global1[_wgslsmith_index_u32(1u, 4u)]) - vec2<f32>(-374f, global1[_wgslsmith_index_u32(2958u, 4u)]))), Struct_3(Struct_2(global4[_wgslsmith_index_u32(0u, 7u)], vec4<f32>(1000f, 105f, 1866f, 542f), vec3<u32>(0u, 6721u, 10554u)), all(vec3<bool>(global4[_wgslsmith_index_u32(0u, 7u)], true, false)), 11527u, _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -37708i), true, Struct_5(vec2<bool>(false, false)))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1008f + -506f) + _wgslsmith_f_op_f32(f32(-1f) * -1523f)), _wgslsmith_f_op_f32(abs(-1000f)), global1[_wgslsmith_index_u32(1u, 4u)]), vec3<u32>(21748u, _wgslsmith_dot_vec3_u32(vec3<u32>(23133u, 25976u, 74334u), vec3<u32>(4294967295u, 33212u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(13998u, 41341u), vec2<u32>(60278u, 4294967295u))) << (~min(vec3<u32>(4294967295u, 40120u, 58630u), vec3<u32>(96986u, 1u, 1u)) % vec3<u32>(32u))), true, 54799u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 309f) * global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(50042u, 1u), 4u)])))));
    var var_2 = var_1.a;
    return all(!select(vec3<bool>(var_2.a, false, var_2.a | true), vec3<bool>(all(var_0.a), !var_1.b, u_input.b <= u_input.b), u_input.b > abs(-1i)));
}

fn func_1() -> StorageBuffer {
    global3 = array<vec4<f32>, 27>();
    global4 = array<bool, 7>();
    let var_0 = !global4[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_1 = Struct_2(func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(0u, 27u)], vec4<f32>(1000f, 178f, -1000f, -342f)))) * _wgslsmith_f_op_vec4_f32(floor(global3[_wgslsmith_index_u32(1u, 27u)]))), _wgslsmith_sub_vec3_u32(vec3<u32>(9695u, abs(25553u), ~(~4294967295u)), vec3<u32>(22215u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 52368u), vec3<u32>(0u, 9616u, 1u)) ^ 1u, 4294967295u)));
    global1 = array<f32, 4>();
    return StorageBuffer(var_1.c.zy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(213f, _wgslsmith_f_op_f32(863f - -288f))))), _wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_1.c.x, 4u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

