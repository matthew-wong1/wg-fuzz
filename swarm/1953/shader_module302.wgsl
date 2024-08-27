struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(1i, 0i, 40783i, 74612i, -84654i, 2147483647i, -29526i, 1i, -1i, -1i, -67283i, -1i, 2147483647i, i32(-2147483648), -28670i, 33043i, -1i, -8009i, -57835i, i32(-2147483648), -1i, 42772i, 0i, 45799i, -23433i, 0i, -11309i, -39532i, -1i);

var<private> global1: array<vec3<f32>, 5>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global1 = array<vec3<f32>, 5>();
    global0 = array<i32, 29>();
    var var_0 = ~max(reverseBits(u_input.a), ~(0u << (u_input.a % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(766f, -509f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-527f)))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1442f + -1000f)) + _wgslsmith_f_op_f32(-137f - 731f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f - 883f))));
}

fn func_2() -> vec4<i32> {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_0 = ~_wgslsmith_clamp_u32(u_input.b, u_input.e, ~(_wgslsmith_add_u32(12742u, u_input.e) ^ firstLeadingBit(u_input.b)));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(select(~abs(vec3<u32>(52868u, 41276u, var_0)), vec3<u32>(55726u, _wgslsmith_div_u32(19054u, 15123u), u_input.e), true || (-1i < global0[_wgslsmith_index_u32(40650u, 29u)])), vec3<u32>(u_input.e, u_input.a, ~(1u ^ u_input.e))), _wgslsmith_sub_vec3_u32(~vec3<u32>(64966u, var_0, u_input.b), reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(130290u, u_input.b, 1u), vec3<u32>(u_input.e, var_0, var_0)))));
    let var_2 = vec2<bool>(all(!vec3<bool>(true, u_input.a <= var_0, func_3())), false);
    return ~(-vec4<i32>(max(-2147483647i >> (var_0 % 32u), 1i), global0[_wgslsmith_index_u32(u_input.e, 29u)], _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(var_1.x, 29u)], 2147483647i), ~reverseBits(42160i)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(21360u, 1u), 29u)], firstTrailingBit(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.e, 29u)], 2147483647i)) ^ 2147483647i, -2147483647i, (global0[_wgslsmith_index_u32(u_input.a & 7027u, 29u)] << (0u % 32u)) & _wgslsmith_mod_i32(42996i >> (u_input.b % 32u), u_input.d.x)), _wgslsmith_div_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(73092u, 29u)], -23764i, u_input.c.x, -8972i), vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, -26417i)), u_input.d | _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], 0i, 1i, -49235i), -vec4<i32>(global0[_wgslsmith_index_u32(0u, 29u)], 1i, u_input.c.x, u_input.d.x))), func_2());
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -804f);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-329f, _wgslsmith_f_op_f32(761f - -1059f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1498f, 487f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2093f, -677f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(264f * -736f))) + 2139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -620f));
    let var_3 = vec4<bool>(true, true, _wgslsmith_f_op_f32(select(1484f, _wgslsmith_f_op_f32(select(-760f, _wgslsmith_f_op_f32(var_2.x - var_2.x), true)), all(vec3<bool>(true, true, true)))) != -1064f, true);
    let var_4 = Struct_1(vec2<bool>(all(var_3.wx), true), vec4<f32>(var_2.x, 1f, 302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, -297f)))), ~firstLeadingBit(1i), select(var_0.yx, ~vec2<i32>(19506i, ~global0[_wgslsmith_index_u32(1u, 29u)]), !var_3.x), var_3.x);
    return ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, _wgslsmith_sub_u32(u_input.e, u_input.e)), vec3<u32>(~u_input.b, ~4294967295u, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<u32>(4294967295u, func_1()));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    var_0 = ~(~min(abs(vec2<u32>(u_input.b, var_0.x)), max(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(29697u, var_0.x) % vec2<u32>(32u)), ~vec2<u32>(29656u, var_0.x))));
    global0 = array<i32, 29>();
    global1 = array<vec3<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(~vec2<u32>(39924u, u_input.a), vec2<u32>(16164u, var_0.x) >> (vec2<u32>(var_0.x, 42395u) % vec2<u32>(32u))) ^ abs(firstLeadingBit(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, u_input.b)))), firstLeadingBit(_wgslsmith_div_i32(-max(u_input.c.x, 0i), -2065i << (~var_0.x % 32u))), 6142u, vec4<f32>(-1221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-385f, 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(293f - 583f))), _wgslsmith_f_op_f32(step(607f, 309f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-1000f + -1015f))))), _wgslsmith_mod_vec2_i32(u_input.d.yz, _wgslsmith_sub_vec2_i32(u_input.d.xy, _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(46317u, 29u)], 0i), u_input.c))));
}

