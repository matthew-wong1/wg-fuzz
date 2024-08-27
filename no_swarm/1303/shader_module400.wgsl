struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_div_i32(2136i, arg_0.e.x), _wgslsmith_f_op_f32(select(-1565f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-arg_0.b))), true)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), u_input.a.wxw | ~vec3<i32>(arg_0.a, var_0.a, 4968i)) >= _wgslsmith_add_i32(53251i, min(-1i, arg_0.a)), vec4<bool>(arg_0.c, all(select(select(vec3<bool>(var_0.c, var_0.d.x, arg_0.c), var_0.d.wzz, vec3<bool>(true, var_0.d.x, false)), arg_0.d.wxy, any(vec3<bool>(var_1, var_0.c, var_0.d.x)))), true, any(select(select(arg_0.d, arg_0.d, var_0.d), vec4<bool>(arg_0.c, arg_0.c, false, var_0.d.x), arg_0.d.x && true))), vec3<i32>(var_0.a, ~(arg_0.a ^ (-33813i ^ u_input.b.x)), var_0.e.x));
    var_2 = var_0;
    var_2 = Struct_1(0i, 922f, var_1, !(!(!(!vec4<bool>(var_1, true, true, var_1)))), u_input.b.zxy & min(firstTrailingBit(-u_input.a.zyw), -vec3<i32>(-81876i, -1i, 2147483647i)));
    return (min(abs(_wgslsmith_clamp_u32(0u, 0u, 21481u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 27244u, 1u, 23010u))) | ~_wgslsmith_mult_u32(1u, ~14074u)) & 1u;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_1(~(28896i << (select(func_3(Struct_1(63429i, -340f, true, vec4<bool>(arg_0, false, arg_0, arg_0), vec3<i32>(2147483647i, u_input.c, u_input.c))), min(46996u, 21537u), any(vec4<bool>(arg_2.x, true, arg_0, arg_2.x))) % 32u)), _wgslsmith_f_op_f32(min(-823f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))), false, !select(!vec4<bool>(arg_0, arg_0, false, arg_0), !vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(false, false, true, arg_2.x)), -select(-_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(u_input.c, u_input.b.x, 35942i)), abs(vec3<i32>(2147483647i, -26921i, u_input.b.x)), !select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_0, arg_0, arg_2.x), false)));
    var var_1 = Struct_1(~abs(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(578f)))), false, vec4<bool>(arg_0, false, any(arg_2), true), min(min(vec3<i32>(var_0.a, -5362i, -22055i | u_input.a.x), _wgslsmith_add_vec3_i32(firstLeadingBit(u_input.d), vec3<i32>(2147483647i, u_input.d.x, u_input.a.x))), vec3<i32>(~0i, 1i, _wgslsmith_sub_i32(u_input.c >> (109692u % 32u), i32(-1i) * -2147483647i))));
    var_1 = Struct_1(var_0.e.x, arg_1.x, true, select(var_1.d, select(select(vec4<bool>(var_0.d.x, false, false, true), vec4<bool>(var_0.d.x, var_1.d.x, var_0.d.x, false), vec4<bool>(var_0.c, true, var_0.c, true)), vec4<bool>(all(vec4<bool>(false, arg_2.x, arg_2.x, false)), !arg_2.x, var_0.c && arg_0, true), vec4<bool>(true, true, true, all(var_1.d))), var_1.d), ~vec3<i32>(u_input.c, i32(-1i) * -2147483647i, countOneBits(-1i)));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), func_3(Struct_1(~0i, -211f, arg_0, vec4<bool>(arg_0, arg_0, arg_2.x, false), vec3<i32>(var_1.a, 2147483647i, var_0.e.x)))), firstTrailingBit(~0u), _wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_clamp_u32(~1u, 46766u, reverseBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 14531u), vec2<u32>(4294967295u, 1u), var_0.d.xz), max(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 993u))))));
    let var_3 = arg_1.x;
    return vec4<bool>(var_1.c, !var_1.c, ~(~u_input.a.x) != (i32(-1i) * -_wgslsmith_add_i32(u_input.d.x, u_input.d.x)), false);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    return arg_3;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_1(0i, var_0.b, !(arg_1.c && true), select(var_0.d, !vec4<bool>(func_2(arg_1.c, vec4<f32>(arg_1.b, 1000f, 796f, 1310f), vec2<bool>(false, true)).x, true, true, var_0.c), !var_0.d.x), func_4(func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -666f, var_0.b, -133f)), var_0.d.xy).x, Struct_1(firstTrailingBit(u_input.c), 304f, true, select(var_0.d, vec4<bool>(var_0.c, var_0.d.x, true, arg_1.d.x), arg_1.c), countOneBits(arg_1.e)), Struct_1(-17069i, _wgslsmith_f_op_f32(f32(-1f) * -1457f), !arg_1.c, vec4<bool>(false, arg_1.c, var_0.c, true), vec3<i32>(var_0.e.x, arg_0.x, 0i)), arg_1).e & u_input.a.zxy);
    var var_1 = arg_1;
    let var_2 = var_1.c;
    var var_3 = Struct_1(_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(var_0.e, vec3<i32>(-7686i, -2147483647i, -22362i) ^ u_input.a.zyx), _wgslsmith_add_i32(~0i, -4032i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1337f, -433f) - -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -781f), -393f)))), func_2((false && all(vec4<bool>(arg_1.c, false, false, var_0.d.x))) | any(select(arg_1.d, arg_1.d, var_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, var_1.b, -1746f, var_0.b) - vec4<f32>(arg_1.b, 162f, 2110f, var_0.b)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1837f, 555f, -1600f, 244f), vec4<f32>(-2204f, 641f, -617f, var_0.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 306f, arg_1.b, 1235f) + vec4<f32>(var_1.b, 129f, -200f, arg_1.b)))), !select(select(vec2<bool>(arg_1.c, var_1.d.x), vec2<bool>(var_0.c, arg_1.d.x), arg_1.d.xw), !var_0.d.zz, func_4(false, Struct_1(15001i, arg_1.b, var_1.c, arg_1.d, vec3<i32>(arg_1.e.x, 2147483647i, var_1.e.x)), Struct_1(u_input.b.x, var_1.b, arg_1.d.x, vec4<bool>(false, var_1.c, false, false), vec3<i32>(var_0.e.x, var_1.e.x, -1i)), Struct_1(arg_0.x, var_1.b, true, vec4<bool>(arg_1.d.x, true, true, var_1.d.x), vec3<i32>(0i, -3071i, 16873i))).d.zx)).x, !select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), var_0.c, true), var_0.d, !var_0.d), min(reverseBits(~(~var_0.e)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.wzy, var_0.e), vec3<i32>(arg_0.x, arg_1.e.x, -1i)), firstLeadingBit(vec3<i32>(var_1.a, 8421i, -2147483647i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(11375i, 2147483647i, 11576i), var_1.e))));
    return func_4(arg_1.d.x, arg_1, arg_1, arg_1);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -545f);
    var var_2 = func_5(reverseBits(_wgslsmith_clamp_vec2_i32(-arg_2, firstLeadingBit(vec2<i32>(-7264i, 15484i)), vec2<i32>(u_input.c, u_input.b.x)) | _wgslsmith_mult_vec2_i32(min(vec2<i32>(24199i, -14394i), vec2<i32>(9503i, -45398i)), vec2<i32>(u_input.d.x, -1i) ^ vec2<i32>(41651i, 50948i))), func_4(true, Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(max(-567f, -1379f)), arg_1, select(select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(true, arg_1, arg_1, true), arg_1), vec4<bool>(false, false, true, arg_1), func_2(arg_1, vec4<f32>(245f, 1439f, var_1, -1242f), vec2<bool>(arg_1, true))), select(-u_input.d, select(vec3<i32>(arg_2.x, 21894i, 1i), u_input.d, true), true)), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c, -17955i), countOneBits(-1i)), -771f, true, select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false), arg_1), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_1, arg_1, false, false), false), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(false, false, arg_1, true), true)), u_input.b.zzx >> (~vec3<u32>(4294967295u, 54097u, var_0) % vec3<u32>(32u))), Struct_1(arg_2.x, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1991f))), true, func_2(!arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1758f, -290f, var_1, var_1) + vec4<f32>(var_1, -686f, -567f, var_1)), vec2<bool>(arg_1, arg_1)), -u_input.b.zxx)));
    var var_3 = func_4(!var_2.c, Struct_1(-(var_2.e.x | var_2.a) << (var_0 % 32u), _wgslsmith_div_f32(func_5(vec2<i32>(arg_2.x, arg_2.x) >> (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u)), Struct_1(arg_2.x, -1000f, true, var_2.d, u_input.b.yzy)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1036f)) * _wgslsmith_f_op_f32(875f + var_1))), true, var_2.d, vec3<i32>(~reverseBits(var_2.e.x), func_5(vec2<i32>(-9612i, -25988i), func_4(var_2.d.x, Struct_1(558i, var_2.b, true, vec4<bool>(var_2.c, true, arg_1, true), u_input.a.www), Struct_1(-2147483647i, var_1, var_2.c, var_2.d, vec3<i32>(69869i, -5072i, u_input.d.x)), Struct_1(0i, -119f, var_2.d.x, var_2.d, var_2.e))).e.x, arg_2.x >> (11916u % 32u))), Struct_1(arg_2.x, 198f, arg_1, select(var_2.d, !vec4<bool>(true, var_2.d.x, arg_1, false), var_2.d.x), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -u_input.d, func_4(arg_1, Struct_1(-39351i, 1000f, var_2.c, var_2.d, u_input.a.ywz), func_4(false, Struct_1(arg_2.x, -205f, arg_1, vec4<bool>(true, true, arg_1, true), u_input.d), Struct_1(2147483647i, 1122f, arg_1, var_2.d, vec3<i32>(2147483647i, 1i, -21722i)), Struct_1(-33623i, var_1, arg_1, var_2.d, u_input.a.xwy)), func_5(arg_2, Struct_1(u_input.a.x, 313f, var_2.c, var_2.d, vec3<i32>(-51448i, var_2.a, u_input.b.x)))).e)), Struct_1(_wgslsmith_clamp_i32(3559i, _wgslsmith_clamp_i32(~u_input.b.x, -arg_2.x, 0i), abs(1i)), -918f, !(any(vec4<bool>(var_2.d.x, var_2.d.x, false, arg_1)) && true), select(!func_5(vec2<i32>(26589i, arg_2.x), Struct_1(-2147483647i, -123f, arg_1, var_2.d, vec3<i32>(560i, 27538i, -2147483647i))).d, var_2.d, func_4(all(var_2.d), func_4(arg_1, Struct_1(var_2.a, var_1, false, var_2.d, u_input.b.wwy), Struct_1(u_input.b.x, 288f, var_2.c, var_2.d, var_2.e), Struct_1(1544i, var_2.b, true, vec4<bool>(var_2.d.x, true, false, arg_1), vec3<i32>(10281i, u_input.b.x, u_input.c))), func_4(var_2.c, Struct_1(28153i, -1200f, true, vec4<bool>(arg_1, var_2.d.x, true, true), vec3<i32>(-32283i, 1i, -6083i)), Struct_1(2147483647i, var_1, true, vec4<bool>(arg_1, true, true, var_2.d.x), vec3<i32>(var_2.a, arg_2.x, 2147483647i)), Struct_1(2147483647i, var_2.b, arg_1, vec4<bool>(false, var_2.d.x, false, false), vec3<i32>(var_2.a, var_2.a, u_input.b.x))), func_5(u_input.a.yw, Struct_1(u_input.a.x, 925f, true, var_2.d, vec3<i32>(-11068i, arg_2.x, var_2.a)))).d.x), -_wgslsmith_mult_vec3_i32(vec3<i32>(-8313i, 1i, arg_2.x), var_2.e) << (~vec3<u32>(0u, 4294967295u, arg_0.x) % vec3<u32>(32u))));
    var var_4 = !(!(!(!(false && var_2.d.x))));
    return _wgslsmith_f_op_f32(min(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) * 1787f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c & u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1722f + -644f), _wgslsmith_div_f32(-1164f, 1142f)), _wgslsmith_f_op_f32(abs(-740f)))) + 795f)));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-728f))), 1f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~(~vec2<u32>(1u, 36349u)), true | all(vec4<bool>(false, false, false, true)), u_input.a.xz)) - -356f)));
    let var_2 = u_input.a;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(var_2.xx, func_4(false, Struct_1(1i, 801f, true, vec4<bool>(false, false, false, true), vec3<i32>(5544i, var_0, u_input.a.x)), Struct_1(44345i, 1000f, true, vec4<bool>(false, false, false, true), vec3<i32>(var_0, 0i, -1i)), Struct_1(-1i, 571f, true, vec4<bool>(true, true, false, false), vec3<i32>(38895i, u_input.b.x, var_2.x)))).b)));
    let var_3 = func_4(!(any(vec3<bool>(true, true, false)) | true), func_5(vec2<i32>(var_0, func_4(true, Struct_1(28761i, 715f, false, vec4<bool>(true, false, true, true), vec3<i32>(u_input.c, -2147483647i, -2147483647i)), Struct_1(var_2.x, 575f, true, vec4<bool>(true, true, true, true), u_input.a.zxy), Struct_1(u_input.c, -1000f, true, vec4<bool>(false, true, false, true), vec3<i32>(u_input.b.x, var_2.x, u_input.a.x))).e.x & (u_input.b.x >> (1u % 32u))), Struct_1(~(-4188i), _wgslsmith_f_op_f32(step(158f, -934f)), true, vec4<bool>(true, false, true, true), u_input.a.yxy)), func_5(-vec2<i32>(_wgslsmith_dot_vec4_i32(var_2, vec4<i32>(var_0, var_2.x, -35384i, var_2.x)), ~(-7608i)), func_5(countOneBits(u_input.b.xz & var_2.yy), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0, var_0, 2147483647i), u_input.b), 1084f, true, vec4<bool>(true, true, true, true), ~u_input.d))), func_5(-(~firstLeadingBit(var_2.xx)), func_5(~(-u_input.a.wz), Struct_1(var_2.x | 2147483647i, -1000f, true, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), var_2.wwx))));
    let x = u_input.a;
    s_output = StorageBuffer(~(min(select(vec4<u32>(5898u, 1u, 6029u, 833u), vec4<u32>(0u, 62365u, 1673u, 4294967295u), var_3.d), vec4<u32>(93695u, 0u, 1u, 89133u)) >> (~vec4<u32>(3081u, 11132u, 0u, 19326u) % vec4<u32>(32u))), _wgslsmith_sub_i32(countOneBits(~_wgslsmith_div_i32(u_input.c, var_2.x)), reverseBits(-u_input.c) << ((func_3(Struct_1(8526i, var_3.b, false, vec4<bool>(false, var_3.c, false, false), vec3<i32>(u_input.a.x, var_2.x, -17952i))) << (~1u % 32u)) % 32u)));
}

