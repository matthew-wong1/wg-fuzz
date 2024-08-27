struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<u32>(0u, 0u)), Struct_2(vec2<u32>(31889u, 30689u)), Struct_2(vec2<u32>(24892u, 1u)), Struct_2(vec2<u32>(0u, 35481u)), Struct_2(vec2<u32>(0u, 1u)), Struct_2(vec2<u32>(1u, 1u)), Struct_2(vec2<u32>(1u, 21606u)), Struct_2(vec2<u32>(23418u, 38933u)), Struct_2(vec2<u32>(1u, 1u)), Struct_2(vec2<u32>(28321u, 0u)), Struct_2(vec2<u32>(23408u, 1u)), Struct_2(vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(4294967295u, 49878u)), Struct_2(vec2<u32>(28664u, 1u)), Struct_2(vec2<u32>(4294967295u, 80927u)), Struct_2(vec2<u32>(4294967295u, 37739u)), Struct_2(vec2<u32>(39225u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<u32>(1863u, 16703u)));

var<private> global1: array<f32, 18>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(i32(-2147483648), false), Struct_1(10665i, false), Struct_1(66238i, false), Struct_1(-1i, true), Struct_1(i32(-2147483648), true), Struct_1(-1i, true), Struct_1(-1i, false), Struct_1(-1i, true), Struct_1(-36938i, true), Struct_1(1i, true), Struct_1(-1i, true), Struct_1(-1i, false), Struct_1(i32(-2147483648), false));

var<private> global3: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global4: Struct_2 = Struct_2(vec2<u32>(1u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global4.a.x, firstTrailingBit(1u)), select((1u >> (u_input.a % 32u)) ^ min(5648u, 46108u), _wgslsmith_sub_u32(reverseBits(global4.a.x), u_input.a), any(vec4<bool>(arg_1.x, false, arg_1.x, false)) && !arg_1.x) & u_input.a), 20u)];
    var_0 = global0[_wgslsmith_index_u32(global4.a.x, 20u)];
    var var_1 = -firstLeadingBit(-1i);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1283f, 871f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global4.a.x, 18u)])), min(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.x, 0u), global4.a)) > _wgslsmith_div_u32(~global4.a.x, var_0.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(global4.a.x, 18u)], 568f, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, var_2)) - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-414f, -145f, _wgslsmith_f_op_f32(max(661f, 1238f))) + _wgslsmith_f_op_vec3_f32(arg_0.wxz - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, 217f))))))));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    global3 = array<vec3<bool>, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-921f, global1[_wgslsmith_index_u32(75974u, 18u)], 359f, global1[_wgslsmith_index_u32(0u, 18u)]) + vec4<f32>(-2154f, global1[_wgslsmith_index_u32(0u, 18u)], 1281f, global1[_wgslsmith_index_u32(0u, 18u)])), vec4<f32>(-929f, 1173f, global1[_wgslsmith_index_u32(1u, 18u)], -789f)) + vec4<f32>(global1[_wgslsmith_index_u32(reverseBits(global4.a.x), 18u)], 1266f, 984f, global1[_wgslsmith_index_u32(arg_1.x, 18u)])))));
    global2 = array<Struct_1, 13>();
    global4 = Struct_2(global4.a);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))), 1240f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(func_3(var_0, vec3<bool>(true, false, false)), 18u)], 113f)));
    return ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(1u, u_input.a)), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, arg_1.x), min(arg_1.x, u_input.a))), 65562u, arg_1.x);
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.a;
    return Struct_2(min(abs(vec2<u32>(39522u, func_2(-32767i, global4.a))), vec2<u32>(~var_0, func_2(~2147483647i, ~vec2<u32>(35392u, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<Struct_2, 20>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1803u, 18u)], 131f, -1098f)), vec3<f32>(global1[_wgslsmith_index_u32(39551u, 18u)], global1[_wgslsmith_index_u32(global4.a.x, 18u)], -825f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(1540u, 18u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1310f, 561f, -336f), vec3<f32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(global4.a.x, 18u)], -893f))), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(482f, -626f, global1[_wgslsmith_index_u32(global4.a.x, 18u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(13748u, 18u)], -614f), vec3<f32>(-741f, -922f, global1[_wgslsmith_index_u32(global4.a.x, 18u)]), vec3<bool>(true, false, false))))), !vec3<bool>(true, false, all(vec2<bool>(true, false))))));
    global4 = func_1();
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-723f + var_1.a.x), global1[_wgslsmith_index_u32(~0u, 18u)]) - var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(233i);
}

