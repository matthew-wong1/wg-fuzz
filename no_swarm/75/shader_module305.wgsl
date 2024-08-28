struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    var var_0 = ~arg_1.c < 17129u;
    var var_1 = Struct_2(true);
    var var_2 = arg_0.x;
    var_2 = -217f;
    return arg_1;
}

fn func_3(arg_0: vec4<f32>) -> bool {
    global0 = array<Struct_2, 27>();
    var var_0 = select(any(!vec4<bool>(u_input.c.x >= -2147483647i, true, all(vec2<bool>(false, true)), true)), false, any(select(vec2<bool>(func_1(arg_0.zwx, Struct_1(u_input.b, false, 25132u, 0i, false), false).b, any(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)))));
    let var_1 = Struct_2(false);
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(-1089f, _wgslsmith_f_op_f32(933f + 415f))), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zzz), vec3<f32>(arg_0.x, arg_0.x, 1102f)))))), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1348f, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_div_f32(1000f, -499f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -1204f), vec3<f32>(875f, -1016f, -753f)) * _wgslsmith_f_op_vec3_f32(ceil(arg_0.ywx)))), func_1(vec3<f32>(-1444f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -116f)), func_1(vec3<f32>(546f, arg_0.x, arg_0.x), func_1(vec3<f32>(218f, -195f, arg_0.x), Struct_1(u_input.b, false, u_input.b.x, -2147483647i, false), true), true), true), var_1.a), true);
    var_2 = Struct_1(~var_2.a, any(!select(select(vec2<bool>(var_1.a, var_2.e), vec2<bool>(var_2.b, false), vec2<bool>(false, true)), select(vec2<bool>(var_1.a, var_2.e), vec2<bool>(var_2.b, true), false), !vec2<bool>(var_2.e, var_1.a))), select(reverseBits(_wgslsmith_dot_vec3_u32(var_2.a.xxx, var_2.a.xyy)) & (u_input.d | (0u ^ u_input.d)), select(~5901u, u_input.b.x, !(u_input.c.x <= 16927i)), all(!select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(true, true, false, true), vec4<bool>(var_2.b, true, var_1.a, true)))), -select(~u_input.c.x, firstLeadingBit(u_input.e.x), any(!vec2<bool>(var_1.a, false))), false);
    return true;
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    return select(vec3<bool>((2147483647i ^ u_input.e.x) >= _wgslsmith_div_i32(firstTrailingBit(28910i), _wgslsmith_dot_vec3_i32(u_input.e, u_input.e)), all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), !vec3<bool>(!select(false, true, false), false, !func_3(arg_0)), -207f > _wgslsmith_f_op_f32(floor(1344f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(480f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-871f)), arg_0.x)), _wgslsmith_f_op_f32(select(arg_0.x, -1099f, true)), _wgslsmith_f_op_f32(-var_0))));
    var var_2 = _wgslsmith_clamp_vec4_u32(~arg_3.a, func_1(var_1.zzy, arg_3, arg_1.x).a, min(arg_3.a, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.c, u_input.a.x, 29245u, arg_3.a.x), u_input.b))));
    var var_3 = ~_wgslsmith_div_u32(0u, func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 1045f, var_0), var_1.wzy)))), arg_3, false).a.x);
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(801f, 1154f)), 535f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-964f)) + -794f)), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_0.a.x, u_input.d), _wgslsmith_div_u32(arg_1.a.x, arg_1.a.x), countOneBits(6858u), 65090u), _wgslsmith_add_vec4_u32(vec4<u32>(9827u, u_input.d, 11051u, 0u), vec4<u32>(arg_0.a.x, u_input.b.x, 31358u, u_input.a.x))), !func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1779f, 279f))), vec3<bool>(true, arg_0.e, true), u_input.e & u_input.e, Struct_1(vec4<u32>(32152u, 6585u, 7945u, arg_0.c), arg_0.b, 69206u, u_input.c.x, false)).e, u_input.a.x, u_input.e.x & arg_1.d, !arg_2), arg_2);
    var var_1 = ~abs(u_input.e.xx >> (u_input.a % vec2<u32>(32u)));
    var var_2 = false;
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(948f, -666f, -647f), vec3<f32>(-330f, -759f, -190f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1349f, 2121f, 510f) + vec3<f32>(1568f, 2495f, -871f)))))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, -839f)), !select(vec3<bool>(false, arg_0.e, arg_2), func_2(vec4<f32>(-999f, -1000f, -1053f, -890f)), vec3<bool>(var_0.b, false, true)), u_input.e ^ (u_input.e << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_1.c, u_input.a.x), vec3<u32>(arg_1.c, 71194u, arg_0.a.x)) % vec3<u32>(32u))), arg_1), false);
    let var_3 = global0[_wgslsmith_index_u32(40071u, 27u)];
    return func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, -322f, -540f)))))), arg_0, !(!all(vec4<bool>(false, false, true, var_0.b))) && any(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(826f, -179f, 814f, 259f) - vec4<f32>(-841f, -1373f, -395f, 709f)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global0 = array<Struct_2, 27>();
    let var_0 = vec3<i32>(arg_0.d, 0i, min(~arg_0.d, ~_wgslsmith_add_i32(u_input.c.x | 56296i, _wgslsmith_mod_i32(u_input.c.x, u_input.e.x))));
    let var_1 = ~u_input.b.wyz;
    var var_2 = var_0.x & min(var_0.x, arg_0.d);
    global0 = array<Struct_2, 27>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1237f, -1422f, -279f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, 587f, 904f)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), Struct_1(u_input.b, 1u >= u_input.d, 1u, -42759i, true), true), func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-657f, 269f) - vec2<f32>(2024f, 1250f)))), select(vec3<bool>(true, true, true), func_2(vec4<f32>(2708f, 199f, 1213f, 970f)), true), ~vec3<i32>(u_input.c.x, u_input.e.x, -6101i), Struct_1(~vec4<u32>(u_input.d, 10314u, u_input.b.x, u_input.b.x), true, 26316u >> (0u % 32u), 2147483647i, true)), false), global0[_wgslsmith_index_u32(~(~(~u_input.b.x) ^ u_input.d), 27u)]);
    var_0 = (_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 20633u, u_input.d), _wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, u_input.a.x)), abs(~u_input.a.x)) == func_5(func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1824f, -507f))), vec3<bool>(false, false, false), ~u_input.e, func_5(Struct_1(u_input.b, true, u_input.d, u_input.e.x, true), Struct_1(u_input.b, false, 41285u, u_input.e.x, true), false)), Struct_1(vec4<u32>(1u, 4294967295u, 3328u, 0u), true, _wgslsmith_mod_u32(1u, u_input.b.x), u_input.c.x, func_6(Struct_1(vec4<u32>(0u, u_input.b.x, u_input.a.x, u_input.d), false, u_input.b.x, u_input.c.x, true), global0[_wgslsmith_index_u32(1u, 27u)])), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(159f, 1704f, 446f) * vec3<f32>(779f, 328f, -1446f)), func_4(vec2<f32>(-833f, -841f), vec3<bool>(false, false, true), u_input.e, Struct_1(vec4<u32>(1u, 0u, 2710u, 35296u), false, 1u, 2147483647i, true)), func_1(vec3<f32>(-836f, 235f, 1867f), Struct_1(u_input.b, false, u_input.a.x, u_input.e.x, false), false).e).b).a.x) & !any(vec3<bool>(true, true, true));
    var_0 = false;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-261f))) - -1000f) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1f))));
    var_0 = true;
    let var_1 = Struct_1(u_input.b, !(all(func_2(vec4<f32>(767f, 1678f, 1679f, 608f))) | !all(vec4<bool>(false, true, false, true))), ~(~reverseBits(u_input.a.x)) >> (((u_input.a.x >> (_wgslsmith_mult_u32(88527u, 0u) % 32u)) ^ _wgslsmith_div_u32(u_input.a.x, u_input.d)) % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x) << (1u % 32u)), _wgslsmith_add_i32(u_input.e.x, u_input.e.x)), !(~(~4294967295u) != abs(func_5(Struct_1(u_input.b, false, u_input.d, 1i, false), Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.a.x, u_input.b.x), false, 31342u, u_input.e.x, false), true).c)));
    let var_2 = ~var_1.d;
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-126f, 219f, var_1.e)), _wgslsmith_div_f32(-358f, -546f), _wgslsmith_f_op_f32(2135f - -1215f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1552f, 426f, -296f) * vec3<f32>(-2235f, -1429f, -363f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1044f, 788f, 2032f)))), var_1.d == _wgslsmith_add_i32(~var_1.d, 19162i))), var_1, all(select(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1154f, -327f, 1503f, -867f)))).zy, vec2<bool>(func_6(Struct_1(u_input.b, var_1.e, 81253u, var_2, true), global0[_wgslsmith_index_u32(var_1.a.x, 27u)]), true), !(!vec2<bool>(var_1.e, var_1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, abs(vec4<u32>(reverseBits(func_4(vec2<f32>(2816f, -797f), vec3<bool>(true, false, var_1.e), u_input.e, var_1).c), var_1.a.x, 8166u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19077u, var_1.a.x, 1u), var_1.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1191f, _wgslsmith_div_f32(-453f, 1195f), var_3.b))), 1f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(floor(1f))));
}

