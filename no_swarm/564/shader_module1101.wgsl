struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(516f, 1125f), vec2<f32>(465f, 523f), vec2<f32>(-1462f, 481f), vec2<f32>(1000f, -356f), vec2<f32>(1129f, -226f), vec2<f32>(1711f, 750f), vec2<f32>(-1524f, 146f), vec2<f32>(-905f, 748f), vec2<f32>(1535f, -498f), vec2<f32>(-1000f, 135f), vec2<f32>(-1495f, -2540f), vec2<f32>(-1029f, -851f), vec2<f32>(992f, -202f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    let var_1 = var_0;
    var var_2 = select(!vec4<bool>(!arg_1.b.x, false, arg_2.c.x == ~arg_2.d, any(arg_1.b.yyz)), !arg_1.b, false);
    return -1067f;
}

fn func_2() -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(812f, 845f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, Struct_3(-1i, vec4<bool>(true, false, true, true), vec2<u32>(u_input.b.x, u_input.b.x), u_input.a), Struct_3(-1i, vec4<bool>(true, true, true, true), u_input.b, u_input.b.x), Struct_2(Struct_1(-1109f), Struct_1(942f), 0i, Struct_1(1760f), Struct_1(-1185f)))) + _wgslsmith_f_op_f32(1353f - 741f))) * _wgslsmith_f_op_f32(-1309f * _wgslsmith_f_op_f32(max(-190f, _wgslsmith_f_op_f32(step(316f, -772f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 1174f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f))), false)));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f) + _wgslsmith_f_op_f32(var_0.x + var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(abs(u_input.a), 13u)], global1[_wgslsmith_index_u32(~0u, 13u)], select(vec2<bool>(true, false), vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))))) + global1[_wgslsmith_index_u32((~u_input.a | 12880u) | 0u, 13u)]));
    let var_2 = vec3<u32>(abs(~29137u), ~u_input.a, _wgslsmith_div_u32(~1u, 73718u));
    var var_3 = var_2.x;
    return all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, var_0.x > 1884f, u_input.a <= u_input.b.x), true), !select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(!(!any(vec3<bool>(true, true, true))), select(_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(u_input.b.x, 31786u)) > 1u, true, true), any(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), func_2())), any(!global0[_wgslsmith_index_u32(1u, 13u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~0u, 13u)])) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-178f, -581f), arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, true)))))));
    let var_2 = u_input.a;
    var_1 = _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~((1u & var_2) << (firstTrailingBit(0u) % 32u)) ^ ~(~0u | u_input.b.x), 13u)]);
    var var_3 = !(!(!(!(!vec4<bool>(var_0.x, false, false, var_0.x)))));
    return Struct_1(var_1.x);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global0 = array<vec2<bool>, 13>();
    let var_0 = _wgslsmith_mult_vec2_u32(arg_3.xx, vec2<u32>(firstTrailingBit(u_input.b.x ^ max(arg_1, 12342u)), ~(~firstTrailingBit(4294967295u))));
    var var_1 = !select(select(vec2<bool>(true, true), select(global0[_wgslsmith_index_u32(~91959u, 13u)], select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(false, false, true)), all(global0[_wgslsmith_index_u32(var_0.x << (0u % 32u), 13u)])), global0[_wgslsmith_index_u32(arg_1 & u_input.a, 13u)], !((arg_3.x ^ 44965u) > select(20766u, arg_3.x, true)));
    global0 = array<vec2<bool>, 13>();
    return Struct_2(arg_2, arg_2, ((1i >> (arg_1 % 32u)) & ~44241i) | ((1i << (var_0.x % 32u)) | -_wgslsmith_sub_i32(-1i, 680i)), arg_2, arg_2);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> f32 {
    var var_0 = Struct_3(abs(1i), arg_2.a.b, vec2<u32>(reverseBits(_wgslsmith_sub_u32(~arg_2.b.x, ~u_input.a)), abs(~arg_2.a.c.x)), 4294967295u);
    let var_1 = arg_2.b;
    let var_2 = ~arg_2.b.x;
    var_0 = Struct_3(-68570i << (min(var_0.c.x, 28978u) % 32u), !arg_2.a.b, vec2<u32>(reverseBits(46740u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.b.x), vec2<u32>(6749u, u_input.b.x)), arg_2.a.d) ^ ~4294967295u), _wgslsmith_sub_u32(var_0.c.x, var_1.x));
    var_0 = Struct_3(-1i, vec4<bool>(all(select(arg_2.a.b.ww, select(vec2<bool>(arg_3, var_0.b.x), var_0.b.wy, vec2<bool>(var_0.b.x, arg_3)), arg_2.a.b.zy)), any(!select(arg_2.a.b, arg_2.a.b, vec4<bool>(true, true, true, arg_3))), 1u != firstTrailingBit(var_2), var_0.b.x), var_0.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_2.b.zzy, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(55300u, var_2, arg_2.a.d), var_1.xwy), var_1.xxw, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_2, 10190u), vec3<u32>(var_1.x, 1u, var_1.x)))), _wgslsmith_add_u32(~4294967295u, min(var_2 & u_input.a, reverseBits(var_2)))));
    return 305f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(-714f, u_input.a, func_1(Struct_1(757f)), abs(vec3<u32>(u_input.b.x, 4294967295u, 21233u))), ~max(1i, -33962i), Struct_4(Struct_3(14811i, vec4<bool>(true, false, false, false), vec2<u32>(0u, u_input.b.x), 92804u), vec4<u32>(88326u, u_input.b.x, 62581u, u_input.a), ~vec4<i32>(-1i, -36551i, -1i, 7374i)), select(true, true, true) & true))), _wgslsmith_f_op_f32(1568f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(false, Struct_3(9466i, vec4<bool>(true, false, false, false), u_input.b, 17074u), Struct_3(16518i, vec4<bool>(false, true, false, true), vec2<u32>(u_input.a, 1u), u_input.a), Struct_2(Struct_1(-1000f), Struct_1(395f), 1i, Struct_1(-565f), Struct_1(-873f)))), _wgslsmith_f_op_f32(select(1254f, 2709f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1720f, 542f)) + _wgslsmith_div_f32(-537f, -1000f)) * _wgslsmith_f_op_f32(sign(-1421f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1877f, -111f)) - _wgslsmith_f_op_f32(func_3(false, Struct_3(-2147483647i, vec4<bool>(false, true, true, true), u_input.b, 0u), Struct_3(-1i, vec4<bool>(false, true, true, false), vec2<u32>(u_input.b.x, u_input.b.x), u_input.a), Struct_2(Struct_1(-1000f), Struct_1(648f), -11817i, Struct_1(-681f), Struct_1(1307f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)))));
    let var_1 = abs(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 98990u))) >> (~(u_input.b.x ^ u_input.b.x) % 32u), ~(~u_input.a), _wgslsmith_mod_u32(~(u_input.a << (u_input.a % 32u)), ~select(u_input.a, u_input.a, false))));
    let var_2 = func_4(var_0.x, ~u_input.b.x, func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-971f, -642f)))))), 66269u, Struct_1(var_0.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, 62517u), var_1.ywx)).a, vec3<u32>(_wgslsmith_dot_vec4_u32(var_1, firstTrailingBit(~vec4<u32>(20513u, 4294967295u, 1u, var_1.x))), u_input.a, ~28450u)).a;
    var var_3 = _wgslsmith_div_f32(-340f, var_0.x);
    global1 = array<vec2<f32>, 13>();
    let var_4 = vec4<i32>(-2147483647i, ~(-(~min(0i, 2200i))), 2147483647i, ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(37194i, var_4.x), vec2<i32>(var_4.x, var_4.x)), _wgslsmith_add_i32(-2147483647i, 74477i)), vec2<i32>(var_4.x, var_4.x << (4294967295u % 32u)))));
}

