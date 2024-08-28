struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_clamp_i32(0i, i32(-1i) * -13572i, -1i);
    let var_1 = Struct_4(174f, ~(~firstLeadingBit(u_input.b.x)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 22231u, u_input.b.x) >> (vec3<u32>(5738u, 1u, 1u) % vec3<u32>(32u)), u_input.b), ~(~vec3<u32>(1u, 4294967295u, 86506u))) % 32u), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), !vec4<bool>(false, false, false, all(vec4<bool>(true, true, false, true))), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(-1128f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(624f)), _wgslsmith_f_op_f32(min(-380f, -217f))))))));
    let var_2 = -(-(~vec4<i32>(35750i, u_input.a.x, -10594i, arg_0.x)) | select(-vec4<i32>(arg_0.x, u_input.a.x, 8385i, arg_0.x), vec4<i32>(2147483647i ^ u_input.a.x, arg_0.x, _wgslsmith_mult_i32(var_0, u_input.c.x), arg_0.x | 1i), var_1.c.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -679f), 532f, -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, var_1.d, var_1.a, var_1.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, var_1.a, -1316f, 155f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(var_1.a - var_1.d)), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(sign(var_1.d)))));
    var var_4 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 0u, var_1.b, u_input.b.x), ~vec4<u32>(3664u, var_1.b, 1u, var_1.b))), 0u), arg_0.zx, _wgslsmith_dot_vec3_u32(vec3<u32>(~2265u, u_input.b.x, var_1.b), vec3<u32>(1u, ~6478u, ~u_input.b.x)) >> (u_input.b.x % 32u), 4294967295u, !(!(!select(var_1.c.zy, vec2<bool>(var_1.c.x, var_1.c.x), var_1.c.yy))));
    return _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - var_1.d), _wgslsmith_f_op_f32(var_1.d + 1438f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) - _wgslsmith_f_op_f32(floor(1515f))), -304f))), ~4294967295u, vec4<bool>(!(!(30827i < arg_1.b)), true & arg_1.a.e.x, arg_1.a.e.x, all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.xww)))));
    var var_1 = 2147483647i;
    var var_2 = select(vec3<i32>(_wgslsmith_add_i32(-arg_1.b, 2712i), _wgslsmith_mod_i32(~(-1i), arg_1.a.b.x >> (u_input.b.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_div_i32(30153i, -13198i), 1i)) ^ ~vec3<i32>(_wgslsmith_div_i32(arg_1.b, -2147483647i), 0i, u_input.a.x), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.xxz, ~vec3<i32>(u_input.a.x, 2147483647i, arg_1.a.b.x)), ~(~u_input.a.zzw)) & -vec3<i32>(-2147483647i, ~arg_1.b, _wgslsmith_div_i32(-34435i, 2147483647i)), !(!var_0.c.ywz));
    var var_3 = true;
    var var_4 = Struct_4(-1216f, ~_wgslsmith_div_u32(arg_1.a.a, arg_0.x), !(!var_0.c), 978f);
    return Struct_1(~11810u, arg_1.a.b, _wgslsmith_sub_u32(var_4.b, var_0.b) << (var_4.b % 32u), var_0.b, var_4.c.zy);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    let var_1 = !func_2(vec2<u32>(arg_1.b, 77045u & _wgslsmith_clamp_u32(arg_1.b, var_0.a.d, arg_0.b)), Struct_2(Struct_1(max(0u, arg_3.a.c), vec2<i32>(var_0.b, 32626i) >> (u_input.b.yy % vec2<u32>(32u)), 4294967295u, arg_3.a.c, arg_3.a.e), i32(-1i) * -2147483647i)).e.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(f32(-1f) * -1644f)));
    let var_3 = Struct_3(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(round(arg_1.d))) * -1022f)), vec2<i32>(-var_0.b, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c.wyy, vec3<i32>(8515i, 0i, var_0.b)), reverseBits(u_input.c.x))), arg_3, ~(var_0.a.c >> (_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 1u)) % 32u)), true);
    let var_4 = _wgslsmith_div_f32(-680f, -1000f);
    return countOneBits(arg_3.a.c);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-1610f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)));
    var_0 = _wgslsmith_f_op_f32(-502f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-317f)) * -1021f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1054f))))), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), true))));
    let var_1 = u_input.a.x >> (func_4(Struct_4(-844f, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), 1212f), Struct_4(_wgslsmith_f_op_f32(trunc(-1526f)), firstLeadingBit(abs(u_input.b.x)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, false), any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1818f * 677f))), !(select(true, true, false) | true), Struct_2(func_2(~vec2<u32>(48729u, 0u), Struct_2(Struct_1(1u, vec2<i32>(1i, -61316i), u_input.b.x, u_input.b.x, vec2<bool>(true, true)), u_input.a.x)), firstTrailingBit(u_input.a.x))) % 32u);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1432f * -726f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(step(142f, -1480f))))))));
    return Struct_2(func_2(firstLeadingBit(abs(u_input.b.yz) & ~vec2<u32>(u_input.b.x, 53014u)), Struct_2(Struct_1(~u_input.b.x, _wgslsmith_mult_vec2_i32(vec2<i32>(-36436i, 12376i), vec2<i32>(u_input.c.x, 61693i)), 64201u, u_input.b.x, vec2<bool>(false, true)), 27251i)), 88835i);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(503f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + -833f))), u_input.b.x, select(vec4<bool>(arg_2.e, arg_1.e, true, arg_2.d > 54479u), vec4<bool>(-arg_2.b.x == ~arg_1.b.x, select(true, true, arg_2.e), any(!arg_2.c.a.e), !all(vec3<bool>(arg_2.c.a.e.x, true, true))), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, -400f)));
    var var_1 = Struct_2(func_2(vec2<u32>(arg_1.d, ~97152u), arg_2.c), arg_2.c.a.b.x);
    let var_2 = _wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(arg_2.d, 4294967295u, var_1.a.d | 94734u, ~0u)), ~(~(~vec4<u32>(1u, 25022u, var_0.b, 38789u) >> (vec4<u32>(4294967295u, 13158u, u_input.b.x, 2550u) % vec4<u32>(32u)))));
    let var_3 = !(!arg_2.c.a.e);
    let var_4 = Struct_1(_wgslsmith_div_u32(~(~(~4294967295u)), var_0.b), _wgslsmith_mod_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(arg_1.b.x, -1i))), arg_2.b), _wgslsmith_sub_u32(var_0.b, 15141u), _wgslsmith_clamp_u32(25263u, _wgslsmith_add_u32(arg_1.c.a.c, 0u), ~3397u | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, var_1.a.d) | u_input.b.zz, reverseBits(u_input.b.zy))), vec2<bool>(all(!(!var_0.c)), arg_1.c.a.e.x));
    return u_input.b.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec3<bool>(true, true, true))) == true;
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-424f * 655f), _wgslsmith_f_op_f32(f32(-1f) * -818f)))), Struct_3(_wgslsmith_f_op_f32(sign(607f)), u_input.c.yx, func_1(), _wgslsmith_add_u32(1u, ~1u), !var_0), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-512f, 1315f)) * _wgslsmith_f_op_f32(f32(-1f) * -240f)), u_input.c.xz, Struct_2(func_1().a, _wgslsmith_div_i32(u_input.a.x, u_input.c.x)), ~u_input.b.x >> (1u % 32u), true)) >> (firstLeadingBit(u_input.b.xx) % vec2<u32>(32u));
    var_1 = ~_wgslsmith_div_vec2_u32(~(~firstTrailingBit(u_input.b.yy)), reverseBits(u_input.b.zz));
    var var_2 = select(~(~(~vec3<u32>(1u, 0u, u_input.b.x))), ~vec3<u32>(1u, 1u, u_input.b.x), !vec3<bool>(var_0, true, var_0));
    var_1 = firstLeadingBit(var_2.yz);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(max(1212f, _wgslsmith_f_op_f32(2312f - 130f))), ~(~(var_1.x | u_input.b.x) >> ((func_4(Struct_4(-1554f, u_input.b.x, vec4<bool>(var_0, var_0, false, var_0), 277f), Struct_4(1000f, u_input.b.x, vec4<bool>(false, true, var_0, true), -131f), true, Struct_2(Struct_1(4294967295u, vec2<i32>(u_input.c.x, 2147483647i), 32204u, var_2.x, vec2<bool>(var_0, var_0)), 39693i)) ^ func_4(Struct_4(-1402f, var_2.x, vec4<bool>(var_0, var_0, true, var_0), 1000f), Struct_4(1271f, u_input.b.x, vec4<bool>(var_0, false, var_0, false), 1040f), true, Struct_2(Struct_1(21790u, vec2<i32>(1i, u_input.a.x), u_input.b.x, u_input.b.x, vec2<bool>(false, var_0)), u_input.a.x))) % 32u)), vec4<bool>(!select(var_0, func_1().a.e.x, 4294967295u == var_1.x), var_0, all(vec3<bool>(true, true, true)), var_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.c.x, u_input.a.x, -12547i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1104f, 349f)) * -396f)) + _wgslsmith_f_op_f32(step(-1025f, 1f))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.d - -148f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(632f * 1584f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1148f, var_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.d))), _wgslsmith_f_op_f32(-795f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(544f + var_3.a))))) - vec4<f32>(-570f, -188f, -1000f, var_3.d));
    var var_5 = Struct_3(310f, -(~u_input.c.xz), Struct_2(func_2(_wgslsmith_mult_vec2_u32(select(u_input.b.zx, u_input.b.xx, vec2<bool>(true, var_0)), min(u_input.b.zx, vec2<u32>(52818u, u_input.b.x))), Struct_2(func_2(u_input.b.zx, Struct_2(Struct_1(4294967295u, vec2<i32>(9854i, u_input.a.x), var_2.x, var_2.x, var_3.c.wx), -4139i)), -17521i)), -u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(~var_3.b, _wgslsmith_mod_u32(32378u, 4294967295u & var_2.x)), ~min(~4294967295u, 0u & var_3.b)), false);
    var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(var_4.yw, Struct_3(289f, ~var_5.b | (vec2<i32>(var_5.b.x, 38092i) >> (u_input.b.xz % vec2<u32>(32u))), Struct_2(func_1().a, _wgslsmith_clamp_i32(-12983i, 33366i, var_5.c.b)), _wgslsmith_dot_vec3_u32(select(u_input.b, vec3<u32>(var_5.d, 18485u, u_input.b.x), var_3.c.yxy), ~u_input.b), !var_5.e), Struct_3(-979f, _wgslsmith_add_vec2_i32(-u_input.a.yx, abs(u_input.a.wx)), var_5.c, 4294967295u, all(vec3<bool>(var_3.c.x, true, true)))).x, _wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_div_u32(93505u, var_2.x)), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_3.b, 4294967295u, 54324u, var_5.c.a.c), vec4<u32>(20071u, 36906u, 1860u, 52457u)), vec4<u32>(var_5.d, firstTrailingBit(12539u), 1u, var_3.b & var_1.x))), var_4.x, ~select(vec4<i32>(var_5.b.x, u_input.c.x, u_input.c.x, 0i) >> (vec4<u32>(var_2.x, u_input.b.x, var_3.b, var_2.x) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 13400i, u_input.c.x), u_input.c, vec4<i32>(2147483647i, var_5.b.x, var_5.b.x, 2147483647i)), vec4<bool>(any(var_3.c.xz), any(vec2<bool>(true, false)), false, !var_5.c.a.e.x)), _wgslsmith_f_op_f32(round(var_5.a)));
}

