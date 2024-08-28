struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -5711i) ^ arg_0.yz, u_input.b.zz | u_input.b.zw) | ~vec2<i32>(2147483647i, -1i)), -605f, arg_0.zx, 31759u, u_input.d.x);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -399f) - var_0.b), 2150f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(230f * 524f), -1464f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.b, var_0.b, true)), var_0.b, 1013f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(724f, var_0.b, 629f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(123f, -797f)), _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(floor(-450f)))), -847f)));
    var_0 = Struct_1(firstLeadingBit(arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -750f)))))), reverseBits(var_0.c), u_input.d.x, 0u);
    var_0 = Struct_1(max(-48963i, -(1i ^ (35748i ^ var_0.a))), var_1.x, ~u_input.b.yw, 1u, _wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), ~1u), 38518u));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, var_0.c.x, var_0.a, ~var_0.c.x), abs(countOneBits(firstLeadingBit(u_input.b) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.a, -25893i, var_0.a), vec4<i32>(var_0.a, -7752i, -28332i, 1i)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(980f, 1000f, -265f, 1000f))))));
}

fn func_2() -> i32 {
    let var_0 = Struct_5(~(~u_input.c.yz), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-687f, -426f, 1839f, -342f), vec4<f32>(170f, 716f, -1772f, 2089f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(792f, -1233f, 382f, -105f)))))), true, _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(~25766u, abs(1u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1448f, -905f, 702f, 290f))), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(u_input.a, u_input.b.x, u_input.a))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1450f, 229f, 1694f, 2188f) * vec4<f32>(1853f, -963f, -945f, -1129f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(440f, -1050f, -1455f, 394f) * vec4<f32>(-1000f, -663f, 1936f, 1526f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * 287f), _wgslsmith_f_op_f32(f32(-1f) * -1478f), -1575f, 528f)), any(vec4<bool>(true, true, true, true)), ~(~30254u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, -709f, 217f, 781f)) + vec4<f32>(-502f, 480f, -730f, 901f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, 1162f, 218f, -2441f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, -145f, -146f, -542f)))))));
    let var_1 = ~1u;
    var var_2 = ~u_input.b;
    var var_3 = var_0;
    var var_4 = !vec2<bool>(var_0.c.b, var_2.x > u_input.a);
    return -_wgslsmith_mult_i32(-(~u_input.a & (-7924i & u_input.a)), _wgslsmith_clamp_i32(var_2.x, abs(-var_2.x), u_input.b.x));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.c.x < arg_2;
    var var_1 = vec4<i32>(~arg_0.a, 53725i, arg_3.x, countOneBits(func_2()));
    var var_2 = Struct_4(-2147483647i, arg_0.b, arg_0.c, Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.c.a - arg_0.d.a), all(vec4<bool>(68229u <= arg_2, all(vec4<bool>(true, false, true, true)), true, true)), firstTrailingBit(u_input.c.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 369f, arg_1.x, arg_1.x))))));
    var_0 = all(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.d.b, true, var_2.d.b), vec3<bool>(arg_0.d.b, arg_0.d.b, arg_0.d.b)), vec3<bool>(true, var_2.c.b, var_2.c.b), !vec3<bool>(arg_0.d.b, arg_0.d.b, arg_0.d.b))));
    var_2 = Struct_4(~(-65368i), var_2.b, var_2.c, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.c.a)) + _wgslsmith_f_op_vec4_f32(min(arg_0.d.d, vec4<f32>(arg_1.x, 851f, arg_1.x, var_2.b.b)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.d.a + var_2.d.d)))), arg_0.d.b, _wgslsmith_mod_u32(reverseBits(2127u), ~arg_0.b.e), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(u_input.a, firstTrailingBit(u_input.a), u_input.b.x)))));
    return Struct_1(reverseBits(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-var_1.yyy)).x) + var_2.b.b), u_input.b.wx, arg_0.c.c, arg_0.d.c);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2.a.c;
    var var_1 = -1631f;
    var_1 = arg_2.a.d.x;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1645f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(~vec3<i32>(-2147483647i, arg_0.a, u_input.a))).x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2261f)), -290f, true))));
    var_1 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1.x) + -1095f)))));
    return Struct_1(arg_0.b.a, -258f, ~vec2<i32>(reverseBits(u_input.a ^ u_input.a), arg_0.a), ~countOneBits(~arg_2.a.c), ~(u_input.d.x | var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(abs(firstLeadingBit(9251i)), func_4(Struct_4(-u_input.a, func_1(Struct_4(0i, Struct_1(-2017i, 268f, vec2<i32>(u_input.a, 2147483647i), u_input.d.x, u_input.d.x), Struct_2(vec4<f32>(-467f, -1538f, -1000f, 1283f), true, 70894u, vec4<f32>(-750f, 626f, 346f, -166f)), Struct_2(vec4<f32>(-1454f, 1244f, 658f, 187f), false, u_input.c.x, vec4<f32>(-632f, -1500f, -1948f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -758f, 1000f) + vec3<f32>(273f, -1013f, -690f)), ~u_input.c.x, select(vec2<i32>(u_input.a, u_input.a), u_input.b.zx, true)), Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(611f, 882f, -1000f, -228f))), all(vec2<bool>(false, true)), u_input.c.x, vec4<f32>(-347f, 1737f, -1000f, 990f)), Struct_2(vec4<f32>(1022f, 1158f, -1559f, -448f), select(false, true, false), 4294967295u, vec4<f32>(2397f, 341f, 999f, -178f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-276f)) - 429f), _wgslsmith_f_op_f32(f32(-1f) * -1786f), 476f), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-850f, -1895f, 727f, -675f), vec4<f32>(1095f, 661f, 764f, 325f), vec4<bool>(false, true, false, true))), any(vec4<bool>(true, false, true, false)), 0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(779f, 1438f, -1000f, -328f) + vec4<f32>(1914f, -256f, -1235f, 451f))), !(2147483647i > u_input.b.x)), ~_wgslsmith_clamp_u32(~u_input.d.x, reverseBits(1u), 1u)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-366f, -2053f, 1106f, -2197f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1048f, -414f, 251f, 544f), vec4<f32>(220f, 361f, 133f, 760f), true)), 26563i != u_input.b.x))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(956f, 108f, 1321f, 561f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(640f, -1163f, -930f, 479f) * vec4<f32>(-1402f, -1150f, -1636f, 407f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(604f, 199f, -262f, -428f)))))), Struct_2(vec4<f32>(1f, 1f, 1f, 1f), true, 10123u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1152f, 836f, 810f, 174f), vec4<f32>(119f, -691f, 1673f, 612f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, 797f, 1492f, 767f))))))));
    let var_1 = _wgslsmith_sub_u32(32858u, u_input.c.x);
    let var_2 = Struct_3(var_0.c, !(var_0.c.b & (true || !var_0.c.b)));
    let var_3 = u_input.b.yyy;
    let var_4 = abs(var_3);
    let var_5 = Struct_5(u_input.c.zw, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(962f + var_2.a.d.x) * _wgslsmith_f_op_vec4_f32(func_3(u_input.b.zww)).x), -2354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f - -609f)), var_2.a.d.x), select(func_2(), _wgslsmith_div_i32(-14395i, var_0.b.c.x), true) <= (firstLeadingBit(1i) << (var_2.a.c % 32u)), var_0.d.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.d.x, var_0.d.a.x, -1000f, var_0.c.d.x) - var_0.c.d), vec4<f32>(var_2.a.d.x, var_0.c.a.x, var_2.a.d.x, -349f))))), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.d.x, -vec2<i32>(~5114i, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d.x) * var_5.c.d.x));
}

