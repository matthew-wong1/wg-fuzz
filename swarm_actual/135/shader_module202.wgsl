struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    return !select(vec3<bool>(true, true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), false, true));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = firstTrailingBit(arg_3.x) ^ ~(~arg_3.x);
    let var_1 = !vec3<bool>(true, true || !all(vec3<bool>(false, false, false)), -2320f >= _wgslsmith_f_op_f32(sign(arg_1.e.x)));
    var var_2 = Struct_3(max(arg_1.a.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(74181u, var_0), _wgslsmith_div_u32(0u, 37553u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0), ~vec2<u32>(55596u, 4294967295u)))), func_3(), abs(vec3<u32>(firstTrailingBit(max(arg_1.a.x, 692u)), ~(arg_1.a.x & 4294967295u), 1u)), !(!var_1.x));
    let var_3 = select(vec4<i32>(1i, 1i, -arg_1.c.x, ~firstTrailingBit(u_input.a ^ arg_1.c.x)), ~(~vec4<i32>(arg_1.c.x, i32(-1i) * -21725i, -763i, 2147483647i & u_input.a)), select(!(!vec4<bool>(var_2.b.x, var_1.x, var_1.x, true)), vec4<bool>(var_2.b.x, all(!var_1.yx), true, var_2.d), select(vec4<bool>(false, true, var_1.x, false), !select(vec4<bool>(false, true, true, var_2.b.x), vec4<bool>(false, false, var_2.b.x, var_1.x), vec4<bool>(var_2.d, var_2.b.x, false, false)), !vec4<bool>(var_1.x, false, true, false))));
    var_2 = Struct_3(max(vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 0u), arg_3.x), ~reverseBits(~vec2<u32>(1u, arg_3.x))), !select(!(!vec3<bool>(var_2.d, false, var_2.b.x)), var_2.b, vec3<bool>(var_1.x, false && var_1.x, 4294967295u <= var_2.c.x)), var_2.c, all(vec3<bool>(true, true, all(var_2.b.xy))));
    return Struct_3(arg_3, select(var_1, select(var_2.b, vec3<bool>(true, true, false), false), !var_2.b), _wgslsmith_div_vec3_u32(u_input.b.wxw, _wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 69336u, var_0), arg_1.a)), var_2.c)), arg_2.x > 1000f);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = ~_wgslsmith_div_vec4_u32(u_input.b, select(~vec4<u32>(u_input.c, 4294967295u, 7508u, 4294967295u), abs(u_input.b), true) << (u_input.b % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1276f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-384f, -387f)))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -454f)))))) * -529f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-959f)), _wgslsmith_div_f32(855f, -556f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)), -769f, 897f))));
    return Struct_4(Struct_2(1i, Struct_1(select(u_input.b.xyx, vec3<u32>(var_0.x, 89714u, 4294967295u), vec3<bool>(arg_0.x, true, arg_1.d)) << (~vec3<u32>(1u, arg_2.x, arg_1.c.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1235f, -661f), -695f)), -vec4<i32>(0i, u_input.a, 2147483647i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.ww, var_2.yx, arg_1.b.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))))), Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(55300u, arg_1.c.x, var_0.x), var_0.ywy), abs(vec3<u32>(var_0.x, 1u, u_input.b.x))), 1f, ~max(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, 18813i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yx)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, -1726f))))), Struct_1(vec3<u32>(~73367u, arg_1.c.x << (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u), _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(arg_2.x, arg_2.x))), -562f, _wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.a, 25772i, -2147483647i, 1i)), ~select(vec4<i32>(u_input.a, 1i, -1i, u_input.a), vec4<i32>(u_input.a, 3108i, -2147483647i, u_input.a), false)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x - -880f))), _wgslsmith_f_op_f32(max(var_2.x, var_2.x))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(544f, -164f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(459f, 2256f), var_2.zy, vec2<bool>(true, arg_1.d)))), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(min(1259f, var_2.x))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = ~vec2<u32>(arg_2.b.a.x, arg_0.b.a.x);
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x << (8886u % 32u), arg_2.b.a.x), ~(~arg_2.b.a.zx) | arg_2.b.a.yz);
    var var_1 = arg_0.a.b;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(arg_2.c.c, vec4<i32>(countOneBits(7681i), -12406i, ~0i, -1i)), arg_0.a.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(995f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.b.d.x)) * arg_2.b.b) + -530f))));
    return ~min(~_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.b.c.x, var_2.x, 0i), vec4<i32>(arg_2.c.c.x, 4007i, arg_0.a.c.c.x, -31486i))), min(292i, ~_wgslsmith_div_i32(var_2.x, 2147483647i)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    var var_1 = vec2<i32>(arg_3.a, func_5(func_4(!(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_1.x), var_0.c.e), Struct_1(vec3<u32>(41613u, u_input.c, 7829u), arg_0, vec4<i32>(19915i, -2147483647i, -35276i, arg_3.b.c.x), var_0.c.e, arg_1.xw), _wgslsmith_f_op_vec3_f32(arg_1.wzx + vec3<f32>(arg_1.x, 646f, 1000f)), var_0.c.a.xx), vec2<u32>(_wgslsmith_mult_u32(0u, var_0.c.a.x), _wgslsmith_clamp_u32(1u, 1u, 0u))), select(func_3(), func_3(), func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.x, 817f))), func_4(vec4<bool>(arg_2, false, arg_2, arg_2), Struct_3(vec2<u32>(arg_3.c.a.x, 27754u), vec3<bool>(true, false, false), vec3<u32>(var_0.b.a.x, var_0.c.a.x, 178u), arg_2), vec2<u32>(24262u, u_input.c)).a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(727f, 1789f, -297f) * arg_1.wxw), arg_3.b.a.zz).b), var_0));
    var var_2 = -688f;
    var_1 = var_0.b.c.ww;
    let var_3 = !select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, arg_2, false, true), vec4<bool>(arg_2, false, false, arg_2)), select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, true), arg_2), !arg_2), select(!select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(false, arg_2, true, false)), !(!vec4<bool>(arg_2, false, false, arg_2)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, var_0.c.d.x)), func_4(vec4<bool>(arg_2, true, false, arg_2), Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), vec3<bool>(true, false, true), vec3<u32>(arg_3.c.a.x, 46256u, u_input.c), true), vec2<u32>(var_0.c.a.x, arg_3.c.a.x)).b, _wgslsmith_f_op_vec3_f32(round(arg_1.xxx)), abs(arg_3.c.a.zy)).d), 4294967295u <= _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, arg_3.c.a.x, u_input.b.x), vec3<u32>(36079u, u_input.b.x, 4294967295u)));
    return _wgslsmith_sub_u32(~var_0.b.a.x, firstTrailingBit(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 7219u, 1u), u_input.b.yyz), 0u), ~31588u, _wgslsmith_dot_vec2_u32(vec2<u32>(8076u & u_input.c, u_input.c), ~u_input.b.wx));
    var var_1 = ~vec3<u32>(324u, min(func_1(714f, vec4<f32>(-1744f, 1000f, 513f, -2195f), true, Struct_2(-2147483647i, Struct_1(vec3<u32>(u_input.c, 9667u, u_input.b.x), 520f, vec4<i32>(u_input.a, u_input.a, -28460i, 2147483647i), vec2<f32>(114f, 1353f), vec2<f32>(-2649f, 959f)), Struct_1(vec3<u32>(var_0.x, var_0.x, 61492u), -1480f, vec4<i32>(56001i, u_input.a, -2147483647i, u_input.a), vec2<f32>(2099f, -864f), vec2<f32>(-1694f, 1998f)))) >> (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u), _wgslsmith_mult_u32(abs(49268u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 6972u, 48853u), var_0))), firstLeadingBit(func_1(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, -1355f, -969f, -1018f)), true, Struct_2(u_input.a, Struct_1(var_0, -391f, vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i), vec2<f32>(-898f, -367f), vec2<f32>(-158f, -1000f)), Struct_1(u_input.b.yxw, -467f, vec4<i32>(u_input.a, u_input.a, -2147483647i, 15622i), vec2<f32>(1235f, 1532f), vec2<f32>(1000f, 527f))))));
    let var_2 = abs(vec4<i32>(u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), func_4(vec4<bool>(true, true, true, true), Struct_3(var_1.zz, vec3<bool>(true, true, false), u_input.b.ywz, true), ~var_1.zx).b.c.x, u_input.a) ^ ~(-(~vec4<i32>(-26246i, u_input.a, 48557i, u_input.a))));
    var var_3 = var_2;
    var var_4 = func_4(vec4<bool>(true, true, true, true), func_2(vec2<f32>(-989f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1270f - -324f), 179f))), Struct_1(u_input.b.yxx, 1f, vec4<i32>(var_3.x & var_2.x, abs(var_2.x), -u_input.a, -var_3.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2008f, 113f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(177f, 863f)), func_2(vec2<f32>(673f, 430f), Struct_1(var_0, -370f, var_2, vec2<f32>(426f, 547f), vec2<f32>(-1000f, -635f)), vec3<f32>(-1000f, 824f, 1813f), vec2<u32>(10202u, u_input.c)).b.yx)), vec2<f32>(_wgslsmith_div_f32(1820f, 1169f), -531f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1124f), 897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -959f))), var_0.yy << (((var_0.yz | var_1.yy) & u_input.b.wy) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(~var_0.zy), var_0.zy))).b;
    var_1 = ~u_input.b.zxz >> (_wgslsmith_mod_vec3_u32(var_4.a, abs(vec3<u32>(_wgslsmith_sub_u32(var_0.x, var_4.a.x), reverseBits(61580u), 0u))) % vec3<u32>(32u));
    let var_5 = func_4(!(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, false))), Struct_3(firstTrailingBit(vec2<u32>(~62112u, 1u)), !select(func_2(var_4.e, Struct_1(vec3<u32>(var_4.a.x, 57343u, 38608u), var_4.b, var_4.c, var_4.e, var_4.e), vec3<f32>(var_4.b, var_4.d.x, 227f), var_4.a.yy).b, func_3(), any(vec2<bool>(true, true))), min(var_4.a, ~u_input.b.xyx), true), var_4.a.xy).b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(vec3<u32>(~10975u, _wgslsmith_mult_u32(4294967295u, u_input.b.x), 1u), _wgslsmith_div_vec3_u32(var_4.a, vec3<u32>(var_1.x, u_input.c, var_4.a.x) | vec3<u32>(var_0.x, 28463u, var_4.a.x))), 1u);
}

