struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<f32, 7> = array<f32, 7>(1000f, 610f, 462f, -1034f, -850f, 137f, 687f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = arg_0 < u_input.c;
    var var_1 = Struct_2(u_input.e, vec2<bool>(_wgslsmith_div_i32(-arg_0, 35449i) <= arg_1, _wgslsmith_mod_i32(~12882i, -23332i) >= -max(0i, u_input.c)), countOneBits(vec3<u32>(~u_input.e.x, u_input.a.x, 55355u)));
    let var_2 = vec2<i32>(arg_1, arg_0);
    var var_3 = abs(arg_0);
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(51587u, 7u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 7u)] + 625f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.c, vec3<u32>(var_1.c.x, 46375u, var_1.c.x)), 7u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.e.x, 7u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 7u)])), global1[_wgslsmith_index_u32(u_input.a.x, 7u)])), var_1.b.x && false);
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.e.x, 4294967295u)), u_input.a), _wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(11107u, 1u, 0u, 1u))) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(25091u, var_1.c.x, u_input.a.x, 4294967295u), vec4<u32>(var_1.c.x, 2257u, 0u, 0u) << (vec4<u32>(9107u, 43326u, var_1.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(31956u, 47845u, var_1.a.x, u_input.e.x) | vec4<u32>(0u, u_input.a.x, var_1.a.x, var_1.a.x)), countOneBits(~vec4<u32>(1u, 63673u, 48340u, u_input.e.x))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = !arg_0.x;
    var var_1 = arg_0.xyz;
    global1 = array<f32, 7>();
    global0 = max(u_input.c, u_input.c);
    global1 = array<f32, 7>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.e.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]) - vec3<f32>(-192f, 901f, global1[_wgslsmith_index_u32(1u, 7u)])) + vec3<f32>(-276f, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])))), (_wgslsmith_sub_u32(4294967295u, func_3(45224i, u_input.b)) < 32489u) != !(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 18554i), vec2<i32>(u_input.d, 53822i)) <= -42767i));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_3 {
    var var_0 = 1u;
    var_0 = 1u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(min(691f, -1435f))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 1u), 7u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 7u)])))), !(!((global1[_wgslsmith_index_u32(u_input.e.x, 7u)] != -428f) || true)));
    var var_2 = u_input.b;
    let var_3 = func_2(!select(select(!vec4<bool>(false, true, arg_1, true), select(vec4<bool>(false, var_1.b, false, true), vec4<bool>(arg_1, true, var_1.b, true), vec4<bool>(true, arg_1, false, true)), var_1.b), select(vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, arg_1, false, arg_1)), vec4<bool>(u_input.e.x != 29428u, -550f > var_1.a.x, all(vec4<bool>(true, false, arg_1, true)), true)));
    return Struct_3(!vec2<bool>(any(vec3<bool>(arg_1, arg_1, true)) != (arg_0 > u_input.d), !(!var_1.b)));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = ~1u;
    global0 = -reverseBits(u_input.b);
    var var_1 = Struct_2(_wgslsmith_mult_vec3_u32(firstTrailingBit(~_wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(u_input.a.x, 4294967295u, 0u))), ~u_input.e), !(!select(!arg_3.a, vec2<bool>(arg_3.a.x, arg_3.a.x), arg_3.a.x)), countOneBits(u_input.e));
    var var_2 = Struct_2(_wgslsmith_mod_vec3_u32(abs(var_1.c & var_1.c) >> (vec3<u32>(~11293u, ~27699u, _wgslsmith_add_u32(4250u, 101658u)) % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(var_0) ^ 12412u, var_1.c.x ^ arg_1.x, _wgslsmith_mult_u32(~44682u, u_input.a.x))), arg_3.a, u_input.e);
    let var_3 = select(!select(select(!vec4<bool>(arg_3.a.x, true, true, var_2.b.x), select(vec4<bool>(false, var_2.b.x, arg_3.a.x, true), vec4<bool>(false, true, var_1.b.x, true), false), false), !(!vec4<bool>(false, false, var_1.b.x, arg_3.a.x)), true), vec4<bool>(var_1.b.x, var_1.b.x, true, !(func_1(-1064i, false).a.x & (u_input.d < 0i))), select(vec4<bool>(global1[_wgslsmith_index_u32(43687u, 7u)] > _wgslsmith_f_op_f32(-1310f + 1645f), _wgslsmith_div_f32(arg_0, -1091f) < _wgslsmith_f_op_f32(-arg_0), false, false), !select(!vec4<bool>(arg_3.a.x, true, false, var_2.b.x), !vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x), u_input.c != -73244i), var_1.b.x));
    return arg_2.xyw;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2), arg_0.b);
    let var_1 = func_2(!(!vec4<bool>(var_0.b, var_0.b, true, !arg_0.b)));
    let var_2 = select(vec3<bool>(any(vec4<bool>(true, !var_0.b, all(vec4<bool>(var_0.b, false, arg_0.b, false)), func_2(vec4<bool>(false, var_1.b, true, var_0.b)).b)), all(select(vec4<bool>(false, true, arg_0.b, var_1.b), select(vec4<bool>(var_0.b, var_1.b, false, var_1.b), vec4<bool>(var_0.b, var_1.b, false, var_1.b), vec4<bool>(true, var_0.b, arg_0.b, false)), any(vec3<bool>(true, var_1.b, false)))), (var_1.b & true) && any(select(vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(var_1.b, true, false, arg_0.b), vec4<bool>(true, var_1.b, var_0.b, var_0.b)))), vec3<bool>(arg_0.b, !(!(arg_0.b | var_0.b)), true), vec3<bool>(any(vec4<bool>(var_1.b, true, !var_1.b, all(vec3<bool>(true, true, var_1.b)))), true & (var_1.b != !var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(612f, 1043f, arg_0.b))) > _wgslsmith_f_op_f32(-var_1.a.x)));
    var var_3 = Struct_1(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.a.x, -181f), 608f))), arg_0.a.x), any(vec4<bool>(var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1u, arg_1), vec3<u32>(0u, 1u, arg_1)) >= u_input.a.x, true, true)));
    var var_4 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, _wgslsmith_sub_u32(~arg_1, reverseBits(4294967295u)), ~(~u_input.a.x)), u_input.e), !vec2<bool>(false, (arg_1 >= 2338u) && true), ~vec3<u32>(u_input.a.x, firstTrailingBit(_wgslsmith_div_u32(1u, 27949u)), _wgslsmith_clamp_u32(arg_1 << (arg_1 % 32u), ~8424u, u_input.a.x)));
    return Struct_2(abs(_wgslsmith_mult_vec3_u32(u_input.e, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, var_4.c.x, 4294967295u), var_4.a))), vec2<bool>(any(!select(vec4<bool>(true, false, true, var_3.b), vec4<bool>(var_2.x, true, false, true), arg_0.b)), false), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = ~(_wgslsmith_dot_vec2_i32((vec2<i32>(2147483647i, -2147483647i) | vec2<i32>(u_input.c, u_input.d)) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.e.x)) % vec2<u32>(32u)), -(~vec2<i32>(-1i, u_input.b))) << (1u % 32u));
    var var_0 = func_5(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(142422u, 7u)], 1292f, global1[_wgslsmith_index_u32(u_input.e.x, 7u)]), true), u_input.a.x ^ 4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 7u)])), vec2<u32>(0u, ~u_input.e.x), vec4<f32>(_wgslsmith_f_op_f32(sign(-2088f)), global1[_wgslsmith_index_u32(4294967295u, 7u)], 370f, _wgslsmith_f_op_f32(f32(-1f) * -1759f)), func_1(~u_input.b, false))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 1853f, 1134f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -1098f, global1[_wgslsmith_index_u32(4294967295u, 7u)])))), vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 7u)] + -577f), 1f, global1[_wgslsmith_index_u32(1u, 7u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(u_input.e.x), 7u)])));
    var_0 = Struct_2(~(vec3<u32>(u_input.e.x, _wgslsmith_clamp_u32(4294967295u, u_input.e.x, u_input.a.x), u_input.e.x) & vec3<u32>(max(var_0.c.x, 48734u), var_0.a.x, _wgslsmith_sub_u32(1u, u_input.a.x))), vec2<bool>(!(!all(vec2<bool>(false, var_0.b.x))), 4294967295u >= (u_input.a.x | u_input.e.x)), ~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(21149u, var_0.c.x, var_0.a.x), vec3<u32>(var_0.a.x, 63917u, 2011u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(69116u, var_0.c.x, u_input.e.x), var_0.a))));
    var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(440f, -1666f, global1[_wgslsmith_index_u32(var_0.a.x, 7u)])))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(510f, -1237f, -201f))))))), true), _wgslsmith_mult_u32(~(~(~var_0.a.x)), abs(~var_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(~min(var_0.a.x, 64630u), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(39377u, 7u)]) * global1[_wgslsmith_index_u32(~u_input.a.x, 7u)]), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_4(global1[_wgslsmith_index_u32(var_0.a.x, 7u)], vec2<u32>(u_input.a.x, 60128u), vec4<f32>(1689f, -1273f, global1[_wgslsmith_index_u32(65973u, 7u)], -157f), Struct_3(vec2<bool>(true, var_0.b.x)))).x, global1[_wgslsmith_index_u32(~13292u, 7u)]))), -685f);
    let var_1 = func_1(-26145i << (u_input.e.x % 32u), global1[_wgslsmith_index_u32(0u, 7u)] < -225f);
    global1 = array<f32, 7>();
    let var_2 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(firstLeadingBit(_wgslsmith_div_u32(11969u, 4294967295u))) >> (_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mod_u32(var_0.a.x, 4294967295u)), 59767u, func_3(-9482i, -2147483647i)) % 32u), 7u)], _wgslsmith_f_op_f32(ceil(269f)));
    let var_3 = func_5(func_2(select(select(select(vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(var_1.a.x, true, false, false), var_0.b.x), vec4<bool>(var_0.b.x, false, true, var_0.b.x), select(vec4<bool>(var_0.b.x, true, var_1.a.x, false), vec4<bool>(var_1.a.x, false, var_0.b.x, var_0.b.x), var_0.b.x)), vec4<bool>(true, !var_1.a.x, true, var_2 != -522f), var_1.a.x)), 60207u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)] - var_2), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(1u, 7u)])), var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, -275f, var_2)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(54769u, 7u)]))), select(vec3<bool>(false, var_1.a.x, false), !vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(true, true, func_5(Struct_1(vec3<f32>(-469f, -1698f, -713f), var_1.a.x), 4294967295u, vec3<f32>(-131f, var_2, 1261f), var_2).b.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 7u)] + -812f) * _wgslsmith_f_op_f32(min(2248f, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_f32(-var_2)) + _wgslsmith_f_op_f32(-func_2(select(vec4<bool>(var_0.b.x, var_1.a.x, var_0.b.x, var_0.b.x), vec4<bool>(true, var_1.a.x, true, var_0.b.x), true)).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-208f);
}

