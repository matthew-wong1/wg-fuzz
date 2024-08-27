struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(vec4<i32>(0i, 2147483647i, 45975i, 1i), vec3<bool>(true, false, true), vec4<i32>(-14733i, -51352i, -1i, -8668i), true, Struct_1(-680f)), Struct_5(vec4<i32>(-23366i, i32(-2147483648), -28444i, 1i), vec3<bool>(false, false, false), vec4<i32>(63674i, 1i, -18227i, -26445i), false, Struct_1(1272f)), Struct_5(vec4<i32>(52289i, -8273i, -5366i, -1i), vec3<bool>(true, true, false), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 12044i), true, Struct_1(552f)), Struct_5(vec4<i32>(i32(-2147483648), 15435i, 2147483647i, 0i), vec3<bool>(false, true, true), vec4<i32>(-687i, 46551i, -1094i, 16577i), true, Struct_1(-2316f)), Struct_5(vec4<i32>(-3874i, 29450i, 2147483647i, 28844i), vec3<bool>(false, true, false), vec4<i32>(40030i, 0i, i32(-2147483648), -1i), false, Struct_1(-1121f)), Struct_5(vec4<i32>(61998i, 28346i, 1i, 25435i), vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), -1i, -6571i, 1i), true, Struct_1(-922f)), Struct_5(vec4<i32>(-1i, -1i, 61515i, -1i), vec3<bool>(true, true, false), vec4<i32>(-55737i, -1i, 2147483647i, 1i), true, Struct_1(-861f)), Struct_5(vec4<i32>(2147483647i, 1i, -1i, 2147483647i), vec3<bool>(false, false, false), vec4<i32>(0i, -1i, -1i, -1i), false, Struct_1(225f)), Struct_5(vec4<i32>(i32(-2147483648), 1i, -32081i, 2074i), vec3<bool>(true, true, true), vec4<i32>(9391i, i32(-2147483648), -36316i, 24773i), true, Struct_1(-1243f)), Struct_5(vec4<i32>(-30908i, 2147483647i, -1i, i32(-2147483648)), vec3<bool>(true, false, false), vec4<i32>(2147483647i, 0i, 11159i, 2147483647i), true, Struct_1(249f)), Struct_5(vec4<i32>(-30137i, 2147483647i, 56047i, i32(-2147483648)), vec3<bool>(false, true, true), vec4<i32>(-1i, -1i, 0i, 23314i), false, Struct_1(-337f)), Struct_5(vec4<i32>(0i, -1i, 6997i, i32(-2147483648)), vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), -10886i, 16005i, i32(-2147483648)), true, Struct_1(204f)), Struct_5(vec4<i32>(-4894i, 1i, 2147483647i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<i32>(-5046i, 11277i, 8238i, 2147483647i), true, Struct_1(676f)), Struct_5(vec4<i32>(-27452i, -1i, -1i, 1i), vec3<bool>(true, true, false), vec4<i32>(2810i, 5177i, 37796i, 1092i), false, Struct_1(-304f)), Struct_5(vec4<i32>(-22731i, i32(-2147483648), 0i, 55274i), vec3<bool>(true, false, true), vec4<i32>(0i, i32(-2147483648), 36454i, -25779i), true, Struct_1(-407f)), Struct_5(vec4<i32>(-21100i, i32(-2147483648), 29525i, -53942i), vec3<bool>(false, true, true), vec4<i32>(-27888i, 0i, 2147483647i, 1i), true, Struct_1(1316f)), Struct_5(vec4<i32>(-13213i, -13196i, 0i, -10061i), vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), 31061i, 67445i, i32(-2147483648)), false, Struct_1(-1926f)), Struct_5(vec4<i32>(54489i, 2147483647i, 5521i, -15206i), vec3<bool>(false, false, false), vec4<i32>(-53476i, -30728i, i32(-2147483648), -1i), false, Struct_1(494f)), Struct_5(vec4<i32>(-8610i, -44902i, 33467i, -34467i), vec3<bool>(true, true, true), vec4<i32>(51134i, 37231i, 2147483647i, 49284i), false, Struct_1(-1383f)), Struct_5(vec4<i32>(i32(-2147483648), 1329i, 0i, -1i), vec3<bool>(true, true, true), vec4<i32>(-35304i, 20188i, 1i, 21322i), true, Struct_1(-627f)), Struct_5(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -12627i), vec3<bool>(true, false, false), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 1i), false, Struct_1(-845f)), Struct_5(vec4<i32>(6464i, 7131i, -16798i, 9068i), vec3<bool>(false, false, true), vec4<i32>(2147483647i, 61712i, -1i, 0i), false, Struct_1(-401f)), Struct_5(vec4<i32>(7675i, 23320i, -49236i, 0i), vec3<bool>(true, true, false), vec4<i32>(-87831i, 66704i, 0i, -50917i), false, Struct_1(-796f)), Struct_5(vec4<i32>(-8676i, -32081i, 2147483647i, 2147483647i), vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 47158i), false, Struct_1(-1628f)), Struct_5(vec4<i32>(1i, -9744i, 1i, 2147483647i), vec3<bool>(false, false, true), vec4<i32>(-1i, -21871i, -11263i, 0i), false, Struct_1(-331f)), Struct_5(vec4<i32>(i32(-2147483648), 2393i, i32(-2147483648), 2147483647i), vec3<bool>(true, false, true), vec4<i32>(23339i, i32(-2147483648), -1i, 2147483647i), false, Struct_1(-2269f)), Struct_5(vec4<i32>(1i, 34432i, 5151i, -16130i), vec3<bool>(false, false, false), vec4<i32>(-1i, 36291i, -1811i, -14353i), true, Struct_1(-643f)), Struct_5(vec4<i32>(2094i, 11304i, 15758i, i32(-2147483648)), vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), -7678i, -51182i, -16732i), true, Struct_1(261f)), Struct_5(vec4<i32>(0i, -31816i, i32(-2147483648), 56011i), vec3<bool>(true, true, false), vec4<i32>(-1i, 2147483647i, -29968i, -20583i), true, Struct_1(-352f)));

var<private> global1: bool;

var<private> global2: array<bool, 31> = array<bool, 31>(false, false, true, false, true, false, true, true, false, true, false, true, true, false, false, false, false, false, true, false, true, true, true, true, false, false, false, true, true, true, false);

var<private> global3: i32;

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: u32) -> vec2<f32> {
    let var_0 = (vec4<u32>(_wgslsmith_sub_u32(33309u, ~arg_3), 20171u, _wgslsmith_div_u32(~6891u, _wgslsmith_mult_u32(arg_3, arg_3)), ~arg_3) & countOneBits(~firstTrailingBit(vec4<u32>(0u, 1u, 4294967295u, 78087u)))) << (_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(~0u, select(55756u, 53351u, true), arg_3, arg_3)), ~select(~vec4<u32>(arg_3, arg_3, arg_3, arg_3), select(vec4<u32>(4294967295u, 4294967295u, 1u, arg_3), vec4<u32>(1u, 13003u, arg_3, 14027u), false), global2[_wgslsmith_index_u32(abs(arg_3), 31u)])) % vec4<u32>(32u));
    global3 = countOneBits(-_wgslsmith_add_i32(~arg_1.x & firstTrailingBit(u_input.a.x), 2147483647i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x)))))));
    global0 = array<Struct_5, 29>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1862f, -1156f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, arg_2.x)))))), arg_2.zx));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a - -254f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.a * arg_1.a.a), -410f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(arg_0.x, arg_0.x), u_input.a, vec4<f32>(arg_1.a.a, -1414f, arg_1.a.a, -842f), 21245u))), vec2<f32>(_wgslsmith_f_op_f32(-1000f - -712f), _wgslsmith_f_op_f32(f32(-1f) * -192f))), select(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(arg_2, global2[_wgslsmith_index_u32(85306u, 31u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(30303u, 31u)])), !select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(false, arg_2), vec2<bool>(true, false)), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 31u)]))))));
    var var_1 = ~vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, -1i), vec4<i32>(-22593i, -5693i, u_input.a.x, u_input.a.x)), abs(u_input.a.x))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(27358i, -38414i, arg_0.x), arg_0.wyy), ~2147483647i), arg_0.x), abs(-_wgslsmith_add_i32(u_input.a.x, arg_0.x)), _wgslsmith_mult_i32(-arg_0.x ^ _wgslsmith_add_i32(arg_0.x, arg_0.x), min(0i, max(-2147483647i, -1i))));
    let var_2 = arg_0;
    let var_3 = Struct_2(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_div_u32(14033u, 106040u), _wgslsmith_clamp_u32(4294967295u, 6714u, 36169u), ~1u, 72983u), false), arg_1.a, arg_1.a);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.a.a, var_3.b.a)), _wgslsmith_div_f32(var_0.x, var_3.c.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1148f, -683f), vec2<f32>(1000f, 454f))), vec2<f32>(777f, -1427f))), !(!select(vec2<bool>(false, arg_2), vec2<bool>(true, false), global2[_wgslsmith_index_u32(36350u, 31u)])))) + vec2<f32>(-601f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.a, 635f)) * -868f)));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-arg_1.a.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 285f) + -698f)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_5, 29>();
    let var_0 = Struct_2(~vec4<u32>(~_wgslsmith_mod_u32(13151u, 42922u), 0u, 55037u, firstLeadingBit(4294967295u)), func_2(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, u_input.b, u_input.b) ^ vec4<i32>(-24402i, u_input.b, -17910i, 0i), abs(vec4<i32>(u_input.a.x, 1i, 1i, 14092i)), vec4<i32>(u_input.b, 3085i, u_input.b, u_input.a.x) ^ vec4<i32>(5847i, u_input.a.x, u_input.a.x, 11218i))), Struct_4(global4[_wgslsmith_index_u32(~18669u, 10u)]), !all(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(18466u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]))), global4[_wgslsmith_index_u32(7507u, 10u)]);
    let var_1 = -(~vec3<i32>(~(u_input.b << (14641u % 32u)), u_input.b & _wgslsmith_add_i32(-1i, -1i), u_input.b));
    global0 = array<Struct_5, 29>();
    var var_2 = 751f;
    return Struct_1(-1441f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(-236f));
    global0 = array<Struct_5, 29>();
    global3 = u_input.a.x;
    var var_1 = !vec3<bool>(global2[_wgslsmith_index_u32(~(~4294967295u), 31u)] && all(!vec4<bool>(true, global2[_wgslsmith_index_u32(41491u, 31u)], false, global2[_wgslsmith_index_u32(4294967295u, 31u)])), true, false);
    let var_2 = false;
    var var_3 = -560f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-func_1(var_0.a.a).a), -730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a - -216f)) - -1000f)));
}

