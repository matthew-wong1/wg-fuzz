struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(714f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1713f), -171f));
    let var_1 = _wgslsmith_mod_vec4_u32(u_input.b << (~(u_input.b << (abs(u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(15107u, global0[_wgslsmith_index_u32(~26632u, 32u)], max(4294967295u, arg_0.b), u_input.b.x & u_input.e.x)) & u_input.b);
    let var_2 = u_input.e.x;
    var var_3 = ~select(u_input.b << (firstLeadingBit(vec4<u32>(u_input.b.x, 1u, 79071u, 20963u)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, var_2, 27916u, 39046u), var_1), arg_0.e.x);
    return arg_0.c != arg_0.d.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<bool>(~(i32(-1i) * -32505i) == arg_0.x, func_3(arg_2));
    let var_1 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.b, 41383u), _wgslsmith_clamp_vec2_u32(u_input.b.wz, vec2<u32>(1u, 1u), u_input.b.yw))), 4294967295u, _wgslsmith_add_u32(arg_2.b, ~_wgslsmith_div_u32(0u, arg_2.b)) | u_input.e.x);
    var var_2 = _wgslsmith_div_f32(784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(849f, _wgslsmith_f_op_f32(-arg_2.a.x)))));
    var var_3 = vec2<bool>(true, true);
    let var_4 = ~_wgslsmith_clamp_u32(select(_wgslsmith_clamp_u32(u_input.e.x, 4294967295u << (arg_2.b % 32u), 70152u), u_input.b.x, var_0.x == all(vec3<bool>(false, true, true))), _wgslsmith_dot_vec4_u32(~(~u_input.b), select(u_input.b, ~u_input.b, select(vec4<bool>(arg_2.d.x, true, true, var_0.x), vec4<bool>(var_0.x, var_3.x, var_0.x, arg_2.e.x), var_3.x))), ~69005u);
    return _wgslsmith_dot_vec3_u32(u_input.b.zxy, var_1);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(arg_3.x, 312f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1389f, _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f * 1454f) * _wgslsmith_f_op_f32(sign(arg_3.x))))), _wgslsmith_f_op_f32(ceil(arg_3.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(arg_2.x, 0u), abs(29343u)), 0u), 32u)], arg_1, !(!vec3<bool>(u_input.a.x == -14743i, false, all(vec2<bool>(arg_0, true)))), select(select(select(vec3<bool>(arg_1, arg_1, arg_0), vec3<bool>(false, true, arg_0), arg_3.x >= -236f), vec3<bool>(arg_0, arg_2.x != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 32u)], 32u)], 32u)], 32u)], any(vec4<bool>(arg_0, false, arg_0, arg_1))), !(!arg_1)), select(select(vec3<bool>(arg_0, false, false), select(vec3<bool>(arg_1, arg_0, arg_1), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_1, arg_0)), arg_0 | arg_1), vec3<bool>(all(vec3<bool>(arg_1, false, false)), global0[_wgslsmith_index_u32(1848u, 32u)] < arg_2.x, false != arg_1), arg_2.x > _wgslsmith_add_u32(13336u, 1u)), select(!(!vec3<bool>(arg_1, arg_1, arg_1)), !select(vec3<bool>(arg_0, arg_1, true), vec3<bool>(false, arg_0, arg_1), vec3<bool>(false, true, arg_1)), arg_3.x <= -1320f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + -299f) * _wgslsmith_div_f32(var_0.a.x, -643f)) - 953f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1572f, _wgslsmith_f_op_f32(-arg_3.x))))), 1f));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, -638f, -1000f, 224f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.x, 1138f, 1198f, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b, arg_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)]), arg_2), 3975u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 32u)], 51848u, 12940u, 4294967295u), _wgslsmith_clamp_vec4_u32(arg_2, vec4<u32>(global0[_wgslsmith_index_u32(0u, 32u)], 67974u, global0[_wgslsmith_index_u32(var_0.b, 32u)], 0u), arg_2))), true, select(var_0.d, var_0.e, select(!vec3<bool>(false, arg_1, var_0.e.x), vec3<bool>(all(vec3<bool>(arg_1, arg_0, arg_1)), true, !arg_1), false)), !var_0.e);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, arg_3.x, 1123f, arg_3.x))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_2.a * var_0.a)))))), (~u_input.b.x >> (reverseBits(select(20787u, 4294967295u, false)) % 32u)) & _wgslsmith_dot_vec4_u32(u_input.b, ~reverseBits(vec4<u32>(u_input.b.x, 22238u, 0u, 16425u))), true, var_2.e, select(vec3<bool>(true | (var_2.b <= var_0.b), var_2.d.x, var_0.d.x), vec3<bool>(all(var_0.e.yz), var_2.c, all(select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, var_0.c, false, arg_1), vec4<bool>(var_0.e.x, false, arg_1, arg_1)))), true));
    let var_4 = !(!select(select(select(vec4<bool>(arg_0, var_3.d.x, var_0.c, arg_1), vec4<bool>(var_3.d.x, arg_1, var_2.c, true), vec4<bool>(arg_0, arg_0, true, true)), !vec4<bool>(arg_0, false, var_0.d.x, var_0.c), select(vec4<bool>(true, var_0.c, arg_0, var_0.d.x), vec4<bool>(arg_0, arg_1, arg_0, false), arg_0)), !select(vec4<bool>(var_0.c, true, arg_0, true), vec4<bool>(arg_0, false, var_0.d.x, true), vec4<bool>(var_0.d.x, true, true, true)), false));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_3.a), var_2.b, any(!vec2<bool>(var_3.c, false)), select(!var_4.yxw, var_2.d, !(!any(vec2<bool>(false, arg_1)))), vec3<bool>(func_2(-vec2<i32>(u_input.c, -2147483647i), ~vec4<i32>(1i, u_input.c, 10296i, u_input.c), var_2) > var_0.b, true, var_3.e.x));
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    let var_0 = func_4(all(arg_0.yx), false, vec4<u32>(global0[_wgslsmith_index_u32(reverseBits(func_2(~vec2<i32>(u_input.d, -2147483647i), vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.c), Struct_1(vec4<f32>(-689f, 1389f, 1379f, -799f), global0[_wgslsmith_index_u32(0u, 32u)], false, vec3<bool>(true, false, arg_0.x), arg_0))), 32u)], ~(~1u), ~_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(17640u, 32u)], 3439u), firstLeadingBit(12227u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(455f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(809f * -1273f), _wgslsmith_f_op_f32(select(1042f, 1699f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(298f, -903f) + 1f)))));
    var var_1 = Struct_1(vec4<f32>(835f, _wgslsmith_f_op_f32(step(-415f, -1091f)), -604f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), 1146f))), 60126u, all(select(select(!vec4<bool>(true, var_0.c, var_0.c, var_0.c), !vec4<bool>(var_0.e.x, arg_0.x, false, true), select(vec4<bool>(true, var_0.e.x, false, false), vec4<bool>(true, var_0.c, true, true), false)), select(vec4<bool>(false, false, true, arg_0.x), select(vec4<bool>(arg_0.x, false, var_0.e.x, false), vec4<bool>(arg_0.x, var_0.d.x, arg_0.x, true), vec4<bool>(true, false, arg_0.x, true)), all(arg_0.yy)), select(!vec4<bool>(true, true, arg_0.x, true), !vec4<bool>(arg_0.x, false, var_0.c, arg_0.x), select(vec4<bool>(var_0.d.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, var_0.d.x), vec4<bool>(true, false, false, var_0.c))))), vec3<bool>(false, !(!(u_input.c < 35205i)), true), select(func_4(~2147483647i != _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, -1i)), true, select(min(u_input.b, u_input.b), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35777u, 32u)], 32u)], 0u, 4294967295u) << (vec4<u32>(113160u, 12075u, 0u, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(false, true, true, var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))).e, var_0.d, true));
    let var_2 = var_0;
    return var_2.d;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    return u_input.b.xwz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    var var_0 = func_5(true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(746f, 224f, _wgslsmith_f_op_f32(ceil(583f)), _wgslsmith_f_op_f32(f32(-1f) * -986f))), ~1u, !any(vec4<bool>(true, true, true, true)), !vec3<bool>(any(vec2<bool>(false, false)), false, true), !func_1(vec3<bool>(true, false, true))));
    let var_1 = func_4(any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), !(!any(vec2<bool>(true, true))), u_input.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(228f, -287f, 449f), vec3<f32>(-1000f, -622f, 1000f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -966f, 1091f))))), vec3<f32>(-441f, -170f, _wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(f32(-1f) * -379f))))));
    global0 = array<u32, 32>();
    var_0 = abs(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(0u, var_1.b) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), reverseBits(58037u & var_1.b), abs(_wgslsmith_mult_u32(var_0.x, var_0.x))));
    var_0 = min(u_input.b.zzz, ~u_input.b.yww);
    let var_2 = ~vec3<u32>(27415u, ~(~(~u_input.b.x)), _wgslsmith_mult_u32(~4294967295u, ~1u));
    let var_3 = u_input.a;
    global0 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~var_2, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.x, var_0.x), 0u), global0[_wgslsmith_index_u32(func_2(u_input.a.zx, -vec4<i32>(76567i, -28327i, var_3.x, -1i), var_1), 32u)], 1u)));
}

