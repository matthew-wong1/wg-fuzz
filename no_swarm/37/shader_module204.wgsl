struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = 0i;
    var var_1 = Struct_3(Struct_2(func_2(_wgslsmith_mult_u32(2093u, 1u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -430f), ~1u, 38183u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2062f, 722f, -1380f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-794f, 1056f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1307f, 146f, -1345f) - vec3<f32>(1015f, 668f, 2245f)), false)), vec3<bool>(true, true, true))), firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(59433u, 35117u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1616f * -285f), _wgslsmith_f_op_f32(959f - 756f), -141f, _wgslsmith_f_op_f32(f32(-1f) * -1024f)) + vec4<f32>(_wgslsmith_f_op_f32(116f - -356f), _wgslsmith_f_op_f32(529f * -1031f), -497f, _wgslsmith_f_op_f32(f32(-1f) * -840f))), arg_1.yz), _wgslsmith_add_vec2_u32(~vec2<u32>(141093u, 8425u), countOneBits(vec2<u32>(min(58691u, 44489u), reverseBits(4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) - -266f));
    var var_2 = firstLeadingBit(-(~(-2147483647i)));
    var_2 = countOneBits(1i);
    var_2 = firstTrailingBit(33686i);
    return _wgslsmith_f_op_vec4_f32(var_1.a.d + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.a.d), _wgslsmith_f_op_vec4_f32(-var_1.a.d))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> Struct_3 {
    let var_0 = ~firstTrailingBit(-1i);
    let var_1 = _wgslsmith_div_vec2_i32(u_input.d, abs(countOneBits(arg_3.d.xy)));
    let var_2 = arg_3.b;
    let var_3 = arg_3;
    var var_4 = true;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-791f)), var_2.c, ~(~32890u)), vec3<f32>(450f, _wgslsmith_f_op_f32(-arg_3.c.a), var_3.b.b.x), var_2.c, vec4<f32>(-253f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x))), var_3.b.a.a, arg_2.a), select(select(var_2.e, arg_3.b.e, var_3.b.e), !vec2<bool>(arg_0, var_2.e.x), any(select(vec3<bool>(false, true, true), vec3<bool>(arg_0, false, var_3.b.e.x), vec3<bool>(var_2.e.x, true, true))))), ~vec2<u32>(var_2.a.b, _wgslsmith_mult_u32(arg_1.c, 1u)), var_2.a.a);
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<i32> {
    let var_0 = ~(~4294967295u);
    var var_1 = func_4(!(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_1, u_input.b, arg_1, 22030i)), -vec4<i32>(20819i, arg_1, arg_1, -12853i)) != -2147483647i), func_2(_wgslsmith_mult_u32(var_0, min(_wgslsmith_dot_vec4_u32(vec4<u32>(20547u, var_0, var_0, 4294967295u), vec4<u32>(0u, var_0, var_0, 8063u)), var_0)), Struct_1(arg_0, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(39974u, 20024u), var_0, ~28087u), var_0)), Struct_1(_wgslsmith_f_op_f32(ceil(-1026f)), func_2(var_0, func_2(_wgslsmith_add_u32(var_0, 121539u), Struct_1(-436f, var_0, var_0))).c, ~var_0), Struct_4(var_0, Struct_2(Struct_1(arg_0, reverseBits(0u), 1u), vec3<f32>(_wgslsmith_f_op_f32(-1000f * -1245f), arg_0, arg_0), abs(17925u), _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-224f * 887f)), ~var_0 >> (var_0 % 32u), ~abs(var_0)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-12442i, 27142i, -16708i, 0i), vec4<i32>(arg_1, arg_1, arg_1, arg_1)), u_input.a, arg_1), vec3<i32>(~2147483647i, _wgslsmith_add_i32(-20944i, u_input.b), _wgslsmith_sub_i32(arg_1, 1i))), ~vec3<i32>(firstLeadingBit(arg_1), u_input.b ^ 33282i, -2147483647i)));
    var var_2 = reverseBits(firstTrailingBit(~vec3<i32>(-2147483647i, _wgslsmith_mult_i32(arg_1, u_input.b), ~arg_1)));
    let var_3 = var_1.b.x;
    var_1 = func_4(var_1.a.e.x, func_4(true, Struct_1(arg_0, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_1.b.x, var_1.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(49289u, 10152u, var_0), vec3<u32>(var_0, var_1.b.x, 4294967295u))), var_1.a.a.b), func_2(4294967295u ^ var_1.a.a.b, Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_clamp_u32(1u, 4043u, var_1.b.x), abs(39070u))), Struct_4(reverseBits(var_0), func_4(var_1.a.e.x, var_1.a.a, var_1.a.a, Struct_4(13213u, var_1.a, var_1.a.a, vec3<i32>(-17519i, 1i, arg_1), vec3<i32>(var_2.x, var_2.x, 16223i))).a, func_4(var_1.a.e.x & true, Struct_1(394f, 4294967295u, 96872u), func_2(23027u, Struct_1(912f, var_1.b.x, 1u)), Struct_4(var_0, Struct_2(Struct_1(448f, var_1.a.c, 217u), vec3<f32>(-1044f, 1326f, 1000f), var_0, vec4<f32>(803f, 481f, var_1.a.b.x, -893f), var_1.a.e), Struct_1(arg_0, 53043u, var_1.a.a.c), vec3<i32>(var_2.x, u_input.d.x, -1i), vec3<i32>(0i, arg_1, -2147483647i))).a.a, abs(vec3<i32>(-25252i, u_input.b, var_2.x)), ~(-vec3<i32>(var_2.x, arg_1, var_2.x)))).a.a, func_2(firstTrailingBit(~var_1.a.c), Struct_1(-1000f, ~_wgslsmith_dot_vec4_u32(vec4<u32>(29204u, 54288u, var_0, var_1.b.x), vec4<u32>(0u, var_1.a.c, var_1.b.x, var_0)), _wgslsmith_clamp_u32(firstTrailingBit(var_1.b.x), ~var_0, 82115u))), Struct_4(_wgslsmith_dot_vec4_u32(countOneBits(countOneBits(vec4<u32>(0u, 108637u, 62830u, 1u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.c, 56373u, 0u, var_0), vec4<u32>(var_0, 0u, 80137u, var_0)), vec4<u32>(var_1.b.x, var_0, var_0, var_1.a.c))), var_1.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, -776f) - _wgslsmith_f_op_f32(-arg_0)), var_0, ~_wgslsmith_div_u32(var_1.a.c, var_0)), ~(~(-vec3<i32>(-2303i, 6302i, -44711i))), ~(firstTrailingBit(vec3<i32>(-1641i, -53104i, -2147483647i)) >> (vec3<u32>(var_1.a.a.b, var_1.b.x, var_1.a.c) % vec3<u32>(32u)))));
    return min(vec4<i32>(i32(-1i) * -u_input.c, ~u_input.b, u_input.c | (_wgslsmith_mult_i32(u_input.d.x, -14055i) | u_input.c), _wgslsmith_sub_i32(~(u_input.d.x >> (4294967295u % 32u)), ~u_input.d.x ^ -2147483647i)), ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, u_input.d.x, 32732i, var_2.x), vec4<i32>(var_2.x, var_2.x, 25424i, -15697i), false), vec4<i32>(var_2.x, arg_1, var_2.x, 2147483647i)) << ((~vec4<u32>(var_0, var_0, 10280u, var_0) ^ vec4<u32>(_wgslsmith_clamp_u32(7176u, 82077u, var_1.a.a.c), _wgslsmith_mult_u32(var_0, var_0), var_1.b.x >> (var_0 % 32u), firstTrailingBit(var_1.b.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(u_input.d.x << (~1u % 32u), countOneBits(u_input.a), ~_wgslsmith_add_i32(~6997i, countOneBits(u_input.c)), -u_input.d.x);
    var_0 = vec4<i32>(countOneBits(_wgslsmith_clamp_i32(-15076i, -2147483647i, var_0.x)), -(i32(-1i) * -1i), ~u_input.d.x | 1i, 1i);
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-51375i, var_0.x, var_0.x, 1i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.x, var_0.x, var_0.x, -1i), vec4<i32>(var_0.x, var_0.x, 1i, u_input.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(25683i, 12807i, -90i, u_input.a), vec4<i32>(var_0.x, -1i, u_input.c, -38011i)), func_1(-1379f, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(18449i, -2147483647i, 2147483647i, var_0.x), vec4<i32>(-16290i, u_input.c, var_0.x, var_0.x)), any(vec2<bool>(false, false))), firstLeadingBit(vec4<i32>(2147483647i, u_input.a, var_0.x, u_input.a) << (vec4<u32>(4660u, 1u, 45002u, 1u) % vec4<u32>(32u))) >> (firstTrailingBit(~vec4<u32>(22278u, 0u, 0u, 42112u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f))), 1794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1204f)))))));
    let var_2 = _wgslsmith_f_op_f32(887f - -1793f);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, var_1.x, var_2, var_2)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_1.x, 997f, 542f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-285f, 328f, -963f, -1341f) + vec4<f32>(-1586f, var_1.x, var_2, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_2, -1591f)))))))));
    let var_3 = _wgslsmith_mod_u32(~func_4(false, func_4(true, Struct_1(var_2, 1u, 4294967295u), Struct_1(var_1.x, 1u, 48584u), Struct_4(46503u, Struct_2(Struct_1(1000f, 13374u, 4294967295u), vec3<f32>(359f, var_1.x, -1825f), 37172u, vec4<f32>(-481f, var_2, var_1.x, -670f), vec2<bool>(true, true)), Struct_1(var_1.x, 4294967295u, 0u), vec3<i32>(u_input.d.x, var_0.x, u_input.a), var_0.xxz)).a.a, func_4(all(vec4<bool>(true, false, true, true)), func_2(1u, Struct_1(var_1.x, 74288u, 81867u)), func_4(false, Struct_1(var_2, 1u, 4294967295u), Struct_1(640f, 0u, 0u), Struct_4(1u, Struct_2(Struct_1(var_1.x, 61943u, 126586u), vec3<f32>(var_2, var_1.x, var_2), 93417u, vec4<f32>(533f, var_2, 1000f, var_1.x), vec2<bool>(false, false)), Struct_1(var_2, 19274u, 14084u), var_0.zzx, var_0.yyy)).a.a, Struct_4(4748u, Struct_2(Struct_1(1376f, 0u, 4294967295u), var_1.wzx, 54370u, vec4<f32>(-926f, var_2, var_2, var_1.x), vec2<bool>(false, true)), Struct_1(-1000f, 11152u, 9920u), vec3<i32>(-2147483647i, -2147483647i, 10911i), var_0.zyw)).a.a, Struct_4(~32306u, func_4(true, Struct_1(-934f, 0u, 1u), Struct_1(var_2, 4294967295u, 0u), Struct_4(102176u, Struct_2(Struct_1(var_1.x, 10220u, 4486u), var_1.xwz, 6085u, vec4<f32>(-1146f, 792f, 360f, var_2), vec2<bool>(true, true)), Struct_1(-465f, 4294967295u, 91407u), vec3<i32>(var_0.x, u_input.b, u_input.b), var_0.wyw)).a, func_4(false, Struct_1(-1610f, 1u, 0u), Struct_1(var_2, 24833u, 20141u), Struct_4(50957u, Struct_2(Struct_1(var_1.x, 1u, 26990u), vec3<f32>(var_1.x, var_2, 962f), 4294967295u, vec4<f32>(var_1.x, var_2, 418f, -917f), vec2<bool>(true, false)), Struct_1(-215f, 4294967295u, 29247u), vec3<i32>(-1i, u_input.a, -1i), var_0.wxw)).a.a, _wgslsmith_mult_vec3_i32(var_0.zyy, vec3<i32>(u_input.c, var_0.x, -26288i)), ~var_0.zyy)).a.c, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yxx, func_4(false, Struct_1(var_1.x, 5707u, ~var_3), func_2(countOneBits(1u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -920f), var_3, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3, var_3, var_3), vec3<u32>(35635u, 0u, var_3)))), Struct_4(var_3, Struct_2(Struct_1(2112f, var_3, 0u), _wgslsmith_f_op_vec3_f32(-var_1.zxy), ~3775u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, 1000f, var_1.x, 319f))), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), Struct_1(_wgslsmith_f_op_f32(floor(642f)), 1u, var_3), -_wgslsmith_sub_vec3_i32(var_0.zzx, vec3<i32>(42767i, u_input.c, u_input.b)), -var_0.zyx >> (abs(vec3<u32>(1u, var_3, var_3)) % vec3<u32>(32u)))).b.x);
}

