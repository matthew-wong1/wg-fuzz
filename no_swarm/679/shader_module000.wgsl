struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: Struct_5 = Struct_5(vec4<i32>(-1090i, 972i, -58455i, 39274i), 29456u, false);

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec4<u32>(57567u, 13965u, 86658u, 4294967295u), -352f), Struct_3(vec4<u32>(25914u, 1u, 4294967295u, 1u), -647f), Struct_3(vec4<u32>(4294967295u, 4294967295u, 29289u, 34583u), -2044f), Struct_3(vec4<u32>(4294967295u, 21162u, 1u, 23348u), -1274f), Struct_3(vec4<u32>(1u, 1u, 13139u, 6651u), 304f), Struct_3(vec4<u32>(1u, 6818u, 2942u, 102024u), -529f), Struct_3(vec4<u32>(37669u, 0u, 35518u, 0u), 233f), Struct_3(vec4<u32>(99836u, 20336u, 1u, 67847u), 1575f), Struct_3(vec4<u32>(1u, 0u, 4294967295u, 39337u), 593f), Struct_3(vec4<u32>(19800u, 79735u, 34677u, 1u), 814f), Struct_3(vec4<u32>(4294967295u, 0u, 40187u, 0u), -2225f), Struct_3(vec4<u32>(0u, 75928u, 4294967295u, 99375u), 174f), Struct_3(vec4<u32>(4294967295u, 1u, 23275u, 21349u), -271f), Struct_3(vec4<u32>(29315u, 1u, 58050u, 36407u), -1529f), Struct_3(vec4<u32>(25532u, 0u, 1u, 60860u), 878f), Struct_3(vec4<u32>(32783u, 5558u, 0u, 1u), -1636f), Struct_3(vec4<u32>(1u, 59589u, 0u, 0u), -192f), Struct_3(vec4<u32>(0u, 73185u, 1u, 1u), 985f), Struct_3(vec4<u32>(1u, 0u, 30089u, 0u), -2034f), Struct_3(vec4<u32>(0u, 4294967295u, 32087u, 4294967295u), 325f), Struct_3(vec4<u32>(4294967295u, 27299u, 8849u, 0u), -436f), Struct_3(vec4<u32>(1u, 0u, 59407u, 0u), -858f), Struct_3(vec4<u32>(23073u, 12812u, 4294967295u, 1u), -241f), Struct_3(vec4<u32>(74467u, 1u, 4258u, 4294967295u), -430f), Struct_3(vec4<u32>(3348u, 89801u, 22234u, 4294967295u), -143f), Struct_3(vec4<u32>(34868u, 4294967295u, 7296u, 12319u), -391f), Struct_3(vec4<u32>(28063u, 41737u, 56969u, 9807u), -1433f), Struct_3(vec4<u32>(4294967295u, 1u, 4747u, 34053u), 585f), Struct_3(vec4<u32>(40881u, 44534u, 4294967295u, 4294967295u), -861f), Struct_3(vec4<u32>(29763u, 4294967295u, 1u, 38421u), -464f), Struct_3(vec4<u32>(1u, 81875u, 4294967295u, 22069u), -1071f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    global2 = array<Struct_3, 31>();
    var var_0 = false;
    var var_1 = vec2<bool>(arg_2.x, true);
    global2 = array<Struct_3, 31>();
    global2 = array<Struct_3, 31>();
    return Struct_2(u_input.a, select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.b, 0u), 32u)], vec3<bool>(true, true && any(arg_2), (arg_0.x < 0i) && var_1.x), true || global1.c), global1.c, select(false, true, !(any(arg_2.zx) | true)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_5) -> vec3<bool> {
    global2 = array<Struct_3, 31>();
    let var_0 = min(-1i, _wgslsmith_sub_i32(arg_3.a.x, _wgslsmith_mod_i32(select(26911i, -38759i, true), arg_1.x) >> (_wgslsmith_mult_u32(0u >> (global1.b % 32u), ~arg_2.a.x) % 32u)));
    let var_1 = Struct_1(~arg_2.a.x >> (global1.b % 32u), u_input.a.x << (4294967295u % 32u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, 114f, -319f, -364f)), vec4<f32>(687f, -164f, -332f, 2192f)))))), 1286f);
    var var_2 = -(vec4<i32>(_wgslsmith_div_i32(select(arg_0.x, var_0, true), 2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, arg_0.x), vec2<i32>(6372i, global1.a.x)), arg_0.x, abs(select(arg_3.a.x, arg_3.a.x, false))) << (vec4<u32>((arg_3.b >> (arg_3.b % 32u)) >> ((arg_2.a.x | global1.b) % 32u), global1.b, var_1.a, firstLeadingBit(var_1.a)) % vec4<u32>(32u)));
    global1 = arg_3;
    return !(!arg_2.b);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = global1.a.xww;
    global2 = array<Struct_3, 31>();
    let var_1 = Struct_2(u_input.a, select(select(vec3<bool>(global1.c, true, true), func_3(-vec4<i32>(global1.a.x, var_0.x, global1.a.x, 1i), vec3<i32>(51612i, var_0.x, -6438i), func_2(vec4<i32>(23019i, 0i, 9844i, -1i), 800f, vec4<bool>(true, global1.c, global1.c, global1.c)), Struct_5(global1.a, arg_0.x, global1.c)), global1.c && any(vec4<bool>(false, true, global1.c, global1.c))), func_3(vec4<i32>(var_0.x, 2147483647i, reverseBits(var_0.x), ~var_0.x), ~global1.a.xyw, func_2(_wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(-3724i, var_0.x, global1.a.x, 1i)), _wgslsmith_f_op_f32(floor(-127f)), select(vec4<bool>(false, false, true, global1.c), vec4<bool>(global1.c, global1.c, global1.c, global1.c), vec4<bool>(global1.c, global1.c, global1.c, global1.c))), Struct_5(abs(global1.a), countOneBits(arg_0.x), global1.b < 1u)), !(!select(global0[_wgslsmith_index_u32(arg_0.x, 32u)], vec3<bool>(true, true, true), vec3<bool>(global1.c, global1.c, false)))), ~u_input.a.x == ~16376u, false);
    let var_2 = Struct_1(arg_0.x, ~(~global1.b) << (~(arg_0.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0.x, u_input.a.x), vec3<u32>(70980u, 31862u, var_1.a.x))) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, 1000f, -961f, 1022f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1531f, -389f, -1920f, -457f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, 1000f, -398f, 1809f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-510f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(571f, 412f))))));
    var var_3 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, all(!select(vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(global1.c, true, true), false)), !(!global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(325f)) + _wgslsmith_f_op_f32(ceil(-527f)))) >= 1000f);
    var var_1 = func_1(u_input.a);
    let var_2 = Struct_4(Struct_1(u_input.a.x, global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1380f, -541f, -532f, 1005f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-369f, -2479f)), _wgslsmith_f_op_f32(step(-281f, 1210f))))), Struct_1(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.b, u_input.a.x, u_input.a.x, global1.b)), reverseBits(reverseBits(vec4<u32>(4294967295u, 17806u, 43014u, 8673u)))), 67790u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(-1147f)), _wgslsmith_f_op_f32(f32(-1f) * -827f), 307f, _wgslsmith_f_op_f32(-770f + -818f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f + -555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1830f, 868f))))));
    var var_3 = Struct_4(Struct_1(63244u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 38963u, var_1.a.x, 0u), firstLeadingBit(vec4<u32>(global1.b, 14663u, 1u, 44833u))) % 32u), var_2.b.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.d)) - -431f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.d)) - _wgslsmith_f_op_f32(-var_2.a.c.x)), -357f), _wgslsmith_f_op_f32(min(1136f, -1000f))), Struct_1(max(u_input.a.x, 0u) ^ var_1.a.x, func_1(countOneBits(_wgslsmith_mod_vec2_u32(var_1.a, var_1.a))).a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.a.c, vec4<f32>(var_2.b.c.x, -1943f, -1509f, var_2.a.d)) * _wgslsmith_f_op_vec4_f32(sign(var_2.b.c))), var_2.a.c)), -1502f));
    var var_4 = func_2(vec4<i32>(global1.a.x << (1u % 32u), i32(-1i) * -2147483647i, -abs(-global1.a.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec3_i32(global1.a.zzz, vec3<i32>(global1.a.x, 32646i, 15039i))), -56202i)), -637f, select(vec4<bool>(!all(var_0), false, var_1.c, var_1.c), var_0, var_0));
    var var_5 = ~(-(~global1.a));
    global0 = array<vec3<bool>, 32>();
    let var_6 = var_2;
    let var_7 = max(select(vec3<u32>(1u, var_3.a.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, var_3.b.a), vec2<u32>(0u, 747u))), abs(vec3<u32>(u_input.a.x, var_4.a.x, 76596u) ^ vec3<u32>(26791u, global1.b, u_input.a.x)) & vec3<u32>(1178u >> (var_1.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(24417u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, global1.b, 4294967295u)), ~1034u), vec3<bool>(true, false, true)), vec3<u32>(_wgslsmith_sub_u32(1u, abs(var_4.a.x)), ~u_input.a.x, _wgslsmith_mod_u32(1u | var_3.b.b, abs(firstLeadingBit(global1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~4294967295u, ~var_6.b.b, min(var_6.b.b >> (var_6.b.b % 32u), ~20559u)), ~24973u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.b.c.zw, vec2<f32>(var_6.a.d, 592f)))))), vec4<i32>(~(-42760i & global1.a.x), abs(48233i << (var_3.a.a % 32u)), -_wgslsmith_clamp_i32(-9640i, var_5.x, 2846i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_5.x, global1.a.x, -2147483647i, global1.a.x)), vec4<i32>(-66205i, -2147483647i, 2147483647i, -2147483647i))) | ~(-max(vec4<i32>(global1.a.x, 23331i, var_5.x, 87227i), vec4<i32>(-2147483647i, global1.a.x, 41630i, global1.a.x))));
}

