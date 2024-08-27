struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true));

var<private> global2: vec2<u32>;

var<private> global3: array<u32, 16> = array<u32, 16>(7886u, 51130u, 10444u, 4294967295u, 4294967295u, 0u, 4294967295u, 0u, 30747u, 1u, 90537u, 0u, 24412u, 4542u, 1u, 0u);

var<private> global4: array<Struct_3, 32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = any(!global1[_wgslsmith_index_u32(6496u, 5u)]);
    let var_1 = -1569f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))));
    let var_3 = ~0u;
    global1 = array<vec4<bool>, 5>();
    return var_3;
}

fn func_3() -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(f32(-1f) * -368f))) - -930f));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1235f, 356f, -1016f, 819f), vec4<f32>(-726f, -1293f, 854f, 1542f), true)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1319f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f - 423f)), 780f, -385f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(549f - var_0.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-206f))))), 183f, var_0.x));
    var var_1 = firstTrailingBit(u_input.d.zyz);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.yzx, vec3<f32>(-486f, -1475f, var_0.x)), vec3<f32>(var_0.x, var_0.x, var_0.x))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f + -634f) - -1185f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -684f)), u_input.d.wxw, vec2<bool>(true, _wgslsmith_f_op_f32(abs(var_0.x)) >= _wgslsmith_f_op_f32(floor(var_0.x))), u_input.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f - _wgslsmith_f_op_f32(891f - var_0.x)))), Struct_1(_wgslsmith_f_op_f32(-621f - 1145f), var_0.x, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(5820u, global3[_wgslsmith_index_u32(global2.x, 16u)], u_input.d.x), ~u_input.d.wzz, ~vec3<u32>(1u, 0u, 4294967295u)), max(~u_input.d.zww, vec3<u32>(global3[_wgslsmith_index_u32(0u, 16u)], u_input.d.x, global3[_wgslsmith_index_u32(var_1.x, 16u)]))), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), 15746i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2132f - var_2.d.b), -949f, -837f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1393f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_2.a)) + _wgslsmith_f_op_vec3_f32(var_0.wxy * var_0.ywx)))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    global1 = array<vec4<bool>, 5>();
    global4 = array<Struct_3, 32>();
    global4 = array<Struct_3, 32>();
    global4 = array<Struct_3, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 - 521f)))) * _wgslsmith_f_op_vec3_f32(func_3())));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, arg_2, arg_3)))), _wgslsmith_f_op_f32(-var_0.x), 769f), Struct_1(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(253f, 1000f, true & arg_3)))), arg_1, select(select(select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, false), arg_3), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), vec2<bool>(false, false)), vec2<bool>(true, arg_3)), select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3), vec2<bool>(true, false)), !vec2<bool>(arg_3, false), true), select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, true), arg_3), select(vec2<bool>(arg_3, false), vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3)), vec2<bool>(arg_3, arg_3))), -1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -848f)))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2541f + _wgslsmith_f_op_f32(max(-629f, 1705f))))), 1030f, arg_1, vec2<bool>(any(vec2<bool>(arg_3, arg_3)), arg_3 && !arg_3), _wgslsmith_div_i32(~(-61447i), countOneBits(~11375i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, u_input.d.x, 4294967295u), vec4<u32>(global2.x, u_input.d.x, global3[_wgslsmith_index_u32(global2.x, 16u)], u_input.d.x), vec4<bool>(true, true, false, true)), u_input.d), u_input.d.x), ~(~global3[_wgslsmith_index_u32(u_input.d.x, 16u)]));
    global4 = array<Struct_3, 32>();
    var var_0 = -1000f;
    let var_1 = _wgslsmith_add_vec2_u32(u_input.d.zz, _wgslsmith_mod_vec2_u32(u_input.d.zy, vec2<u32>(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(6566u, u_input.d.x), 16u)], 94122u)));
    global1 = array<vec4<bool>, 5>();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -716f);
    var var_2 = func_2(u_input.b ^ ~(-_wgslsmith_sub_i32(u_input.e.x, 2147483647i)), vec3<u32>(1u, global2.x, ~firstLeadingBit(_wgslsmith_div_u32(0u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1783f)) * _wgslsmith_f_op_f32(-1990f + _wgslsmith_f_op_f32(f32(-1f) * -1335f)))), ~abs(_wgslsmith_sub_u32(72206u, global3[_wgslsmith_index_u32(var_1.x, 16u)])) < ((45549u ^ func_1()) >> (firstLeadingBit(~23224u) % 32u)));
    let var_3 = var_2.b.d.x;
    var var_4 = global4[_wgslsmith_index_u32(~u_input.d.x, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(583f, u_input.c ^ _wgslsmith_dot_vec3_i32(u_input.e, u_input.e));
}

