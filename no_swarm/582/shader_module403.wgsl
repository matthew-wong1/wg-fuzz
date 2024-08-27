struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<f32, 16> = array<f32, 16>(946f, 173f, -1153f, 384f, -1183f, 1000f, 610f, -675f, 521f, -1102f, 313f, 236f, 226f, -1000f, -353f, -1731f);

var<private> global2: array<i32, 6> = array<i32, 6>(10537i, 12756i, -54810i, -382i, -42143i, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    return !((u_input.a.x & ~_wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.yx)) == 28046u);
}

fn func_2() -> u32 {
    global2 = array<i32, 6>();
    var var_0 = _wgslsmith_f_op_f32(-358f + global1[_wgslsmith_index_u32(u_input.c.x, 16u)]);
    var var_1 = Struct_2(!select(vec2<bool>(func_3(Struct_1(1i, vec3<bool>(true, global0[_wgslsmith_index_u32(45412u, 8u)], global0[_wgslsmith_index_u32(8744u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], true, global0[_wgslsmith_index_u32(4294967295u, 8u)], false), vec2<f32>(-1026f, 1000f)), 667f), false), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)]), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var_1 = Struct_2(!(!vec2<bool>(var_1.a.x | global0[_wgslsmith_index_u32(0u, 8u)], any(vec3<bool>(false, var_1.a.x, false)))));
    global1 = array<f32, 16>();
    return u_input.a.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec2<i32> {
    global0 = array<bool, 8>();
    var var_0 = select(!vec4<bool>(global0[_wgslsmith_index_u32(45674u, 8u)], true, any(vec4<bool>(false, false, false, false)) && !global0[_wgslsmith_index_u32(u_input.a.x, 8u)], any(vec4<bool>(false, false, false, true))), !(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(50803u, 8u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 8u)])))), vec4<bool>(all(select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 8u)], false), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), global0[_wgslsmith_index_u32(4294967295u, 8u)]), global0[_wgslsmith_index_u32(~31281u, 8u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), countOneBits(u_input.c.x & 1u)), 8u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(4294967295u, reverseBits(u_input.c.x), 0u)), 8u)], any(vec3<bool>(global0[_wgslsmith_index_u32(43604u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 6u)] <= -65637i, false))));
    let var_1 = vec4<i32>(-1i, 0i, min(_wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i), 11666i), -(~1i >> (~func_2() % 32u)));
    var var_2 = !var_0.wyx;
    var var_3 = global1[_wgslsmith_index_u32(0u, 16u)];
    return abs(var_1.ww);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1710f;
    let var_1 = _wgslsmith_div_vec2_i32(-(~min(vec2<i32>(-15294i, global2[_wgslsmith_index_u32(8250u, 6u)]), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)]))) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(60682u, u_input.a.x, 0u, u_input.c.x)), u_input.c.x) % vec2<u32>(32u)), countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(0u, 6u)]), -vec2<i32>(10220i, global2[_wgslsmith_index_u32(1u, 6u)])), func_1(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], -3642f), u_input.a.yy))));
    global2 = array<i32, 6>();
    global0 = array<bool, 8>();
    var var_2 = Struct_1(abs(-(~reverseBits(1i))), !(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(27690u, 8u)], false), vec3<bool>(global0[_wgslsmith_index_u32(8791u, 8u)], true, global0[_wgslsmith_index_u32(47941u, 8u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(14573u, 8u)])))), !select(select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], false, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], true)), vec4<bool>(true, true, true, !global0[_wgslsmith_index_u32(41996u, 8u)]), all(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(4510u, 8u)], false), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(23164u, 8u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1715f, 1597f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 1178f), vec2<f32>(var_0, 1000f)))))));
    global0 = array<bool, 8>();
    global1 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-616f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-840f, var_2.d.x, global1[_wgslsmith_index_u32(1u, 16u)]) * vec3<f32>(-894f, -422f, 657f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1048f, var_2.d.x, 188f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, 228f, 1460f))))));
}

