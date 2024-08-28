struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<bool>, 32>;

var<private> global2: bool = true;

var<private> global3: array<vec2<bool>, 13>;

var<private> global4: vec2<i32> = vec2<i32>(1i, 1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global4 = ~u_input.d.yy;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a + 721f) - _wgslsmith_f_op_f32(floor(-193f)))), _wgslsmith_div_f32(-772f, -737f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1118f + -1228f) * global0.x), _wgslsmith_f_op_f32(floor(global0.x))) * vec3<f32>(-1000f, arg_0, arg_1.b.b)));
    let var_0 = 15004u;
    var var_1 = global0.yz;
    let var_2 = true;
    return ~arg_3.x;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1020f, 1353f, global0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -915f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) + vec3<f32>(global0.x, 1534f, 572f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 356f, 1473f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-275f, 1061f, 762f) * vec3<f32>(global0.x, global0.x, -174f))))))));
    var var_1 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(func_3(global0.x, Struct_2(vec4<bool>(false, false, true, false), Struct_1(global0.x, 659f), Struct_1(703f, 620f), u_input.a), false, vec3<u32>(u_input.a, 1u, u_input.a)) > min(37375u, u_input.a), -281f > var_0.x, any(select(global1[_wgslsmith_index_u32(8825u, 32u)], vec3<bool>(false, false, true), false)), false), true & (true & (47772u >= u_input.a)));
    global4 = abs(u_input.d.yz);
    var_1 = select(vec4<bool>(!(_wgslsmith_f_op_f32(select(-647f, global0.x, false)) > var_0.x), !var_1.x, true, !(!var_1.x)), !(!(!(!vec4<bool>(var_1.x, true, true, var_1.x)))), all(vec4<bool>(any(vec4<bool>(var_1.x, true, false, false)), var_1.x, 394f > _wgslsmith_f_op_f32(var_0.x * 1227f), var_1.x || true)));
    return u_input.d.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + -316f))), _wgslsmith_f_op_f32(-1754f * arg_1.x)), vec3<f32>(global0.x, -390f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, 928f)))))))));
    var var_0 = select(max(u_input.c, 1i), func_2(), !(!(true == (arg_1.x <= arg_1.x))));
    let var_1 = _wgslsmith_dot_vec3_i32(u_input.d, -u_input.d);
    var_0 = var_1;
    return ~reverseBits(_wgslsmith_mult_u32(u_input.a, ~abs(1u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> StorageBuffer {
    global1 = array<vec3<bool>, 32>();
    global3 = array<vec2<bool>, 13>();
    global4 = ~arg_0.yy;
    global1 = array<vec3<bool>, 32>();
    global2 = arg_1.a.a.x;
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 279f) - 1377f) * 281f), 751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.d.x))) + 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (u_input.b >= 1i) | any(vec4<bool>(true, any(select(global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)], vec2<bool>(true, true))), true, all(vec4<bool>(true, true, true, true))));
    global3 = array<vec2<bool>, 13>();
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -430f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1629f, global0.x)) * global0.x), _wgslsmith_f_op_f32(abs(966f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1275f))), 1f, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1583f, global0.x) * vec3<f32>(-451f, 1088f, global0.x)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 333f, global0.x), vec3<f32>(global0.x, -657f, -893f), true)))))))));
    let var_0 = u_input.d;
    let x = u_input.a;
    s_output = func_4(vec4<i32>(-(i32(-1i) * -u_input.e), 13310i, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(u_input.b, 0i), global4.x, ~_wgslsmith_sub_i32(u_input.e, var_0.x)), abs(var_0.x >> (func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 50697u), vec2<f32>(636f, 989f)) % 32u))), Struct_3(Struct_2(vec4<bool>(true, false, true, any(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-757f + global0.x)), Struct_1(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(21349u, 4294967295u, u_input.a, 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 704f) - vec2<f32>(816f, -845f)))), vec2<i32>(min(firstTrailingBit(0i), _wgslsmith_sub_i32(-3161i, global4.x)), global4.x), Struct_1(780f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(ceil(-476f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0.x)))), -1000f, -1493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) + _wgslsmith_f_op_f32(sign(global0.x))))), abs(u_input.a), 11660i);
}

