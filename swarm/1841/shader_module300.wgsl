struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(34841u, 1u, 4294967295u, 46201u, 120707u);

var<private> global1: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-681f, -175f), vec2<f32>(-189f, 1054f), vec2<f32>(-1430f, -2333f), vec2<f32>(929f, 236f), vec2<f32>(1510f, -169f), vec2<f32>(-522f, 858f), vec2<f32>(-837f, -1000f), vec2<f32>(-248f, 514f), vec2<f32>(972f, 469f), vec2<f32>(862f, 301f), vec2<f32>(394f, -890f), vec2<f32>(-1097f, 650f), vec2<f32>(1025f, 1538f), vec2<f32>(-256f, -318f), vec2<f32>(2450f, -684f), vec2<f32>(-621f, 436f), vec2<f32>(2099f, 770f), vec2<f32>(1331f, -274f), vec2<f32>(-450f, 840f), vec2<f32>(670f, 580f), vec2<f32>(1267f, 135f));

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<vec2<i32>, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(383f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) + -286f));
    global0 = array<u32, 5>();
    return global2.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = arg_1.x | !(!((global0[_wgslsmith_index_u32(1u, 5u)] >= 4294967295u) | true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1173f))))), -639f));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, -1568f, 536f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-468f, -1228f, 278f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-604f, 1709f, -574f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1102f, 707f, 222f)), true))))))));
    global0 = array<u32, 5>();
    var var_3 = !(!(!select(!vec2<bool>(arg_1.x, false), vec2<bool>(global2.x, false), select(global2.xy, global2.yx, arg_1.x))));
    return !(!select(vec4<bool>(func_3(), !global2.x, func_3(), true | var_0), select(select(vec4<bool>(false, var_3.x, true, var_3.x), vec4<bool>(true, true, true, arg_1.x), false), select(vec4<bool>(global2.x, global2.x, var_0, var_3.x), vec4<bool>(false, var_3.x, arg_1.x, var_3.x), vec4<bool>(arg_1.x, var_0, true, var_0)), var_3.x), true));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-169f * -156f))), 427f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2456f, 1303f, 1555f)), vec3<f32>(-333f, 859f, -1287f), true))))));
    global3 = array<vec2<i32>, 13>();
    global2 = select(vec3<bool>(false && global2.x, global2.x, global2.x), select(vec3<bool>(any(vec4<bool>(false, global2.x, true, true)), _wgslsmith_dot_vec3_i32(arg_1.xxw, vec3<i32>(37635i, 2147483647i, arg_1.x)) == -2147483647i, global2.x), vec3<bool>(global2.x, true && select(true, true, global2.x), !global2.x), select(vec3<bool>(true, true, true), !vec3<bool>(global2.x, false, global2.x), global2.x)), true);
    var var_1 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1533f)) * _wgslsmith_div_f32(-949f, -110f))))));
    var var_2 = !(!(!select(select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, false, false, false), false), func_2(arg_0, global2.yz), vec4<bool>(false, global2.x, global2.x, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(871f, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1746f - _wgslsmith_f_op_f32(f32(-1f) * -262f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(487f, 710f) * -1604f) + _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(4101u, 0u, 69711u, 43104u)), vec4<i32>(-10422i, u_input.a.x, u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-184f)))), _wgslsmith_f_op_f32(-177f - _wgslsmith_f_op_f32(-563f * 1099f))) - -154f), _wgslsmith_f_op_f32(f32(-1f) * -1655f), _wgslsmith_f_op_f32(select(-1002f, _wgslsmith_f_op_f32(f32(-1f) * -491f), global2.x)));
    var var_1 = abs(max(u_input.d, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(8698u, 5u)])), vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], 9297u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, u_input.c), u_input.d, global2.x), ~vec2<u32>(global0[_wgslsmith_index_u32(1309u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])))));
    let var_2 = Struct_1(countOneBits(vec4<u32>((4294967295u >> (global0[_wgslsmith_index_u32(var_1.x, 5u)] % 32u)) >> (21359u % 32u), ~57094u, _wgslsmith_dot_vec2_u32(u_input.d, u_input.d << (vec2<u32>(12185u, var_1.x) % vec2<u32>(32u))), ~1u)));
    global2 = !select(!func_2(Struct_1(var_2.a), global2.yx).zwy, vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(global2.x, true, global2.x), false)), 1i == u_input.a.x, global2.x), vec3<bool>(-u_input.a.x >= u_input.a.x, true, true));
    let var_3 = (~(~global0[_wgslsmith_index_u32(var_1.x | 1u, 5u)]) >> (28919u % 32u)) ^ ~u_input.b;
    let var_4 = var_2;
    var var_5 = !global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_2.a.x ^ global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 509u), 5u)])), var_2.a.x);
}

