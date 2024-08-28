struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(1163f, 428f, 584f, 759f);

var<private> global1: vec3<f32>;

var<private> global2: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    var var_0 = u_input.a.yz;
    var_0 = ~vec2<i32>(var_0.x, i32(-1i) * -u_input.a.x);
    var var_1 = arg_0.d.x;
    let var_2 = var_0.x;
    let var_3 = global0[_wgslsmith_index_u32(0u, 4u)];
    return _wgslsmith_dot_vec3_u32(arg_0.d, ~abs(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.d.x, arg_0.d.x), vec3<u32>(arg_0.d.x, 13186u, arg_0.d.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = all(!select(arg_0.c, arg_0.c, arg_3.e.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1001f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-129f, global1.x))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, 1283f), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_1.d.x, 4u)], -1297f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -554f)))), 0u < _wgslsmith_clamp_u32(12207u, arg_0.d.x, func_3(arg_0, arg_0.c.xy, false)), select(vec3<bool>(!any(vec3<bool>(true, true, true)), arg_0.e.x, false), select(arg_3.c, select(vec3<bool>(arg_3.e.x, arg_0.b, arg_1.b), !vec3<bool>(true, arg_1.e.x, arg_1.e.x), arg_3.c), !arg_1.c), false), arg_3.d, vec2<bool>(arg_1.e.x, true));
    let var_2 = Struct_1(arg_1.a, false, arg_3.c, vec3<u32>(~(~(arg_1.d.x ^ arg_3.d.x)), 8654u, 0u), select(arg_3.c.zz, var_1.e, vec2<bool>(any(!vec3<bool>(false, false, arg_1.a)), !any(vec2<bool>(arg_0.a, arg_3.a)))));
    let var_3 = Struct_1(!arg_1.a, arg_0.b | !(all(vec4<bool>(true, true, false, var_2.c.x)) & any(arg_0.c.yz)), var_1.c, arg_3.d, !select(vec2<bool>(arg_1.b, all(vec2<bool>(var_1.a, arg_3.a))), select(select(vec2<bool>(arg_1.e.x, false), vec2<bool>(arg_3.a, false), vec2<bool>(arg_1.a, arg_0.b)), select(arg_3.c.yy, vec2<bool>(arg_3.e.x, true), arg_3.e), arg_1.e), arg_0.b));
    global1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-2011f)), global1.x)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(var_3.d.x), 0u), 4u)]))));
    return -u_input.a;
}

fn func_4(arg_0: vec3<i32>) -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 555f, -159f), vec3<f32>(166f, 2038f, 2485f), false))))));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-629f, -797f, 614f) * vec3<f32>(111f, -1078f, -227f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, 1000f)))))) * vec3<f32>(global1.x, global0[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-402f * global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, global1.x, 413f) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(19801u, 4u)], global1.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(55914u, 18040u), vec2<u32>(0u, 682u)), 4u)], 2662f, _wgslsmith_f_op_f32(abs(209f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 343f, 707f)))))));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global1.x, global0[_wgslsmith_index_u32(1u, 4u)]) + vec3<f32>(-247f, -1000f, 113f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(12864u, 4u)], global1.x, global1.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(180f, global0[_wgslsmith_index_u32(4294967295u, 4u)], global1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -563f, 1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(54450u, 4u)], 268f, 351f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 512f, -1395f) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 4u)], 484f, -688f)))))));
    var var_0 = func_2(Struct_1(select(false, false, any(vec2<bool>(true, true))), any(vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<u32>(10067u, select(~39038u, min(37138u, 19433u), true), ~max(11824u, 9387u)), vec2<bool>(!any(vec2<bool>(false, false)), true)), Struct_1(true, true, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), 486f != global0[_wgslsmith_index_u32(0u, 4u)]), true), max(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(46233u, 23580u, 64027u), vec3<u32>(1u, 0u, 0u))), vec2<bool>(all(vec3<bool>(false, false, true)), global1.x == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)]))), vec4<i32>(~firstLeadingBit(u_input.b), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.b | -1i, u_input.a.x)), abs(1i) | (_wgslsmith_mult_i32(arg_0.x, arg_0.x) | 8902i), u_input.a.x), Struct_1(any(vec4<bool>(select(false, false, false), global1.x >= global0[_wgslsmith_index_u32(40334u, 4u)], all(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, false)))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(81997u, 0u, 1u), 4u)], 2205f) <= global0[_wgslsmith_index_u32(~(16545u >> (1u % 32u)), 4u)], !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), all(vec3<bool>(false, false, true))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 92466u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), 1u), _wgslsmith_mod_u32(~4294967295u, max(4294967295u, 4294967295u)), 1u), vec2<bool>(false, true))).x;
    let var_1 = Struct_1(false, true, select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), !all(vec3<bool>(true, false, true)))), vec3<u32>(_wgslsmith_sub_u32(func_3(Struct_1(true, true, vec3<bool>(true, true, false), vec3<u32>(4294967295u, 4294967295u, 26231u), vec2<bool>(false, false)), vec2<bool>(false, true), true) & 46665u, min(max(0u, 0u), reverseBits(21018u))), _wgslsmith_mult_u32(4746u, abs(_wgslsmith_sub_u32(1u, 1u))), 1u), vec2<bool>(select(any(vec3<bool>(false, false, false)), true, -u_input.b >= (i32(-1i) * -1i)), true));
    return any(vec2<bool>(true, ~(~1u) < ~var_1.d.x));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(-690f, global1.x));
    let var_1 = u_input.a.x;
    var var_2 = !vec4<bool>(!func_4(func_2(Struct_1(true, false, vec3<bool>(false, false, true), vec3<u32>(1u, 36161u, 34807u), vec2<bool>(false, false)), Struct_1(false, true, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 0u, 1u), vec2<bool>(true, false)), vec4<i32>(-1i, u_input.a.x, 0i, u_input.a.x), Struct_1(true, true, vec3<bool>(false, false, true), vec3<u32>(17184u, 56552u, 46529u), vec2<bool>(false, false)))), false, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(40686u, 4u)])) < -563f, false);
    let var_3 = Struct_1(!(!(!var_2.x)), select(var_2.x, ((1i & var_1) | _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) < _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -9830i), ~vec2<i32>(-37101i, -2147483647i)), true && any(vec2<bool>(true, var_2.x))), var_2.wwy, firstLeadingBit(select(~vec3<u32>(31404u, 3790u, 0u), abs(vec3<u32>(80043u, 4294967295u, 59313u)), var_2.zxy)), select(var_2.xz, vec2<bool>(true, true), true));
    var var_4 = 2147483647i;
    return !var_2.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 54197u;
    var var_1 = Struct_1(select(-(-12045i >> (0u % 32u)) >= u_input.b, all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0, 4u)] < 800f)), !(!(u_input.b >= 59656i))), true, func_1(), ~(~vec3<u32>(18590u, var_0, 26589u)), select(vec2<bool>(false, true != (global1.x <= 1644f)), !func_1().xx, !(_wgslsmith_mod_i32(u_input.b, u_input.a.x) != u_input.a.x)));
    var_1 = Struct_1(_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(var_0, var_1.d.x, var_1.b), ~0u), 4u)]) != _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global0[_wgslsmith_index_u32(var_0, 4u)]))), ((min(var_1.d.x, 4294967295u) > 1u) | (var_1.d.x == 31870u)) | (!all(vec4<bool>(var_1.e.x, var_1.a, false, false)) & any(select(vec4<bool>(var_1.a, true, var_1.e.x, var_1.c.x), vec4<bool>(true, true, var_1.e.x, true), vec4<bool>(var_1.a, true, var_1.c.x, true)))), var_1.c, vec3<u32>(var_0, ~(~(~1u)), 4294967295u), func_1().yz);
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, u_input.a.x, -29443i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.a.x, u_input.b), firstLeadingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)))) & select(vec4<i32>(23500i, -9639i, -1i, 35597i) << (abs(vec4<u32>(1u, var_0, var_1.d.x, var_0)) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -58141i, 1i, abs(-27824i), countOneBits(u_input.b)), !select(vec4<bool>(true, var_1.e.x, true, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.a, var_1.e.x), vec4<bool>(true, var_1.e.x, var_1.e.x, true))));
    var_1 = Struct_1(var_1.a, !var_1.e.x, !var_1.c, ~var_1.d, var_1.c.zy);
    var_1 = Struct_1(var_1.c.x, global1.x < _wgslsmith_f_op_f32(f32(-1f) * -738f), func_1(), ~firstLeadingBit(~select(var_1.d, vec3<u32>(0u, var_0, var_1.d.x), var_1.b)), vec2<bool>(var_1.d.x >= 0u, any(vec3<bool>(false || var_1.c.x, var_1.a, var_1.b))));
    let var_3 = 977f;
    global2 = _wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(~(~var_1.d.xy), var_1.d.yx), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(5939u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 4294967295u), var_1.d.zz)), ~var_1.d.zz, abs(select(var_1.d.zz, var_1.d.yx, vec2<bool>(true, var_1.e.x))))), ~(~(~vec2<u32>(0u, var_1.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(Struct_1(true, !var_1.e.x, !var_1.c, vec3<u32>(var_1.d.x, var_0, 65373u) & var_1.d, select(vec2<bool>(var_1.e.x, true), var_1.c.xz, false)), func_1().xz, true && var_1.b));
}

