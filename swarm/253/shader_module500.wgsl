struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: f32 = -1790f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> bool {
    global1 = !(!(0i == _wgslsmith_add_i32(u_input.b.x & u_input.a, 2147483647i)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-586f, 2398f, 762f), vec3<f32>(-195f, 541f, -1108f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1405f, 751f, -664f), vec3<f32>(-316f, -401f, 1070f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(667f * 593f), -497f, 738f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-250f, -108f, -1000f, 1007f))), vec4<f32>(409f, 1613f, 783f, -688f))), ~max(vec3<u32>(13677u, arg_0, 0u), vec3<u32>(arg_0, 57845u, arg_0)) ^ min(vec3<u32>(114613u, 1u, 4294967295u), abs(vec3<u32>(arg_0, arg_0, arg_0))), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true), vec3<i32>(firstTrailingBit(1i | u_input.b.x) >> (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_0, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 24440u))) % 32u), -(countOneBits(-2147483647i) << (~arg_0 % 32u)), firstTrailingBit(~u_input.b.x) << (0u % 32u)), ~(~(~vec2<u32>(arg_0, arg_0))));
    var var_1 = var_0.a.c;
    let var_2 = vec4<bool>(true, true, true, all(vec3<bool>(true, true, true)));
    let var_3 = var_0.c;
    return false;
}

fn func_2() -> u32 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f) + _wgslsmith_f_op_f32(f32(-1f) * -1019f)) - _wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(223f, 408f))))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-688f + -611f), -1000f, _wgslsmith_div_f32(687f, -219f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-247f, -1000f, 458f) - vec3<f32>(-339f, -578f, 2181f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(100f, -1042f, -601f) + vec3<f32>(-725f, -506f, 134f))), !func_3(1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - -2054f), _wgslsmith_f_op_f32(230f * -1282f), _wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12068u), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), max(vec2<u32>(46865u, 94481u), vec2<u32>(0u, 1u))), reverseBits(38605u)), vec2<bool>(true, true), true), select(~firstLeadingBit(vec3<i32>(2147483647i, u_input.a, -21197i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(~u_input.a, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), 0i, 2147483647i), vec3<bool>(!any(vec3<bool>(true, false, false)), true, !(u_input.b.x <= -2147483647i))), ~select(vec2<u32>(1u, 1u), max(vec2<u32>(79879u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), vec2<bool>(true, false)) ^ ~vec2<u32>(1u, 1u));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.a.a.x)), -312f));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1092f, -513f), var_0.a.a), vec3<f32>(var_0.a.b.x, -2415f, var_0.a.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-919f, -871f, 2234f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-544f, var_0.a.b.x, 1596f, var_0.a.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, var_0.a.a.x, var_0.a.a.x, -499f))))), ~var_0.a.c, select(!var_0.a.d, select(var_0.a.d, var_0.a.d, select(false, true, var_0.a.e)), vec2<bool>(all(vec2<bool>(true, var_0.a.e)), var_0.b.x >= -19183i)), var_0.a.e), vec3<i32>(~(-(~(-1i))), var_0.b.x, _wgslsmith_mult_i32(~2147483647i & ~var_0.b.x, _wgslsmith_mod_i32(0i, u_input.a) << (_wgslsmith_clamp_u32(0u, var_0.c.x, var_0.a.c.x) % 32u))), _wgslsmith_add_vec2_u32(var_0.a.c.yx, _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(17712u, 0u) << (var_0.a.c.zz % vec2<u32>(32u))), vec2<u32>(var_0.c.x, ~1u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-982f * 1000f) - 948f), -167f) - vec3<f32>(-683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.b.x))), -817f)));
    return ~abs(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.c.x, 24596u, 8109u, 28658u), vec4<u32>(89926u, var_1.a.c.x, var_1.c.x, 58249u), true), ~vec4<u32>(var_1.a.c.x, var_1.a.c.x, var_0.a.c.x, var_0.c.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    let var_0 = (~vec2<u32>(~49339u, reverseBits(33500u)) ^ vec2<u32>(func_2(), select(19336u, 2168u, true) ^ ~1u)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(select(0u, 4294967295u, arg_1), ~4294967295u), 0u), ~vec2<u32>(63591u, 28338u), select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mod_u32(5489u, 24369u), ~0u), arg_1)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-503f)) - _wgslsmith_f_op_f32(trunc(-504f)));
    global2 = _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(450f, _wgslsmith_f_op_f32(-var_1)) - var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1033f))))));
    global2 = 860f;
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 226f) - _wgslsmith_div_f32(141f, var_1))), -216f, 1f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1163f, _wgslsmith_f_op_f32(var_1 + -1930f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(abs(1000f))))))), ~vec3<u32>(var_0.x, ~var_0.x & 74649u, 4294967295u), !select(select(!vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), false), select(true, arg_1, arg_1)), vec2<bool>(true, true), select(vec2<bool>(arg_1, true), vec2<bool>(false, true), vec2<bool>(false, false))), arg_1);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1325f;
    let var_1 = Struct_1(vec3<f32>(-893f, var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 1127f, var_0) * vec4<f32>(var_0, -1000f, 147f, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 631f, -3488f, var_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(190f, -1974f, var_0, 1137f) * vec4<f32>(1254f, 140f, 777f, var_0)) * vec4<f32>(var_0, -171f, var_0, 1272f)))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(1u, 1u, 1u))), !vec2<bool>(any(vec4<bool>(true, true, false, false)), false), select(abs(~34020u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 30342u, 1u, 0u), vec4<u32>(35304u, 1u, 14107u, 1u)), false) != (4294967295u & func_1(vec4<i32>(u_input.a, -23277i, 26641i, 2147483647i), true)));
    var var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~(var_1.c.x >> (4294967295u % 32u)), 103376u), reverseBits(var_1.c.zx));
    var var_3 = Struct_2(var_1, abs(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, -1i), vec3<i32>(u_input.b.x, -36544i, u_input.b.x)), max(vec3<i32>(u_input.b.x, u_input.a, 0i), vec3<i32>(-1i, u_input.a, 62283i) << (var_1.c % vec3<u32>(32u))))), countOneBits(vec2<u32>(1u, 1u)));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -396f, _wgslsmith_f_op_f32(abs(-1006f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1262f, 211f, var_0, -1196f), _wgslsmith_f_op_vec4_f32(vec4<f32>(630f, -1000f, var_0, 1041f) - vec4<f32>(var_1.b.x, var_0, 736f, var_0)))) + vec4<f32>(var_0, -149f, -1307f, _wgslsmith_f_op_f32(trunc(var_1.a.x)))), abs(var_1.c), !(!(!vec2<bool>(var_3.a.d.x, var_3.a.e))), any(select(var_3.a.d, var_3.a.d, select(vec2<bool>(false, false), vec2<bool>(var_3.a.d.x, var_1.e), var_3.a.d)))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-45767i, 29175i, ~u_input.b.x), ~var_3.b), vec3<i32>(~(var_3.b.x >> (var_1.c.x % 32u)), -2147483647i, ~(-25611i))), reverseBits(select(var_3.a.c.xz, var_3.c, select(select(var_1.d, vec2<bool>(false, true), var_1.d), select(var_1.d, var_1.d, var_3.a.d), select(var_3.a.d, vec2<bool>(true, false), vec2<bool>(false, true))))));
    global0 = var_3.a.b.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(377f)));
    var var_5 = vec3<bool>(var_1.e, true, !(!func_3(var_2.x | 0u)));
    var var_6 = ~select(select(-select(vec4<i32>(0i, var_4.b.x, -1i, u_input.a), vec4<i32>(var_3.b.x, 43806i, var_3.b.x, 33844i), vec4<bool>(var_3.a.e, false, var_5.x, var_1.e)), ~(-vec4<i32>(u_input.b.x, u_input.a, u_input.a, 19173i)), select(select(vec4<bool>(true, var_3.a.d.x, false, var_1.d.x), vec4<bool>(var_3.a.d.x, true, false, var_3.a.e), vec4<bool>(true, true, var_5.x, var_3.a.e)), vec4<bool>(false, var_4.a.d.x, var_1.d.x, false), any(vec4<bool>(var_3.a.d.x, var_4.a.d.x, true, var_5.x)))), vec4<i32>(1i, min(select(var_3.b.x, 1i, true), 1i), -1i, 10979i), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(_wgslsmith_div_u32(var_4.a.c.x, var_2.x), min(1u, var_1.c.x), max(var_2.x, var_2.x), 0u)), 0u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_3.a.b.xw * var_4.a.a.yz), _wgslsmith_f_op_vec2_f32(select(var_1.b.zy, var_4.a.b.zy, vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.a.b.x, var_4.a.b.x))))), vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -530f)))))), abs(abs(~vec4<u32>(var_2.x, 0u, 0u, var_3.a.c.x))), func_2());
}

