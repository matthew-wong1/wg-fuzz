struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32>;

var<private> global2: i32;

var<private> global3: Struct_2;

var<private> global4: u32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    global1 = vec3<i32>(~(1i | global1.x), global1.x, firstLeadingBit(max(-1i, _wgslsmith_add_i32(1i, -2147483647i))));
    var var_0 = global1.x;
    let var_1 = min(~(~vec3<u32>(14591u, ~global3.b, u_input.a.x << (global3.a % 32u))), vec3<u32>(11812u, reverseBits(~u_input.a.x), ~_wgslsmith_mult_u32(~41248u, 17322u << (global3.b % 32u))));
    global0 = ~_wgslsmith_mult_u32(~65076u, ~_wgslsmith_dot_vec2_u32(var_1.zx | u_input.a, _wgslsmith_add_vec2_u32(u_input.a, var_1.yz)));
    global3 = Struct_2(_wgslsmith_mod_u32(((36201u << (global3.b % 32u)) >> (global3.a % 32u)) >> ((24921u << (global3.a % 32u)) % 32u), global3.b), ~50976u);
    return vec4<f32>(_wgslsmith_f_op_f32(max(-143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f) * 907f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1219f, 434f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-431f + 1613f), -1232f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-239f)) + _wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_f32(abs(1046f)));
}

fn func_4(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = u_input.b;
    let var_1 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(~global1.x, -abs(-17360i), 0i, global1.x), vec4<i32>(-29043i, select(u_input.b, u_input.b << (12520u % 32u), u_input.b >= global1.x), u_input.b, -u_input.b >> ((1u & u_input.a.x) % 32u)));
    global0 = ~abs(global3.b) << (u_input.a.x % 32u);
    global1 = abs(min(vec3<i32>(var_1.x << (u_input.a.x % 32u), -1458i, -2147483647i), select(var_1.wzy, vec3<i32>(global1.x, u_input.b, u_input.b) >> (vec3<u32>(23582u, 1u, global3.b) % vec3<u32>(32u)), vec3<bool>(true, true, true)))) << (reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(74u, u_input.a.x, u_input.a.x), ~vec3<u32>(52002u, u_input.a.x, 1u))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_div_u32(0u, ~global3.b);
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a.x, 4294967295u), vec2<u32>(1u, 24503u));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    global4 = global3.a | ~u_input.a.x;
    global3 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_sub_u32(4294967295u, 13447u), abs(4294967295u), 12707u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.b, 1u, u_input.a.x), ~vec4<u32>(36068u, arg_0.b, 30517u, u_input.a.x))), ~(~(~firstTrailingBit(0u))));
    global2 = -(_wgslsmith_sub_i32(-1i, global1.x | -1i) >> (max(_wgslsmith_div_u32(arg_0.a, u_input.a.x), ~u_input.a.x) % 32u)) & min(u_input.b, ~reverseBits(18602i >> (global3.a % 32u)));
    var var_0 = _wgslsmith_f_op_f32(select(1123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f)), false));
    let var_1 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), vec4<f32>(-572f, 1168f, _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, false))).x, _wgslsmith_f_op_f32(405f - 1108f)))) << (select(u_input.a, ~u_input.a, true) % vec2<u32>(32u));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(-16950i, 1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 14126u), vec3<u32>(16566u, global3.a, global3.b)) % 32u)), 0i), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b, 0i, u_input.b, -2147483647i), vec4<i32>(global1.x, u_input.b, 1i, u_input.b)), vec4<i32>(u_input.b, global1.x, global1.x, -2147483647i) & vec4<i32>(-23722i, 6112i, 16920i, global1.x)), vec4<i32>(-29467i, global1.x, u_input.b, u_input.b) ^ -vec4<i32>(2147483647i, u_input.b, global1.x, 8262i)), _wgslsmith_dot_vec4_i32((vec4<i32>(48973i, -1i, 18187i, -6662i) << (vec4<u32>(var_1.x, u_input.a.x, var_1.x, 42397u) % vec4<u32>(32u))) ^ (vec4<i32>(global1.x, global1.x, u_input.b, 0i) | vec4<i32>(22327i, global1.x, 39898i, u_input.b)), firstTrailingBit(vec4<i32>(u_input.b, 1i, -2147483647i, u_input.b) | vec4<i32>(24817i, global1.x, u_input.b, global1.x))), _wgslsmith_div_i32(~firstLeadingBit(global1.x), 2147483647i)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    global4 = global3.a;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-212f + _wgslsmith_f_op_f32(-1926f + _wgslsmith_f_op_f32(f32(-1f) * -1051f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-377f))))));
    global4 = 4294967295u;
    global1 = func_2(Struct_2(1u, ~1u));
    var var_1 = Struct_2(_wgslsmith_clamp_u32(arg_0 << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, arg_0), vec3<u32>(global3.a, 89331u, 47444u)) % 32u), 14067u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), u_input.a | vec2<u32>(arg_0, arg_0))) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(11244u, u_input.a.x, 0u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(28041u, arg_0, 0u, global3.b), vec4<u32>(153062u, 83960u, 73014u, 4294967295u)))) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b, 23115u, global3.a), abs(vec3<u32>(4294967295u, u_input.a.x, 1u))), u_input.a.x) >> (9653u % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1989f + -1190f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(min(-644f, -1274f))) - -863f)) < _wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-532f, 932f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, global3.a <= 56620u), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), any(vec4<bool>(true, true, true, true))));
    var var_1 = !func_1(~u_input.a.x, Struct_1(-_wgslsmith_mod_i32(-11381i, -42103i)));
    let var_2 = Struct_2(0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, select(~50789u, firstLeadingBit(global3.a), !var_0.x)), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(min(11343u, 0u), u_input.a.x))));
    let var_3 = var_0.x;
    var var_4 = 1u;
    global2 = global1.x;
    let var_5 = !(!vec4<bool>(!var_0.x, all(!vec2<bool>(var_0.x, false)), var_0.x | all(vec4<bool>(false, true, true, false)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -435f, 715f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(1867f, 1000f, 564f, 1865f), vec4<f32>(-528f, -435f, -1032f, -368f)), true)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(1346f)), _wgslsmith_f_op_f32(-1064f + -810f), _wgslsmith_f_op_f32(round(996f)), _wgslsmith_f_op_f32(abs(-1447f)))))));
}

