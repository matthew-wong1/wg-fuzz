struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1178f;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(vec4<u32>(arg_0, _wgslsmith_add_u32(54143u, ~arg_0), ~firstTrailingBit(54580u), abs(1u))), _wgslsmith_add_vec4_u32(max(~(vec4<u32>(u_input.a.x, 63135u, 0u, u_input.c) | vec4<u32>(25847u, arg_0, u_input.a.x, 27315u)), vec4<u32>(reverseBits(1u), select(17272u, u_input.a.x, false), 20918u, arg_0 >> (u_input.a.x % 32u))), countOneBits(select(abs(vec4<u32>(arg_0, 4294967295u, arg_2, arg_2)), ~vec4<u32>(u_input.a.x, 74458u, 1u, 43150u), false))), Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(21894u, arg_2, u_input.c, 8276u), ~vec4<u32>(u_input.a.x, arg_2, arg_0, arg_2)), ~countOneBits(vec4<u32>(0u, u_input.c, u_input.c, u_input.a.x)))), vec4<u32>(~(~arg_0), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(39077u, 27226u), firstTrailingBit(u_input.c), _wgslsmith_div_u32(36175u, 1u)), firstTrailingBit(vec3<u32>(0u, 67675u, 4294967295u))), _wgslsmith_add_u32(min(u_input.c << (1993u % 32u), _wgslsmith_div_u32(59554u, arg_2)), arg_0)), Struct_1(vec4<u32>(min(1u, 0u), abs(_wgslsmith_mult_u32(arg_2, 1u)), min(1u, _wgslsmith_mod_u32(100456u, 120188u)), max(25009u, reverseBits(0u)))));
    let var_1 = 1f;
    global0 = 257f;
    let var_2 = true;
    var var_3 = false;
    return vec3<bool>(!any(vec2<bool>(var_2, false)) || var_2, any(select(!(!vec2<bool>(var_2, var_2)), !vec2<bool>(var_2, var_2), !var_2)), true);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> i32 {
    let var_0 = !select(vec3<bool>(true, false, arg_0), !select(!vec3<bool>(arg_2, arg_0, false), vec3<bool>(arg_2, false, arg_0), func_3(u_input.a.x, u_input.b.zz, u_input.c)), vec3<bool>(true, !(arg_2 & false), abs(u_input.a.x) < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 15009u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.c, 7246u, u_input.c))));
    global0 = arg_1.x;
    global1 = abs(((_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) & abs(4294967295u)) << (abs(1u | u_input.c) % 32u)) & ~u_input.c);
    global1 = u_input.a.x;
    var var_1 = Struct_1(vec4<u32>(u_input.c, 4294967295u, 5788u, ~_wgslsmith_dot_vec3_u32(~u_input.a, abs(vec3<u32>(u_input.c, u_input.c, u_input.a.x)))));
    return 1i;
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = -(u_input.b.x | func_4(all(func_3(u_input.c, u_input.b.wy, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1046f), vec2<f32>(776f, -1944f), true)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-959f, 167f)))), all(vec4<bool>(false, false, true, true))));
    var var_1 = 1384f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f - -979f)))) + 232f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-679f)) + _wgslsmith_f_op_f32(959f - 508f))))));
    var var_3 = Struct_1(min(vec4<u32>(1u, arg_0, max(~u_input.a.x, _wgslsmith_add_u32(0u, arg_0)), u_input.a.x), abs(abs(~vec4<u32>(u_input.c, 1u, arg_0, u_input.c)))));
    var_3 = Struct_1(var_3.a ^ ~(~reverseBits(vec4<u32>(arg_0, 4294967295u, 1u, 14774u))));
    return any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(u_input.a.x, vec2<i32>(70874i, u_input.b.x), arg_0).xx, true), vec2<bool>(true, true)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<f32> {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-995f)) * _wgslsmith_f_op_f32(abs(-1609f)))));
    global1 = 33382u;
    var var_1 = arg_0;
    let var_2 = var_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1453f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(617f)))), _wgslsmith_div_f32(-182f, -631f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f + -317f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: u32) -> i32 {
    global1 = _wgslsmith_mod_u32(~arg_3, u_input.a.x);
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1063f, 1039f, -532f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 2091f, 664f, -1014f), vec4<f32>(-425f, -379f, -297f, 1270f), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-295f, -209f, 939f, 1208f) - vec4<f32>(1048f, 369f, -1390f, 768f)))))));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~(132808u & arg_3), u_input.c, arg_3 >> (~u_input.a.x % 32u)), arg_0.a.yyz ^ arg_0.a.yww), arg_0.a.zyx);
    var_1 = _wgslsmith_f_op_vec4_f32(func_5(Struct_2(arg_0, vec4<u32>(arg_3, u_input.c, arg_0.a.x << (~8358u % 32u), 1u), Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yz), u_input.a.x, ~arg_3, ~1u)), select(_wgslsmith_sub_vec4_u32(abs(arg_0.a), vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, 41817u)), arg_0.a, vec4<bool>(any(arg_2.yy), arg_2.x, func_2(arg_0.a.x), !arg_2.x)), arg_0), 1u, _wgslsmith_dot_vec4_i32(arg_1, -vec4<i32>(~3756i, abs(var_0.x), firstLeadingBit(46551i), -u_input.b.x))));
    return ~abs(38037i);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(min(-336f, -938f));
    let var_0 = (vec2<u32>(4294967295u << (arg_2.a.a.x % 32u), 64167u) | arg_1.a.wy) & arg_1.a.wy;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-104f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1430f)))));
    var var_1 = vec4<u32>(arg_2.b.x, 1u, u_input.c, ~1u);
    var var_2 = arg_2.e;
    return arg_2;
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> vec3<u32> {
    var var_0 = func_6(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(abs(~vec4<i32>(-1i, -2147483647i, arg_0.x, 36856i)), u_input.b), select(-u_input.b, abs(u_input.b | vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 4970i)), true), u_input.b), arg_1.e, arg_1);
    global1 = ~u_input.c;
    var var_1 = ~u_input.a.xy;
    var var_2 = func_6(-max(_wgslsmith_mod_vec4_i32(-u_input.b, -vec4<i32>(u_input.b.x, -878i, -25248i, 25187i)), vec4<i32>(~u_input.b.x, ~arg_0.x, ~u_input.b.x, -u_input.b.x)), func_6(select(max(select(vec4<i32>(1i, -1i, u_input.b.x, u_input.b.x), vec4<i32>(-40639i, -2147483647i, -8026i, 40992i), false), vec4<i32>(-39338i, u_input.b.x, arg_0.x, -27569i)), u_input.b, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))), arg_2.e, Struct_2(Struct_1(vec4<u32>(50834u, arg_2.e.a.x, 33281u, var_1.x)), var_0.e.a, var_0.a, var_0.c.a, func_6(~u_input.b, Struct_1(vec4<u32>(1u, 1u, arg_1.b.x, 0u)), Struct_2(arg_2.e, var_0.e.a, var_0.e, vec4<u32>(1u, 1u, 14318u, u_input.c), arg_1.a)).e)).e, func_6(min(u_input.b, u_input.b), arg_1.a, arg_2));
    var var_3 = arg_3;
    return countOneBits(~u_input.a) ^ select(u_input.a, arg_1.e.a.xww, vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 63645u;
    global1 = _wgslsmith_dot_vec3_u32(func_7(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zwz, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~firstTrailingBit(u_input.b.zyz)), func_6(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, 1i), u_input.b.x >> (u_input.c % 32u), min(-34802i, -2147483647i), func_1(Struct_1(vec4<u32>(u_input.c, 4294967295u, 3650u, u_input.c)), u_input.b, vec3<bool>(false, false, false), 50678u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 1u)), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(50682u, u_input.a.x, 33298u, 22446u), vec4<u32>(u_input.a.x, 64388u, 27065u, u_input.c)), Struct_1(vec4<u32>(1u, u_input.a.x, u_input.c, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(68970u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 42098u, u_input.a.x)), Struct_1(vec4<u32>(u_input.a.x, 12069u, 0u, 25103u)))), Struct_2(func_6(vec4<i32>(-2147483647i, -17886i, -1i, 1i), func_6(u_input.b, Struct_1(vec4<u32>(1u, 0u, u_input.c, u_input.c)), Struct_2(Struct_1(vec4<u32>(u_input.a.x, 3475u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.c, 25647u, u_input.a.x, u_input.c), Struct_1(vec4<u32>(u_input.c, 4232u, u_input.c, u_input.a.x)), vec4<u32>(50017u, 8818u, 50854u, u_input.a.x), Struct_1(vec4<u32>(0u, u_input.c, 24305u, u_input.c)))).a, Struct_2(Struct_1(vec4<u32>(u_input.a.x, 56682u, 1u, 17051u)), vec4<u32>(u_input.c, 15353u, u_input.c, u_input.a.x), Struct_1(vec4<u32>(u_input.c, 1u, u_input.a.x, 22960u)), vec4<u32>(25621u, u_input.c, 0u, 81514u), Struct_1(vec4<u32>(u_input.c, 0u, u_input.c, 0u)))).a, select(func_6(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 10098i), Struct_1(vec4<u32>(36757u, 71060u, u_input.a.x, 0u)), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), Struct_1(vec4<u32>(u_input.a.x, u_input.c, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 26564u), Struct_1(vec4<u32>(0u, u_input.c, 1u, 49368u)))).e.a, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.c, 34773u), vec4<u32>(43086u, u_input.a.x, u_input.a.x, 105597u)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false)), Struct_1(vec4<u32>(0u, 0u, u_input.c, u_input.c)), ~vec4<u32>(22100u, u_input.c, 1u, u_input.c), func_6(abs(u_input.b), func_6(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x), Struct_1(vec4<u32>(102507u, 4294967295u, 74136u, 1u)), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c)), vec4<u32>(u_input.a.x, u_input.a.x, 80959u, u_input.c), Struct_1(vec4<u32>(43722u, 0u, 1u, 0u)), vec4<u32>(4294967295u, 1u, u_input.c, u_input.a.x), Struct_1(vec4<u32>(1u, 0u, u_input.c, u_input.c)))).c, Struct_2(Struct_1(vec4<u32>(0u, 1u, 17354u, u_input.c)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), Struct_1(vec4<u32>(u_input.c, 47951u, 20662u, u_input.a.x)), vec4<u32>(91255u, 19838u, u_input.c, 29557u), Struct_1(vec4<u32>(18386u, u_input.c, u_input.a.x, u_input.a.x)))).a), _wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1142f) * _wgslsmith_div_f32(1320f, 795f)))), vec3<u32>(~1u, 4294967295u, u_input.a.x));
    let var_0 = true;
    global1 = ~18766u;
    global0 = 543f;
    let x = u_input.a;
    s_output = StorageBuffer(-min(-(~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 2147483647i)), u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.b.x & 41150i), u_input.b.x), ~u_input.b.zx), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-933f, _wgslsmith_f_op_f32(sign(1881f))))))), firstLeadingBit(select(1u, ~30437u, !var_0) << (min(4294967295u, 65326u) % 32u)), _wgslsmith_mod_u32(~(~u_input.a.x), firstTrailingBit(_wgslsmith_clamp_u32(u_input.c, 1u, ~1u))));
}

