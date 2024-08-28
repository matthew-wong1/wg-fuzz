struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    var var_0 = Struct_1(true, !arg_1.b, arg_2.x, _wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x)))), !arg_1.b.yxx);
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(~0u, 1u, select(0u, 12626u, false)), 78642u, (arg_0.x >= var_0.d) && !var_0.b.x), 21u)] && (1u < _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(16217u, 37198u), vec2<u32>(17944u, 34244u)), countOneBits(vec2<u32>(4294967295u, 1u)))), var_0.e.x, true, select(false, global0[_wgslsmith_index_u32(1u, 21u)], false));
    var var_2 = arg_1;
    var_1 = !vec4<bool>(true, all(!(!var_1.xz)), var_1.x, false);
    var_0 = arg_1;
    return u_input.a.x;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, abs(_wgslsmith_mult_i32(i32(-1i) * -71270i, u_input.b.x))), vec3<i32>(u_input.b.x | min(-u_input.b.x, ~u_input.a.x), ~(-_wgslsmith_mod_i32(u_input.b.x, u_input.a.x)), 1i));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-select(_wgslsmith_add_vec2_i32(var_0.zy, u_input.b.xy), vec2<i32>(var_0.x, 2147483647i) >> (vec2<u32>(52355u, 1u) % vec2<u32>(32u)), !global0[_wgslsmith_index_u32(68640u, 21u)]), max(max(vec2<i32>(1544i, var_0.x), _wgslsmith_sub_vec2_i32(u_input.a.ww, u_input.a.xw)), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-45150i, 12411i), var_0.zy)))), 58692i);
    global0 = array<bool, 21>();
    var_1 = func_3(vec2<f32>(846f, 1000f), Struct_1(false, !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(55418u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1230f + _wgslsmith_f_op_f32(select(1000f, -637f, global0[_wgslsmith_index_u32(0u, 21u)])))), _wgslsmith_f_op_f32(f32(-1f) * -2016f), !vec3<bool>(true, global0[_wgslsmith_index_u32(94u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-717f * -1448f), _wgslsmith_f_op_f32(488f * -559f), _wgslsmith_f_op_f32(-1314f + 310f), 253f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 814f, 1162f, 782f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, 1483f, 938f, 254f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1019f, -490f, 1281f, 758f) * vec4<f32>(431f, 1481f, 1206f, -194f)) + vec4<f32>(313f, 315f, 1000f, 1000f)))));
    var var_2 = vec2<f32>(959f, _wgslsmith_f_op_f32(-1479f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -476f)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), -1716f, _wgslsmith_f_op_f32(-1553f - var_2.x), -1135f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -238f, -821f, -1099f) - vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-832f, _wgslsmith_f_op_f32(var_2.x * -161f), _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>) -> bool {
    global0 = array<bool, 21>();
    let var_0 = !global0[_wgslsmith_index_u32(1u, 21u)] & false;
    global0 = array<bool, 21>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(arg_0.x, -1648f, -306f, 1752f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1720f, arg_0.x, 636f, 279f), vec4<f32>(170f, -413f, arg_0.x, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1603f, arg_0.x, arg_0.x, -599f))) + arg_0))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))));
    global0 = array<bool, 21>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1044f, -1056f))))))));
    var var_1 = !select(vec3<bool>(true, true, !func_1(vec4<f32>(-586f, 1404f, 103f, var_0.x), u_input.a.zyz)), vec3<bool>(false, !any(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(1u, 21u)])), (-162f > var_0.x) && true), global0[_wgslsmith_index_u32(1u, 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yy, max(vec3<u32>(30757u, firstTrailingBit(~37582u), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(45381u, 1u), vec2<u32>(0u, 35955u)), ~59885u)), _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 48616u, 81794u), vec3<u32>(1u, 1u, 3293u)), ~(~vec3<u32>(4294967295u, 45561u, 1u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1139f, -1222f))) + 265f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(step(-548f, 1f))), any(vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(21442u, 21u)])) & !var_1.x)), u_input.a, _wgslsmith_div_vec2_f32(var_0, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(198f)))));
}

