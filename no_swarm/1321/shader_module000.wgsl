struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: vec2<f32>) -> vec3<bool> {
    global0 = array<vec3<i32>, 3>();
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0.a.b.x, 24190u, 9653u), vec4<u32>(arg_2, arg_1.b.b.x, arg_2, 89157u)), countOneBits(abs(vec4<u32>(arg_1.b.b.x, arg_2, 0u, 0u)))));
    let var_1 = _wgslsmith_sub_u32(~countOneBits(_wgslsmith_div_u32(1u, ~arg_2)), ~arg_1.b.b.x);
    global0 = array<vec3<i32>, 3>();
    global0 = array<vec3<i32>, 3>();
    return arg_1.d;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = ~min(~_wgslsmith_mult_u32(arg_3.b.b.x, 60107u), select(31924u, 0u, arg_0.x == false)) >= (arg_3.b.b.x >> (firstTrailingBit(abs(_wgslsmith_add_u32(1u, arg_3.b.b.x))) % 32u));
    let var_1 = ~(~min(arg_1.b.b.zx, arg_2.b.xz));
    let var_2 = -20692i;
    global0 = array<vec3<i32>, 3>();
    var var_3 = min(-(~(~vec2<i32>(var_2, var_2)) ^ -abs(vec2<i32>(var_2, 0i))), ~abs(countOneBits(vec2<i32>(var_2, var_2))));
    return -181f;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    var var_0 = Struct_3(false, Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.c.b.x + -1021f), arg_0.c.b), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b.x, u_input.a, 61106u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, arg_0.b.x), vec3<u32>(arg_0.b.x, u_input.a, 13097u), arg_0.b))), Struct_1(1610f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b.x, -1054f, 412f)))))), -642f, select(vec3<bool>(true, true, true), select(select(func_2(Struct_4(arg_0, u_input.a), Struct_3(false, Struct_2(Struct_1(-254f, vec3<f32>(139f, arg_0.a.b.x, -613f)), arg_0.b, arg_0.a), arg_0.c.b.x, vec3<bool>(false, true, false), arg_0.c), u_input.a, vec2<f32>(arg_0.c.a, arg_0.a.b.x)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(false, true, true)), false, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, true)))), arg_0.c);
    let var_1 = Struct_5(Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1358f, var_0.b.a.a, 1140f)))), vec3<u32>(max(~arg_0.b.x, 658u >> (arg_0.b.x % 32u)), ~(~50754u), _wgslsmith_add_u32(var_0.b.b.x, u_input.a)), Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a, 581f, arg_0.c.a) + vec3<f32>(259f, 247f, arg_0.c.b.x))))), Struct_3(!all(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(true, true, false, true), var_0.d.x)), Struct_2(Struct_1(var_0.c, vec3<f32>(-1825f, var_0.e.b.x, arg_0.c.a)), ~vec3<u32>(u_input.a, u_input.a, 41407u), Struct_1(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), Struct_3(var_0.d.x, Struct_2(Struct_1(var_0.c, arg_0.c.b), vec3<u32>(u_input.a, 15305u, var_0.b.b.x), var_0.e), var_0.b.a.b.x, var_0.d, var_0.e), arg_0, Struct_3(var_0.d.x, arg_0, -655f, vec3<bool>(false, true, var_0.a), var_0.b.a))), _wgslsmith_f_op_vec3_f32(-arg_0.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) + arg_0.c.b.x), select(!(!vec3<bool>(var_0.d.x, true, var_0.d.x)), var_0.d, !vec3<bool>(false, var_0.d.x, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1070f, var_0.c, var_0.d.x))), _wgslsmith_f_op_vec3_f32(var_0.e.b + vec3<f32>(-197f, var_0.e.a, var_0.e.b.x)))), Struct_3(true, Struct_2(var_0.e, ~var_0.b.b, Struct_1(_wgslsmith_div_f32(1526f, arg_0.c.b.x), _wgslsmith_f_op_vec3_f32(arg_0.c.b + vec3<f32>(-179f, -1496f, -434f)))), -1376f, func_2(Struct_4(var_0.b, 56080u), Struct_3(var_0.d.x, arg_0, -294f, !vec3<bool>(var_0.a, var_0.a, var_0.a), Struct_1(540f, arg_0.a.b)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_0.b.x, 5590u, var_0.b.b.x)), ~vec4<u32>(var_0.b.b.x, arg_0.b.x, 4294967295u, 0u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, arg_0.c.a))))), Struct_1(-302f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.c.b)))), Struct_4(Struct_2(arg_0.c, ~var_0.b.b, Struct_1(var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(411f, var_0.c, 156f) + vec3<f32>(1885f, var_0.c, arg_0.a.b.x)))), _wgslsmith_clamp_u32(abs(54827u), ~u_input.a >> (arg_0.b.x % 32u), 0u)));
    let var_2 = var_0.b.a;
    let var_3 = var_1.d;
    var var_4 = Struct_4(Struct_2(arg_0.a, vec3<u32>(var_0.b.b.x, var_0.b.b.x, min(1u, reverseBits(0u))), arg_0.a), var_1.a.b.x);
    return var_3;
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec4<i32>(_wgslsmith_add_i32(-arg_0, (min(arg_0, arg_0) >> (~0u % 32u)) << (u_input.a % 32u)), firstTrailingBit(_wgslsmith_mod_i32(firstLeadingBit(select(-1i, arg_0, true)), arg_0)), -13757i, 0i);
    var_1 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0 ^ firstTrailingBit(25028i), -(~1i), ~(i32(-1i) * -1i), 0i), vec4<i32>(-(arg_0 & _wgslsmith_dot_vec4_i32(vec4<i32>(16910i, -1315i, 1i, -2147483647i), vec4<i32>(-1i, var_1.x, var_1.x, var_1.x))), arg_0, (abs(2147483647i) ^ arg_0) >> (abs(1u) % 32u), arg_0), -firstLeadingBit(-vec4<i32>(-13328i, var_1.x, -18792i, arg_0) ^ (vec4<i32>(-34966i, var_1.x, -2147483647i, -43138i) | vec4<i32>(var_1.x, arg_0, 1648i, var_1.x))));
    var var_2 = Struct_3(var_0, Struct_2(arg_1.a.c, ~arg_1.a.b, func_1(func_1(Struct_2(Struct_1(-737f, arg_1.a.c.b), arg_1.a.b, arg_1.a.c)).a).a.a), arg_1.a.c.a, vec3<bool>(true, true, true), Struct_1(arg_1.a.a.a, arg_1.a.c.b));
    let var_3 = Struct_3(!var_0, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -946f), select(var_2.d, var_2.d, var_2.d.x), var_2.b.c);
    return Struct_1(_wgslsmith_f_op_f32(exp2(var_3.b.c.a)), _wgslsmith_f_op_vec3_f32(arg_1.a.a.b * vec3<f32>(-1165f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -805f))), -425f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_2(func_4(firstTrailingBit(2147483647i), func_1(Struct_2(Struct_1(1000f, vec3<f32>(606f, 975f, -1160f)), vec3<u32>(0u, u_input.a, 0u), Struct_1(331f, vec3<f32>(1000f, 413f, 1018f))))), ~vec3<u32>(u_input.a, 15070u, _wgslsmith_div_u32(26362u, 26430u)), Struct_1(_wgslsmith_f_op_f32(-1247f + 405f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1211f, -767f, -254f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1768f, 1000f, -160f))))), Struct_3(!select(true, true, true), Struct_2(Struct_1(_wgslsmith_f_op_f32(324f - 780f), vec3<f32>(-226f, -301f, -212f)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 935u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 5296u, 0u), vec3<u32>(68277u, u_input.a, u_input.a))), Struct_1(_wgslsmith_div_f32(740f, -414f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1438f, 582f, 219f) + vec3<f32>(-493f, -527f, -149f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(func_2(Struct_4(Struct_2(Struct_1(-2099f, vec3<f32>(405f, -652f, -153f)), vec3<u32>(51203u, u_input.a, u_input.a), Struct_1(-804f, vec3<f32>(122f, 1321f, -838f))), u_input.a), Struct_3(true, Struct_2(Struct_1(-974f, vec3<f32>(-1334f, 1182f, -1000f)), vec3<u32>(0u, 2798u, 4294967295u), Struct_1(-347f, vec3<f32>(-324f, -2088f, 823f))), 380f, vec3<bool>(true, true, true), Struct_1(-1000f, vec3<f32>(507f, 1000f, -1321f))), u_input.a, vec2<f32>(-399f, 1379f)).yy, Struct_3(false, Struct_2(Struct_1(727f, vec3<f32>(-1216f, -939f, 1253f)), vec3<u32>(u_input.a, 1u, u_input.a), Struct_1(269f, vec3<f32>(1379f, 1371f, -1026f))), 1457f, vec3<bool>(false, true, true), Struct_1(1209f, vec3<f32>(-174f, 1032f, -775f))), func_1(Struct_2(Struct_1(-957f, vec3<f32>(424f, -1128f, 787f)), vec3<u32>(u_input.a, 3085u, 0u), Struct_1(870f, vec3<f32>(2022f, 1000f, 701f)))).a, Struct_3(true, Struct_2(Struct_1(1000f, vec3<f32>(-549f, 527f, 2063f)), vec3<u32>(u_input.a, u_input.a, 61568u), Struct_1(693f, vec3<f32>(-1011f, 1384f, 691f))), -1415f, vec3<bool>(true, false, true), Struct_1(-441f, vec3<f32>(-1432f, -631f, 754f))))), 1f, func_2(Struct_4(Struct_2(Struct_1(2453f, vec3<f32>(-111f, -580f, -2038f)), vec3<u32>(u_input.a, u_input.a, 4294967295u), Struct_1(185f, vec3<f32>(1563f, -541f, -708f))), 5045u), Struct_3(false, Struct_2(Struct_1(-176f, vec3<f32>(290f, 1598f, 549f)), vec3<u32>(25704u, u_input.a, 13811u), Struct_1(465f, vec3<f32>(-351f, 877f, 107f))), -1283f, vec3<bool>(false, true, false), Struct_1(-512f, vec3<f32>(324f, 438f, -971f))), firstTrailingBit(u_input.a), vec2<f32>(-422f, -1447f)).x)), vec3<bool>(true, true, true), func_4(1i, func_1(func_1(Struct_2(Struct_1(111f, vec3<f32>(-986f, -2642f, -1000f)), vec3<u32>(0u, 1u, 1u), Struct_1(1000f, vec3<f32>(-1486f, -2103f, 336f)))).a))), Struct_3(false, func_1(Struct_2(Struct_1(2008f, vec3<f32>(1174f, 1337f, -319f)), vec3<u32>(u_input.a, 0u, 40288u), Struct_1(846f, vec3<f32>(-930f, -1144f, 1000f)))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(555f, 295f), -416f))), vec3<bool>(func_2(Struct_4(Struct_2(Struct_1(528f, vec3<f32>(1436f, -1381f, 554f)), vec3<u32>(1u, 2244u, u_input.a), Struct_1(-721f, vec3<f32>(879f, 251f, 161f))), u_input.a), Struct_3(true, Struct_2(Struct_1(479f, vec3<f32>(-963f, -458f, -1083f)), vec3<u32>(54412u, 21019u, 0u), Struct_1(-1225f, vec3<f32>(543f, 490f, -543f))), 178f, vec3<bool>(true, true, true), Struct_1(385f, vec3<f32>(-477f, 658f, -1221f))), u_input.a, vec2<f32>(-250f, 454f)).x | all(vec2<bool>(false, false)), any(vec3<bool>(false, true, false)) && true, true), func_1(func_1(Struct_2(Struct_1(-467f, vec3<f32>(-532f, -506f, 775f)), vec3<u32>(u_input.a, 0u, u_input.a), Struct_1(1681f, vec3<f32>(917f, 1091f, -1435f)))).a).a.c), Struct_4(func_1(func_1(func_1(Struct_2(Struct_1(497f, vec3<f32>(323f, 1361f, -858f)), vec3<u32>(1u, u_input.a, u_input.a), Struct_1(-800f, vec3<f32>(-498f, 199f, 592f)))).a).a).a, ~1u));
    global0 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(-select(select(vec2<i32>(34425i, -2147483647i), vec2<i32>(-1i, -7507i), vec2<bool>(true, false)), vec2<i32>(0i, 1374i), true), _wgslsmith_mod_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-22533i, -37720i)), vec2<i32>(1i, 0i)), firstLeadingBit(~vec2<i32>(-40378i, 1i)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1821f * -850f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c + var_0.d.a.c.b.x) + var_0.a.c.b.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a.a.b.zx, vec2<f32>(var_0.a.a.a, var_0.d.a.c.b.x)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.c.a, 2524f)))) + _wgslsmith_f_op_vec2_f32(-var_0.b.b.a.b.zx))), vec3<i32>(-68978i, ~_wgslsmith_clamp_i32(-1i, -2147483647i, 40786i) & _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -37301i, 1i), vec3<i32>(-1i, -52535i, 38002i)), 31784i >> (0u % 32u)), 1i), _wgslsmith_div_u32(0u, ~34962u));
}

