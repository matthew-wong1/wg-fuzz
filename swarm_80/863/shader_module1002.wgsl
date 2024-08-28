struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: i32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = !any(!vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.e.x, 5u)], any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(19096u, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)])), true));
    global1 = firstLeadingBit(u_input.a);
    global1 = u_input.d;
    global0 = array<bool, 5>();
    var var_1 = u_input.e.wxz;
    return -1000f;
}

fn func_2() -> bool {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    global1 = -6746i;
    let var_0 = _wgslsmith_f_op_f32(func_3(~u_input.c));
    global1 = u_input.d;
    return select(global0[_wgslsmith_index_u32(~u_input.e.x, 5u)], 4294967295u >= _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e.yyx, vec3<u32>(u_input.c, u_input.e.x, u_input.e.x)), u_input.e.wxz), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.e.x, 5025u), ~u_input.e.wzx, u_input.e.wxz)), any(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(40969u, 5u)], global0[_wgslsmith_index_u32(189u, 5u)])))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_1(vec3<bool>(!func_2(), false, any(vec2<bool>(arg_0.c.x, all(arg_0.c.zx)))), true, arg_0.a, select(firstTrailingBit(-arg_0.d), _wgslsmith_mod_i32(arg_0.d, -13629i), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.e)) * vec2<f32>(-818f, arg_0.e.x))))));
    global1 = 2147483647i;
    global0 = array<bool, 5>();
    let var_1 = Struct_1(select(arg_0.c, !select(arg_0.c, select(vec3<bool>(global0[_wgslsmith_index_u32(53144u, 5u)], var_0.c.x, true), arg_0.c, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 5u)], global0[_wgslsmith_index_u32(4096u, 5u)], true)), false), false & (-892f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x - -716f), _wgslsmith_f_op_f32(select(1766f, arg_1, var_0.c.x)))), !select(vec3<bool>(false, var_0.a.x & arg_0.a.x, true), select(arg_0.c, !vec3<bool>(true, true, var_0.c.x), func_2()), select(vec3<bool>(false, arg_0.c.x, false), arg_0.c, vec3<bool>(false, var_0.a.x, arg_0.a.x))), _wgslsmith_div_i32(abs(_wgslsmith_div_i32(var_0.d, 13692i)), 26399i) ^ ~var_0.d, vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-arg_1)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-157f, var_0.e.x, -383f, arg_0.e.x))) + vec4<f32>(var_1.e.x, 1253f, var_1.e.x, arg_0.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_1.e.x, arg_1, -247f) * vec4<f32>(arg_1, var_1.e.x, -1238f, -1619f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-279f, -1000f, -1949f, 806f), vec4<f32>(1068f, 110f, var_0.e.x, var_1.e.x))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.e.x, -184f, -294f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-531f)), var_0.e.x, var_1.e.x, _wgslsmith_f_op_f32(-var_1.e.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(686f, 892f, var_0.e.x, -212f), vec4<f32>(-1243f, -414f, -2180f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(999f, var_1.e.x, var_1.e.x, var_1.e.x))))));
    return vec3<u32>(select(_wgslsmith_mod_u32(arg_2.x, 4294967295u), ~22834u, true), u_input.c ^ 1u, ~(~arg_2.x));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = vec4<f32>(-1138f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) + _wgslsmith_f_op_f32(ceil(936f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -695f)), -1000f)), _wgslsmith_f_op_f32(trunc(arg_0)))));
    global1 = min(u_input.a, 0i);
    var var_1 = firstTrailingBit(u_input.b);
    var var_2 = Struct_1(vec3<bool>(!(!(false || global0[_wgslsmith_index_u32(arg_1.x, 5u)])), any(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(51345u, 5u)], false), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 5u)]), select(true, false, global0[_wgslsmith_index_u32(u_input.c, 5u)]))), -57835i >= u_input.a), func_2(), vec3<bool>(true, (_wgslsmith_dot_vec3_i32(vec3<i32>(-1669i, 41516i, -40522i), vec3<i32>(-2147483647i, 18899i, u_input.a)) <= (u_input.b | u_input.d)) & !global0[_wgslsmith_index_u32(u_input.c, 5u)], all(vec3<bool>(false, all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 5u)], true, global0[_wgslsmith_index_u32(3034u, 5u)])), var_0.x < -433f))), -24984i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.ww))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(exp2(var_0.x))))));
    return Struct_1(var_2.c, any(var_2.a), select(var_2.c, !select(select(var_2.a, var_2.c, false), !vec3<bool>(true, var_2.b, false), var_2.a), true), u_input.a, _wgslsmith_f_op_vec2_f32(select(var_2.e, _wgslsmith_div_vec2_f32(var_2.e, var_0.xx), var_2.a.zz)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> StorageBuffer {
    global1 = -2147483647i;
    global0 = array<bool, 5>();
    let var_0 = arg_0;
    let var_1 = vec3<u32>(21198u, ~u_input.c, 0u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1079f, _wgslsmith_f_op_f32(-var_0.e.x))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(0u)), _wgslsmith_f_op_f32(step(-1493f, 432f))), arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-110f)) + _wgslsmith_f_op_f32(-var_0.e.x)))), 23895u, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + arg_0.e.x)) + 402f), var_1).d, arg_0.d, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = func_5(func_4(-496f, vec3<u32>(~u_input.e.x, ~u_input.c, ~u_input.e.x) | _wgslsmith_clamp_vec3_u32(func_1(Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(99937u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]), global0[_wgslsmith_index_u32(u_input.e.x, 5u)], vec3<bool>(true, false, global0[_wgslsmith_index_u32(89729u, 5u)]), u_input.a, vec2<f32>(883f, 1179f)), -269f, u_input.e.zzy), u_input.e.yzy, func_1(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true, global0[_wgslsmith_index_u32(4294967295u, 5u)]), global0[_wgslsmith_index_u32(u_input.e.x, 5u)], vec3<bool>(false, false, true), u_input.a, vec2<f32>(-1972f, 210f)), 742f, vec3<u32>(1u, 29760u, 0u)))), _wgslsmith_clamp_u32(firstTrailingBit(u_input.c), u_input.c, u_input.e.x), false & func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1380f + 1550f)), vec3<u32>(0u, 1u, ~u_input.c)).a.x, countOneBits(_wgslsmith_sub_vec2_u32(u_input.e.wx, u_input.e.xy)));
}

