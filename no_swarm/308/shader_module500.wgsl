struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<f32, 7> = array<f32, 7>(828f, 743f, -154f, -173f, 2626f, 1687f, 547f);

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(725f, -422f));

var<private> global3: array<vec3<i32>, 13>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_3.a, ~u_input.a);
    global0 = 4294967295u;
    global1 = array<f32, 7>();
    return -1i;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: i32, arg_3: f32) -> u32 {
    global0 = u_input.b;
    var var_0 = true;
    var var_1 = _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(u_input.c, 1u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))), max(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a, u_input.b)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42246u, u_input.a), vec2<u32>(1u, u_input.c)), _wgslsmith_sub_u32(u_input.c, 1u)), ~vec2<u32>(7124u, 40153u))));
    global3 = array<vec3<i32>, 13>();
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 7u)], 193f, -1060f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1820f, arg_3, global1[_wgslsmith_index_u32(var_1.x, 7u)]))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, 1000f, -1892f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1778f, arg_3, arg_3))), false)))), vec3<f32>(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1496f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 7u)])))), false))));
    return _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(_wgslsmith_div_u32(41503u, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 77020u), vec2<u32>(var_1.x, 49038u)), min(u_input.a, var_1.x), 0u)), vec4<u32>(4294967295u, var_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 70469u, 0u, 30106u), vec4<u32>(var_1.x, var_1.x, u_input.c, u_input.c)), countOneBits(abs(vec4<u32>(var_1.x, var_1.x, var_1.x, 0u)))), ~(min(119623u, u_input.b) << ((u_input.c << (4294967295u % 32u)) % 32u))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<vec2<f32>, 1>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(1174f, -794f), _wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 7u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(1u) << (~u_input.a % 32u), 7u)] - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~u_input.c, 7u)], 947f))), _wgslsmith_f_op_f32(f32(-1f) * -342f), true)));
    let var_1 = _wgslsmith_sub_i32(func_2(all(vec2<bool>(true, false)), true, _wgslsmith_f_op_f32(max(-523f, -344f)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 18902u), vec3<u32>(u_input.a, u_input.b, u_input.c)) != u_input.c, ~u_input.c)), -30274i);
    var var_2 = var_1;
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(31079u | countOneBits(u_input.a), ~0u, ~func_3(vec4<i32>(var_1, -1i, var_1, -2147483647i), -1i, arg_0, global1[_wgslsmith_index_u32(u_input.b, 7u)])), firstLeadingBit(vec3<u32>(~u_input.c, u_input.b, 0u)), vec3<u32>(1u, ~u_input.c, abs(6628u)) & vec3<u32>(~1u, u_input.c, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.c & 16980u, ~u_input.c), _wgslsmith_div_u32(~4294967295u, ~u_input.a), u_input.c), vec3<u32>(~1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37069u), ~vec2<u32>(u_input.a, 1u))), select(~firstTrailingBit(vec3<u32>(48911u, u_input.a, 55292u)), vec3<u32>(17132u, u_input.c << (26693u % 32u), 1u), !all(vec4<bool>(true, false, true, false)))));
    return Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec4<bool>(true, false, false, true)), true))), 41942u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-2147483647i);
    let var_1 = !all(!(!(!vec4<bool>(var_0.a, false, true, var_0.a))));
    let var_2 = func_1(-6107i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-977f, -1587f, -583f) * vec3<f32>(649f, global1[_wgslsmith_index_u32(u_input.c, 7u)], global1[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1580f, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 7u)], -1155f, 257f)))))));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(33510u, _wgslsmith_clamp_vec4_i32(min(vec4<i32>(12643i, _wgslsmith_sub_i32(1i, 1i), ~43098i, -48085i), vec4<i32>(-4851i, _wgslsmith_mod_i32(68090i, -2147483647i), 51341i, max(26854i, -2147483647i))), vec4<i32>(1i, 1i, 1i, 1i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-1i, 2147483647i, 0i, 1i), min(vec4<i32>(21487i, 1i, 59925i, 2147483647i), vec4<i32>(-1i, -57264i, 7093i, 17277i)))));
}

