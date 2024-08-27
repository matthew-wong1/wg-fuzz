struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(select(!select(vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(global0.c, true, true), vec3<bool>(arg_3.c, global0.c, true), true), select(true, arg_2.c, false)), select(vec3<bool>(true, all(vec2<bool>(true, arg_2.c)), global0.c || global0.c), !select(vec3<bool>(false, arg_2.c, true), vec3<bool>(true, arg_3.c, true), vec3<bool>(false, arg_1, arg_3.c)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_2.c), select(vec3<bool>(arg_3.c, false, global0.c), vec3<bool>(global0.c, arg_2.c, true), vec3<bool>(arg_2.c, false, false)))), arg_3.c), false, vec4<i32>(-2147483647i >> (arg_2.a.x % 32u), -(_wgslsmith_add_i32(66898i, arg_2.b) ^ min(global0.b, 2147483647i)), -arg_2.b, select(-u_input.c.x, -1i, false)), vec4<i32>(_wgslsmith_mod_i32(min(-19956i, _wgslsmith_clamp_i32(arg_3.b, arg_3.b, -27046i)), ~0i), arg_2.b | 35173i, max(~30651i, arg_2.b | arg_2.b) >> (select(abs(arg_0), min(1u, 4294967295u), true) % 32u), -_wgslsmith_div_i32(u_input.c.x, 18620i)), arg_2.a.yz);
    var_0 = Struct_3(!vec3<bool>(arg_1, true, any(vec3<bool>(false, arg_2.c, arg_2.c))), !(!arg_2.c), var_0.c, var_0.c, select(select(arg_3.a.wz, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, arg_2.a.x), var_0.e, arg_2.a.yw), vec2<bool>(var_0.b, true)), select(u_input.d, vec2<u32>(1u, 1u), false || all(var_0.a.xy)), arg_1 && var_0.b));
    global0 = Struct_1(_wgslsmith_add_vec4_u32(abs(global0.a), _wgslsmith_add_vec4_u32(~(~global0.a), vec4<u32>(reverseBits(global0.a.x), 9600u, select(arg_0, 4294967295u, true), 4294967295u))), ~u_input.c.x, _wgslsmith_div_u32(min(4294967295u, arg_0) | var_0.e.x, ~(~4294967295u)) != global0.a.x, -1064f, global0.e);
    var var_1 = var_0.b;
    var var_2 = Struct_1(~(~arg_2.a), var_0.c.x, var_0.d.x < firstTrailingBit(max(arg_2.b, global0.b)), -1234f, global0.e);
    return vec3<bool>(true, all(var_0.a), var_2.c);
}

fn func_2() -> Struct_4 {
    global0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(u_input.e, 1u), u_input.a & (4294967295u | global0.a.x), 1u, ~u_input.d.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(21u, 12805u, u_input.e, 4294967295u), global0.a) % 32u)) >> (~_wgslsmith_sub_vec4_u32(~global0.a, ~global0.a) % vec4<u32>(32u)), u_input.b, any(!(!vec2<bool>(global0.c, global0.c))) && (global0.b <= 2147483647i), _wgslsmith_f_op_f32(187f + -1226f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, 1217f, global0.e.x, global0.e.x) * vec4<f32>(-1322f, global0.d, global0.d, global0.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.d, global0.e.x, global0.e.x, global0.e.x)))))));
    let var_0 = Struct_3(select(select(!select(vec3<bool>(false, true, global0.c), vec3<bool>(false, global0.c, false), vec3<bool>(true, false, global0.c)), vec3<bool>(true, any(vec4<bool>(global0.c, global0.c, false, true)), any(vec4<bool>(false, true, global0.c, true))), vec3<bool>(false, any(vec4<bool>(global0.c, false, false, global0.c)), true)), !select(func_3(17171u, global0.c, Struct_1(global0.a, global0.b, global0.c, global0.e.x, vec4<f32>(global0.d, global0.d, -1561f, global0.e.x)), Struct_1(global0.a, global0.b, global0.c, global0.d, global0.e)), vec3<bool>(true, true, true), select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(true, global0.c, true), global0.c)), vec3<bool>(global0.c, true, true | !global0.c)), global0.c, _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(global0.b), -2147483647i ^ u_input.b, global0.b, 32074i), ~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b, global0.b, u_input.b, 28465i), vec4<i32>(2147483647i, -3563i, u_input.b, 22907i)))), _wgslsmith_div_vec4_i32(vec4<i32>(-(~global0.b), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 2147483647i), u_input.c), global0.b, -(u_input.c.x ^ global0.b)), firstTrailingBit(vec4<i32>(-global0.b, 0i, 0i << (u_input.d.x % 32u), global0.b))), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(reverseBits(15340u), u_input.d.x << (u_input.d.x % 32u))), u_input.d));
    global0 = Struct_1(min(countOneBits(firstLeadingBit(global0.a)), vec4<u32>(~global0.a.x, ~_wgslsmith_clamp_u32(var_0.e.x, 61141u, 22293u), _wgslsmith_mult_u32(global0.a.x, 75461u) & min(var_0.e.x, 0u), global0.a.x)), var_0.c.x, any(vec4<bool>((i32(-1i) * -1i) > (-17985i | var_0.d.x), var_0.a.x, false, !var_0.b)), global0.d, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2684f, _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.e.x, global0.e.x)) - _wgslsmith_f_op_f32(-918f + global0.e.x)), _wgslsmith_f_op_f32(global0.e.x - 1018f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e.x, 401f, 2354f, -723f), vec4<f32>(global0.d, -1265f, -967f, -1053f), vec4<bool>(true, false, true, var_0.b))) - vec4<f32>(1218f, 1000f, 1096f, 816f))))));
    var var_1 = vec4<bool>(!(!(!any(var_0.a))), true & func_3(firstTrailingBit(4294967295u), !all(var_0.a), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, u_input.d.x, 4294967295u, 6973u), vec4<u32>(var_0.e.x, var_0.e.x, u_input.a, u_input.d.x)), _wgslsmith_clamp_i32(var_0.c.x, u_input.b, 22301i), all(vec3<bool>(global0.c, true, global0.c)), _wgslsmith_f_op_f32(global0.d + global0.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-247f, 214f, global0.d, 1134f) + global0.e)), Struct_1(reverseBits(global0.a), 0i | u_input.c.x, !global0.c, 1286f, global0.e)).x, false, global0.c);
    global0 = Struct_1(~_wgslsmith_mult_vec4_u32(global0.a, firstTrailingBit(global0.a)), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-_wgslsmith_mult_i32(var_0.d.x, var_0.d.x), max(1i, u_input.b))), var_1.x, _wgslsmith_f_op_f32(min(872f, 542f)), vec4<f32>(_wgslsmith_f_op_f32(-1120f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * global0.e.x))), -311f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(f32(-1f) * -2591f))))), -1706f));
    return Struct_4(vec4<u32>(~(~u_input.e), _wgslsmith_div_u32(var_0.e.x, u_input.e), 2681u | (_wgslsmith_clamp_u32(0u, 0u, 32771u) ^ ~4294967295u), u_input.a), firstLeadingBit(~var_0.e), Struct_2(Struct_1(select(global0.a, vec4<u32>(global0.a.x, 49594u, u_input.a, 55396u), vec4<bool>(true, var_1.x, var_1.x, false)) >> (~vec4<u32>(u_input.e, 9081u, u_input.d.x, 0u) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(var_0.c, var_0.c) | global0.b, var_1.x, _wgslsmith_f_op_f32(floor(global0.d)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1490f, -185f, 1201f, -2278f), vec4<f32>(global0.d, -571f, global0.d, global0.e.x), vec4<bool>(true, global0.c, false, var_1.x)))), func_3(_wgslsmith_dot_vec3_u32(global0.a.wyz, vec3<u32>(u_input.e, 9581u, 0u)) >> (firstLeadingBit(var_0.e.x) % 32u), any(select(vec4<bool>(global0.c, false, true, true), vec4<bool>(global0.c, true, false, var_1.x), var_0.a.x)), Struct_1(abs(vec4<u32>(83206u, 4294967295u, 23242u, var_0.e.x)), -2147483647i, all(var_1.zww), _wgslsmith_f_op_f32(sign(-117f)), vec4<f32>(-497f, 218f, 1252f, global0.d)), Struct_1(vec4<u32>(42507u, 4294967295u, var_0.e.x, 4294967295u), 20652i, false && global0.c, -302f, vec4<f32>(1492f, global0.e.x, global0.d, 349f))).yx, Struct_1(~vec4<u32>(var_0.e.x, 29226u, 0u, 75640u), 32712i, false, -246f, global0.e)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = func_2().c.a;
    var var_0 = arg_2.c.c;
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(floor(global0.e.x));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(abs(~arg_2.c.a.b >> (~u_input.a % 32u)), 49947i << (arg_2.c.c.a.x % 32u)), -69519i, -7316i, 23269i);
    return vec2<bool>(!all(vec3<bool>(arg_0 > -1000f, true, any(vec3<bool>(false, global0.c, false)))), arg_1);
}

fn func_1() -> Struct_3 {
    let var_0 = abs(~(min(~vec3<i32>(global0.b, u_input.c.x, global0.b), vec3<i32>(1i, 27900i, global0.b) >> (global0.a.zyw % vec3<u32>(32u))) ^ (-vec3<i32>(u_input.b, u_input.b, -46395i) ^ vec3<i32>(7681i, u_input.b, global0.b))));
    global0 = Struct_1(~_wgslsmith_mod_vec4_u32(global0.a, ~_wgslsmith_add_vec4_u32(vec4<u32>(106296u, global0.a.x, global0.a.x, global0.a.x), vec4<u32>(38592u, 1u, global0.a.x, global0.a.x))), firstLeadingBit(global0.b), global0.e.x > 175f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.x, _wgslsmith_f_op_f32(-333f - 1019f))), _wgslsmith_f_op_f32(min(-710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1511f)))))), _wgslsmith_f_op_vec4_f32(global0.e * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.e.x, 1252f, -1859f))))));
    let var_1 = func_4(_wgslsmith_f_op_f32(-global0.d), global0.c, func_2(), ~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(global0.b, -18704i, 1i, global0.b), firstTrailingBit(vec4<i32>(67136i, var_0.x, 39545i, var_0.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.xz, u_input.c), var_0.x, -u_input.c.x, 1i)));
    let var_2 = Struct_1(~_wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(0u, 16437u, global0.a.x, 68980u)), _wgslsmith_add_vec4_u32(global0.a, global0.a | vec4<u32>(u_input.e, 4294967295u, u_input.d.x, u_input.e))), _wgslsmith_mod_i32((firstTrailingBit(1i) & u_input.c.x) & 28123i, -(-17554i | var_0.x) & _wgslsmith_mod_i32(u_input.c.x, countOneBits(-4917i))), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1370f)))), global0.e.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-global0.d)), 705f, _wgslsmith_f_op_f32(f32(-1f) * -341f)))));
    global0 = var_2;
    return Struct_3(vec3<bool>(any(!vec2<bool>(var_2.c, var_2.c)), true, func_3(832u, var_1.x, func_2().c.c, var_2).x), !var_1.x, ~(_wgslsmith_mult_vec4_i32(vec4<i32>(-4442i, 2147483647i, var_0.x, var_2.b), vec4<i32>(u_input.b, var_2.b, global0.b, u_input.b)) ^ -vec4<i32>(22711i, var_2.b, 2147483647i, -1688i)) >> (~vec4<u32>(~0u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.e), global0.a.x, abs(13680u)) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(max(43178i, i32(-1i) * -1i), _wgslsmith_add_i32(16743i, abs(global0.b)), ~var_2.b, var_2.b)), _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(16860u, u_input.a)), reverseBits(_wgslsmith_add_vec2_u32(global0.a.ww, vec2<u32>(u_input.d.x, 0u)) | vec2<u32>(var_2.a.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = Struct_1(vec4<u32>(global0.a.x, (1u | u_input.e) & 1u, 27094u, reverseBits(1u)) << (~select(global0.a | global0.a, vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4294967295u), global0.c) % vec4<u32>(32u)), u_input.c.x, global0.c, global0.e.x, global0.e);
    let var_1 = any(select(select(select(select(vec4<bool>(false, false, var_0.a.x, false), vec4<bool>(true, global0.c, true, true), true), vec4<bool>(global0.c, true, global0.c, false), true), !vec4<bool>(var_0.a.x, global0.c, true, var_0.a.x), vec4<bool>(true, true, any(var_0.a.xz), var_0.a.x)), !select(!vec4<bool>(global0.c, var_0.b, false, false), select(vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(false, true, false, false), global0.c), vec4<bool>(global0.c, true, var_0.b, global0.c)), !vec4<bool>(all(var_0.a.xz), var_0.a.x, true, select(global0.c, var_0.a.x, false))));
    let var_2 = Struct_4(vec4<u32>(abs(0u), var_0.e.x, _wgslsmith_add_u32(~_wgslsmith_sub_u32(var_0.e.x, u_input.a), var_0.e.x), min(77118u, _wgslsmith_mult_u32(var_0.e.x, _wgslsmith_sub_u32(1u, global0.a.x)))), ~(abs(~vec2<u32>(u_input.a, var_0.e.x)) & vec2<u32>(0u, ~u_input.d.x)), Struct_2(func_2().c.c, var_0.a.zy, func_2().c.c));
    var var_3 = Struct_4(_wgslsmith_sub_vec4_u32(global0.a, ~var_2.a & ~(~var_2.a)), firstTrailingBit(~(~var_2.a.wy)), func_2().c);
    global0 = func_2().c.c;
    var var_4 = ~vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(110937u, var_3.b.x, u_input.a), 1u), ~var_2.a.x, _wgslsmith_mult_u32(20493u, 0u));
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -148f));
}

