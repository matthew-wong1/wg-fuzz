struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(39185u, 506f, Struct_1(false), Struct_1(false), Struct_1(false)), Struct_2(42469u, -540f, Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(58598u, 177f, Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(0u, -2302f, Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(1u, -866f, Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(14432u, 745f, Struct_1(false), Struct_1(false), Struct_1(false)), Struct_2(0u, 1000f, Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(0u, -1184f, Struct_1(false), Struct_1(false), Struct_1(false)), Struct_2(765u, -2485f, Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(4294967295u, -1910f, Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(37489u, 2153f, Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(1u, -844f, Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(1u, 754f, Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(4294967295u, 1007f, Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(24511u, 533f, Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(8665u, -1000f, Struct_1(false), Struct_1(false), Struct_1(false)), Struct_2(0u, 1059f, Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(9307u, -1000f, Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(0u, 1253f, Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(11434u, 1342f, Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(46176u, -2593f, Struct_1(false), Struct_1(true), Struct_1(false)), Struct_2(4512u, -457f, Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(14091u, 904f, Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(88949u, -1416f, Struct_1(false), Struct_1(false), Struct_1(false)), Struct_2(0u, -390f, Struct_1(false), Struct_1(true), Struct_1(false)), Struct_2(7155u, -1382f, Struct_1(false), Struct_1(false), Struct_1(true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(659f))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-782f, _wgslsmith_f_op_f32(f32(-1f) * -534f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f));
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(339f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(1058f, -270f, true))) + vec3<f32>(216f, -765f, _wgslsmith_f_op_f32(1145f - 619f))))));
    let var_1 = -685f;
    var var_2 = _wgslsmith_dot_vec3_i32(~vec3<i32>(-u_input.b.x ^ ~0i, ~(-1i), -1i), vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-81883i, abs(u_input.b.x))), 49761i, 2817i));
    var var_3 = Struct_3(firstTrailingBit(firstLeadingBit(reverseBits(select(vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, 33462i, 2147483647i), vec3<bool>(false, false, true))))), true);
    let var_4 = Struct_3(vec3<i32>(0i, ~select(var_3.a.x, ~42180i, false), abs(-27496i)), true);
    return vec3<i32>(~_wgslsmith_mod_i32(var_4.a.x, u_input.b.x), _wgslsmith_add_i32(var_4.a.x, var_3.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, abs(-2147483647i), -1i) & var_3.a, vec3<i32>(u_input.b.x, ~u_input.b.x ^ _wgslsmith_mult_i32(0i, var_3.a.x), 0i << (u_input.a % 32u))));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_1(false);
    let var_1 = arg_0;
    global0 = array<Struct_2, 26>();
    var var_2 = firstTrailingBit(~min(47533u, ~arg_0.d.a));
    let var_3 = Struct_2(arg_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_1.d.d, Struct_1(false), Struct_1(var_1.d.e.a));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_4(Struct_3(firstLeadingBit(func_2()), ~u_input.b.x <= firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-416f)))), vec3<i32>(1i, u_input.b.x, countOneBits(firstLeadingBit(1i))), Struct_2(~(~u_input.a), _wgslsmith_f_op_f32(2389f * _wgslsmith_div_f32(1000f, 2630f)), Struct_1(any(vec3<bool>(false, true, false))), Struct_1(true), Struct_1(true)), -1763f), !(u_input.b.x > -u_input.b.x));
    global0 = array<Struct_2, 26>();
    let var_1 = min(max(vec4<u32>(4294967295u, 17853u, 30096u, ~abs(13575u)), _wgslsmith_div_vec4_u32(min(vec4<u32>(19250u, 0u, 1u, var_0.d.a) << (vec4<u32>(4294967295u, 31004u, 0u, u_input.a) % vec4<u32>(32u)), vec4<u32>(1u, var_0.d.a, 0u, var_0.d.a) | vec4<u32>(90546u, 3972u, var_0.d.a, 14326u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.a, 4294967295u, u_input.a, 4294967295u), ~vec4<u32>(u_input.a, var_0.d.a, u_input.a, 13583u)))), vec4<u32>(u_input.a, var_0.d.a >> (select(4294967295u, 46831u, !var_0.d.e.a) % 32u), var_0.d.a, min(func_4(func_4(Struct_4(var_0.a, 536f, var_0.c, var_0.d, -1009f), var_0.a.b), var_0.d.d.a).d.a, var_0.d.a)));
    var_0 = Struct_4(func_4(func_4(func_4(func_4(Struct_4(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), false), -587f, var_0.c, Struct_2(13705u, 1404f, var_0.d.c, var_0.d.d, Struct_1(false)), -949f), false), true), !var_0.a.b), false).a, var_0.e, var_0.a.a << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 58357u, u_input.a), vec3<u32>(4294967295u, 0u, 1u)) & ~u_input.a, var_1.x, 0u) % vec3<u32>(32u)), var_0.d, -1709f);
    var_0 = Struct_4(Struct_3(var_0.c >> (vec3<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u), func_4(Struct_4(Struct_3(var_0.c, false), 324f, var_0.a.a, var_0.d, var_0.e), var_0.a.b).d.a, _wgslsmith_mod_u32(var_1.x, 8524u)) % vec3<u32>(32u)), any(vec3<bool>(var_0.d.c.a, func_4(Struct_4(var_0.a, var_0.e, vec3<i32>(u_input.b.x, -2500i, -1i), Struct_2(4294967295u, var_0.e, var_0.d.c, var_0.d.c, var_0.d.c), var_0.d.b), var_0.d.c.a).d.d.a, -367f == var_0.b))), var_0.e, var_0.a.a, func_4(func_4(func_4(func_4(Struct_4(Struct_3(vec3<i32>(7792i, u_input.b.x, -26450i), var_0.d.d.a), var_0.b, var_0.a.a, global0[_wgslsmith_index_u32(var_1.x, 26u)], var_0.b), false), func_4(Struct_4(Struct_3(vec3<i32>(var_0.c.x, u_input.b.x, u_input.b.x), false), var_0.d.b, var_0.c, Struct_2(4294967295u, 365f, var_0.d.c, var_0.d.e, Struct_1(var_0.d.c.a)), var_0.e), true).a.b), true), !all(vec2<bool>(var_0.a.b, var_0.a.b))).d, -426f);
    return func_4(func_4(func_4(func_4(Struct_4(var_0.a, var_0.e, var_0.a.a, Struct_2(u_input.a, 976f, var_0.d.d, Struct_1(true), Struct_1(var_0.d.d.a)), -261f), true), true), (max(var_0.a.a.x, var_0.a.a.x) >> (1u % 32u)) < -reverseBits(u_input.b.x)), (_wgslsmith_mod_i32(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(12617i, -1i), vec2<i32>(var_0.c.x, -9491i))) ^ min(func_2().x, u_input.b.x)) < _wgslsmith_sub_i32(countOneBits(func_2().x), var_0.c.x)).d.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_2, 26>();
    var var_0 = ~vec4<u32>(~67437u, select(u_input.a, 0u, true), u_input.a, 4294967295u);
    let var_1 = Struct_2(~_wgslsmith_mult_u32(max(~u_input.a, _wgslsmith_sub_u32(var_0.x, u_input.a)), func_4(Struct_4(Struct_3(vec3<i32>(u_input.b.x, -1i, u_input.b.x), true), 636f, vec3<i32>(8112i, 0i, -1i), global0[_wgslsmith_index_u32(0u, 26u)], -1118f), var_0.x >= var_0.x).d.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f)))), func_4(Struct_4(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, -13231i) ^ vec3<i32>(1i, u_input.b.x, u_input.b.x), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-658f)))), func_2(), global0[_wgslsmith_index_u32(52410u, 26u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-339f))))), true & any(vec2<bool>(true, true))).d.d, func_1(), Struct_1(_wgslsmith_add_u32(20690u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 79701u, 56709u), vec4<u32>(80635u, 1u, 4294967295u, 37171u))) < firstTrailingBit(~0u)));
    let var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, ~(-u_input.b.x), ~func_2().x), vec4<i32>(u_input.b.x, -1i, -2147483647i, u_input.b.x), vec4<i32>(-2147483647i, abs(-4604i), u_input.b.x, -1i) & vec4<i32>(1i, 1i, 1i, ~u_input.b.x)), ~abs(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 37051i, 1i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -38335i))));
    var var_3 = -284f;
    return var_1.e;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -vec3<i32>(_wgslsmith_dot_vec2_i32(-u_input.b, vec2<i32>(u_input.b.x, -8272i)) >> (arg_0.a % 32u), -func_2().x, firstTrailingBit(countOneBits(_wgslsmith_mult_i32(-6681i, u_input.b.x))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1412f))) * _wgslsmith_f_op_f32(f32(-1f) * -368f)) - -813f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b * 492f)))))));
    var var_2 = !(!(!vec3<bool>(true, arg_0.c.a, true)));
    var var_3 = func_4(func_4(func_4(func_4(func_4(Struct_4(Struct_3(vec3<i32>(-34365i, 25267i, 7010i), false), 551f, var_0, global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_0.b), false), false), var_2.x), any(vec4<bool>(var_2.x, arg_0.d.a, arg_0.e.a, false)) & var_2.x), var_2.x);
    let var_4 = var_3.d;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-779f, -872f, 199f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(851f, -138f, -1000f), vec3<f32>(2231f, -595f, -843f), false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, -248f, 1375f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(515f, -213f, -461f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1961f, 1034f, -432f)), vec3<bool>(true, true, true))))), vec3<f32>(1623f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(157f)), 137f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(566f, 1823f))) + -255f)));
    let var_1 = func_6(Struct_2(_wgslsmith_sub_u32(~83033u, 1u), 219f, func_5(func_1(), vec3<bool>(true, true, true)), func_5(func_1(), vec3<bool>(true, true, true)), func_4(Struct_4(func_4(Struct_4(Struct_3(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), false), -1318f, vec3<i32>(-1i, 0i, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a, 26u)], var_0.x), false).a, var_0.x, vec3<i32>(-23257i, -33243i, -29150i), Struct_2(u_input.a, -999f, Struct_1(false), Struct_1(true), Struct_1(true)), _wgslsmith_f_op_f32(f32(-1f) * -468f)), true).d.c));
    let var_2 = ~(~u_input.a);
    global0 = array<Struct_2, 26>();
    let var_3 = Struct_2(~(~(0u | _wgslsmith_dot_vec4_u32(vec4<u32>(11705u, var_2, 1u, var_2), vec4<u32>(0u, var_2, 4294967295u, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), var_1, Struct_1(!select(all(vec2<bool>(var_1.a, false)), !var_1.a, false)), Struct_1(true));
    var var_4 = var_3.b;
    let var_5 = _wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(335f, var_3.b, 920f), var_0)), _wgslsmith_f_op_vec3_f32(trunc(var_0))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_0.x, var_3.b))))), vec3<f32>(_wgslsmith_f_op_f32(step(var_3.b, _wgslsmith_f_op_f32(-var_3.b))), 308f, _wgslsmith_f_op_f32(var_3.b * _wgslsmith_div_f32(var_0.x, -582f))), !var_1.a)));
    let var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(991f, ~(~(countOneBits(10418i) << ((4294967295u >> (var_3.a % 32u)) % 32u))), -u_input.b.x, 2147483647i, countOneBits(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, -1i), _wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), u_input.b.x)));
}

