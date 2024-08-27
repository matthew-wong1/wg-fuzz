struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<f32, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)), -1140f, _wgslsmith_f_op_f32(f32(-1f) * -1691f)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_add_i32(-14995i, 2147483647i), select(u_input.a, 14779i, false), firstTrailingBit(-28025i)), -(~vec4<i32>(u_input.a, -27369i, u_input.a, 0i))), ~u_input.a, -2719i), (-u_input.a ^ u_input.a) ^ u_input.a, u_input.a);
    return all(select(vec2<bool>(true, true), vec2<bool>(true, true), true));
}

fn func_2() -> vec2<i32> {
    var var_0 = all(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, false)), true, true), all(vec2<bool>(false, false)))) & !(!any(vec4<bool>(true, true, false, false)) & (true && func_3()));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(firstLeadingBit(45034u), 17u)], _wgslsmith_f_op_f32(step(-353f, -957f)), -754f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2827f, global1[_wgslsmith_index_u32(49614u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec3<f32>(631f, global1[_wgslsmith_index_u32(15339u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]))) + _wgslsmith_div_vec3_f32(vec3<f32>(-613f, global1[_wgslsmith_index_u32(0u, 17u)], 1720f), vec3<f32>(-805f, -776f, global1[_wgslsmith_index_u32(1825u, 17u)])))) * vec3<f32>(global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 17u)] - -1144f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 0u), 17u)] + _wgslsmith_f_op_f32(f32(-1f) * -284f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1356f, -503f, -1018f), vec3<f32>(730f, global1[_wgslsmith_index_u32(0u, 17u)], -456f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 17u)], -1000f, global1[_wgslsmith_index_u32(0u, 17u)])) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(3112u, 17u)], 991f, -295f), vec3<f32>(-128f, global1[_wgslsmith_index_u32(0u, 17u)], -551f))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(54623u, 17u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(239u, 17u)], global1[_wgslsmith_index_u32(66740u, 17u)]), global1[_wgslsmith_index_u32(24955u, 17u)])))));
    var var_2 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, abs(17313u), 81170u), abs(vec3<u32>(1u, 1u, 1u))));
    return ~vec2<i32>(-2147483647i, ~u_input.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = select(func_2(), _wgslsmith_clamp_vec2_i32(min(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(-1i, -5515i)), firstLeadingBit(vec2<i32>(1i, 1i)), vec2<i32>(2147483647i, abs(2147483647i))) >> (vec2<u32>(1u, _wgslsmith_div_u32(86993u, 1u)) % vec2<u32>(32u)), !arg_1);
    var var_1 = func_3();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_div_f32(-1314f, global1[_wgslsmith_index_u32(5797u, 17u)]))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -788f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 1616u), 4294967295u), 17u)]))), vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(72529u, 4294967295u), vec2<u32>(1u, 41486u))), 20230u), ~firstTrailingBit(firstLeadingBit(firstLeadingBit(vec2<u32>(0u, 34716u)))));
    var_0 = abs(abs(select(vec2<i32>(_wgslsmith_sub_i32(u_input.a, 14250i), _wgslsmith_mod_i32(73057i, -1i)), -(vec2<i32>(u_input.a, var_0.x) ^ vec2<i32>(43029i, var_0.x)), false)));
    let var_3 = vec2<i32>(-(~u_input.a ^ -1i) >> (abs(~19106u) % 32u), ~(-1i));
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 17u)] + global1[_wgslsmith_index_u32(9259u, 17u)]), _wgslsmith_f_op_f32(f32(-1f) * -1837f))), -1102f, -1429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 17u)]))), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(select(4294967295u, 0u, true), 17u)] <= _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(54314u, 17u)], -683f))), !vec2<bool>(all(vec3<bool>(false, true, false)), true), true), vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), any(vec2<bool>(true, false)))), false));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 17u)] * 1278f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(3109u, 17u)])), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]))), -2076f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1662f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(983f, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]) * vec3<f32>(2008f, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(48557u, 17u)])) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(56780u, 17u)], 264f, global1[_wgslsmith_index_u32(60692u, 17u)])))))))), min(select(vec3<i32>(-4540i, -1i, u_input.a), vec3<i32>(u_input.a, -7799i, u_input.a), vec3<bool>(true, var_0.x, true)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(2945u, 4294967295u, 44844u), vec3<u32>(28244u, 76317u, 4294967295u), vec3<u32>(1u, 4294967295u, 7038u)) % vec3<u32>(32u)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(55372i, -1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)))) << (vec3<u32>(8332u, _wgslsmith_div_u32(~12238u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 39916u), vec2<u32>(22037u, 21164u))), 1u) % vec3<u32>(32u)), u_input.a, u_input.a);
    var_0 = vec2<bool>(var_0.x, true);
    global1 = array<f32, 17>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~4294967295u), 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(37932u, 33029u, 9251u), vec3<u32>(1732u, 11973u, 33053u), vec3<u32>(10298u, 1u, 6260u)), ~vec3<u32>(0u, 81265u, 32030u)), vec3<u32>(1u, 1u, 1u)))), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(abs(func_2().x), -2147483647i), -var_1.b.xx | var_1.b.yy, vec4<i32>(58903i, ~0i, -52727i, 1i));
}

