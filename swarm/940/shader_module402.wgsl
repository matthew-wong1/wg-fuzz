struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(38628u, 0u), vec2<u32>(2423u, 11932u), vec2<u32>(0u, 52293u), vec2<u32>(0u, 4294967295u), vec2<u32>(7841u, 4294967295u), vec2<u32>(4294967295u, 65354u), vec2<u32>(28680u, 0u), vec2<u32>(1u, 24363u), vec2<u32>(9232u, 1u), vec2<u32>(58643u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 70891u), vec2<u32>(6849u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global2 = all(select(vec3<bool>(all(vec3<bool>(false, false, true)) | true, true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), true));
    let var_0 = vec4<f32>(162f, 566f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1724f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1434f))))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1117f), _wgslsmith_f_op_f32(791f - 1184f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-465f)))))));
    let var_1 = Struct_2((~min(vec4<i32>(-2147483647i, u_input.b, global1.a.x, 0i), vec4<i32>(-2147483647i, 44181i, -7401i, 5934i)) | (_wgslsmith_div_vec4_i32(vec4<i32>(1i, 39491i, u_input.a, global1.a.x), vec4<i32>(41337i, 2147483647i, 0i, 11579i)) ^ vec4<i32>(1i, 1i, 1i, 1i))) | abs(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-9187i, u_input.a, u_input.a, global1.a.x)), vec4<i32>(-63544i, -2147483647i, u_input.b, global1.a.x))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(global1.a.x, u_input.a), min(u_input.b, u_input.b))), Struct_1(-global1.a), _wgslsmith_f_op_f32(floor(var_0.x)));
    global1 = var_1.c;
    return -14964i;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(~28924u, 0u), global0[_wgslsmith_index_u32(~(~2558u), 13u)]));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d, arg_0.d, _wgslsmith_f_op_f32(ceil(arg_0.d))))))), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.a.x, func_3()), arg_0.a.xw), arg_0, select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(vec2<bool>(193f <= arg_0.d, arg_0.d >= arg_0.d), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), false), vec2<bool>(true, any(vec4<bool>(false, true, false, true)))), false), ~(4294967295u << (0u % 32u)));
    global2 = 1513f < _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(sign(375f)))));
    global2 = false;
    let var_2 = Struct_1(vec2<i32>(reverseBits(-2147483647i), u_input.b));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 1665f, arg_0.d, -453f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d, -1487f, arg_0.d, arg_0.d), vec4<f32>(-485f, -1324f, 1000f, arg_0.d))), vec4<f32>(1505f, 583f, var_1.a.x, arg_0.d), vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x))), vec4<bool>(all(vec3<bool>(false, true, true)), !var_1.d.x, any(vec2<bool>(var_1.d.x, var_1.d.x)), !var_1.d.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.a.x, -1000f)), _wgslsmith_f_op_f32(select(-1000f, var_1.c.d, var_1.d.x)), _wgslsmith_f_op_f32(select(-791f, var_1.a.x, true)), var_1.a.x)))) - vec4<f32>(-814f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.d, -789f))), arg_0.d, var_1.a.x));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-274f, 1000f)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true))))), vec2<f32>(212f, _wgslsmith_f_op_f32(-1f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<i32>(func_3(), countOneBits(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(8728i, -9775i), global1.a), ~1674i), arg_0, arg_0, var_0.x), vec4<i32>(u_input.a, 61462i, countOneBits(~arg_0.a.x), -56365i), Struct_1(~vec2<i32>(-2147483647i, arg_0.a.x) ^ vec2<i32>(-13311i, 0i)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, 858f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1386f, var_0.x), vec4<f32>(var_0.x, -325f, var_0.x, 771f)), _wgslsmith_div_vec4_f32(vec4<f32>(649f, -1354f, 468f, var_0.x), vec4<f32>(var_0.x, -1179f, var_0.x, -415f))))))), !(!vec4<bool>(var_0.x >= var_0.x, true, true, false))));
    global1 = arg_0;
    let var_2 = Struct_2(vec4<i32>(0i, 8397i, ~(-2147483647i), -(~u_input.a)), Struct_1(vec2<i32>(arg_0.a.x, arg_0.a.x)), Struct_1(global1.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_1.x) * 667f));
    var var_3 = select(vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)) | true, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)), any(vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, true))), vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), true), vec3<bool>(!(abs(59169i) <= u_input.a), !(!all(vec3<bool>(true, false, false))), all(vec2<bool>(true, true))));
    return select(!vec4<bool>(true, !(var_3.x && true), false, var_1.x >= _wgslsmith_f_op_f32(-var_0.x)), !select(select(!vec4<bool>(false, false, var_3.x, true), !vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), true), vec4<bool>(var_2.d < -1408f, var_3.x, all(vec4<bool>(true, var_3.x, false, false)), arg_0.a.x <= global1.a.x), !select(vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(false, false, false, true), vec4<bool>(var_3.x, true, var_3.x, var_3.x))), vec4<bool>(!any(vec3<bool>(true, false, var_3.x)), all(!select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x), var_3.x)), true, var_3.x));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_2(Struct_1(-(~global1.a)));
    var var_1 = vec4<bool>(true, true, !arg_0, true);
    global1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(global1.a.x, -2147483647i), 1i), min(vec2<i32>(i32(-1i) * -47638i, func_3()), countOneBits(-global1.a))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(490f, 384f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true))))));
    global1 = Struct_1(vec2<i32>(min(~u_input.a, _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(-1i, -35936i))) & -(u_input.b | global1.a.x), _wgslsmith_dot_vec2_i32(-global1.a, abs(global1.a)) << (_wgslsmith_div_u32(~25762u, 1u) % 32u)));
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0))))))));
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1, _wgslsmith_mod_u32(1u, 1u)), select(~global0[_wgslsmith_index_u32(var_1, 13u)], global0[_wgslsmith_index_u32(55788u, 13u)], ((var_0 < var_0) || false) && (true || all(vec4<bool>(false, true, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(floor(802f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-539f + var_0) + 747f)), -1534f), vec2<u32>(~(~4294967295u), var_1) ^ min(~_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(69002u, 13u)], vec2<u32>(6292u, 4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(var_1, 39924u, 0u), ~1u)), -reverseBits(firstLeadingBit(~global1.a.x)));
}

