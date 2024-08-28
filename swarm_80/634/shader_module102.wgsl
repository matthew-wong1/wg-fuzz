struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-947f, -633f, 561f, 204f), vec4<f32>(-318f, -1539f, 1122f, 224f), vec4<f32>(799f, 190f, 754f, 499f), vec4<f32>(-279f, -313f, -1374f, -1469f), vec4<f32>(1006f, 180f, -1271f, 1586f), vec4<f32>(-688f, 250f, 1532f, -796f), vec4<f32>(-345f, -651f, -387f, -685f), vec4<f32>(-867f, 1021f, -162f, -788f), vec4<f32>(-264f, 1214f, -766f, 646f), vec4<f32>(1000f, 2260f, -104f, 1241f), vec4<f32>(317f, 124f, -507f, 2107f), vec4<f32>(-305f, 242f, 2478f, 213f), vec4<f32>(479f, 1053f, 1262f, 475f), vec4<f32>(-1324f, 658f, -2045f, -702f), vec4<f32>(-1252f, -327f, 182f, -555f), vec4<f32>(-923f, -806f, -773f, -1177f), vec4<f32>(1806f, 530f, 1000f, -1951f), vec4<f32>(614f, -408f, -609f, 443f), vec4<f32>(-252f, 392f, 1000f, -1149f), vec4<f32>(-484f, -1000f, -276f, -2135f), vec4<f32>(-653f, -1973f, 865f, 830f), vec4<f32>(-559f, -439f, -431f, -1525f), vec4<f32>(836f, 772f, 478f, 2221f), vec4<f32>(-1624f, -338f, 1297f, 1603f), vec4<f32>(-665f, -233f, 997f, 659f), vec4<f32>(556f, 1000f, 542f, 551f), vec4<f32>(-1000f, 1242f, -1000f, 1172f), vec4<f32>(1132f, 577f, 479f, -941f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    return min(u_input.c, _wgslsmith_div_i32(u_input.c, _wgslsmith_add_i32(-1i, -(arg_0 ^ u_input.c))));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = ~vec4<i32>(u_input.c, func_3(abs(-1i)), abs(-27521i), 76629i);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -962f);
    let var_2 = u_input.b.x;
    let var_3 = Struct_3(Struct_1(1i >= u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), vec3<bool>(arg_0.x, !arg_0.x, true), 46196i, vec4<i32>(var_0.x >> (_wgslsmith_sub_u32(var_2, 0u) % 32u), u_input.c, -22795i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1109i), min(vec2<i32>(var_0.x, var_0.x), vec2<i32>(35658i, -23466i))))), false, ~u_input.b, Struct_1(arg_0.x, -1656f, !vec3<bool>(arg_0.x, arg_0.x, true), (_wgslsmith_mod_i32(-1i, var_0.x) & u_input.c) | 21581i, ~(min(vec4<i32>(-1i, u_input.c, var_0.x, 2147483647i), vec4<i32>(u_input.c, 0i, var_0.x, 2147483647i)) ^ (vec4<i32>(14988i, 1i, 8737i, var_0.x) << (vec4<u32>(57031u, var_2, u_input.b.x, 9672u) % vec4<u32>(32u))))), _wgslsmith_div_vec2_u32(firstTrailingBit(abs(min(u_input.a.yx, vec2<u32>(u_input.b.x, 4294967295u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(var_2, var_2)), vec2<u32>(~54586u, 50238u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) + _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.d.b, var_1))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(180f, var_3.a.b, var_1) * vec3<f32>(var_3.d.b, 153f, 563f)))))));
    return true;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    let var_0 = min(u_input.c, 1i);
    var var_1 = select(vec3<bool>(false, true, false), !(!vec3<bool>(func_2(vec3<bool>(false, false, false)), true, true)), !(4294967295u < abs(firstLeadingBit(u_input.b.x))));
    return _wgslsmith_clamp_vec3_i32(abs(countOneBits(vec3<i32>(-4870i, 2147483647i, -17140i))), max(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 19934i, 10757i), vec3<i32>(var_0, 26511i, 1i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, u_input.c, 0i), ~vec3<i32>(-64685i, var_0, u_input.c))), countOneBits(max(reverseBits(vec3<i32>(11652i, var_0, 47168i)), -vec3<i32>(2147483647i, u_input.c, 26299i)))) & -(~vec3<i32>(u_input.c & u_input.c, i32(-1i) * -2147483647i, -var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1393f, -487f, 1523f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(460f, 1297f) - _wgslsmith_f_op_f32(ceil(-326f))), -2525f, -505f)));
    let var_1 = ~_wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.c, u_input.c, u_input.c, 24359i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(u_input.c, -1i, u_input.c, 1i), _wgslsmith_sub_vec4_i32(-min(vec4<i32>(1i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, -2147483647i, u_input.c, -14115i)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 21485i, 1i, -4696i)), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(814f * var_0.x), Struct_2(u_input.a | (vec3<u32>(u_input.b.x, 1u, 34877u) | vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(false, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(759f * _wgslsmith_f_op_f32(f32(-1f) * -936f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))), vec2<i32>(var_1.x, 1i)), !vec3<bool>(true, select(true, true, false), true), firstTrailingBit(func_1(-1142f) | vec3<i32>(1009i, var_1.x, var_1.x)) & (~abs(var_1.zzw) | var_1.xzz));
    let var_3 = Struct_1(var_2.b.e.x != _wgslsmith_sub_i32(-1i, -4977i), _wgslsmith_f_op_f32(min(-212f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-670f)), -1314f)), var_2.a)))), select(vec3<bool>(true, var_2.c.x, true), var_2.b.b, !all(var_2.b.b.xx)), var_1.x, vec4<i32>(firstLeadingBit(var_1.x), _wgslsmith_clamp_i32(1i, -9911i, var_2.d.x), -1i, (-u_input.c >> (max(0u, 4294967295u) % 32u)) >> ((1u | (38340u ^ u_input.b.x)) % 32u)));
    var var_4 = _wgslsmith_mod_u32(0u, var_2.b.a.x << (abs(~(~0u)) % 32u));
    global0 = array<vec4<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.c));
}

