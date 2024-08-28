struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-14932i, 13332i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -41618i), vec2<i32>(2147483647i, 1i));

var<private> global1: Struct_1;

var<private> global2: i32 = 14875i;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(true, true, true), vec2<u32>(8651u, 5475u), false, vec4<i32>(43649i, 2147483647i, 9659i, 2147483647i)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 72243u), true, vec4<i32>(i32(-2147483648), -1i, 32248i, 1i)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(79522u, 53183u), true, vec4<i32>(-70652i, 56518i, i32(-2147483648), -1i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(17922u, 1u), true, vec4<i32>(i32(-2147483648), 39409i, 2147483647i, 0i)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(4663u, 0u), true, vec4<i32>(9907i, -6847i, 2147483647i, 13253i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(47838u, 38809u), true, vec4<i32>(1184i, 1i, 2147483647i, 38813i)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(1u, 0u), true, vec4<i32>(0i, 22798i, 0i, 0i)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 13110u), false, vec4<i32>(19062i, -3417i, 1i, -70723i)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(11680u, 4294967295u), false, vec4<i32>(-1i, 0i, -20002i, 0i)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(20144u, 0u), true, vec4<i32>(26815i, 2962i, 56367i, -20607i)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 75177u), false, vec4<i32>(i32(-2147483648), -12093i, 6221i, 0i)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(63016u, 4294967295u), false, vec4<i32>(0i, -24459i, 2147483647i, -2169i)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(10249u, 4294967295u), true, vec4<i32>(i32(-2147483648), -1i, -1i, i32(-2147483648))), Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 30138u), true, vec4<i32>(36754i, 2147483647i, 106639i, 1i)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(61576u, 4294967295u), false, vec4<i32>(-41179i, 1i, -7882i, -10147i)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(3864u, 37598u), false, vec4<i32>(-63763i, -9957i, 2147483647i, 1i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(4294967295u, 1u), false, vec4<i32>(7869i, 1i, -31454i, -1i)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 4294967295u), true, vec4<i32>(20293i, 45681i, 2147483647i, -11415i)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 56998u), true, vec4<i32>(2147483647i, 0i, i32(-2147483648), -1i)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 89281u), false, vec4<i32>(-28906i, -502i, -45750i, 2147483647i)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(4294967295u, 65777u), true, vec4<i32>(i32(-2147483648), 1900i, i32(-2147483648), 30242i)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(7069u, 0u), true, vec4<i32>(2147483647i, i32(-2147483648), 1979i, -11719i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 4294967295u), false, vec4<i32>(1i, 0i, -8141i, -1i)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(55307u, 0u), true, vec4<i32>(17338i, -14850i, 2147483647i, -1i)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(2999u, 26078u), false, vec4<i32>(-9441i, 18435i, i32(-2147483648), -2673i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 14199u), false, vec4<i32>(0i, 2147483647i, 50726i, i32(-2147483648))), Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 131397u), false, vec4<i32>(25257i, 2147483647i, -28061i, 25264i)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(66024u, 46533u), false, vec4<i32>(21644i, -26090i, 4608i, -9980i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 71188u), true, vec4<i32>(1i, -18460i, -10908i, 1i)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 75745u), true, vec4<i32>(1i, 1i, 0i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 11285u), false, vec4<i32>(2147483647i, -4643i, 13673i, 2147483647i)));

var<private> global4: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-38840i, 1i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 20876i, -17860i, 0i), vec4<i32>(0i, -15852i, 31461i, -775i), vec4<i32>(-1i, -1i, 5029i, 1i), vec4<i32>(14059i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(-24120i, -11872i, -1i, -34307i), vec4<i32>(-19855i, i32(-2147483648), 25588i, -11110i), vec4<i32>(-1i, 0i, -13765i, 2147483647i), vec4<i32>(2147483647i, -8815i, -36516i, 1i), vec4<i32>(-48800i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(18049i, 1i, 1i, i32(-2147483648)), vec4<i32>(40883i, 0i, -36778i, -42985i), vec4<i32>(60668i, 1i, -55922i, 1023i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 30187i), vec4<i32>(-62826i, -21213i, 2147483647i, 76840i), vec4<i32>(-12638i, 9828i, 0i, 0i), vec4<i32>(55273i, 22160i, -54013i, 2147483647i), vec4<i32>(-20987i, 0i, -1i, 78633i), vec4<i32>(-50273i, -11768i, 4123i, 30464i), vec4<i32>(i32(-2147483648), 3265i, 1i, 16557i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 21170i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = true;
    global2 = -firstTrailingBit(global1.d.x);
    var var_1 = Struct_1(global1.a, ~_wgslsmith_div_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4294967295u), ~u_input.a, u_input.a)), !(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1407f, 549f))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1591f)))), vec4<i32>(global1.d.x, global1.d.x, _wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(-global1.d.x, -1i)), ~abs(_wgslsmith_div_i32(37409i, 2147483647i))));
    var var_2 = Struct_1(vec3<bool>(all(select(vec2<bool>(false, false), !vec2<bool>(var_1.a.x, false), true)), !any(!global1.a), true & all(!var_1.a.zx)), ~global1.b, (i32(-1i) * -2147483647i) >= var_1.d.x, vec4<i32>(countOneBits(_wgslsmith_mod_i32(var_1.d.x, select(var_1.d.x, global1.d.x, var_0))), ~(firstTrailingBit(var_1.d.x) << (min(global1.b.x, u_input.a.x) % 32u)), var_1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(min(-34129i, -37105i), 1i), global1.d.ww)));
    var var_3 = Struct_1(vec3<bool>(-1181f == _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(1000f))), true, false), ~global1.b, all(vec2<bool>(any(vec4<bool>(var_2.a.x, var_1.a.x, global1.a.x, true)), any(vec4<bool>(false, false, var_2.c, global1.a.x)))), -_wgslsmith_div_vec4_i32(abs(vec4<i32>(-33974i, global1.d.x, var_2.d.x, -1i) ^ vec4<i32>(13481i, global1.d.x, var_2.d.x, 7210i)), countOneBits(countOneBits(vec4<i32>(5974i, 25363i, global1.d.x, -24748i)))));
    return abs(_wgslsmith_mod_u32(~4294967295u, u_input.b));
}

fn func_2() -> vec2<f32> {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(1u, global1.b.x | ~8011u)), 21u)] & vec4<i32>(~(~(-1i)), _wgslsmith_mod_i32(-global1.d.x, global1.d.x), -4371i, global1.d.x);
    let var_1 = Struct_1(vec3<bool>(true, true, _wgslsmith_sub_u32(55952u, u_input.b << (global1.b.x % 32u)) != _wgslsmith_sub_u32(firstLeadingBit(global1.b.x), 4294967295u)), abs(u_input.a), true, ~vec4<i32>(var_0.x << (func_3() % 32u), global1.d.x, var_0.x, global1.d.x ^ -24602i));
    global4 = array<vec4<i32>, 21>();
    var var_2 = vec4<bool>(true, false, false, false);
    let var_3 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2363f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1104f, -1163f, var_1.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(ceil(var_3)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, _wgslsmith_f_op_f32(-var_3)))));
}

fn func_1() -> f32 {
    global4 = array<vec4<i32>, 21>();
    var var_0 = global1.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(718f, 1039f)) + vec2<f32>(1061f, -584f)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1444f)), _wgslsmith_f_op_f32(abs(-660f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f) - _wgslsmith_f_op_f32(floor(844f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(583f, -325f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x)))))) - _wgslsmith_f_op_vec2_f32(func_2()));
    global3 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1468f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * -401f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -183f))));
    let var_1 = false;
    let var_2 = ~(~_wgslsmith_add_u32(max(1u, global1.b.x), 4453u));
    var var_3 = Struct_1(vec3<bool>(true, any(vec3<bool>(true, true, true)), true), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 34261u), vec2<u32>(41273u, global1.b.x)))), vec2<u32>(0u, 0u)), 9012i >= _wgslsmith_mod_i32(global1.d.x, arg_1), select(select(min(select(vec4<i32>(arg_1, 9825i, global1.d.x, 1i), global4[_wgslsmith_index_u32(153180u, 21u)], vec4<bool>(global1.a.x, arg_2, false, false)), global4[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_sub_vec4_i32(~global1.d, _wgslsmith_div_vec4_i32(vec4<i32>(global1.d.x, -2147483647i, arg_1, global1.d.x), global4[_wgslsmith_index_u32(global1.b.x, 21u)])), false), abs(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-30573i, arg_1, -33909i, arg_1), vec4<i32>(arg_1, global1.d.x, arg_1, -42609i)), -vec4<i32>(47066i, 54369i, global1.d.x, arg_1))), !(arg_2 && all(vec4<bool>(global1.a.x, false, var_1, global1.a.x)))));
    var var_4 = global3[_wgslsmith_index_u32(select(var_3.b.x, 4294967295u, _wgslsmith_f_op_f32(-var_0) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + var_0)) | _wgslsmith_div_u32(6458u, global1.b.x), 31u)];
    return Struct_1(vec3<bool>(select(!select(arg_2, global1.a.x, true), !arg_2, all(!var_3.a.yy)), true, true), ~(~_wgslsmith_mult_vec2_u32(var_4.b, max(var_3.b, global1.b))), false, ~vec4<i32>(_wgslsmith_dot_vec2_i32(global1.d.xw, vec2<i32>(var_4.d.x, 30282i)), 42672i, firstLeadingBit(0i), var_4.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2484f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-269f, 368f)) + _wgslsmith_f_op_f32(func_1())))), 0i, global1.a.x);
    global2 = 74531i;
    var_0 = func_4(_wgslsmith_f_op_f32(func_1()), 1i, true);
    let var_1 = _wgslsmith_mod_i32(~var_0.d.x, countOneBits(firstTrailingBit(~global1.d.x)));
    let var_2 = global3[_wgslsmith_index_u32(func_4(1f, ~reverseBits(var_1), global1.a.x).b.x, 31u)];
    let var_3 = !any(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1249f, 447f)) * _wgslsmith_f_op_f32(abs(-1000f))), max(11321i, var_0.d.x) | max(global1.d.x, var_0.d.x), any(vec2<bool>(global1.a.x, var_2.a.x))).a);
    var_0 = Struct_1(vec3<bool>(!var_2.a.x, any(vec3<bool>(var_0.c, func_4(-914f, var_1, true).c, false)), true & !(!var_3)), u_input.a, all(!global1.a), _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(global1.d.x, var_0.d.x, 11081i, 0i)), select(vec4<i32>(var_1, var_0.d.x, _wgslsmith_div_i32(var_2.d.x, 32476i), _wgslsmith_mod_i32(0i, var_1)), ~max(global4[_wgslsmith_index_u32(24436u, 21u)], vec4<i32>(42386i, -2147483647i, var_0.d.x, -2147483647i)), select(global1.c, false, !var_2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 2147483647i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-908f)), 715f, -873f, -127f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1740f, -586f, -1128f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(382f, -975f, -1999f, 1740f) + vec4<f32>(1000f, 1482f, 765f, 709f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, -317f, -684f, 241f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1094f, -327f, -514f, -1853f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 397f, 399f, 307f))))))), select(-var_0.d.www, vec3<i32>(1810i, -879i, var_2.d.x), vec3<bool>(!var_0.a.x, var_2.c, false)) >> (vec3<u32>(43169u, var_0.b.x, global1.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(307f, -1142f))))));
}

