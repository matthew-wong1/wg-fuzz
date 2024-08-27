struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> i32 {
    var var_0 = Struct_1(-1000f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(floor(1261f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1658f)))))));
    global0 = array<bool, 24>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(var_0.a, var_0.b.x)), var_0.b);
    let var_2 = vec4<i32>(-reverseBits(2147483647i), ~(~(-1i)), _wgslsmith_dot_vec4_i32(~firstTrailingBit(min(vec4<i32>(-28528i, 0i, 34552i, 0i), vec4<i32>(-1i, 1i, -24724i, -18337i))), -firstTrailingBit(select(vec4<i32>(2147483647i, -389i, -2147483647i, 11381i), vec4<i32>(0i, -2147483647i, -16889i, 31401i), vec4<bool>(global0[_wgslsmith_index_u32(4717u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], false)))), _wgslsmith_mod_i32(-16907i, -_wgslsmith_dot_vec2_i32(~vec2<i32>(4627i, 2147483647i), reverseBits(vec2<i32>(-2147483647i, 17142i)))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), -1111f), -1762f));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-1i | reverseBits(var_2.x)), ~_wgslsmith_dot_vec3_i32(var_2.yxw, _wgslsmith_div_vec3_i32(var_2.zwz, var_2.yyx))), _wgslsmith_mod_vec2_i32(-vec2<i32>(select(var_2.x, var_2.x, true), -52124i), vec2<i32>(var_2.x, ~(~(-2147483647i)))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(263f * _wgslsmith_f_op_f32(step(527f, arg_3.b.x)))))), _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-729f, -873f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, 555f)))))));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))), 282f), var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_3.b))) * _wgslsmith_f_op_vec2_f32(-var_0.b)));
    var var_2 = !vec4<bool>(true, global0[_wgslsmith_index_u32(~(~(~u_input.a.x)), 24u)], arg_1 <= abs(_wgslsmith_sub_i32(arg_1, 76366i)), true);
    global0 = array<bool, 24>();
    return u_input.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = vec3<u32>(~u_input.a.x, func_4(~u_input.a.x, func_3(vec4<u32>(firstTrailingBit(u_input.a.x), ~1u, ~u_input.a.x, 1u), ~(~0u)), vec4<u32>(~u_input.a.x, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), arg_1 ^ (arg_1 ^ arg_1), 62625u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x - -2475f)), vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, var_0.a)), _wgslsmith_f_op_f32(min(var_0.b.x, var_1.a))))), ~19304u);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.xwz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.yww, arg_0.wzx, vec3<bool>(arg_2, true, global0[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(563f, var_1.a, -420f) - vec3<f32>(var_0.b.x, 643f, 547f))), vec3<f32>(-1637f, -1272f, _wgslsmith_f_op_f32(-var_1.b.x))))), select(!(!(!vec3<bool>(arg_2, global0[_wgslsmith_index_u32(var_2.x, 24u)], false))), select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1, var_2.x), vec3<u32>(var_2.x, var_2.x, arg_1)), 24u)], true, var_1.a != 425f), vec3<bool>(!global0[_wgslsmith_index_u32(30622u, 24u)], select(false, arg_2, arg_2), !global0[_wgslsmith_index_u32(15168u, 24u)]), select(vec3<bool>(true, arg_2, true), vec3<bool>(false, true, false), !vec3<bool>(arg_2, arg_2, true))), select(!(!vec3<bool>(arg_2, arg_2, arg_2)), !vec3<bool>(arg_2, arg_2, true), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_2, true), !vec3<bool>(global0[_wgslsmith_index_u32(34153u, 24u)], global0[_wgslsmith_index_u32(arg_1, 24u)], arg_2), arg_2)))));
    global0 = array<bool, 24>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(187f, -522f))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1264f * arg_3.b.x)), var_3.x)), -485f));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_1 = select(vec3<bool>(((global0[_wgslsmith_index_u32(arg_0, 24u)] | global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) && global0[_wgslsmith_index_u32(func_4(u_input.a.x, -1i, vec4<u32>(35404u, 0u, 34361u, arg_1), Struct_1(-1000f, vec2<f32>(arg_2.b.x, var_0.a))), 24u)]) != true, true, true), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(66820u, 24u)], global0[_wgslsmith_index_u32(arg_1, 24u)], global0[_wgslsmith_index_u32(arg_1, 24u)]))), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true, global0[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 24u)]));
    let var_2 = true;
    return Struct_1(-541f, vec2<f32>(_wgslsmith_f_op_f32(abs(arg_3.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(226f * 1054f) - arg_3.a)))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - arg_0)), arg_0, !arg_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1485f, _wgslsmith_f_op_f32(arg_0 + -202f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) * vec2<f32>(arg_0, arg_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(300f, -3092f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0)))) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)))));
    var_0 = func_5(u_input.a.x, u_input.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-251f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1000f))), var_0.b), func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), var_0.a, global0[_wgslsmith_index_u32(4294967295u, 24u)] | global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(-3500f + _wgslsmith_f_op_f32(var_0.b.x + 1000f)), _wgslsmith_f_op_f32(-182f - _wgslsmith_f_op_f32(step(var_0.b.x, var_0.a)))), ~(~u_input.a.x), all(select(vec4<bool>(global0[_wgslsmith_index_u32(20946u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], false), !arg_1, vec4<bool>(arg_1.x, true, true, global0[_wgslsmith_index_u32(4294967295u, 24u)]))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-509f - -284f), _wgslsmith_f_op_f32(-arg_0)))));
    return func_5(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xz, _wgslsmith_mult_vec2_u32(select(u_input.a.zz, u_input.a.xy, global0[_wgslsmith_index_u32(0u, 24u)]), firstTrailingBit(vec2<u32>(1979u, 1u))) >> (u_input.a.yx % vec2<u32>(32u))), func_2(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(floor(arg_0)), -103f), ~(1u | countOneBits(u_input.a.x)), any(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), arg_1.xw, vec2<bool>(arg_1.x, arg_1.x)), vec2<bool>(arg_1.x, true), all(arg_1.zw))), func_2(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - 391f), _wgslsmith_f_op_f32(trunc(-877f)), _wgslsmith_f_op_f32(-163f - 781f), _wgslsmith_div_f32(-1913f, arg_0)), reverseBits(~25240u), select(false || arg_1.x, false, true), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, arg_0, arg_0, arg_0))), 0u, all(vec3<bool>(true, global0[_wgslsmith_index_u32(30130u, 24u)], global0[_wgslsmith_index_u32(44732u, 24u)])), func_2(vec4<f32>(arg_0, -2009f, arg_0, -668f), u_input.a.x, arg_1.x, Struct_1(-103f, var_0.b))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, arg_0)) + _wgslsmith_f_op_f32(trunc(-1944f))), var_0.b.x)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1607f, -412f, 710f, 749f) - vec4<f32>(arg_2.b.x, arg_2.a, 469f, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, arg_0.a, arg_2.a, -581f), vec4<f32>(1139f, -589f, arg_0.b.x, arg_2.a), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], false, false)))))));
    let var_1 = 0u;
    global0 = array<bool, 24>();
    let var_2 = arg_2;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_5(1u, var_1, arg_0, arg_2).b.x, _wgslsmith_f_op_f32(var_0.x * var_2.b.x), var_0.x, var_2.b.x) + vec4<f32>(-223f, _wgslsmith_f_op_f32(arg_0.b.x + var_0.x), arg_0.b.x, -548f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(1610f)), _wgslsmith_f_op_f32(ceil(1071f)), 611f, func_5(arg_1, arg_1, arg_2, arg_0).a)))));
    return _wgslsmith_f_op_f32(select(-1277f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1443f, arg_2.a, global0[_wgslsmith_index_u32(arg_1, 24u)])))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_6(Struct_1(2386f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1513f, 869f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(107f, 352f)))))), u_input.a.x, func_1(-442f, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], false & global0[_wgslsmith_index_u32(u_input.a.x, 24u)], any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 24u)]))), -2147483647i, vec4<i32>(2147483647i, 1i, -1i, -39497i) >> (abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1396f, -1558f))));
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let var_1 = max(countOneBits(vec2<u32>(~abs(u_input.a.x), reverseBits(9062u))), max(vec2<u32>(_wgslsmith_mod_u32(76883u, select(41673u, u_input.a.x, false)), _wgslsmith_div_u32(countOneBits(4294967295u), u_input.a.x << (33536u % 32u))), ~_wgslsmith_add_vec2_u32(abs(u_input.a.zy), u_input.a.xz)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -939f);
    var var_3 = Struct_1(520f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, _wgslsmith_f_op_f32(-533f - var_2)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1189f) - vec2<f32>(var_2, var_2)), vec2<f32>(660f, var_2))), vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-847f - var_2)))));
    global0 = array<bool, 24>();
    var_3 = func_5(min(var_1.x, ~u_input.a.x), 0u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1605f, var_3.a) - var_3.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b + var_3.b)))), func_5(firstTrailingBit(_wgslsmith_div_u32(4294967295u >> (u_input.a.x % 32u), func_4(40063u, 1i, vec4<u32>(u_input.a.x, 29u, 4294967295u, 48349u), Struct_1(-1569f, vec2<f32>(var_2, 1599f))))), var_1.x, Struct_1(-702f, _wgslsmith_f_op_vec2_f32(var_3.b * _wgslsmith_f_op_vec2_f32(sign(var_3.b)))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(310f)))), func_5(~1u, 10007u, func_2(vec4<f32>(264f, -571f, -1476f, -1164f), 1u, false, Struct_1(-392f, var_3.b)), func_2(vec4<f32>(1779f, 150f, -625f, var_3.a), 4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], Struct_1(-928f, vec2<f32>(var_3.b.x, 1659f)))).b)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.x)))) - var_3.a), var_3.a);
}

