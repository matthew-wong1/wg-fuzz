struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-622f, 323f, -1000f, -1218f), vec4<f32>(1785f, -293f, 2149f, 905f), vec4<f32>(-707f, -427f, -457f, 284f), vec4<f32>(-829f, 175f, -1000f, 1620f), vec4<f32>(1168f, 109f, 901f, 803f), vec4<f32>(1246f, -1994f, -515f, 1000f), vec4<f32>(-274f, -519f, -384f, 1905f), vec4<f32>(-1000f, -261f, -433f, -1619f), vec4<f32>(-1000f, 1084f, 334f, 1085f), vec4<f32>(1066f, -172f, 218f, 982f), vec4<f32>(-507f, 517f, 1652f, -640f), vec4<f32>(-304f, -280f, 289f, 1000f), vec4<f32>(2251f, -2000f, 486f, -2041f), vec4<f32>(751f, 167f, 356f, -546f), vec4<f32>(129f, 456f, -753f, -1318f), vec4<f32>(-1141f, 287f, -1410f, -1480f), vec4<f32>(-397f, -348f, 838f, -164f), vec4<f32>(1430f, -1315f, -420f, -609f), vec4<f32>(-809f, -1561f, 941f, 313f), vec4<f32>(-1956f, 164f, -2818f, 805f));

var<private> global2: array<vec2<i32>, 26>;

var<private> global3: Struct_3 = Struct_3(vec2<bool>(true, false), Struct_2(1u, vec3<u32>(0u, 41772u, 28993u), false), 38448u, vec2<bool>(true, true), vec4<i32>(-6087i, 41979i, -16529i, 2147483647i));

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = ~22267u;
    global1 = array<vec4<f32>, 20>();
    let var_1 = vec2<i32>(30940i, _wgslsmith_div_i32(firstLeadingBit(11945i), ~global4.x));
    let var_2 = ~(~_wgslsmith_add_u32(~(u_input.b.x | 6953u), _wgslsmith_dot_vec3_u32(~global3.b.b, ~vec3<u32>(1u, global3.c, var_0))));
    global0 = -1000f;
    return vec2<bool>(false, !(29733u <= firstLeadingBit(global3.b.a)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> vec3<u32> {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(-5128i, u_input.a.x), abs(u_input.a.x));
    global2 = array<vec2<i32>, 26>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~(~(vec3<u32>(u_input.b.x, global3.b.a, 2690u) ^ global3.b.b))), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(global3.c & u_input.b.x, 0u)), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 15540u, u_input.b.x), 4294967295u)), 20u)];
    var var_2 = select(select(vec2<bool>(true, global3.d.x), !func_3(max(arg_2, u_input.a.x), vec2<bool>(global3.d.x, global3.a.x)), true), !global3.a, global3.d.x);
    var var_3 = abs((vec2<i32>(-1i) * -u_input.a) << (~vec2<u32>(~u_input.b.x, ~u_input.b.x) % vec2<u32>(32u)));
    return vec3<u32>(1u, (~52059u ^ abs(~global3.b.a)) ^ 1u, _wgslsmith_mod_u32(u_input.b.x, abs(~(~global3.c))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(global4.x, ~(-global3.e.x ^ 1i));
    return Struct_2(14997u, ~func_2(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), vec2<f32>(222f, -586f), u_input.a.x, 29499i <= global4.x) & ~vec3<u32>(global3.b.b.x, 16944u, reverseBits(u_input.b.x)), !(!arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(61840u, 20u)] * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(global3.c, 20u)], global1[_wgslsmith_index_u32(global3.b.a, 20u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-994f, 215f, -1111f, 907f)))))), !any(!select(vec2<bool>(global3.a.x, true), vec2<bool>(false, false), global3.d.x)), select(vec3<bool>(true, false, false), select(!select(vec3<bool>(true, global3.b.c, global3.b.c), vec3<bool>(global3.b.c, global3.d.x, global3.a.x), vec3<bool>(global3.d.x, false, global3.b.c)), !(!vec3<bool>(global3.d.x, false, false)), all(!vec3<bool>(false, global3.a.x, global3.d.x))), (4294967295u == ~global3.c) & !global3.b.c));
    var var_1 = -_wgslsmith_sub_vec3_i32(global3.e.zxw, _wgslsmith_sub_vec3_i32(select(global3.e.xww, vec3<i32>(global3.e.x, u_input.a.x, global4.x), var_0.c) ^ select(global3.e.wwz, vec3<i32>(u_input.a.x, 71548i, 0i), vec3<bool>(global3.a.x, global3.d.x, true)), ~_wgslsmith_mod_vec3_i32(global3.e.xzw, vec3<i32>(u_input.a.x, global4.x, 38038i))));
    var var_2 = -(~vec3<i32>(-2147483647i, 0i, var_1.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(284f)), _wgslsmith_f_op_f32(1292f - -1338f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-696f, 188f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(~vec4<i32>(-16513i, 24694i, 1i, var_2.x)));
}

