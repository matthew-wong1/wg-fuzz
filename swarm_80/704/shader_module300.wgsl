struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    global0 = array<i32, 8>();
    let var_0 = Struct_2(Struct_1(-_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~u_input.a.x, 8u)], _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], 13743i)), vec3<u32>(~26248u, 41850u, 1u) ^ select(u_input.a.zxz, max(u_input.a.ywz, vec3<u32>(u_input.a.x, u_input.a.x, 16134u)), vec3<bool>(true, true, true))), !all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    return -max(-_wgslsmith_div_vec4_i32(select(vec4<i32>(-7332i, -4224i, 33724i, -25568i), vec4<i32>(var_0.a.a, -1i, -464i, 2147483647i), false), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_0.a.b.x, 8u)], 1i, var_0.a.a, -14043i), vec4<i32>(5973i, -2147483647i, 31128i, global0[_wgslsmith_index_u32(27680u, 8u)]))), ~(_wgslsmith_add_vec4_i32(vec4<i32>(-26261i, arg_0.x, 19868i, var_0.a.a), vec4<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], -41336i)) | vec4<i32>(global0[_wgslsmith_index_u32(1473u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], var_0.a.a, global0[_wgslsmith_index_u32(43641u, 8u)])));
}

fn func_2(arg_0: vec3<i32>) -> vec3<u32> {
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    var var_0 = ~firstLeadingBit(~min(vec4<i32>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], 1i) >> (vec4<u32>(19715u, 4294967295u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), func_3(arg_0.zy)));
    var_0 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_sub_vec4_i32(func_3(vec2<i32>(-2147483647i, 52260i)), vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_0.x, var_0.x) >> (u_input.a % vec4<u32>(32u)))), vec4<i32>(i32(-1i) * -1i, select(var_0.x, -25755i, true), -2147483647i, var_0.x)) & func_3(vec2<i32>(0i, min(global0[_wgslsmith_index_u32(5283u, 8u)] & global0[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0.x)));
    global0 = array<i32, 8>();
    return u_input.a.xzx;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), func_2(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_0.x, 0i), vec3<i32>(global0[_wgslsmith_index_u32(arg_2.b.x, 8u)], -1i, arg_2.a)), _wgslsmith_mod_vec3_i32(arg_0.xwy, vec3<i32>(-2147483647i, arg_1, -37402i))))));
    var var_1 = 978f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1159f);
    var var_2 = ~_wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_2.b.x, arg_2.b.x | 4294967295u), firstLeadingBit(select(~u_input.a.x, firstLeadingBit(arg_2.b.x), true)));
    global0 = array<i32, 8>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & !(_wgslsmith_clamp_u32(u_input.a.x, 20584u, u_input.a.x) >= firstLeadingBit(11127u >> (u_input.a.x % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(168f, -360f, -1483f) - vec3<f32>(-1000f, 150f, -1000f)))), _wgslsmith_f_op_vec3_f32(func_1(-max(vec4<i32>(-1i, 77975i, global0[_wgslsmith_index_u32(0u, 8u)], -5680i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -2147483647i, global0[_wgslsmith_index_u32(0u, 8u)], -16683i)), ~(-31346i), Struct_1(~global0[_wgslsmith_index_u32(0u, 8u)], u_input.a.zzy))), vec3<bool>(var_0, false, !var_0))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1243f) * _wgslsmith_f_op_f32(var_1.x - 998f)), _wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(exp2(var_1.xx)), all(vec2<bool>(true, true))));
    let var_3 = vec3<f32>(var_2.x, var_2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), 2312f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1045f + _wgslsmith_f_op_f32(ceil(var_1.x))))));
    let var_4 = Struct_3(_wgslsmith_clamp_u32(u_input.a.x, ~103765u, _wgslsmith_clamp_u32(10966u, ~(~11280u), ~43853u)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, 991f, _wgslsmith_f_op_f32(var_3.x - -1185f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), var_3.x, 1000f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_div_f32(var_2.x, -487f))), var_2.x, -1297f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3 + vec3<f32>(var_1.x, -558f, var_3.x))))) * var_3));
    let var_5 = Struct_2(Struct_1(6877i, u_input.a.wxz), all(!(!(!vec4<bool>(var_0, var_0, var_0, false)))));
    var_1 = _wgslsmith_div_vec3_f32(var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x - var_1.x), -1251f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 158f, 426f) - vec3<f32>(var_1.x, -908f, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0u), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-804f, var_2.x, var_2.x, -417f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, -1754f, -403f, var_1.x)), !vec4<bool>(true, true, true, var_0))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_3.x), var_1.x, _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(1i, 38867i, -25629i, -23890i), global0[_wgslsmith_index_u32(var_5.a.b.x, 8u)], Struct_1(2147483647i, u_input.a.yzx))).x, _wgslsmith_f_op_f32(round(-616f))), false)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(534f, 426f, _wgslsmith_f_op_f32(trunc(-900f)), var_1.x)))), vec4<i32>(_wgslsmith_sub_i32(~(-1i), -1i ^ (var_5.a.a ^ 1i)), min(-3869i, var_5.a.a) | _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-34789i, var_5.a.a), i32(-1i) * -1i, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), _wgslsmith_add_i32(firstTrailingBit(2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-14169i, -14840i), vec2<i32>(-27087i, 2147483647i))), -1i));
}

