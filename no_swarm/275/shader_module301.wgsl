struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, vec3<bool>(false, false, false), -2482i), Struct_1(4294967295u, vec3<bool>(true, false, true), i32(-2147483648)), Struct_1(14223u, vec3<bool>(true, true, false), 1i), Struct_1(0u, vec3<bool>(false, false, true), i32(-2147483648)), Struct_1(0u, vec3<bool>(false, false, false), 1065i), Struct_1(4294967295u, vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(1u, vec3<bool>(true, true, true), 8754i), Struct_1(1u, vec3<bool>(false, false, true), 2147483647i), Struct_1(0u, vec3<bool>(true, true, true), i32(-2147483648)), Struct_1(1u, vec3<bool>(false, false, true), i32(-2147483648)), Struct_1(31125u, vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(4294967295u, vec3<bool>(false, true, false), -6663i), Struct_1(1u, vec3<bool>(false, true, false), i32(-2147483648)), Struct_1(35579u, vec3<bool>(false, true, true), 8166i), Struct_1(0u, vec3<bool>(true, true, true), 41665i), Struct_1(13878u, vec3<bool>(false, true, false), -16492i), Struct_1(0u, vec3<bool>(false, false, true), 22433i), Struct_1(1u, vec3<bool>(false, true, false), i32(-2147483648)), Struct_1(0u, vec3<bool>(false, true, true), 1i), Struct_1(63785u, vec3<bool>(false, false, false), 46479i), Struct_1(4294967295u, vec3<bool>(true, true, false), -35484i), Struct_1(21846u, vec3<bool>(true, true, true), 0i), Struct_1(71624u, vec3<bool>(false, false, true), -24739i), Struct_1(4294967295u, vec3<bool>(true, false, true), -13149i), Struct_1(27994u, vec3<bool>(false, true, false), -59090i), Struct_1(46163u, vec3<bool>(true, false, false), 16029i), Struct_1(0u, vec3<bool>(false, true, false), 1962i));

var<private> global1: array<Struct_3, 16>;

var<private> global2: vec2<i32> = vec2<i32>(27475i, 21830i);

var<private> global3: f32 = 848f;

var<private> global4: array<u32, 11>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global1 = array<Struct_3, 16>();
    var var_0 = ~reverseBits(_wgslsmith_add_vec3_u32(select(~vec3<u32>(arg_0.a, 0u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(arg_0.a, 11u)], u_input.a.x, 31681u), vec3<u32>(49191u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57346u, 11u)], 11u)])), false | arg_0.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(31849u, arg_0.a, 0u), ~vec3<u32>(arg_0.a, global4[_wgslsmith_index_u32(u_input.a.x, 11u)], 103045u))));
    global2 = firstTrailingBit(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-1i, ~(-70155i))), abs(u_input.b | countOneBits(vec2<i32>(u_input.c, -45135i)))));
    let var_1 = ~(select(~vec4<u32>(u_input.a.x, 4294967295u, arg_0.a, var_0.x), vec4<u32>(66968u, var_0.x, 7346u, global4[_wgslsmith_index_u32(arg_0.a, 11u)]), vec4<bool>(false, arg_0.b.x, arg_0.b.x, true)) | ~vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 11u)], 17435u, arg_0.a, 1u)) ^ ~(~firstTrailingBit(vec4<u32>(var_0.x, arg_0.a, 131094u, global4[_wgslsmith_index_u32(16678u, 11u)])));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2300f)) + _wgslsmith_f_op_f32(f32(-1f) * -1010f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-239f, -1529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3444f - -1000f) + -491f), false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(138f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(f32(-1f) * -2180f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -796f), 1204f, true)) + _wgslsmith_f_op_f32(-282f * 1f))));
    return arg_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_1);
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 19764u), ~_wgslsmith_sub_u32(min(u_input.a.x, 1u), _wgslsmith_sub_u32(4294967295u, u_input.a.x))), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, u_input.a.x, 81998u), ~vec3<u32>(4822u, arg_0.a, 0u)), ~vec3<u32>(~66485u, select(0u, u_input.a.x, false), abs(0u))), reverseBits(_wgslsmith_mult_u32(~global4[_wgslsmith_index_u32(arg_0.a, 11u)], 4294967295u) ^ ~global4[_wgslsmith_index_u32(~arg_0.a, 11u)]), 24967u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-625f, -1406f)));
    let var_3 = Struct_1(0u, select(vec3<bool>(false, arg_0.b.x, !(var_0.x <= 1000f)), func_3(arg_0), select(arg_0.b, arg_0.b, true)), ~(~(~min(1i, u_input.c))));
    var_1 = vec4<u32>(52351u, 1u, ~arg_0.a, _wgslsmith_clamp_u32(1u, 4294967295u, ~(~(~global4[_wgslsmith_index_u32(2368u, 11u)]))));
    return Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.x, global4[_wgslsmith_index_u32(var_1.x, 11u)], global4[_wgslsmith_index_u32(arg_0.a, 11u)]), vec4<u32>(arg_0.a, var_1.x, 1u, var_1.x)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(arg_0.a, 11u)], 5562u, 45737u, 1u), vec4<u32>(4294967295u, 35847u, 0u, u_input.a.x)))), arg_0.b, ~1i);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(646f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1512f + _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 * var_0))), -747f, _wgslsmith_f_op_f32(exp2(var_0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(step(-388f, 955f))), 397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) + var_0)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 219f) * _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1628f - var_0) + _wgslsmith_f_op_f32(f32(-1f) * -295f)), _wgslsmith_f_op_f32(f32(-1f) * -235f))));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(13037u, 1u), 27u)], func_2(Struct_1(~u_input.a.x, arg_2.b, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-254f - 253f), var_0, var_1.x)), (!arg_2.b.x && any(arg_2.b.zy)) | arg_2.b.x, ~(-(18961i >> (arg_2.a % 32u)))), func_2(Struct_1(_wgslsmith_div_u32(11687u, 1u), arg_2.b, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, _wgslsmith_f_op_f32(select(var_1.x, 1118f, false)), _wgslsmith_f_op_f32(-var_1.x), var_0)), !arg_2.b.x, max((i32(-1i) * -3487i) >> (abs(arg_3) % 32u), ~(643i & arg_0.x))), vec4<bool>(true, true, all(!vec4<bool>(arg_2.b.x, false, arg_2.b.x, arg_2.b.x)), true));
    var var_3 = Struct_1(global4[_wgslsmith_index_u32(arg_2.a, 11u)], vec3<bool>(false, (1u != ~var_2.a.a) && var_2.a.b.x, false), -1i);
    let var_4 = abs(-select(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, ~(-1i)), var_3.c, false));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, arg_2.d, arg_2.d)), ~vec3<u32>(34169u, u_input.a.x, u_input.a.x)), ~arg_2.a.c.a), func_3(global0[_wgslsmith_index_u32(~arg_2.b.a.a, 27u)]), 43913i);
    var var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    let var_2 = arg_3.a;
    let var_3 = select(!(!(!vec3<bool>(false, arg_3.a.b.x, false))), !vec3<bool>(false, arg_3.c.b.x, arg_2.b.d.x | true), !var_0.b);
    return func_2(Struct_1(abs(~4294967295u), vec3<bool>(all(!vec4<bool>(false, true, var_3.x, var_0.b.x)), !any(vec3<bool>(true, true, var_2.b.x)), false), 20854i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(509f, 664f, arg_0, -1630f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1140f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 748f, arg_1, 1533f))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_0, false)), _wgslsmith_f_op_f32(func_1(vec4<i32>(arg_3.c.c, -1i, arg_3.c.c, -1i), vec2<i32>(global2.x, 0i), arg_2.b.b, 1u)), -539f, arg_1)))), var_2.b.x, arg_3.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(firstLeadingBit(~vec2<i32>(u_input.c, global2.x)) >> (_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)), u_input.a) % vec2<u32>(32u)));
    var var_0 = func_4(-1819f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(8730i, -2969i, 1i, global2.x), u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 4294967295u)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(886f, 1000f, true)), _wgslsmith_f_op_f32(abs(127f))), -1000f)), global1[_wgslsmith_index_u32(4294967295u, 16u)], Struct_2(Struct_1(u_input.a.x, func_2(Struct_1(0u, vec3<bool>(true, false, true), -2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1540f, 555f, 825f, -1030f) * vec4<f32>(856f, -941f, -141f, -542f)), false, -17419i).b, u_input.c), func_2(global0[_wgslsmith_index_u32(reverseBits(reverseBits(u_input.a.x)), 27u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-376f, -1082f, -1000f, 368f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, -1000f, 1413f, 2056f))), all(vec4<bool>(true, true, true, true)), firstTrailingBit(u_input.c)), Struct_1(~func_2(Struct_1(u_input.a.x, vec3<bool>(true, false, true), -65591i), vec4<f32>(-512f, 658f, -561f, 1335f), true, global2.x).a, vec3<bool>(true, false, true), ~_wgslsmith_mod_i32(global2.x, global2.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, any(vec3<bool>(true, false, false))), true)));
    let var_1 = u_input.a.x;
    let var_2 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1853f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f * -1021f) - _wgslsmith_f_op_f32(-1722f + -460f)), func_2(Struct_1(global4[_wgslsmith_index_u32(22426u, 11u)], vec3<bool>(false, false, true), -1i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1142f, -1000f, 1412f))), all(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.c).b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(517f))), global1[_wgslsmith_index_u32(1u, 16u)], Struct_2(func_2(func_4(1654f, 123f, Struct_3(Struct_2(global0[_wgslsmith_index_u32(50453u, 27u)], Struct_1(1u, var_0.b, 7092i), global0[_wgslsmith_index_u32(47715u, 27u)], vec4<bool>(true, var_0.b.x, true, false)), Struct_2(global0[_wgslsmith_index_u32(var_1, 27u)], Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, true), 21864i), global0[_wgslsmith_index_u32(1u, 27u)], vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), u_input.b.x, global4[_wgslsmith_index_u32(u_input.a.x, 11u)]), Struct_2(Struct_1(var_0.a, var_0.b, 16202i), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_1(38299u, vec3<bool>(false, var_0.b.x, var_0.b.x), 2147483647i), vec4<bool>(var_0.b.x, true, var_0.b.x, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1196f, 1134f, 1113f, -1078f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1543f, 2238f, -116f, 255f))), true, 2147483647i), Struct_1(u_input.a.x, select(var_0.b, !var_0.b, func_2(Struct_1(u_input.a.x, var_0.b, global2.x), vec4<f32>(290f, 888f, -796f, 772f), var_0.b.x, 2147483647i).b.x), 2147483647i), Struct_1(1u, !(!var_0.b), _wgslsmith_sub_i32(-2147483647i, var_0.c)), select(select(!vec4<bool>(var_0.b.x, var_0.b.x, true, true), vec4<bool>(var_0.b.x, true, false, var_0.b.x), !vec4<bool>(var_0.b.x, true, true, false)), !vec4<bool>(true, var_0.b.x, var_0.b.x, true), !(u_input.a.x >= 51758u))));
    let var_3 = -(~29726i);
    let var_4 = (~_wgslsmith_mult_u32(var_1, _wgslsmith_div_u32(var_2.a, var_2.a)) <= global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(~var_1, 11u)], ~0u), 11u)]) | all(!select(vec4<bool>(var_2.b.x, true, var_0.b.x, var_0.b.x), select(vec4<bool>(true, var_0.b.x, var_0.b.x, false), vec4<bool>(false, var_2.b.x, false, var_2.b.x), var_0.b.x), var_0.b.x));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f - -820f)))));
    let var_6 = -1000f;
    let var_7 = Struct_2(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_6), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1494f, var_6) + -1518f))), _wgslsmith_f_op_f32(-var_6), Struct_3(Struct_2(Struct_1(global4[_wgslsmith_index_u32(9932u, 11u)], var_0.b, var_3), Struct_1(var_0.a, vec3<bool>(var_2.b.x, var_0.b.x, false), 1i), func_2(Struct_1(0u, var_0.b, -1i), vec4<f32>(942f, 123f, 937f, -1480f), false, u_input.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.x, true, var_2.b.x, var_2.b.x), vec4<bool>(true, var_4, var_2.b.x, true))), Struct_2(func_4(var_6, var_6, global1[_wgslsmith_index_u32(var_1, 16u)], Struct_2(Struct_1(44100u, var_2.b, 24369i), Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_4, false), global2.x), var_2, vec4<bool>(var_0.b.x, var_2.b.x, true, var_0.b.x))), global0[_wgslsmith_index_u32(0u, 27u)], var_2, vec4<bool>(false, false, var_2.b.x, true)), 1i, _wgslsmith_clamp_u32(0u, firstLeadingBit(0u), ~u_input.a.x)), Struct_2(Struct_1(~1u, vec3<bool>(var_0.b.x, var_4, true), ~global2.x), var_2, global0[_wgslsmith_index_u32(~76466u >> (func_2(Struct_1(global4[_wgslsmith_index_u32(34114u, 11u)], vec3<bool>(true, var_2.b.x, false), global2.x), vec4<f32>(var_6, var_6, var_6, var_6), var_4, 35914i).a % 32u), 27u)], select(vec4<bool>(true, var_2.b.x, var_0.b.x, var_0.b.x), select(vec4<bool>(var_0.b.x, true, true, var_4), vec4<bool>(false, var_4, false, false), true), select(vec4<bool>(var_4, var_0.b.x, false, var_4), vec4<bool>(var_4, true, false, true), vec4<bool>(true, false, false, var_0.b.x))))), global0[_wgslsmith_index_u32(20967u, 27u)], Struct_1(u_input.a.x, !var_0.b, 1i), vec4<bool>(var_4, var_4 == (var_0.c > -global2.x), true, var_4));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_1, ~var_0.a), 11097i, global4[_wgslsmith_index_u32(~(var_0.a & global4[_wgslsmith_index_u32(21019u, 11u)]) | ~var_2.a, 11u)] & ~4294967295u);
}

