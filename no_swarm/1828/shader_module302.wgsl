struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = ~(-max(-u_input.d, ~vec3<i32>(-1i, 9266i, -2147483647i)));
    global0 = Struct_1(!(!(!select(true, arg_0, global0.a))));
    let var_1 = Struct_2(_wgslsmith_add_i32(33218i, var_0.x), vec3<u32>(_wgslsmith_add_u32(u_input.a, firstTrailingBit(37153u)), reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) << (vec4<u32>(u_input.c.x, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(4979u, 0u, u_input.c.x, 1u))) >> (vec3<u32>(1u, ~u_input.a, ~countOneBits(u_input.c.x)) % vec3<u32>(32u)), Struct_1(all(!select(vec4<bool>(false, false, false, global0.a), vec4<bool>(arg_0, false, global0.a, false), vec4<bool>(arg_1.x, true, arg_0, true)))), Struct_1(!global0.a), Struct_1((-u_input.b.x < countOneBits(1i)) == false));
    var var_2 = Struct_1((true & !(var_0.x <= 1666i)) && arg_0);
    let var_3 = Struct_1(u_input.c.x <= 29567u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-725f, 751f, -2265f, -988f) + vec4<f32>(1816f, 1550f, -1654f, 359f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, 286f, -445f, 227f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(450f * -459f), _wgslsmith_f_op_f32(-366f * -595f), -1000f, 1549f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1436f, 208f, 224f, -1321f), vec4<f32>(1000f, 1170f, -2003f, 1398f)), vec4<f32>(-1193f, -356f, -821f, -603f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, u_input.d.x) << (_wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(1u, u_input.c.x, 0u, u_input.a), vec4<u32>(1u, u_input.a, 4294967295u, 1u))), vec4<u32>(~32828u, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(25068u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.a)), u_input.a)) % 32u), u_input.d.x, u_input.b.x);
    global0 = Struct_1(any(!select(!vec2<bool>(global0.a, global0.a), vec2<bool>(arg_1.a, global0.a), true)));
    global0 = arg_1;
    let var_1 = Struct_2(u_input.d.x >> (~1u % 32u), ~vec3<u32>(~u_input.a, u_input.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_div_u32(4294967295u, 790u))), Struct_1(any(vec3<bool>(!arg_1.a, true, !global0.a))), arg_1, arg_1);
    global0 = Struct_1(any(select(vec4<bool>(global0.a | global0.a, true, any(vec3<bool>(false, global0.a, false)), true), vec4<bool>(global0.a, !arg_1.a, global0.a, var_1.c.a && false), !select(true, true, false))));
    return var_1.c.a;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec2<f32> {
    let var_0 = select(arg_0.c.a, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, 316f, 1497f, 843f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1170f, 306f, 125f, 1234f), vec4<f32>(-821f, -1000f, 281f, -312f), global0.a))) * _wgslsmith_f_op_vec4_f32(func_3(!arg_0.e.a, select(vec3<bool>(false, global0.a, false), vec3<bool>(false, arg_0.e.a, true), true)))), arg_0.c), select(!(min(0i, arg_1) > u_input.d.x), global0.a, false || !global0.a));
    var var_1 = Struct_1(-(arg_0.a | _wgslsmith_mod_i32(arg_1, -11382i)) < _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 27233i, u_input.d.x), vec4<i32>(0i, arg_0.a, u_input.d.x, u_input.b.x)), select(-45271i, -7938i, var_0)), u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a), vec2<i32>(arg_0.a, 1i)), u_input.d.x)));
    var var_2 = vec3<u32>(~((~u_input.a & 1u) << (~(~1u) % 32u)), ~arg_0.b.x, ~arg_0.b.x);
    var_1 = arg_0.d;
    let var_3 = !select(select(!select(vec2<bool>(false, arg_0.d.a), vec2<bool>(true, var_1.a), vec2<bool>(arg_0.d.a, true)), vec2<bool>(89590u < u_input.c.x, all(vec3<bool>(var_0, false, var_1.a))), vec2<bool>(false, arg_1 < 1i)), !select(vec2<bool>(false, true), !vec2<bool>(var_1.a, global0.a), select(vec2<bool>(global0.a, false), vec2<bool>(arg_0.d.a, false), true)), vec2<bool>(false, !(!var_1.a)));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) * _wgslsmith_f_op_f32(307f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) + 1419f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1466f)), _wgslsmith_f_op_f32(545f - _wgslsmith_f_op_f32(step(1143f, 1221f)))))));
}

fn func_1() -> i32 {
    global0 = Struct_1(4294967295u > u_input.c.x);
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = vec4<bool>(global0.a, global0.a, !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1920f)), -1557f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1782f)), global0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, 139f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(u_input.b.x, vec3<u32>(4294967295u, 6328u, u_input.c.x), Struct_1(global0.a), Struct_1(global0.a), Struct_1(global0.a)), u_input.d.x))))))));
    global0 = Struct_1(global0.a);
    return 0i;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    global0 = arg_0.e;
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1061f));
    global0 = Struct_1(true);
    var_0 = Struct_2(-_wgslsmith_clamp_i32(arg_0.a, 1i, var_0.a), arg_0.b, arg_0.c, arg_0.c, Struct_1(false));
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(-func_1() >> (48138u % 32u), max(vec3<u32>(select(63262u, 0u, global0.a), 4294967295u | u_input.c.x, u_input.a), min(firstLeadingBit(vec3<u32>(u_input.a, u_input.c.x, u_input.c.x)), vec3<u32>(42099u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 1u, 1u))), Struct_1(all(!vec2<bool>(global0.a, true))), Struct_1(true || (u_input.b.x > u_input.d.x)), Struct_1(any(select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, global0.a, global0.a), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 176f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(861f, -1076f, -238f) + vec3<f32>(1363f, 1396f, 840f)))))), firstLeadingBit(_wgslsmith_mod_i32(~_wgslsmith_div_i32(-9186i, u_input.b.x), _wgslsmith_add_i32(u_input.d.x, abs(2147483647i)))));
    let var_0 = func_5(Struct_2(-u_input.b.x, _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.c.x, ~3794u, 71800u), vec3<u32>(~4988u, ~u_input.c.x, ~u_input.a)), func_5(Struct_2(func_1(), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, 71302u), vec3<u32>(u_input.a, u_input.c.x, 4294967295u)), Struct_1(global0.a), func_5(Struct_2(u_input.d.x, vec3<u32>(12334u, u_input.a, 4294967295u), Struct_1(true), Struct_1(true), Struct_1(global0.a)), vec3<f32>(-888f, 1315f, -575f), -2147483647i), func_5(Struct_2(0i, vec3<u32>(0u, u_input.c.x, 30023u), Struct_1(false), Struct_1(global0.a), Struct_1(true)), vec3<f32>(-436f, -1372f, -1000f), -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(375f, -366f, -769f) - vec3<f32>(-227f, 303f, -535f))), u_input.b.x), Struct_1(global0.a || !global0.a), func_5(Struct_2(countOneBits(-19543i), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 24081u), vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(53893u, 1u, 4294967295u)), func_5(Struct_2(1i, vec3<u32>(1u, 45565u, 1u), Struct_1(false), Struct_1(global0.a), Struct_1(false)), vec3<f32>(1000f, 273f, -1150f), u_input.d.x), Struct_1(false), func_5(Struct_2(-1i, vec3<u32>(u_input.a, u_input.a, 0u), Struct_1(global0.a), Struct_1(true), Struct_1(false)), vec3<f32>(270f, -402f, -382f), u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1223f, 1644f, 828f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(815f, -456f, -544f), vec3<f32>(-1000f, 578f, 648f)))), _wgslsmith_mod_i32(-u_input.b.x, 972i))), vec3<f32>(_wgslsmith_div_f32(690f, 1425f), _wgslsmith_f_op_f32(-1526f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-827f, -242f)))), -1483f), _wgslsmith_mod_i32(-44133i, ~reverseBits(-4803i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1905f, 1121f)))), vec2<f32>(-1270f, -1090f)) - vec2<f32>(-1339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1475f * -293f))))));
    var var_2 = Struct_1(all(vec4<bool>(2147483647i > (-27942i | u_input.d.x), all(!vec2<bool>(var_0.a, global0.a)), any(vec4<bool>(false, false, global0.a, false)) && !global0.a, var_0.a)));
    var var_3 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.d, firstTrailingBit(firstLeadingBit(firstLeadingBit(u_input.d)))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 1u, u_input.a) >> (reverseBits(vec3<u32>(u_input.a, 0u, 23242u)) % vec3<u32>(32u))), reverseBits(~min(vec3<u32>(u_input.c.x, 63903u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.c.x)))), func_5(Struct_2(u_input.d.x, vec3<u32>(~u_input.a, ~36400u, u_input.a), Struct_1(all(vec4<bool>(var_0.a, var_2.a, var_0.a, false))), var_0, func_5(Struct_2(-2147483647i, vec3<u32>(u_input.c.x, 6273u, u_input.a), Struct_1(var_0.a), var_0, Struct_1(var_2.a)), _wgslsmith_f_op_vec4_f32(func_3(global0.a, vec3<bool>(false, true, true))).wyw, ~(-39648i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1375f, var_1.x, -755f), vec3<f32>(var_1.x, -134f, 322f))))), ~select(i32(-1i) * -65095i, -2147483647i, true)), func_5(Struct_2(-max(u_input.d.x, u_input.d.x), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(12858u, u_input.c.x, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, u_input.c.x))), func_5(Struct_2(u_input.b.x, vec3<u32>(u_input.c.x, u_input.a, 24459u), Struct_1(false), var_0, Struct_1(var_2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1577f, 583f, var_1.x) - vec3<f32>(296f, var_1.x, 755f)), -6278i), Struct_1(var_2.a & true), var_0), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-704f, -230f))), _wgslsmith_f_op_f32(min(var_1.x, -1069f)), 1137f), _wgslsmith_add_i32(2147483647i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(17515i, u_input.d.x, 6815i, 13457i), vec4<i32>(u_input.d.x, -29635i, u_input.d.x, 26970i))))), Struct_1(var_2.a));
    let var_4 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x));
    var_3 = Struct_2(func_1(), ~(abs(vec3<u32>(u_input.c.x, var_3.b.x, var_3.b.x)) >> (~(vec3<u32>(0u, u_input.c.x, u_input.a) | vec3<u32>(4294967295u, 23410u, u_input.a)) % vec3<u32>(32u))), Struct_1(true), Struct_1(var_0.a), var_0);
    var_3 = Struct_2(-4933i, var_3.b, Struct_1(!(~var_3.a != ~0i)), func_5(Struct_2(79210i, vec3<u32>(var_3.b.x, _wgslsmith_mult_u32(var_3.b.x, var_3.b.x), _wgslsmith_mult_u32(96331u, var_3.b.x)), var_3.e, func_5(Struct_2(u_input.b.x, vec3<u32>(107151u, 53877u, var_3.b.x), Struct_1(true), Struct_1(var_3.e.a), Struct_1(var_0.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-791f, var_4.x, var_4.x))), 19580i << (var_3.b.x % 32u)), Struct_1(!var_2.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-1174f, -565f, _wgslsmith_f_op_f32(-767f * var_1.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, var_4.x)))), var_3.a), Struct_1(false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1, var_1)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_4.x, _wgslsmith_div_f32(127f, var_4.x)), vec2<f32>(-1309f, _wgslsmith_f_op_f32(706f * var_4.x)))), select(_wgslsmith_mod_i32(-1i, var_3.a), _wgslsmith_div_i32(var_3.a, u_input.b.x), var_2.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(u_input.b.x, var_3.b, var_0, var_3.d, Struct_1(global0.a)), _wgslsmith_dot_vec2_i32(u_input.d.zy, vec2<i32>(-1i, -2147483647i)))).x - var_4.x), var_1.x));
}

