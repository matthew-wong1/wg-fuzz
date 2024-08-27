struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1491f, -1744f, 2833f, -2595f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, arg_0.a.b.x, -672f, 1845f) - vec4<f32>(global0.x, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.a))))) + vec4<f32>(_wgslsmith_div_f32(1253f, _wgslsmith_f_op_f32(f32(-1f) * -584f)), arg_0.a.a, -1027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_0.a.b.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2090f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a - arg_0.a.a) * _wgslsmith_f_op_f32(round(1147f))), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, arg_0.a.d.x)) * _wgslsmith_f_op_f32(-global0.x)), 994f, 1f))), select(vec4<bool>(true, true, true, arg_0.a.c), vec4<bool>(any(select(vec2<bool>(false, arg_0.a.c), vec2<bool>(true, true), arg_0.a.c)), arg_0.a.c, !(!arg_0.a.c), any(select(vec3<bool>(false, arg_0.a.c, arg_0.a.c), vec3<bool>(arg_0.a.c, false, true), false))), !vec4<bool>(false, arg_0.a.c, false, true))));
    return vec4<f32>(-270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.a.d.x, global0.x, true))))) - -322f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-436f, 157f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-arg_0.a.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-689f))));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-495f)), global0.x, _wgslsmith_f_op_f32(select(1031f, global0.x, true)), _wgslsmith_f_op_f32(select(global0.x, global0.x, false))))));
    var var_0 = -748f != _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * global0.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -442f)));
    let var_2 = Struct_2(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_3 = 1u ^ ~firstTrailingBit(~7103u);
    return !var_2.a;
}

fn func_2() -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 650f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, global0.x, -357f) + vec4<f32>(-482f, -310f, 781f, global0.x))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(1192f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(trunc(-265f))), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -397f), -539f)), global0.x)));
    var var_0 = select(vec3<bool>(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-523f, -1316f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_3(global0.x, global0.yy, false, global0.zx, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))))))), true, true), vec3<bool>(!any(vec2<bool>(true, true)), !(false != (global0.x == global0.x)), true), vec3<bool>((i32(-1i) * -u_input.a.x) == _wgslsmith_dot_vec4_i32(vec4<i32>(6981i, -2147483647i, u_input.a.x, u_input.c), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -30841i, -1i, 1i))), 5746i >= _wgslsmith_add_i32(max(54847i, u_input.a.x), u_input.a.x & -74851i), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true))));
    let var_1 = var_0.yy;
    var_0 = vec3<bool>(select(any(!select(vec2<bool>(false, var_0.x), var_0.xx, var_1.x)), 1i >= u_input.c, all(vec3<bool>(any(vec3<bool>(var_0.x, false, var_1.x)), select(var_1.x, var_0.x, var_0.x), false))), global0.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * 1464f), !all(!var_0.xx));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 1425f, -247f, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -574f, 1506f, 611f)))) * vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), -138f), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(round(global0.x))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = u_input.a;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(max(-1281f, -916f));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2())))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), 1146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d.x)), _wgslsmith_f_op_f32(807f * -587f)))));
    return arg_1.a;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(492f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1154f)))));
    let var_0 = Struct_2(false);
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, _wgslsmith_f_op_f32(round(475f)), _wgslsmith_f_op_f32(min(arg_2, arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_1(arg_3, Struct_5(Struct_3(-538f, global0.wz, var_0.a, vec2<f32>(arg_1, -673f), u_input.a.wwy)), Struct_1(true, vec2<u32>(arg_0, u_input.b), 1000f, true), vec4<u32>(16067u, arg_0, 37935u, u_input.d)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x + _wgslsmith_div_f32(430f, arg_1)), -541f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - arg_2), var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(floor(-2306f)), arg_2, 718f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(arg_3))).x, _wgslsmith_f_op_f32(f32(-1f) * -785f)))), vec4<bool>(any(select(vec4<bool>(true, false, arg_3.c, arg_3.c), vec4<bool>(false, true, false, true), var_0.a)), !any(vec4<bool>(true, true, arg_3.c, var_0.a)), !(arg_0 > 11815u), arg_3.e.x <= (22273i | u_input.c)))), false));
    var var_1 = Struct_5(Struct_3(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(abs(arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, global0.x)), true, global0.xx, vec3<i32>(1i, ~(~arg_3.e.x), -_wgslsmith_sub_i32(1i, 47487i))));
    let var_2 = true;
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)))), -658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.b.x))), _wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(sign(arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - global0.x), global0.x, _wgslsmith_f_op_f32(-369f + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -712f)) - vec4<f32>(437f, -1373f, _wgslsmith_f_op_f32(global0.x - 134f), _wgslsmith_f_op_f32(-global0.x))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, _wgslsmith_f_op_f32(round(1380f)), _wgslsmith_f_op_f32(ceil(global0.x)), global0.x) + _wgslsmith_f_op_vec4_f32(func_5(31898u, global0.x, global0.x, func_1(Struct_3(global0.x, global0.ww, false, vec2<f32>(272f, global0.x), u_input.a.yxy), Struct_5(Struct_3(global0.x, vec2<f32>(global0.x, -445f), false, vec2<f32>(618f, global0.x), u_input.a.yxy)), Struct_1(false, vec2<u32>(u_input.b, u_input.b), -2131f, true), vec4<u32>(u_input.d, 70001u, 4294967295u, u_input.b))))))));
    let var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(u_input.c, 0i & u_input.c)), ~u_input.a.x | u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -2147483647i, -u_input.c), u_input.c) ^ -u_input.a.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(478f + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_1(Struct_3(1505f, global0.zy, false, vec2<f32>(global0.x, 323f), u_input.a.yxz), Struct_5(Struct_3(global0.x, vec2<f32>(-931f, global0.x), false, vec2<f32>(-1117f, 484f), vec3<i32>(u_input.a.x, 1i, u_input.a.x))), Struct_1(false, vec2<u32>(4294967295u, 13880u), global0.x, false), vec4<u32>(u_input.b, u_input.d, u_input.d, u_input.b)).a, global0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - -133f))), _wgslsmith_f_op_f32(-global0.x));
    let var_1 = 1u;
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1728f, _wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), true)), 810f)), vec4<f32>(global0.x, _wgslsmith_f_op_vec4_f32(func_5(var_1, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), Struct_3(global0.x, _wgslsmith_f_op_vec2_f32(-global0.wx), false, _wgslsmith_f_op_vec2_f32(-global0.zx), vec3<i32>(17643i, var_0.x, var_0.x)))).x, _wgslsmith_f_op_vec4_f32(func_3(Struct_5(func_1(Struct_3(225f, vec2<f32>(global0.x, 867f), false, vec2<f32>(428f, -875f), vec3<i32>(u_input.a.x, 1i, var_0.x)), Struct_5(Struct_3(global0.x, vec2<f32>(-2310f, -590f), false, global0.yy, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), Struct_1(true, vec2<u32>(u_input.d, u_input.b), -1010f, false), vec4<u32>(u_input.b, u_input.d, 48002u, var_1))))).x, global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(717f * _wgslsmith_f_op_f32(min(1014f, 1297f)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(global0.x * -167f)) * _wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_3(1187f, global0.zw, false, vec2<f32>(538f, global0.x), vec3<i32>(u_input.c, 44126i, -2147483647i))))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c << (_wgslsmith_mult_u32(var_1, var_1) % 32u)) >> (~select(_wgslsmith_dot_vec3_u32(vec3<u32>(23889u, 0u, var_1), vec3<u32>(u_input.b, 0u, 45794u)), abs(u_input.d), true) % 32u));
}

