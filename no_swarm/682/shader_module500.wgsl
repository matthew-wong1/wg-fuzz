struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_4(Struct_1(54234i, _wgslsmith_clamp_i32(1i, 1i, _wgslsmith_div_i32(-1i, 21972i)), vec4<i32>(-2147483647i, 4121i, -59659i, ~_wgslsmith_clamp_i32(-2147483647i, 57395i, 1i)), !arg_1), Struct_3(_wgslsmith_f_op_f32(693f - 725f), Struct_1(38214i, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -31230i, -2147483647i), vec3<i32>(20868i, -1i, 1i))), ~(~vec4<i32>(30615i, -90443i, 2147483647i, 2147483647i)), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + -472f))) - arg_2.x), -1404f, -476f), select(select(!select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), vec2<bool>(arg_1, false)), !(!vec2<bool>(arg_1, arg_1)), arg_1), select(vec2<bool>(false, !arg_1), select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), false), vec2<bool>(arg_1, false)), select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true))), true));
    let var_1 = arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(1613f * _wgslsmith_f_op_f32(681f - var_1)), var_0.b.b, 1227f, _wgslsmith_f_op_f32(f32(-1f) * -1312f), arg_0);
    var var_3 = Struct_1(var_2.b.c.x, max(reverseBits(var_2.b.a), _wgslsmith_add_i32(var_0.a.c.x, _wgslsmith_sub_i32(var_2.b.b, var_2.b.b))) ^ ~(-max(var_2.b.c.x, 2147483647i)), vec4<i32>(~(_wgslsmith_clamp_i32(2147483647i, -16275i, var_0.a.c.x) & 0i), ~max(var_0.a.a, ~1i), -34602i, 0i), !((4294967295u ^ u_input.a) < arg_3));
    var_3 = var_0.a;
    return !vec4<bool>(!any(var_0.c), all(select(vec2<bool>(var_0.b.b.d, false), var_0.c, !var_0.c)), true, any(!vec2<bool>(var_2.b.d, arg_1)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = vec4<f32>(-1168f, -1289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(391f, 1f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -153f) * arg_0.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.wz + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(656f - 1420f), arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(640f, arg_0.x) * vec2<f32>(642f, 151f)))))));
    var var_2 = Struct_2(select(!select(func_3(var_0.x, true, arg_0, u_input.a), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), func_3(-363f, false, var_0, 0u), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)), var_0.yxw, _wgslsmith_div_vec2_f32(arg_0.wz, var_0.yx), 23873i, Struct_1(~(-13764i), firstLeadingBit(~(-2147483647i)), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(-1i, 2147483647i, 21857i, -22546i))), 2147483647i, 1i), true));
    var_2 = Struct_2(!vec4<bool>(var_2.e.d, true, false, var_2.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.wzw, vec3<f32>(var_2.b.x, -214f, arg_0.x)), arg_0.wxx, true)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-264f, arg_0.x, -1868f) - vec3<f32>(-1665f, -426f, var_2.b.x)), _wgslsmith_f_op_vec3_f32(var_2.b + var_2.b))) + vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, arg_0.x)), 467f, 195f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(428f - var_2.c.x), _wgslsmith_f_op_f32(exp2(arg_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1052f) * vec2<f32>(arg_0.x, -728f)))), -1i, var_2.e);
    var var_3 = Struct_2(!vec4<bool>(var_2.e.d, !var_2.e.d & false, true, _wgslsmith_f_op_f32(trunc(355f)) == var_1.x), _wgslsmith_f_op_vec3_f32(sign(var_0.xzx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1242f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_1.x)))), -((_wgslsmith_div_i32(-1i, var_2.d) & 0i) ^ ~abs(48199i)), Struct_1(2147483647i, _wgslsmith_mult_i32(-max(var_2.d, -2147483647i), -2147483647i), ~(-vec4<i32>(var_2.d, var_2.e.b, var_2.d, var_2.e.c.x)), !var_2.a.x));
    return Struct_2(!(!(!(!var_3.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-406f))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.x, 633f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1114f, 409f)), min(0i, firstTrailingBit(-(~(-18080i)))), Struct_1(-var_3.e.b, -var_2.d, vec4<i32>(_wgslsmith_add_i32(8345i & var_3.d, _wgslsmith_add_i32(var_3.e.b, var_3.e.b)), 2147483647i, abs(~(-1i)), 2147483647i), true));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~min(~vec4<u32>(11138u, u_input.a, u_input.a, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(34140u, u_input.a, 0u, 17611u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u))), vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u)), _wgslsmith_div_u32(u_input.a, u_input.a), false), max(u_input.a, countOneBits(1u)), u_input.a, _wgslsmith_add_u32(~4294967295u, countOneBits(u_input.a)))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, 39219u, ~u_input.a), select(u_input.a, firstLeadingBit(90462u), arg_1.e.d), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1999u) | vec2<u32>(16612u, u_input.a), vec2<u32>(1u, u_input.a)), ~reverseBits(u_input.a)), vec4<u32>(~firstTrailingBit(0u), _wgslsmith_div_u32(abs(1u), ~u_input.a), 62620u, 31311u)));
    var var_1 = ~select(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -242f, -259f, 1735f) - _wgslsmith_f_op_vec4_f32(max(arg_0, arg_0)))).e.c, arg_1.e.c, all(arg_1.a.xxy));
    var_1 = abs(~(~(vec4<i32>(-3141i, 8778i, arg_1.d, arg_1.d) >> (vec4<u32>(16467u, u_input.a, u_input.a, 36700u) % vec4<u32>(32u)))) | firstLeadingBit(vec4<i32>(-66962i, countOneBits(0i), -1i, -1853i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(func_2(vec4<f32>(arg_1.c.x, arg_1.b.x, arg_1.b.x, 1806f)).b.x)), 819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, false)) * arg_1.b.x))));
    var_1 = ~vec4<i32>(-var_1.x, var_1.x, var_1.x, min(_wgslsmith_dot_vec2_i32(var_1.wz, var_1.wx), _wgslsmith_dot_vec2_i32(~vec2<i32>(-9343i, 17574i), arg_1.e.c.xz)));
    return arg_1.e.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(102f, -1795f, false)), _wgslsmith_f_op_f32(981f - -534f), -741f, -174f)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1373f, 491f, -427f, -1171f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(232f, 949f, -1850f, 394f)))))), abs(_wgslsmith_mod_i32(var_0.c.x, func_4(vec4<f32>(-980f, -452f, 396f, -267f), Struct_2(arg_0, vec3<f32>(-1455f, -2007f, -803f), vec2<f32>(-971f, -496f), -1i, arg_1)) ^ _wgslsmith_mod_i32(0i, arg_1.b))), -(_wgslsmith_add_vec4_i32(-var_0.c, ~vec4<i32>(2147483647i, arg_1.a, arg_1.c.x, arg_1.a)) << (vec4<u32>(~4294967295u, u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.a), u_input.a) % vec4<u32>(32u))), arg_1.d);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(1502f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2686f + -107f) - -1523f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1196f)), _wgslsmith_f_op_f32(floor(1639f)))))), Struct_1(_wgslsmith_sub_i32(-_wgslsmith_div_i32(0i, arg_1.a), arg_1.a), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.c.yw, var_0.c.yy), ~(-2147483647i)), var_0.c.x), vec4<i32>(~_wgslsmith_clamp_i32(-2147483647i, arg_1.a, 41904i), arg_1.c.x, 0i, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2526f, 332f, -390f, -358f), vec4<f32>(-500f, -2559f, 699f, -2230f), true))).d), true), 1007f, -658f, -601f);
    return ~firstLeadingBit(_wgslsmith_mult_u32(u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a, 35332u, _wgslsmith_sub_u32(reverseBits(~(1u << (u_input.a % 32u))), func_1(vec4<bool>(true, true, true, true), Struct_1(reverseBits(1i), select(-1i, -24248i, true), vec4<i32>(-1i, -7349i, -46403i, -2147483647i), true), true)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, 6798u), firstTrailingBit(14021u)), vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(5621u, 10193u)), 1u))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(-209f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 1050f, select(false, true, true))))), Struct_1(-24893i, abs(max(-25970i, ~39875i)), ~vec4<i32>(1i, ~(-9954i), 0i, -12520i), !all(vec2<bool>(true, true)) | true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1093f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(491f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 1000f)), -480f)))));
    var var_2 = _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(38622u, u_input.a >> (var_0.x % 32u)), 23945u)), ~(~4294967295u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-795f * -345f) - 1696f), 1163f)));
    let var_4 = all(select(select(!vec3<bool>(var_1.b.d, var_1.b.d, var_1.b.d), select(vec3<bool>(false, true, false), vec3<bool>(var_1.b.d, true, true), func_2(vec4<f32>(var_1.a, var_1.a, -1601f, var_3)).a.x), !(!vec3<bool>(var_1.b.d, true, false))), vec3<bool>(var_1.b.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f) > var_3, true), var_1.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_1.e, var_1.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_3, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_3, -321f))))), ~0u);
}

