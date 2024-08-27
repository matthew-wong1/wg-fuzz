struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(124634u, 1u, 5150u, 862u), vec4<u32>(9220u, 0u, 4294967295u, 71915u), vec4<u32>(31328u, 1u, 0u, 61105u), vec4<u32>(91122u, 36565u, 53664u, 54643u), vec4<u32>(4294967295u, 76854u, 0u, 12286u), vec4<u32>(4294967295u, 27167u, 31091u, 1u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(65401u, 0u, 0u, 0u), vec4<u32>(92693u, 35221u, 4715u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 37660u), vec4<u32>(68033u, 4294967295u, 44961u, 0u), vec4<u32>(0u, 4294967295u, 200u, 11169u), vec4<u32>(4294967295u, 24838u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(41911u, 1u, 15171u, 1u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    global0 = array<vec4<u32>, 15>();
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), 1i, 0i, ~_wgslsmith_mod_i32(u_input.a ^ 16143i, u_input.a)), -countOneBits(countOneBits(abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, 1i)))));
    var var_1 = !select(vec4<bool>(true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, false, false)), vec4<bool>(false, select(true, true, true), true, u_input.a < u_input.a)), (u_input.b > u_input.c) | true);
    let var_2 = Struct_1(-17227i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(246f, -1258f, 1015f, -1000f), vec4<f32>(-1608f, 144f, -1158f, -1453f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-156f, -904f, -1175f, 476f)))))), -25239i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1298f - _wgslsmith_f_op_f32(trunc(-1901f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, _wgslsmith_f_op_f32(abs(135f)), 1f, -190f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-773f, -242f, 1000f, -643f), vec4<f32>(514f, -582f, -354f, 195f), var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1556f, 1186f, 660f, -1000f))))))));
    var_1 = vec4<bool>(var_1.x, select(all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)) && true, false, any(select(select(var_1.wwz, vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), vec3<bool>(var_1.x, true, false)))), false, false);
    return var_2.e.x;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1334f + 751f))))));
    global0 = array<vec4<u32>, 15>();
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1327f + -589f) + -145f)));
    let var_1 = Struct_1(-1150i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 636f), _wgslsmith_div_f32(var_0.a, var_0.a))), 1000f, _wgslsmith_f_op_f32(-1418f * -1521f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)), _wgslsmith_f_op_f32(func_3()), -702f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, firstLeadingBit(i32(-1i) * -2147483647i), 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-19180i, -10994i, u_input.a, u_input.a), -vec4<i32>(u_input.a, 2147483647i, 50090i, u_input.a)) ^ vec4<i32>(_wgslsmith_div_i32(1i, u_input.a), u_input.a, 35007i, select(1i, 1i, true))), var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, 419f, 718f, var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1000f, var_0.a, var_0.a) + vec4<f32>(-1000f, var_0.a, var_0.a, 1336f))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-355f)), -346f, -176f, _wgslsmith_f_op_f32(-var_0.a))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)) + var_1.d), var_1.e.x);
    return var_1.c ^ var_1.a;
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(abs(global0[_wgslsmith_index_u32(u_input.c, 15u)]), ~global0[_wgslsmith_index_u32(21446u, 15u)]), 17560u, u_input.b, u_input.c);
    var var_1 = func_2();
    global0 = array<vec4<u32>, 15>();
    var_1 = -(-countOneBits(87400i >> (var_0.x % 32u)) & u_input.a);
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(-369f + 374f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = array<vec4<u32>, 15>();
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -2401f)))));
    var var_3 = _wgslsmith_dot_vec3_i32(~(~abs(vec3<i32>(2147483647i, var_1, 14038i))), _wgslsmith_sub_vec3_i32(max(abs(vec3<i32>(1i, -1i, -1i)), firstTrailingBit(vec3<i32>(u_input.a, var_1, -67961i)) ^ vec3<i32>(var_1, u_input.a, -1i)), -vec3<i32>(var_1 | var_1, i32(-1i) * -37803i, -var_1)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1107f + -576f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1734f - 288f)))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 176f)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(func_3()));
    var var_5 = Struct_1(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_4.a + var_4.a), -1122f, -1100f, 1382f)))), var_1, _wgslsmith_f_op_f32(-708f + 848f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, _wgslsmith_f_op_f32(var_4.a + var_4.a), var_4.a, _wgslsmith_f_op_f32(f32(-1f) * -422f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, 222f, var_4.a, 1000f) * vec4<f32>(var_4.a, 1970f, var_4.a, var_4.a)))))));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_5.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_5.b - vec4<f32>(-1314f, -367f, 1563f, var_5.b.x)))))), _wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(37390u, u_input.c, u_input.c)), _wgslsmith_clamp_u32(~var_6, ~0u, ~select(var_0, u_input.b, true))), select(min(_wgslsmith_add_vec2_i32(vec2<i32>(-37749i, u_input.a) & vec2<i32>(2147483647i, 46552i), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(-1i, -18842i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_1, -22175i), vec2<i32>(-18369i, 2147483647i))), select(-vec2<i32>(u_input.a, -61i), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, var_5.c)), -vec2<i32>(1i, var_1)), vec2<bool>(true, true)), vec2<bool>(u_input.a < -67544i, false)), (-vec2<i32>(u_input.a, 1i) >> (vec2<u32>(1u, ~4840u) % vec2<u32>(32u))) & abs(min(-vec2<i32>(var_1, var_1), vec2<i32>(var_1, 0i))));
}

