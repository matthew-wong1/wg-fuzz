struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-759f, 472f), vec2<f32>(-316f, 576f), vec2<f32>(-1664f, -1796f), vec2<f32>(564f, 147f), vec2<f32>(181f, -767f), vec2<f32>(400f, -1275f), vec2<f32>(409f, 122f), vec2<f32>(300f, 1058f), vec2<f32>(-572f, -321f), vec2<f32>(734f, -1516f), vec2<f32>(-751f, 1283f), vec2<f32>(-456f, -690f), vec2<f32>(-369f, -410f), vec2<f32>(-707f, -398f), vec2<f32>(1000f, 826f), vec2<f32>(575f, 782f), vec2<f32>(1423f, -279f), vec2<f32>(1736f, -513f), vec2<f32>(1206f, 429f), vec2<f32>(-698f, -573f), vec2<f32>(1639f, 968f), vec2<f32>(984f, 1185f), vec2<f32>(653f, -1063f), vec2<f32>(593f, 160f), vec2<f32>(1684f, -1382f), vec2<f32>(530f, 366f), vec2<f32>(-1013f, 746f), vec2<f32>(607f, 1462f), vec2<f32>(345f, 1171f), vec2<f32>(638f, 1588f), vec2<f32>(603f, 345f));

var<private> global1: array<u32, 3> = array<u32, 3>(78647u, 4294967295u, 1u);

var<private> global2: array<f32, 6>;

var<private> global3: array<bool, 30>;

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global3 = array<bool, 30>();
    var var_0 = 14260i;
    global1 = array<u32, 3>();
    var var_1 = !select(select(!vec3<bool>(false, arg_0.x, arg_0.x), !select(vec3<bool>(arg_0.x, false, true), vec3<bool>(true, true, global3[_wgslsmith_index_u32(33552u, 30u)]), arg_0.x), !global3[_wgslsmith_index_u32(global4.x, 30u)]), vec3<bool>(all(select(vec2<bool>(true, arg_0.x), vec2<bool>(false, true), false)), all(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, true, true))), any(!arg_0)), false);
    global0 = array<vec2<f32>, 31>();
    return any(!vec4<bool>(_wgslsmith_div_u32(global4.x, global1[_wgslsmith_index_u32(0u, 3u)]) > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 93740u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global4.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 3u)], 3u)], 3u)])), !select(true, false, true), 648f > _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 6u)] + global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 6u)]), _wgslsmith_div_u32(4294967295u, 43532u) == _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(70892u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)])));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = arg_0.x;
    var var_1 = select(select(vec4<bool>(arg_1.c, func_3(!vec2<bool>(false, arg_1.c)), u_input.a < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2497i, -1i, 2147483647i), vec4<i32>(arg_1.a, -62739i, 1i, u_input.b)), global3[_wgslsmith_index_u32(firstTrailingBit(~50083u), 30u)]), select(select(select(vec4<bool>(arg_1.c, false, false, true), vec4<bool>(arg_1.c, global3[_wgslsmith_index_u32(14828u, 30u)], arg_1.c, true), false), vec4<bool>(true, true, arg_1.c, arg_1.c), true), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 30u)], true, false, global3[_wgslsmith_index_u32(arg_1.d, 30u)]), select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(global4.x, 30u)]), vec4<bool>(global3[_wgslsmith_index_u32(arg_1.d, 30u)], false, global3[_wgslsmith_index_u32(arg_1.d, 30u)], arg_1.c), arg_1.c), !global3[_wgslsmith_index_u32(33727u, 30u)]), false), select(select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.d, 3u)], 30u)], true, global3[_wgslsmith_index_u32(global4.x, 30u)]), vec4<bool>(global3[_wgslsmith_index_u32(arg_1.d, 30u)], arg_1.c, true, arg_1.c), arg_1.c), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(arg_1.d, 30u)], global3[_wgslsmith_index_u32(10118u, 30u)]), vec4<bool>(false, false, false, false), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 30u)], true, false, global3[_wgslsmith_index_u32(global4.x, 30u)])), !vec4<bool>(arg_1.c, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 3u)], 30u)], true)), !select(vec4<bool>(false, global3[_wgslsmith_index_u32(68891u, 30u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.d, 3u)], 30u)], arg_1.c, arg_1.c, true), global3[_wgslsmith_index_u32(21078u, 30u)]), any(vec4<bool>(true, arg_1.c, arg_1.c, false)))), !(!select(!vec4<bool>(arg_1.c, false, false, global3[_wgslsmith_index_u32(64406u, 30u)]), select(vec4<bool>(true, false, true, arg_1.c), vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 30u)], global3[_wgslsmith_index_u32(arg_1.d, 30u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(14979u, 30u)], global3[_wgslsmith_index_u32(global4.x, 30u)], arg_1.c, false)), func_3(vec2<bool>(true, global3[_wgslsmith_index_u32(69490u, 30u)])))), all(select(!vec3<bool>(arg_1.c, true, arg_1.c), !select(vec3<bool>(false, false, false), vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(93977u, 3u)], 30u)], false, false), false), vec3<bool>(all(vec3<bool>(true, false, global3[_wgslsmith_index_u32(6978u, 30u)])), true, true))));
    var var_2 = Struct_4(global4.x > 4294967295u, max(1u, global4.x), arg_1, Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(4294967295u, 6u)], arg_1.b.a.x)), 1f, -1000f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(54101u, 6u)], arg_1.b.a.x)))), arg_1.b.b >> (firstLeadingBit(reverseBits(vec2<u32>(global4.x, 13599u))) % vec2<u32>(32u))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-327f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1182f, -964f, true)))), global2[_wgslsmith_index_u32(arg_1.d, 6u)], _wgslsmith_f_op_f32(floor(-228f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(abs(918f)), var_2.d.a.x, var_0))), ~arg_1.b.b);
    var_1 = select(vec4<bool>(true, !(!(global4.x >= arg_1.d)), arg_1.c, any(!(!vec4<bool>(false, arg_1.c, true, var_2.c.c)))), select(vec4<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(10271u, global4.x), vec2<u32>(var_2.c.d, global4.x)), 30u)], any(vec4<bool>(true, false, true, true)), false, var_2.c.c), !select(vec4<bool>(true, global3[_wgslsmith_index_u32(91816u, 30u)], arg_1.c, false), vec4<bool>(arg_1.c, true, var_1.x, false), !vec4<bool>(var_2.c.c, var_2.c.c, false, arg_1.c)), select(vec4<bool>(true, all(vec4<bool>(true, global3[_wgslsmith_index_u32(109235u, 30u)], true, false)), false | var_1.x, select(true, arg_1.c, var_1.x)), !select(vec4<bool>(false, false, true, false), vec4<bool>(var_2.a, true, arg_1.c, var_1.x), vec4<bool>(var_1.x, false, var_2.a, true)), select(select(vec4<bool>(arg_1.c, false, true, arg_1.c), vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(arg_1.d, 30u)], true, global3[_wgslsmith_index_u32(var_2.c.d, 30u)]), var_2.a), !vec4<bool>(true, var_2.a, true, false), true))), vec4<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(41465u, 3u)], select(4294967295u, var_2.b, global3[_wgslsmith_index_u32(1683u, 30u)]))), 30u)], all(select(!vec4<bool>(false, false, arg_1.c, false), select(vec4<bool>(false, true, arg_1.c, arg_1.c), vec4<bool>(var_1.x, arg_1.c, true, arg_1.c), vec4<bool>(false, arg_1.c, var_1.x, true)), global1[_wgslsmith_index_u32(28565u, 3u)] <= 601u)), global3[_wgslsmith_index_u32(var_2.c.d, 30u)], var_2.a));
    return Struct_4(!select(true, min(global4.x, 0u) != 4294967295u, global3[_wgslsmith_index_u32(0u, 30u)]), 0u, arg_1, Struct_2(var_2.d.a, arg_1.b.b));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    let var_0 = u_input.b;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.d.a.x)), arg_0.d.a.x));
    global1 = array<u32, 3>();
    let var_2 = func_2(vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-344f, -1487f, arg_0.c.c)) * arg_1.a.x), global2[_wgslsmith_index_u32(arg_0.b, 6u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(337f + _wgslsmith_f_op_f32(ceil(var_1.a.x))) - _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(22780u, 6u)] + arg_1.a.x)))), func_2(_wgslsmith_f_op_vec3_f32(select(arg_1.a.yyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, -1207f)), true)), func_2(arg_1.a.wxz, Struct_3(~var_0, Struct_2(arg_0.d.a, vec2<i32>(2147483647i, 8563i)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(111142u, global1[_wgslsmith_index_u32(38374u, 3u)]), 30u)], ~global4.x)).c).c).d;
    var var_3 = Struct_4(global3[_wgslsmith_index_u32(arg_0.b, 30u)], min(1u, ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 3u)], 23338u)), arg_0.c, arg_0.d);
    return _wgslsmith_f_op_vec4_f32(-var_2.a);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-784f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 3u)], 6u)] - -313f)), global2[_wgslsmith_index_u32(1548u, 6u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 6u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 6u)])))));
    global0 = array<vec2<f32>, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(func_2(var_0.zxy, Struct_3(_wgslsmith_add_i32(min(2147483647i, u_input.b), 2147483647i), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, var_0.x, 501f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 3u)], 3u)], 6u)])), _wgslsmith_div_vec2_i32(vec2<i32>(-7011i, 1i), vec2<i32>(10699i, u_input.a))), global3[_wgslsmith_index_u32(abs(~1u), 30u)], global4.x)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(func_2(vec3<f32>(126f, global2[_wgslsmith_index_u32(4294967295u, 6u)], -108f), Struct_3(-2799i, Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(global4.x, 6u)], global2[_wgslsmith_index_u32(7517u, 6u)], 104f), vec2<i32>(2147483647i, 0i)), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 30u)], global1[_wgslsmith_index_u32(60238u, 3u)])).d.a.zzw, vec3<f32>(570f, 766f, -573f)))), Struct_3(countOneBits(0i), func_2(var_0.zwy, func_2(var_0.xxw, Struct_3(-21959i, Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 6u)], 781f, global2[_wgslsmith_index_u32(87087u, 6u)], -2209f), vec2<i32>(14907i, 5167i)), global3[_wgslsmith_index_u32(49771u, 30u)], 1u)).c).c.b, true, global4.x)).c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(2382u, 6u)]), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(floor(-280f)))));
    var var_2 = 36893u;
    let var_3 = global3[_wgslsmith_index_u32(global4.x, 30u)];
    return StorageBuffer(firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -9i), vec3<i32>(1i, u_input.b, u_input.a))), u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global4.x, global4.x, 4294967295u), vec4<u32>(22089u, global1[_wgslsmith_index_u32(global4.x, 3u)], global4.x, global4.x)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 30>();
    global0 = array<vec2<f32>, 31>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 3u)], 6u)] - global2[_wgslsmith_index_u32(25274u, 6u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66038u, 3u)], 3u)] % 32u), 6u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(global4.x, 3u)], 37344u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)]), vec4<u32>(global4.x, 0u, global1[_wgslsmith_index_u32(global4.x, 3u)], 74039u)) & 4294967295u, 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 6u)])))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1719f, -763f, -2016f, global2[_wgslsmith_index_u32(global4.x, 6u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, 2258f, -993f, 422f)))))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], -2316f, 824f, -1499f), vec4<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 6u)], global2[_wgslsmith_index_u32(global4.x, 6u)], 529f, -1190f))))))));
    global3 = array<bool, 30>();
    var var_2 = firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(6127u, 3u)] >> ((countOneBits(1u) ^ ~global4.x) % 32u), ~global4.x));
    let var_3 = ~54076i;
    let var_4 = var_2.x;
    let x = u_input.a;
    s_output = func_1();
}

