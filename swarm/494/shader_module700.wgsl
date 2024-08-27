struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: i32;

var<private> global1: array<bool, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global1 = array<bool, 17>();
    var var_0 = -2147483647i;
    let var_1 = Struct_2(vec3<bool>(false, !(~31309i == ~u_input.a), select(true, _wgslsmith_f_op_f32(195f - 774f) >= _wgslsmith_f_op_f32(floor(-1558f)), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 17u)])), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f)), _wgslsmith_f_op_f32(577f - -627f), _wgslsmith_f_op_f32(select(-1342f, _wgslsmith_div_f32(826f, 775f), u_input.a == 43525i))))), Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(u_input.b, 6976u)), ~vec2<u32>(1u, u_input.c)), vec4<u32>(6257u, 110848u, 0u, _wgslsmith_mod_u32(~50427u, ~u_input.c))));
    global0 = max(~select(u_input.a, 18996i, any(var_1.a)), -2147483647i);
    var var_2 = Struct_1(firstTrailingBit(1u), firstTrailingBit(vec4<u32>(~11992u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 0u), var_1.c.b.yyy ^ var_1.c.b.zyz), _wgslsmith_div_u32(u_input.b, 0u), u_input.b)));
    return var_1.b.x;
}

fn func_2() -> i32 {
    global1 = array<bool, 17>();
    var var_0 = _wgslsmith_add_vec4_u32(firstLeadingBit(abs(min(vec4<u32>(u_input.c, u_input.c, 34732u, 0u), vec4<u32>(u_input.c, u_input.c, u_input.b, 4190u)))), select(~(~vec4<u32>(u_input.c, 1u, 0u, 1u)), vec4<u32>(u_input.c >> (1u % 32u), u_input.c, 1u, ~u_input.c), any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], true, global1[_wgslsmith_index_u32(u_input.c, 17u)], true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)]))))) << (vec4<u32>(4294967295u, ~(0u << (u_input.c % 32u)), 0u, reverseBits(_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.b, u_input.c))))) % vec4<u32>(32u));
    var var_1 = Struct_2(!(!(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 17u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(ceil(690f)))), _wgslsmith_f_op_f32(select(-1599f, _wgslsmith_f_op_f32(step(-287f, _wgslsmith_div_f32(2012f, 1121f))), false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -841f)))), Struct_1(u_input.c, min(vec4<u32>(firstLeadingBit(u_input.c), abs(var_0.x), u_input.b ^ 94364u, ~u_input.b), vec4<u32>(abs(var_0.x), u_input.b, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, var_0.x), vec4<u32>(var_0.x, 1u, var_0.x, 0u))))));
    let var_2 = Struct_2(select(vec3<bool>(!any(vec3<bool>(var_1.a.x, false, true)), any(vec4<bool>(var_1.a.x, true, true, true)), var_1.c.a >= 1u), var_1.a, any(select(select(vec2<bool>(var_1.a.x, global1[_wgslsmith_index_u32(var_1.c.a, 17u)]), var_1.a.yz, vec2<bool>(false, global1[_wgslsmith_index_u32(27711u, 17u)])), vec2<bool>(false, global1[_wgslsmith_index_u32(22847u, 17u)]), !vec2<bool>(global1[_wgslsmith_index_u32(var_1.c.a, 17u)], global1[_wgslsmith_index_u32(26374u, 17u)])))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(trunc(var_1.b.x)), var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -360f), 1000f), var_1.c);
    let var_3 = !all(select(vec4<bool>(select(global1[_wgslsmith_index_u32(u_input.b, 17u)], true, var_1.a.x), var_2.a.x, any(vec2<bool>(var_2.a.x, true)), var_1.a.x), vec4<bool>(var_2.a.x, !var_2.a.x, any(vec4<bool>(var_1.a.x, var_1.a.x, true, false)), any(vec4<bool>(true, var_1.a.x, var_1.a.x, global1[_wgslsmith_index_u32(var_0.x, 17u)]))), any(select(vec4<bool>(var_2.a.x, false, var_2.a.x, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], true, var_2.a.x, var_1.a.x), vec4<bool>(true, global1[_wgslsmith_index_u32(53595u, 17u)], var_1.a.x, false)))));
    return 8530i;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> vec3<f32> {
    global1 = array<bool, 17>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-522f - _wgslsmith_f_op_f32(min(-984f, 477f))), _wgslsmith_f_op_f32(-1900f + _wgslsmith_f_op_f32(select(622f, -689f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(956f + -123f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1475f, 1204f), 1f, true))))));
    let var_1 = u_input.c;
    let var_2 = vec4<bool>(global1[_wgslsmith_index_u32(var_1, 17u)], any(select(vec2<bool>(arg_1.x & false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(18726u, var_1, 81575u), vec3<u32>(33000u, var_1, u_input.b)), 17u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 17u)]), arg_1, vec2<bool>(false, arg_1.x)), arg_1)), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~83405u, u_input.c), ~select(vec2<u32>(var_1, 15314u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(global1[_wgslsmith_index_u32(25385u, 17u)], arg_1.x))), 17u)], true, !(reverseBits(u_input.c) < ~1u)), func_2() > -(~(-2147483647i)));
    var var_3 = Struct_2(var_2.zxy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.wwy * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, 381f, -347f)), vec3<f32>(-1000f, 174f, -838f)))))), Struct_1(u_input.c, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(10395u, var_1), ~var_1, 8504u), abs(u_input.c), abs(u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 20340u, 0u)))));
    return vec3<f32>(_wgslsmith_f_op_f32(1322f + 233f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -610f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(50269u, 17u)];
    global0 = abs(max(~(-2147483647i), _wgslsmith_sub_i32(firstLeadingBit(18540i), _wgslsmith_sub_i32(0i, -29683i))));
    global0 = 28162i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1289f * _wgslsmith_f_op_f32(f32(-1f) * -1372f)))), -447f, 1259f);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(u_input.d.x, -58450i, 28775i) >> (vec3<u32>(65307u, u_input.c, 4294967295u) % vec3<u32>(32u)), vec2<bool>(true, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(-2147483647i, u_input.a) | ~u_input.e, u_input.e, -countOneBits(u_input.e), ~17472i) & max(~(vec4<i32>(1i, u_input.d.x, u_input.e, 46395i) >> (vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), min(vec4<i32>(-26495i, u_input.e, 2147483647i, 2147483647i) ^ vec4<i32>(-1i, u_input.a, -2147483647i, -14903i), -vec4<i32>(2147483647i, u_input.a, u_input.e, 65395i))));
}

