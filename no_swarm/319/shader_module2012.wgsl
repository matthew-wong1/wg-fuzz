struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_1, 9>();
    global1 = u_input.a;
    var var_0 = u_input.c;
    var var_1 = min(-(~var_0.x), _wgslsmith_sub_i32(-(var_0.x >> (~arg_0.x % 32u)), _wgslsmith_add_i32(var_0.x, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -19608i), u_input.c)))));
    let var_2 = arg_2;
    return ~min(_wgslsmith_div_u32(firstLeadingBit(2759u), _wgslsmith_clamp_u32(arg_0.x, 1u, _wgslsmith_mult_u32(arg_0.x, 16258u))), 4294967295u);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec2<u32> {
    global0 = array<Struct_1, 9>();
    var var_0 = firstTrailingBit(vec2<u32>(52083u, 13347u));
    var var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(~(-1959i), arg_3.x, 19008i) >> (vec3<u32>(0u, var_0.x, arg_2.a.x) % vec3<u32>(32u)), firstLeadingBit(max(~vec3<i32>(1i, arg_3.x, arg_3.x), select(arg_3, vec3<i32>(2147483647i, arg_3.x, 0i), vec3<bool>(false, arg_0.a.x, true))))), _wgslsmith_f_op_vec3_f32(exp2(arg_1.xzx)), 0i, countOneBits(var_1.a.x), vec3<u32>(max(_wgslsmith_add_u32(~var_1.a.x, reverseBits(u_input.b.x)), arg_2.a.x), ~var_0.x, arg_2.a.x >> (var_1.a.x % 32u)));
    var var_3 = Struct_2(vec2<u32>(arg_2.a.x, _wgslsmith_add_u32(0u << (~var_1.a.x % 32u), max(~1u, ~21369u))));
    return var_1.a;
}

fn func_1() -> f32 {
    var var_0 = countOneBits(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~0u, func_2(vec4<u32>(19456u, 18508u, u_input.b.x, 20414u), true, Struct_3(-872f))), ~u_input.b.x, firstLeadingBit(~u_input.b.x)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(1031f, 306f, -276f)))), vec3<f32>(-581f, 278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -805f) + _wgslsmith_f_op_f32(step(-459f, -606f))) + -904f)));
    let var_2 = 4294967295u;
    let var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(func_3(Struct_4(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(708f, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, var_1.x, var_1.x, 560f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(160f, -832f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, -265f), true))), Struct_2(firstTrailingBit(vec2<u32>(u_input.b.x, 1u))), vec3<i32>(min(-2147483647i, u_input.d), _wgslsmith_clamp_i32(1i, -18500i, u_input.a), u_input.a & u_input.c.x)), u_input.b), 1805u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.e, 0u)), vec2<u32>(var_2, min(1u, 8960u) ^ _wgslsmith_add_u32(var_2, 1u))), u_input.e);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + 840f)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(u_input.a != 1i, false, true), true), vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1203f - -918f) + _wgslsmith_f_op_f32(452f + 1832f)), !(all(vec4<bool>(false, false, true, true)) & true), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), !(!(u_input.d == u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-146f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_1())) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(856f * 531f), _wgslsmith_f_op_f32(557f + -805f))) + _wgslsmith_f_op_f32(f32(-1f) * -393f)));
    var_0 = max(32101u, ~16421u);
    var_2 = _wgslsmith_f_op_f32(floor(-1284f));
    var_2 = -609f;
    let var_3 = -1361f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(max(2549f, 1561f)))))), _wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - -1000f) * 802f))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(max(u_input.b, u_input.b), vec2<u32>(3296u, u_input.b.x), countOneBits(u_input.b)), ~abs(u_input.b), u_input.b), ~6649i, firstLeadingBit(vec2<i32>(52411i, u_input.c.x)));
}

