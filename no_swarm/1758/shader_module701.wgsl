struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: array<u32, 9> = array<u32, 9>(32579u, 0u, 30833u, 12999u, 4294967295u, 3500u, 0u, 4294967295u, 1u);

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(1538f, -491f, -892f), vec3<f32>(1084f, 134f, -1000f), vec3<f32>(-251f, 559f, 110f), vec3<f32>(1000f, 290f, -394f), vec3<f32>(2037f, -1274f, 1934f), vec3<f32>(-301f, 1310f, 2210f), vec3<f32>(-714f, 1936f, -366f), vec3<f32>(-680f, -440f, -189f), vec3<f32>(-1000f, -1947f, 922f), vec3<f32>(519f, -2374f, -915f), vec3<f32>(-2314f, 1731f, 1697f), vec3<f32>(704f, 508f, -705f), vec3<f32>(-635f, -2315f, 747f), vec3<f32>(1062f, 1072f, -1029f), vec3<f32>(683f, 1309f, -910f), vec3<f32>(-297f, -740f, -819f), vec3<f32>(-222f, 372f, 1168f), vec3<f32>(-1994f, 645f, -1433f), vec3<f32>(1000f, 269f, -396f), vec3<f32>(1000f, -1135f, -131f), vec3<f32>(260f, -833f, 1101f), vec3<f32>(-934f, -1000f, 324f), vec3<f32>(-1111f, -207f, -1314f), vec3<f32>(188f, 402f, -1000f), vec3<f32>(1920f, 1155f, -1362f), vec3<f32>(-849f, -473f, -192f), vec3<f32>(-698f, -937f, 701f), vec3<f32>(-1112f, -2316f, 855f), vec3<f32>(976f, 219f, 261f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = vec4<bool>(!(!any(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a, 9u)], 9u)])) | !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), any(vec3<bool>(all(global0[_wgslsmith_index_u32(1u, 9u)]), !all(vec4<bool>(false, false, true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(1234u, 4294967295u, 1u), vec3<u32>(u_input.a, arg_0.a, 0u)) >= reverseBits(4294967295u))), !(!any(vec2<bool>(true, true))), !any(global0[_wgslsmith_index_u32(0u, 9u)]));
    let var_1 = Struct_1(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(abs(72466u), 9u)], select(u_input.a, ~global1[_wgslsmith_index_u32(arg_0.a, 9u)], var_0.x) >> (4294967295u % 32u)));
    let var_2 = Struct_1(~1u);
    let var_3 = var_2;
    let var_4 = 1i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(667f, -336f, -1000f, _wgslsmith_f_op_f32(231f - 1802f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1727f, -1246f, 396f, 157f))))))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(28837u << ((global1[_wgslsmith_index_u32(51842u, 9u)] | 1u) % 32u)))));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~reverseBits(arg_0)), u_input.a), 9u)]);
    let var_2 = vec4<f32>(arg_2, 609f, -1434f, 2378f);
    let var_3 = var_1;
    var var_4 = var_3;
    return 0u;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~min(firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(16316u, u_input.a), 4431u, 50059u)), vec3<u32>(~global1[_wgslsmith_index_u32(~4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a));
    global2 = array<vec3<f32>, 29>();
    global0 = array<vec3<bool>, 9>();
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.x, 65711u)), vec2<u32>(_wgslsmith_clamp_u32(1u, arg_0.a, u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1640u, var_0.x, 1u, 0u), vec4<u32>(1u, arg_0.a, 0u, var_0.x)), 9u)])), func_2(59094u, vec4<bool>(false, true, any(global0[_wgslsmith_index_u32(arg_0.a, 9u)]), false), _wgslsmith_f_op_f32(trunc(-1284f)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -25890i)), -vec2<i32>(20904i, -32964i)))));
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(f32(-1f) * -1424f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-298f, -257f, true)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -969f)) + _wgslsmith_f_op_f32(sign(476f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-184f)) - _wgslsmith_f_op_f32(-248f - 513f)), _wgslsmith_f_op_f32(-1132f - 1326f), true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-944f)), _wgslsmith_f_op_f32(func_1(Struct_1(81905u))))));
    global1 = array<u32, 9>();
    var var_1 = 1408f;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(127f)))) + _wgslsmith_div_f32(1286f, -890f))));
    let x = u_input.a;
    s_output = StorageBuffer((abs(1i) >> (func_2(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 4294967295u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -567f), countOneBits(2147483647i)) % 32u)) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(10440u, 14961u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a, global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<u32>(32195u, 2488u, u_input.a))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33655u, 1u, global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<u32>(u_input.a, 51598u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 23531u)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69556u, 9u)], 9u)]), u_input.a) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(911f, 568f), vec2<f32>(-559f, -1403f))))))), _wgslsmith_f_op_f32(-778f - _wgslsmith_div_f32(2453f, 139f)));
}

