struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<i32> {
    var var_0 = vec4<i32>(reverseBits(u_input.e), -2147483647i, -34699i, u_input.e);
    var_0 = min(u_input.a, firstTrailingBit(vec4<i32>(-var_0.x, _wgslsmith_mod_i32(-2147483647i ^ u_input.c, var_0.x | 0i), u_input.c >> (abs(u_input.b.x) % 32u), select(-u_input.e, _wgslsmith_mult_i32(-70395i, var_0.x), any(vec4<bool>(false, true, true, false))))));
    return select(-vec4<i32>(2147483647i, -1i, -(~0i), min(0i, var_0.x | u_input.a.x)), vec4<i32>(38361i & countOneBits(var_0.x), min(var_0.x, _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(99577i, var_0.x))), 1i, u_input.e), vec4<bool>(true, false, !(_wgslsmith_dot_vec4_u32(vec4<u32>(32441u, 1u, 0u, 1u), vec4<u32>(0u, 67374u, 57543u, 5081u)) != 15900u), !any(vec4<bool>(false, true, false, true))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = u_input.b.x & ~(_wgslsmith_mod_u32(~50906u, ~arg_2) ^ _wgslsmith_clamp_u32(arg_2, ~41802u, _wgslsmith_sub_u32(27634u, u_input.b.x)));
    var var_1 = !arg_1.c.c.zx;
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(arg_1.c.a, arg_1.c.a), vec4<bool>(select(var_1.x, arg_1.c.b.x, select(false & var_1.x, !arg_0, -2147483647i >= u_input.c)), true, true, !any(vec3<bool>(var_1.x, false, arg_1.c.c.x))), select(select(arg_1.c.c, !arg_1.c.b, arg_1.c.c), vec4<bool>(true, arg_0, true, true), true));
    let var_3 = func_3();
    var var_4 = firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(firstLeadingBit(~arg_2), ~arg_1.b.x), 1344u, abs(~abs(13714u))));
    return Struct_2(false, ~(~(vec2<u32>(arg_1.b.x, 0u) | u_input.b) ^ ~(vec2<u32>(u_input.b.x, 33851u) | vec2<u32>(var_0, var_0))), Struct_1(vec4<i32>(-1i, -1i, ~firstLeadingBit(arg_1.c.a.x), var_3.x | u_input.c), vec4<bool>(!(3059u != var_0), arg_0, arg_0, var_2.c.x), arg_1.c.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<u32> {
    return ~vec3<u32>(21495u, arg_0.b.x, ~arg_0.b.x);
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~firstLeadingBit(-13812i));
    var var_1 = reverseBits(vec3<u32>(~u_input.b.x, abs(select(~u_input.b.x, 25514u, true)), firstLeadingBit(4294967295u)));
    let var_2 = -380f;
    var_1 = vec3<u32>(~(_wgslsmith_sub_u32(u_input.b.x, 1u) | ~_wgslsmith_sub_u32(var_1.x, u_input.b.x)), 1u, u_input.b.x);
    var_1 = ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(81001u, 40299u, 7799u), vec3<u32>(20504u, var_1.x, u_input.b.x))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(85902u, 66855u, 1u), vec3<u32>(u_input.b.x, var_1.x, 34817u)), vec3<u32>(var_1.x, 10682u, 4294967295u)), ~func_4(func_2(true, Struct_2(true, vec2<u32>(4294967295u, 0u), Struct_1(u_input.a, vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), var_1.x), Struct_1(vec4<i32>(0i, -1i, -31009i, 32844i), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), Struct_3(false), u_input.d));
    return Struct_1(vec4<i32>(0i, ~2147483647i, _wgslsmith_sub_i32(u_input.a.x, -(~u_input.a.x)), i32(-1i) * -2147483647i), !func_2(true, func_2(all(vec3<bool>(false, true, true)), Struct_2(true, u_input.b, Struct_1(u_input.a, vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), min(8164u, var_1.x)), 9705u).c.c, select(select(vec4<bool>(true, var_2 != 732f, any(vec3<bool>(false, false, false)), true), vec4<bool>(any(vec3<bool>(false, false, false)), true, select(false, false, true), true), ~0u <= _wgslsmith_clamp_u32(var_1.x, var_1.x, 80202u)), !func_2(var_2 <= var_2, func_2(true, Struct_2(false, vec2<u32>(u_input.b.x, var_1.x), Struct_1(vec4<i32>(u_input.c, u_input.e, u_input.a.x, u_input.e), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), var_1.x), 10109u).c.b, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), any(vec2<bool>(false, true)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> vec4<bool> {
    var var_0 = arg_0.a;
    let var_1 = 742f;
    var_0 = arg_1.a;
    let var_2 = Struct_3(true);
    var_0 = all(vec3<bool>(all(vec2<bool>(select(arg_0.a, true, false), var_2.a & true)), true, !(true | !var_2.a)));
    return !vec4<bool>(true, 4294967295u == arg_0.b.x, false, true);
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3.b.x;
    var var_1 = Struct_3((-10124i > (_wgslsmith_mod_i32(arg_3.a.x, -40868i) >> (u_input.b.x % 32u))) & select(false, true, func_2(var_0, Struct_2(var_0, u_input.b, arg_3), arg_1.x).c.c.x | func_5(Struct_2(false, arg_1, arg_3), Struct_3(true), 0u, arg_0).x));
    var_1 = Struct_3(true);
    let var_2 = _wgslsmith_mod_vec2_u32(reverseBits(arg_1 >> (vec2<u32>(arg_0, select(arg_0, 4178u, var_1.a)) % vec2<u32>(32u))), u_input.b);
    var_1 = Struct_3(!var_0);
    return Struct_2(true, vec2<u32>(83743u, 0u), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(47279u, ~vec2<u32>(u_input.b.x, ~1u), vec2<f32>(-835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-183f))))), Struct_1(reverseBits(vec4<i32>(u_input.c, -8758i, u_input.e | u_input.c, ~(-1i))), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, !(-2147483647i != u_input.a.x)), func_5(Struct_2(-28888i != u_input.d.x, ~u_input.b, func_1()), Struct_3(true), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 1u, 6019u)), ~vec3<u32>(99037u, u_input.b.x, 1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(u_input.b.x, 29011u, u_input.b.x)), 0u))));
    var_0 = Struct_2(func_1().c.x, var_0.b, func_2(any(vec4<bool>(var_0.a == var_0.c.c.x, true, false == var_0.c.b.x, var_0.a || var_0.c.c.x)), Struct_2(true, vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(4294967295u, 25487u)), func_1()), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mult_u32(0u, 1u)), var_0.b.x)).c);
    let var_1 = func_6(_wgslsmith_div_u32(countOneBits(~32039u), _wgslsmith_dot_vec2_u32(u_input.b, abs(vec2<u32>(var_0.b.x, 4294967295u)))), firstTrailingBit(var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1451f, -194f) + vec2<f32>(549f, 542f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f + 256f)), 1379f)), func_6(u_input.b.x, vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 21022u) >> (1u % 32u), var_0.b.x << (69129u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-777f + 2345f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f))), func_2(var_0.a, Struct_2(var_0.a, vec2<u32>(var_0.b.x, 13083u), var_0.c), ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)).c).c).c;
    let var_2 = _wgslsmith_mult_u32(~firstTrailingBit(u_input.b.x), u_input.b.x);
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(-31035i, -1i), u_input.d.x, countOneBits(firstTrailingBit(u_input.e << (113690u % 32u))), 0i);
    var_0 = Struct_2(var_1.b.x, vec2<u32>(var_2, _wgslsmith_div_u32(var_0.b.x, _wgslsmith_mult_u32(1u, 57773u >> (var_0.b.x % 32u)))), Struct_1(func_1().a, vec4<bool>(false, select(var_1.c.x, true, var_0.a) & true, !func_5(Struct_2(false, vec2<u32>(var_2, u_input.b.x), var_1), Struct_3(var_1.c.x), var_0.b.x, var_2).x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) <= _wgslsmith_div_u32(var_0.b.x, 1u)), func_1().c));
    var_0 = func_6(~abs(~(~var_0.b.x)), vec2<u32>(abs(_wgslsmith_mult_u32(var_0.b.x | 4294967295u, 1u)), var_0.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(851f, -1185f), _wgslsmith_f_op_f32(trunc(613f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -639f)))), vec2<f32>(146f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(766f)), _wgslsmith_f_op_f32(min(1000f, 1000f)))))), func_2(!all(!var_1.b.xxy), func_6(u_input.b.x ^ 59418u, vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 16254u), ~var_0.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(621f, -1000f)), func_6(var_2, _wgslsmith_add_vec2_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, -1000f)), Struct_1(var_1.a, vec4<bool>(false, var_1.c.x, false, var_0.c.c.x), vec4<bool>(true, var_0.a, true, var_0.c.b.x))).c), _wgslsmith_add_u32(~var_0.b.x, 1u) | abs(func_4(Struct_2(true, u_input.b, Struct_1(vec4<i32>(var_1.a.x, var_3.x, var_0.c.a.x, -29652i), vec4<bool>(true, true, true, var_0.c.c.x), vec4<bool>(false, var_1.c.x, true, var_0.c.c.x))), var_0.c, Struct_3(var_1.c.x), var_0.c.a.yy).x)).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1463f, -1442f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(431f, -763f)))) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(808f)) - -582f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1078f, _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-596f, -2288f, -238f), vec3<f32>(354f, -1000f, 891f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1512f, -181f, -650f) * vec3<f32>(564f, -446f, -441f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-596f, _wgslsmith_f_op_f32(sign(614f)), _wgslsmith_f_op_f32(587f + -1000f))))), _wgslsmith_mult_vec3_u32(vec3<u32>(43539u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.b.x, 45387u, var_2, 16455u)), ~vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, 48713u)), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, var_2))), firstLeadingBit(vec3<u32>(8188u, abs(u_input.b.x), u_input.b.x >> (u_input.b.x % 32u)))));
}

