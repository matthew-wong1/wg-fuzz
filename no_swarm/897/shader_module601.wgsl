struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 4>;

var<private> global2: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec4<i32> {
    global0 = !(!(!any(arg_1)));
    global0 = ~u_input.a.x != u_input.c.x;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))) * arg_0.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(arg_0.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1256f))) + _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, false & arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1851f))), _wgslsmith_f_op_f32(-2657f - 1079f)), 25528u, -2147483647i);
    global1 = array<bool, 4>();
    return min((vec4<i32>(-1i) * -min(vec4<i32>(var_1.d, var_1.d, 2147483647i, -2147483647i), vec4<i32>(arg_0.e.x, -49637i, u_input.d, 2147483647i))) | vec4<i32>(select(-2147483647i << (u_input.a.x % 32u), 2147483647i, arg_0.c), ~arg_0.e.x << (~48529u % 32u), arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-6627i, -2147483647i, -2147483647i, 8109i) | vec4<i32>(6575i, 2097i, 2147483647i, u_input.d), vec4<i32>(-34601i, 2147483647i, u_input.d, -37307i))), (vec4<i32>(-1i) * -abs(vec4<i32>(-53518i, arg_2.x, global2.x, var_1.d))) << (~vec4<u32>(var_1.c, u_input.c.x & 41832u, ~u_input.b.x, countOneBits(1u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    global0 = false;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -606f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(747f - -1212f), 553f));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(-390f, -321f)), _wgslsmith_f_op_f32(f32(-1f) * -1369f), -384f, _wgslsmith_f_op_f32(ceil(-481f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1498f, 736f, 558f, -1713f))), vec4<f32>(1759f, 105f, -937f, 1562f), !vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 4u)], true, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1239f, -1398f, -610f, 1347f))))));
    var var_1 = _wgslsmith_div_vec3_f32(var_0.yzx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(200f, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -719f)));
    let var_2 = -125f;
    return _wgslsmith_sub_i32(~abs(min(~arg_0.x, arg_0.x)), i32(-1i) * -arg_0.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(353f, _wgslsmith_f_op_f32(f32(-1f) * -1222f))), vec3<f32>(_wgslsmith_f_op_f32(round(-2034f)), 982f, arg_1.a), u_input.b.x, max(func_4(func_3(arg_1, vec2<bool>(false, arg_1.c), ~vec2<i32>(u_input.d, -27327i)), firstLeadingBit(_wgslsmith_clamp_u32(0u, 1u, 0u)), _wgslsmith_sub_vec2_i32(arg_1.e.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, 37866i), vec2<i32>(global2.x, -18267i)))), _wgslsmith_div_i32(func_3(Struct_2(490f, global1[_wgslsmith_index_u32(12411u, 4u)], arg_1.c, global1[_wgslsmith_index_u32(39456u, 4u)], arg_0.yzy), vec2<bool>(arg_1.d, true), arg_1.e.zz).x, ~(-2147483647i)) & global2.x));
    global2 = -_wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i ^ arg_0.x, arg_1.e.x), countOneBits(vec2<i32>(u_input.d, _wgslsmith_mult_i32(2147483647i, arg_0.x))));
    var var_1 = Struct_1(var_0.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a - var_0.a), _wgslsmith_div_f32(-1216f, -1859f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1892f - var_0.b.x) - _wgslsmith_div_f32(-835f, -461f)), arg_1.a)), _wgslsmith_div_u32(48911u >> (u_input.c.x % 32u), 12367u), u_input.d);
    var_1 = Struct_1(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + -315f)), var_1.b.x, _wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) + 1805f))), u_input.a.x, 1i);
    var var_2 = var_0.c;
    return select(all(select(select(select(vec3<bool>(arg_1.d, arg_1.c, false), vec3<bool>(true, arg_1.c, false), vec3<bool>(true, arg_1.b, global1[_wgslsmith_index_u32(1u, 4u)])), select(vec3<bool>(true, false, arg_1.b), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], true, arg_1.d), vec3<bool>(arg_1.c, false, global1[_wgslsmith_index_u32(1u, 4u)])), !vec3<bool>(arg_1.b, global1[_wgslsmith_index_u32(27122u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)])), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(13087u, 4u)], arg_1.d), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(var_1.c, 4u)], false), global1[_wgslsmith_index_u32(58814u, 4u)]), !vec3<bool>(arg_1.b, arg_1.b, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), true)), select(all(vec4<bool>(false, arg_1.d && true, global1[_wgslsmith_index_u32(var_0.c, 4u)] == global1[_wgslsmith_index_u32(var_0.c, 4u)], !arg_1.b)), false, arg_1.b), 14940i <= (i32(-1i) * -global2.x));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_2.a + arg_3.c.x), false && arg_3.b.x, any(vec2<bool>(true, true)), !(!(-221f < arg_2.a)), vec3<i32>(arg_3.a.x, arg_3.e.e.x, global2.x));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1397f, arg_3.e.a)))))), var_0.a));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(firstTrailingBit(~countOneBits(~u_input.c.x))), 4u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-241f, -652f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)), false)), !global1[_wgslsmith_index_u32(~1u, 4u)], func_2(-reverseBits(vec4<i32>(global2.x, u_input.d, u_input.d, -1i)), Struct_2(_wgslsmith_f_op_f32(trunc(-1049f)), global1[_wgslsmith_index_u32(arg_0 << (18936u % 32u), 4u)], global1[_wgslsmith_index_u32(arg_0, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], vec3<i32>(u_input.d, -2147483647i, u_input.d))), any(select(vec3<bool>(true, false, true), select(vec3<bool>(global1[_wgslsmith_index_u32(36585u, 4u)], false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0, 4u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], true)), !global1[_wgslsmith_index_u32(18381u, 4u)])), vec3<i32>(select(-global2.x, -2216i, true), -2501i, 23985i)), global1[_wgslsmith_index_u32(~(~59472u), 4u)], Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(717f)), _wgslsmith_f_op_f32(-1000f + -330f))))), any(!select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 4u)], false, global1[_wgslsmith_index_u32(0u, 4u)]))), select(global1[_wgslsmith_index_u32(arg_0, 4u)], !global1[_wgslsmith_index_u32(4294967295u, 4u)], !global1[_wgslsmith_index_u32(u_input.a.x, 4u)]) & true, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) != 0u, -(reverseBits(vec3<i32>(75426i, 0i, global2.x)) ^ -vec3<i32>(-9105i, -1i, 1i))), Struct_3(-(~vec3<i32>(global2.x, 2147483647i, u_input.d)), !select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 4u)], true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 4u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false, global1[_wgslsmith_index_u32(1u, 4u)])), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(arg_0, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(38084u, 4u)], global1[_wgslsmith_index_u32(34882u, 4u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), global1[_wgslsmith_index_u32(arg_0, 4u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-638f, 658f, -1020f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1813f, 1216f, -537f))) - vec3<f32>(-737f, 918f, -921f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1294f, -934f) - 510f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1011f, -325f, 1144f), vec3<f32>(-286f, 756f, -1000f)))), ~(~50124u), u_input.d), Struct_2(-258f, 4373i <= -global2.x, false, global1[_wgslsmith_index_u32(max(~872u, 0u | u_input.c.x), 4u)], firstLeadingBit(vec3<i32>(-1i, -2147483647i, -45219i))))));
    var var_2 = vec4<u32>(abs(~u_input.a.x), ~(~select(arg_0, u_input.a.x, true)), _wgslsmith_sub_u32(u_input.a.x, 16941u), ~u_input.a.x);
    let var_3 = ~firstLeadingBit(~var_2.xzx);
    global1 = array<bool, 4>();
    return Struct_1(290f, vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), 1729f)) + var_1.x), _wgslsmith_f_op_f32(-1768f + 1244f)), 1u, global2.x);
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_2 {
    return Struct_2(-1403f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) * _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(arg_3.d.a + -529f))) <= arg_2.x, false, true, ~(~arg_3.a));
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    global1 = array<bool, 4>();
    let var_0 = arg_0;
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    let var_1 = !(true && (all(!vec4<bool>(arg_0.c, true, var_0.c, false)) && !(-34564i >= u_input.d)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(global2.x), _wgslsmith_mod_i32(0i, 42484i)), u_input.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-319f, 1290f, -837f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, 101f, -558f))))), Struct_3(~vec3<i32>(15915i, global2.x, global2.x) >> (~u_input.c.xyw % vec3<u32>(32u)), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(71847u, 4u)], true)), vec3<f32>(1f, 1f, 1f), func_1(_wgslsmith_div_u32(25171u, 28792u)), Struct_2(-153f, func_2(vec4<i32>(-42670i, 2147483647i, 1i, global2.x), Struct_2(-205f, true, global1[_wgslsmith_index_u32(0u, 4u)], true, vec3<i32>(u_input.d, 10590i, -42508i))), !global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], firstLeadingBit(vec3<i32>(23935i, -43022i, global2.x))))));
    global0 = !(!global1[_wgslsmith_index_u32(reverseBits(u_input.b.x ^ 37793u), 4u)]) && (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(u_input.b.x), firstLeadingBit(6796u)) >> (countOneBits(_wgslsmith_add_u32(14105u, u_input.a.x)) % 32u), 4u)] & !(all(vec2<bool>(false, var_0.c)) & (false & var_0.c)));
    let var_1 = select(vec3<bool>(any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], true, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec4<bool>(var_0.b, var_0.c, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], var_0.b))), false, var_0.d), select(vec3<bool>(all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, true))), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)])), any(!vec3<bool>(var_0.d, false, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))), !(!select(vec3<bool>(false, false, var_0.b), vec3<bool>(false, var_0.d, global1[_wgslsmith_index_u32(4294967295u, 4u)]), false)), func_2(~vec4<i32>(global2.x, var_0.e.x, 49470i, 2147483647i), var_0) | var_0.b), vec3<bool>(global1[_wgslsmith_index_u32(20385u, 4u)], true, select(any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], var_0.d)), true, any(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)])))));
    global1 = array<bool, 4>();
    global0 = var_1.x;
    var var_2 = vec2<bool>(true || (_wgslsmith_div_u32(u_input.a.x, u_input.b.x) <= select(1u, max(65601u, u_input.a.x), -837f == var_0.a)), any(vec2<bool>(var_1.x, var_0.c)));
    var_2 = var_1.xx;
    global0 = select(4294967295u, u_input.c.x, all(vec4<bool>(all(var_1), !var_1.x, global1[_wgslsmith_index_u32(61937u << (u_input.c.x % 32u), 4u)], false))) >= u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~u_input.a << (abs(vec4<u32>(44304u, 69354u, 0u, 28775u)) % vec4<u32>(32u))), u_input.a));
}

