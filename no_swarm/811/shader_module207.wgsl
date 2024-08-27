struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = -(~(~vec3<i32>(-1i, -16896i, i32(-1i) * -1i)));
    var var_1 = true;
    var var_2 = ~arg_1.a.a.x;
    var_2 = 0u ^ u_input.a.x;
    var_1 = false;
    return vec4<bool>(arg_2.x, any(vec4<bool>(false, arg_2.x, arg_2.x, true)), arg_2.x, arg_2.x);
}

fn func_2() -> f32 {
    var var_0 = select(select(select(vec4<bool>(all(vec4<bool>(false, false, false, true)), false, false, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, true)), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true)), !vec4<bool>(any(vec3<bool>(false, true, true)), true, true, false), select(select(vec4<bool>(false, true, false, true), func_3(vec4<u32>(1u, u_input.a.x, 21700u, 29575u), Struct_2(Struct_1(u_input.a.yy), vec2<i32>(-37755i, u_input.c), Struct_1(vec2<u32>(4294967295u, 53469u)), vec4<f32>(-116f, 801f, -274f, -693f)), vec2<bool>(false, true), Struct_1(u_input.a.yx)), true), select(vec4<bool>(true, true, true, true), func_3(vec4<u32>(u_input.b, 0u, 17685u, 1u), Struct_2(Struct_1(vec2<u32>(u_input.b, 4294967295u)), vec2<i32>(-44523i, u_input.c), Struct_1(u_input.a.xz), vec4<f32>(394f, -665f, 538f, -1005f)), vec2<bool>(true, true), Struct_1(vec2<u32>(u_input.a.x, u_input.b))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), true)), !select(func_3(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 16208u), vec4<u32>(u_input.b, u_input.b, u_input.b, 9764u), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<i32>(19016i, u_input.c), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x)), vec4<f32>(-1597f, -238f, -880f, -2163f)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), Struct_1(u_input.a.xz)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true & any(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, all(vec3<bool>(true, false, false)), true), !func_3(vec4<u32>(u_input.b, u_input.a.x, 11430u, 1u), Struct_2(Struct_1(vec2<u32>(0u, 29866u)), vec2<i32>(40503i, 0i), Struct_1(vec2<u32>(u_input.b, u_input.b)), vec4<f32>(-1655f, -662f, 873f, 480f)), vec2<bool>(true, false), Struct_1(u_input.a.xz))), 1021f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -291f)))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32((u_input.a.x >> (_wgslsmith_clamp_u32(11428u, 1044u, u_input.b) % 32u)) ^ u_input.a.x, _wgslsmith_clamp_u32(~(~u_input.a.x), _wgslsmith_sub_u32(6352u, u_input.a.x) & u_input.a.x, ~36990u)), min(select(_wgslsmith_sub_u32(20689u, u_input.a.x), u_input.a.x, var_0.x), u_input.a.x) | ~0u);
    var var_2 = Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.b, firstTrailingBit(_wgslsmith_mod_u32(u_input.b, u_input.a.x)))));
    var var_3 = _wgslsmith_sub_i32(u_input.c, ~(~_wgslsmith_div_i32(u_input.c, u_input.c))) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, _wgslsmith_add_i32(~u_input.c, _wgslsmith_add_i32(u_input.c, 26098i)), u_input.c, -u_input.c ^ u_input.c), countOneBits(vec4<i32>(u_input.c, u_input.c, i32(-1i) * -51765i, -2147483647i)));
    var_2 = Struct_1(firstLeadingBit(var_2.a));
    return _wgslsmith_f_op_f32(round(-1000f));
}

fn func_4(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = 21040u;
    let var_1 = any(vec2<bool>(true, true)) || !(!(_wgslsmith_f_op_f32(sign(arg_0.x)) != arg_0.x));
    var var_2 = Struct_3(0u, vec3<bool>(false, !(_wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(ceil(-589f))), all(!(!vec3<bool>(var_1, false, false)))), Struct_1(~firstTrailingBit(select(u_input.a.xx, vec2<u32>(var_0, u_input.b), vec2<bool>(false, false)))), u_input.b, func_3(_wgslsmith_add_vec4_u32(vec4<u32>(63113u, var_0, var_0, u_input.a.x), vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u) & vec4<u32>(52119u, 63205u, 1u, 45960u)) >> (select(~vec4<u32>(4294967295u, u_input.b, 54677u, var_0), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 21342u, 0u, var_0), vec4<u32>(13813u, u_input.b, u_input.a.x, 1u), vec4<u32>(var_0, 118954u, var_0, var_0)), arg_0.x != arg_0.x) % vec4<u32>(32u)), Struct_2(Struct_1(vec2<u32>(var_0, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(49343i, u_input.c), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 46371i), vec2<i32>(u_input.c, u_input.c))), Struct_1(u_input.a.yz), _wgslsmith_f_op_vec4_f32(-arg_0)), func_3(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(7185u, 0u, 71981u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_0, u_input.a.x, 29746u), vec4<u32>(0u, 26077u, 22960u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.a.x)), -vec2<i32>(u_input.c, u_input.c), Struct_1(vec2<u32>(u_input.a.x, 25270u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -534f, arg_0.x) - vec4<f32>(759f, -247f, -1000f, arg_0.x))), vec2<bool>(true, true), Struct_1(vec2<u32>(0u, var_0))).yz, Struct_1(vec2<u32>(33661u, ~u_input.b))));
    var var_3 = Struct_3(_wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(u_input.a.x, 0u, var_2.c.a.x, var_0))), min(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.d, var_0, 1u, u_input.a.x), vec4<u32>(var_0, u_input.a.x, var_0, 4294967295u)), ~vec4<u32>(var_0, 4294967295u, 22109u, var_2.a))) ^ var_2.c.a.x, var_2.b, Struct_1(u_input.a.xx), 41358u, !vec4<bool>(func_3(abs(vec4<u32>(7170u, 0u, 1u, 1u)), Struct_2(Struct_1(vec2<u32>(11962u, var_2.d)), vec2<i32>(u_input.c, 0i), Struct_1(u_input.a.zy), vec4<f32>(-177f, arg_0.x, arg_0.x, -214f)), func_3(vec4<u32>(u_input.b, var_0, u_input.b, 3717u), Struct_2(var_2.c, vec2<i32>(u_input.c, u_input.c), var_2.c, arg_0), var_2.e.zw, var_2.c).xw, Struct_1(vec2<u32>(4294967295u, 41318u))).x, any(func_3(vec4<u32>(69u, 49129u, var_0, 1u), Struct_2(var_2.c, vec2<i32>(20502i, u_input.c), var_2.c, arg_0), vec2<bool>(false, false), var_2.c).zyz), true, countOneBits(u_input.c) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -14714i), vec2<i32>(u_input.c, u_input.c))));
    var_2 = Struct_3(3685u, select(vec3<bool>(false, !(var_2.c.a.x > var_0), true), select(!func_3(vec4<u32>(4294967295u, 67745u, 12297u, var_2.a), Struct_2(Struct_1(var_2.c.a), vec2<i32>(u_input.c, u_input.c), var_3.c, arg_0), vec2<bool>(true, var_1), var_2.c).zzy, !var_3.e.xxz, vec3<bool>(false, false, true)), select(select(!vec3<bool>(var_1, var_3.b.x, false), var_2.b, var_1), vec3<bool>(var_1, var_1, any(vec2<bool>(var_3.e.x, true))), !select(var_2.e.zwx, var_3.b, var_2.b.x))), var_3.c, 4294967295u, var_3.e);
    return Struct_3(65248u, var_3.b, Struct_1(vec2<u32>(56656u, firstTrailingBit(0u)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.c.a.x, var_3.d), _wgslsmith_sub_vec2_u32(vec2<u32>(120563u, 4294967295u), var_3.c.a), _wgslsmith_add_vec2_u32(var_2.c.a, vec2<u32>(75031u, 4294967295u)))), _wgslsmith_clamp_u32(reverseBits(~u_input.a.x), 48651u, _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_2.a, 0u, 53693u)), 8916u)), vec4<bool>(true, false, false, any(!vec2<bool>(var_1, true))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-471f, 1000f))))), _wgslsmith_f_op_f32(-1425f + -995f))) * _wgslsmith_f_op_f32(select(-348f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(979f + -794f))), true)));
    var_0 = -1155f;
    var var_1 = 0u;
    let var_2 = func_4(vec4<f32>(_wgslsmith_div_f32(-654f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2())))), -526f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-395f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f)))))));
    var var_3 = max(~(~4294967295u) >> (countOneBits(abs(0u)) % 32u), ~1u);
    return StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1750f, -544f))))))), abs(u_input.a), vec3<i32>(60145i, min(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -14054i, 2250i, 28997i), vec4<i32>(2147483647i, u_input.c, -15028i, u_input.c)), ~vec4<i32>(28812i, 5020i, -1i, u_input.c)), ~_wgslsmith_sub_i32(u_input.c, u_input.c)), -14265i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(306f, -453f, -1000f), vec3<f32>(127f, -445f, -357f), arg_0.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(211f, -1484f, 778f), vec3<f32>(-1684f, -1625f, -349f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-764f, -757f, 1632f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, (countOneBits(u_input.c) << (~95037u % 32u)) >= 16696i));
    var_0 = true;
    var_0 = !(u_input.a.x != (~select(u_input.b, 4294967295u, false) & ~u_input.b));
    let var_1 = Struct_1(vec2<u32>(4294967295u, _wgslsmith_mult_u32(29523u, 49336u)));
    let var_2 = max(~(~(~(~u_input.a.xx))), vec2<u32>(~var_1.a.x, u_input.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, -687f, _wgslsmith_f_op_f32(223f + _wgslsmith_f_op_f32(-975f - -922f))));
    let x = u_input.a;
    s_output = func_1(vec2<bool>(true, true), ~abs(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(133476u, 37239u, var_2.x))));
}

