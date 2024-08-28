struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = arg_0.a;
    var var_1 = var_0.c.a.x;
    let var_2 = var_0.c.c;
    let var_3 = Struct_5(arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1108f, -101f, 908f, arg_1.x)))))), firstLeadingBit(vec4<i32>(37499i << (~var_0.a % 32u), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.a.d.a.x, var_0.c.a.x, 4830i, -19830i)), vec4<i32>(arg_0.a.c.a.x, arg_0.a.d.a.x, var_0.c.a.x, arg_0.a.d.a.x)), arg_0.a.d.a.x, 2147483647i)));
    let var_4 = var_3.c.x;
    return -reverseBits(arg_0.a.c.a);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(select(~(~vec3<i32>(2147483647i, -1i, 12179i) ^ (vec3<i32>(-36213i, 3608i, -2147483647i) << (u_input.c.wwy % vec3<u32>(32u)))), (func_3(Struct_3(Struct_2(u_input.b.x, 482f, Struct_1(vec3<i32>(-5696i, -1i, -1i), -1177f, -701f, 239f, -177f), Struct_1(vec3<i32>(7268i, 0i, -1i), 1774f, -2298f, -1000f, -338f), true)), vec3<f32>(-344f, -826f, -1458f)) << (u_input.c.wzy % vec3<u32>(32u))) >> (~_wgslsmith_add_vec3_u32(u_input.c.xxx, u_input.b.ywz) % vec3<u32>(32u)), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1456f * 1509f))))), 463f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1113f, -1133f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f + -1001f))));
    let var_1 = vec4<f32>(var_0.e, _wgslsmith_f_op_f32(var_0.e - var_0.e), _wgslsmith_f_op_f32(min(var_0.b, 591f)), var_0.b);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_1.x), -2002f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(147f * var_0.d), _wgslsmith_f_op_f32(var_1.x * var_0.e))), var_1.x, all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(388f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -1305f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f - var_0.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.e * var_1.x))))));
    var_0 = Struct_1(vec3<i32>(-1i, abs(firstLeadingBit(_wgslsmith_mod_i32(var_0.a.x, var_0.a.x))), ~9306i), 1000f, _wgslsmith_f_op_f32(select(-660f, _wgslsmith_div_f32(var_0.b, -746f), reverseBits(u_input.a.x ^ u_input.b.x) != u_input.c.x)), 178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + var_1.x) * var_1.x));
    var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, var_0.a.x, 1i), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 49958i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(var_0.a.x, -11186i, var_0.a.x, var_0.a.x))) & firstLeadingBit(var_0.a.x ^ -1i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -1i, var_0.a.x, var_0.a.x)), vec4<i32>(~68082i, select(-2147483647i, var_0.a.x, true), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 2147483647i, -1i), var_0.a), -var_0.a.x)), 1i), -1268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1163f))), var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1086f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-576f, var_0.e)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2172f));
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_2(u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1064f)))), Struct_1(vec3<i32>(select(1i, -33610i, false), abs(-14059i), ~23012i) >> (u_input.a.xxz % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1096f - 1231f) + _wgslsmith_f_op_f32(f32(-1f) * -763f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 679f), _wgslsmith_f_op_f32(f32(-1f) * -669f))) - -1449f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1269f, -2797f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(244f, -699f) - _wgslsmith_div_f32(-1000f, 1021f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f))), Struct_1(abs(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-1i, 54871i, -51054i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f - 270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-572f, 182f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-969f, 116f)), _wgslsmith_f_op_f32(trunc(-141f))))), 108f, _wgslsmith_f_op_f32(f32(-1f) * -452f)), true);
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(var_0.c.a << (~u_input.a.wxx % vec3<u32>(32u)), var_0.c.a) & ~var_0.c.a, var_0.b, -508f, -1589f, _wgslsmith_f_op_f32(func_2()));
    var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(7935u, 0u, 0u) & vec3<u32>(var_0.a, 4294967295u, var_0.a))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, 4294967295u, 15313u), _wgslsmith_mult_vec3_u32(u_input.b.yzw, vec3<u32>(59718u, 13505u, var_0.a)))), 1530f, Struct_1(~var_1.a ^ select(-vec3<i32>(var_0.c.a.x, var_1.a.x, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.x, var_0.c.a.x, -40602i), var_0.c.a), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 504f, var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1068f - var_1.e), var_0.d.d))), var_0.c, (select(any(vec3<bool>(var_0.e, var_0.e, var_0.e)), true, false) || var_0.e) & var_0.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, 2115f))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, var_1.e)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(-208f - var_1.c)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.c, 869f)) + vec2<f32>(-116f, var_0.c.d)))));
    let var_3 = Struct_1(_wgslsmith_sub_vec3_i32(func_3(Struct_3(Struct_2(28745u, var_2.x, Struct_1(var_0.c.a, var_1.c, var_1.e, -1756f, var_2.x), Struct_1(vec3<i32>(var_0.c.a.x, var_1.a.x, var_0.d.a.x), var_2.x, var_2.x, 1898f, var_1.b), var_0.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_1.d, -628f) * vec3<f32>(-1242f, 577f, var_1.c))) ^ _wgslsmith_mult_vec3_i32(var_1.a, ~var_1.a), max(-(var_0.d.a ^ var_1.a), min(firstTrailingBit(vec3<i32>(var_1.a.x, 2147483647i, var_1.a.x)), vec3<i32>(1i, -1i, var_1.a.x)))), var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d)) * _wgslsmith_f_op_f32(ceil(-1553f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1025f), -1607f, all(!vec3<bool>(var_0.e, false, var_0.e)))), var_1.b);
    return select(vec4<bool>(true, !all(select(vec3<bool>(true, var_0.e, var_0.e), vec3<bool>(var_0.e, true, var_0.e), vec3<bool>(false, false, var_0.e))), true, ~(~0u) < ~var_0.a), select(vec4<bool>(_wgslsmith_f_op_f32(-1221f + var_3.d) <= -233f, !(0u <= u_input.b.x), true != all(vec2<bool>(false, false)), !(true || var_0.e)), vec4<bool>(false, true, var_0.e, !(u_input.c.x != 17689u)), vec4<bool>(true, (var_3.a.x >> (u_input.c.x % 32u)) <= var_1.a.x, false, true)), vec4<bool>(any(vec4<bool>(true, select(var_0.e, var_0.e, var_0.e), var_0.e, any(vec3<bool>(false, true, var_0.e)))), var_0.e, true | any(!vec2<bool>(var_0.e, var_0.e)), false));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    return arg_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)));
    let var_1 = Struct_3(Struct_2(4294967295u, 1116f, func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, 716f, -627f, -308f) - vec4<f32>(743f, 634f, 850f, 1917f))), Struct_3(Struct_2(u_input.d, 1133f, Struct_1(vec3<i32>(1i, 23136i, -1i), -1035f, -1708f, -905f, -1418f), Struct_1(vec3<i32>(2147483647i, -55762i, 0i), 1200f, 734f, -610f, 1818f), true))), Struct_1(~vec3<i32>(-13770i, 5305i, 60688i), func_4(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<f32>(-1000f, -673f, -1899f, -374f), Struct_3(Struct_2(54170u, 702f, Struct_1(vec3<i32>(1i, -8187i, 1i), 1501f, 1115f, 1010f, 120f), Struct_1(vec3<i32>(27753i, 0i, 0i), -291f, -508f, 212f, 1311f), true))).e, _wgslsmith_f_op_f32(f32(-1f) * -541f), 407f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f - -326f) * -397f)), any(vec2<bool>(var_0.x, false)) || !var_0.x));
    var_0 = vec3<bool>(!(!var_1.a.e), var_0.x, any(func_1()));
    var_0 = select(!vec3<bool>(var_1.a.e, true, true), vec3<bool>(any(vec3<bool>(var_1.a.c.a.x > var_1.a.d.a.x, all(vec2<bool>(var_0.x, var_0.x)), var_0.x)), true, var_0.x), var_1.a.d.a.x == -var_1.a.d.a.x);
    var_0 = !vec3<bool>(var_0.x, !all(var_0.zz), any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, false), func_1().zyz)));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.d.d, 586f, -443f, var_1.a.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(773f, -913f, var_1.a.b, var_1.a.c.c) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(858f, var_1.a.c.c, var_1.a.b, -343f), vec4<f32>(380f, -144f, 388f, -165f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2060f, var_1.a.d.e, var_1.a.b, var_1.a.b)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1023f, var_1.a.c.c, -250f, -1000f), vec4<f32>(var_1.a.d.e, var_1.a.c.d, -1599f, var_1.a.b))))))));
    var var_3 = var_2.xyz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(_wgslsmith_sub_i32(var_1.a.c.a.x, -49669i), -var_1.a.c.a.x, !var_1.a.e), 1i) >> (4294967295u % 32u), -169f, var_1.a.a);
}

