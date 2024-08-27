struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<u32>(24947u, 0u), false), 34814u, vec4<i32>(-13943i, 0i, i32(-2147483648), -11848i), -295f), Struct_2(Struct_1(vec2<u32>(1390u, 20480u), false), 1u, vec4<i32>(10635i, 42343i, -25515i, 893i), 1384f), Struct_2(Struct_1(vec2<u32>(33434u, 1u), false), 0u, vec4<i32>(62862i, -1i, 1663i, 5505i), -664f), Struct_2(Struct_1(vec2<u32>(66665u, 48200u), false), 4294967295u, vec4<i32>(-33909i, 31229i, -1i, 1i), -941f), Struct_2(Struct_1(vec2<u32>(9386u, 0u), false), 1u, vec4<i32>(841i, -22306i, 2844i, i32(-2147483648)), -607f), Struct_2(Struct_1(vec2<u32>(4294967295u, 88245u), true), 0u, vec4<i32>(-16527i, 2277i, -1i, -22281i), 1066f), Struct_2(Struct_1(vec2<u32>(24406u, 0u), false), 1u, vec4<i32>(-57577i, 2147483647i, -83i, 2147483647i), 212f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), true), 6862u, vec4<i32>(-1i, 0i, -12130i, -1i), 580f), Struct_2(Struct_1(vec2<u32>(0u, 1u), false), 4294967295u, vec4<i32>(0i, -1i, -30112i, 1i), -1572f), Struct_2(Struct_1(vec2<u32>(4294967295u, 34470u), false), 51657u, vec4<i32>(1i, 2147483647i, 0i, 23876i), -2004f), Struct_2(Struct_1(vec2<u32>(4294967295u, 13092u), true), 4294967295u, vec4<i32>(i32(-2147483648), 0i, -1i, 0i), -1000f), Struct_2(Struct_1(vec2<u32>(116u, 4294967295u), true), 0u, vec4<i32>(2147483647i, 34707i, -63801i, 22759i), -724f), Struct_2(Struct_1(vec2<u32>(1u, 0u), true), 40971u, vec4<i32>(47051i, 1i, 28999i, -1i), 1271f), Struct_2(Struct_1(vec2<u32>(28319u, 31049u), true), 46039u, vec4<i32>(0i, 2147483647i, -1i, -34399i), -372f), Struct_2(Struct_1(vec2<u32>(4294967295u, 18093u), false), 42682u, vec4<i32>(5713i, 1i, 44462i, -19986i), -160f), Struct_2(Struct_1(vec2<u32>(1u, 0u), true), 11223u, vec4<i32>(2147483647i, 97398i, 80821i, -23486i), -438f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), false), 12863u, vec4<i32>(6969i, 1i, i32(-2147483648), 1i), 600f), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), true), 0u, vec4<i32>(-77675i, 6779i, 52478i, 0i), 128f), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), true), 1u, vec4<i32>(1i, -22698i, 27101i, 0i), -141f), Struct_2(Struct_1(vec2<u32>(4937u, 1823u), true), 1u, vec4<i32>(0i, 2147483647i, -81020i, -42362i), 874f), Struct_2(Struct_1(vec2<u32>(1u, 1u), true), 1u, vec4<i32>(2147483647i, 16392i, 10289i, 48232i), -100f), Struct_2(Struct_1(vec2<u32>(0u, 12232u), false), 0u, vec4<i32>(50687i, 7316i, 0i, -50513i), -1083f));

var<private> global2: array<bool, 24>;

var<private> global3: array<u32, 1> = array<u32, 1>(0u);

var<private> global4: bool;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1709f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-542f)))), -1000f));
    var_0 = 388f;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(930f)) * _wgslsmith_f_op_f32(floor(-1339f)))) * 347f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2543f, 394f) - _wgslsmith_f_op_f32(select(355f, -508f, false))) - _wgslsmith_f_op_f32(-1f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(894f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1476f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) - -1093f)));
    global2 = array<bool, 24>();
    return countOneBits(~min(vec2<u32>(min(arg_0.x, global3[_wgslsmith_index_u32(0u, 1u)]), u_input.b), vec2<u32>(arg_0.x, 0u)));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    global2 = array<bool, 24>();
    return Struct_1(~(~func_3(vec4<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(26383u, 1u)], 0u))) | reverseBits(u_input.e), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x >> ((global3[_wgslsmith_index_u32(17401u, 1u)] & ~u_input.d) % 32u), 1u)] >> (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, ~0u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 1u)], 1u)], 4294967295u | u_input.b), ~vec4<u32>(u_input.e.x, 0u, 10129u, 12027u)), 1u)] % 32u), 24u)]);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global2 = array<bool, 24>();
    global3 = array<u32, 1>();
    let var_0 = arg_0;
    let var_1 = Struct_2(arg_3, ((arg_2 | _wgslsmith_mult_u32(32492u, 1u)) & 1u) >> (32626u % 32u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, select(1i, 36212i, false), 2147483647i, -(~u_input.c.x)), u_input.c << (vec4<u32>(0u, _wgslsmith_mod_u32(66975u, 65558u), _wgslsmith_mod_u32(15183u, 4294967295u), ~0u) % vec4<u32>(32u))), var_0);
    global4 = -248f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) + var_1.d));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> u32 {
    global0 = array<vec3<f32>, 19>();
    var var_0 = -firstLeadingBit(vec2<i32>(min(arg_0.c.x, -2147483647i), _wgslsmith_sub_i32(-1i, arg_0.c.x))) >> (func_3(abs(vec4<u32>(u_input.d, u_input.b, global3[_wgslsmith_index_u32(u_input.d, 1u)], u_input.b) ^ ~vec4<u32>(0u, 0u, u_input.b, u_input.b))) % vec2<u32>(32u));
    let var_1 = Struct_4(max(arg_0.a.a.x, 49832u), ~43693u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.e.x, 19u)], arg_2)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.d, arg_0.d, arg_0.d)))), vec3<f32>(_wgslsmith_f_op_f32(-980f * -269f), 1736f, arg_0.d))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, -1155f, _wgslsmith_f_op_f32(round(arg_0.d))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.d, -641f)), vec3<f32>(-938f, arg_0.d, -693f))))), Struct_1(countOneBits(countOneBits(arg_0.a.a)), arg_1));
    var var_2 = func_4(-1417f, vec4<bool>(select(true, all(!vec4<bool>(arg_2, arg_2, arg_1, false)), global2[_wgslsmith_index_u32(var_1.a, 24u)]), all(!select(vec2<bool>(arg_1, arg_0.a.b), vec2<bool>(false, false), vec2<bool>(true, false))), !any(!vec4<bool>(arg_1, false, true, false)), arg_1), var_1.d.a.x, func_4(285f, !(!select(vec4<bool>(arg_2, arg_2, var_1.d.b, arg_2), vec4<bool>(false, true, false, true), vec4<bool>(arg_2, arg_1, false, true))), min(~min(1u, 29835u), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 0u), vec2<u32>(u_input.e.x, var_1.a)), 1u)]), var_1.d).a).a;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1781f, arg_0.d), var_1.c.zz) + vec2<f32>(2632f, -1261f)))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-703f - _wgslsmith_f_op_f32(arg_0.d + var_1.c.x)), -718f))));
    return var_2.a.x;
}

fn func_6(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = arg_0.d;
    global0 = array<vec3<f32>, 19>();
    var var_1 = u_input.c.x;
    let var_2 = Struct_3(~(~vec3<u32>(arg_0.b | 0u, ~0u, 359u)), func_4(arg_1.x, select(vec4<bool>(all(vec2<bool>(true, arg_0.d.b)), var_0.b & false, true, all(vec2<bool>(false, var_0.b))), !(!vec4<bool>(arg_0.d.b, arg_0.d.b, false, arg_0.d.b)), arg_0.d.b), arg_0.a, func_4(arg_0.c.x, !(!vec4<bool>(arg_0.d.b, true, false, var_0.b)), ~1u, var_0).a).a.a.x, select(select(!select(vec4<bool>(true, false, var_0.b, arg_0.d.b), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 24u)], var_0.b, global2[_wgslsmith_index_u32(u_input.d, 24u)], arg_0.d.b), true), select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.e.x, 24u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], false, global2[_wgslsmith_index_u32(u_input.b, 24u)], false), vec4<bool>(var_0.b, arg_0.d.b, var_0.b, global2[_wgslsmith_index_u32(84830u, 24u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 24u)], var_0.b, false)), any(vec2<bool>(false, true))), firstLeadingBit(26812i) == -u_input.c.x), !select(!vec4<bool>(arg_0.d.b, false, true, var_0.b), vec4<bool>(true, true, false, arg_0.d.b), arg_0.d.b), select(vec4<bool>(func_4(arg_0.c.x, vec4<bool>(false, false, true, var_0.b), 4294967295u, Struct_1(vec2<u32>(global3[_wgslsmith_index_u32(1u, 1u)], 63208u), false)).a.b, u_input.c.x < u_input.c.x, var_0.b, true), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], arg_0.d.b, var_0.b), !(!vec4<bool>(var_0.b, false, global2[_wgslsmith_index_u32(u_input.d, 24u)], arg_0.d.b)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(ceil(-888f)), true)) - _wgslsmith_f_op_f32(-205f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))))));
    return Struct_3(var_2.a, firstLeadingBit(countOneBits(_wgslsmith_div_u32(arg_0.d.a.x, _wgslsmith_add_u32(var_2.b, u_input.d)))), !var_2.c);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_3 {
    global0 = array<vec3<f32>, 19>();
    global2 = array<bool, 24>();
    global2 = array<bool, 24>();
    return func_6(Struct_4(func_5(func_4(arg_1, select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(u_input.d, 24u)], true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(70306u, 1u)], 24u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 24u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 24u)], true, global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(u_input.d, 24u)])), 4294967295u, func_2(true, global2[_wgslsmith_index_u32(4294967295u, 24u)])), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 24u)], false)), global2[_wgslsmith_index_u32(36316u, 24u)]), u_input.e.x, vec3<f32>(func_4(arg_1, vec4<bool>(false, global2[_wgslsmith_index_u32(10529u, 24u)], global2[_wgslsmith_index_u32(58198u, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(96402u, 7696u, u_input.b, u_input.d), vec4<u32>(u_input.d, 15493u, 9124u, u_input.d)), func_2(global2[_wgslsmith_index_u32(0u, 24u)], false)).d, _wgslsmith_f_op_f32(-arg_1), arg_1), func_2(true, global2[_wgslsmith_index_u32(u_input.d, 24u)])), vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(1590f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(408f, arg_1)) * _wgslsmith_f_op_f32(arg_1 + -1119f)))));
}

fn func_7(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = max(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, u_input.c.x), u_input.c.ww), -vec2<i32>(2147483647i, abs(arg_1.x)) ^ func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) - _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))), arg_0.c, _wgslsmith_dot_vec2_u32(arg_0.a.zy, firstTrailingBit(vec2<u32>(34481u, u_input.d))), func_4(_wgslsmith_f_op_f32(min(110f, 719f)), func_1(u_input.a.wy, arg_2.x).c, func_4(-878f, vec4<bool>(false, true, global2[_wgslsmith_index_u32(146466u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), 4294967295u, Struct_1(vec2<u32>(global3[_wgslsmith_index_u32(arg_0.a.x, 1u)], 50103u), arg_0.c.x)).b, func_2(false, true)).a).c.zz);
    var var_1 = Struct_2(Struct_1(u_input.e, true), _wgslsmith_sub_u32(~(arg_0.b & max(1u, 93844u)), countOneBits(1u)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(max(func_4(-2953f, vec4<bool>(global2[_wgslsmith_index_u32(4956u, 24u)], global2[_wgslsmith_index_u32(67347u, 24u)], true, arg_0.c.x), 15970u, Struct_1(u_input.e, false)).c, u_input.a), select(vec4<i32>(var_0.x, arg_1.x, 38048i, -2147483647i), vec4<i32>(arg_1.x, 2147483647i, var_0.x, u_input.c.x), true)), vec4<i32>(-var_0.x, var_0.x, 0i | ~var_0.x, ~_wgslsmith_clamp_i32(var_0.x, 1i, 653i))), 228f);
    var var_2 = global0[_wgslsmith_index_u32(func_5(Struct_2(var_1.a, func_2(~1u >= _wgslsmith_dot_vec2_u32(var_1.a.a, vec2<u32>(18251u, 18511u)), all(select(arg_0.c.xwy, arg_0.c.xxz, var_1.a.b))).a.x, vec4<i32>(u_input.a.x, 43561i, i32(-1i) * -2147483647i, var_0.x) >> (vec4<u32>(766u, ~43976u, ~u_input.d, 1u) % vec4<u32>(32u)), -793f), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(331f, var_1.d))) > 148f) | all(!vec2<bool>(true, arg_0.c.x)), true), 19u)];
    global4 = countOneBits(-_wgslsmith_sub_i32(1i, abs(-48194i))) <= var_0.x;
    let var_3 = countOneBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-40113i, firstLeadingBit(arg_1.x)), reverseBits(arg_1.x)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x * 1121f), -927f)), -1091f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(20631u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-841f)), _wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(select(1449f, 1405f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 1u)], 24u)])), _wgslsmith_f_op_f32(round(389f))))), vec4<i32>(u_input.c.x, u_input.c.x, ~(-u_input.a.x), 1i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1182f, -395f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-628f, -386f), vec2<f32>(1243f, -597f), global2[_wgslsmith_index_u32(4294967295u, 24u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_7(func_1(u_input.a.yw, 132f), vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-171f, 1192f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(475f, -168f), vec2<f32>(-1122f, -1000f))) * vec2<f32>(1000f, 321f))), !func_6(Struct_4(u_input.d, 1u, global0[_wgslsmith_index_u32(u_input.e.x, 19u)], Struct_1(u_input.e, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, 429f, 1000f))).c.x)));
}

