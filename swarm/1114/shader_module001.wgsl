struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<i32> {
    global0 = vec2<i32>(arg_1.a, u_input.a);
    var var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1484f, 895f, 314f, 1141f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, -502f, 574f, 1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, -1137f, -988f, 1360f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2036f, -1166f, -1166f, -1025f))), !all(vec2<bool>(arg_0.x, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1463f, -1244f, -1057f, 111f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-412f, 460f, 615f, 534f), vec4<f32>(1835f, -333f, -168f, -1192f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1866f, 1297f, 1134f, -1463f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1172f, -1000f, 523f))))), 34183i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(504f, 470f), vec2<f32>(-345f, -585f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2150f, -813f) + vec2<f32>(381f, -2087f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1009f, -922f)))));
    var var_1 = !vec3<bool>(select((var_0.d.x != -676f) && false, var_0.d.x > var_0.d.x, false), arg_1.c, true);
    var var_2 = Struct_4(Struct_3(Struct_1(-var_0.c | u_input.a, u_input.a, arg_1.c, arg_1.d, arg_1.e)));
    global0 = -(~(-(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, -25021i), vec2<i32>(global0.x, global0.x)) | -vec2<i32>(-50437i, global0.x))));
    return vec3<i32>(-2147483647i, _wgslsmith_sub_i32(5193i, var_0.c) | -1i, 2147483647i);
}

fn func_2(arg_0: bool) -> Struct_4 {
    global0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(52731i, 2147483647i)), vec2<i32>(global0.x, -12795i));
    let var_0 = vec3<i32>(-global0.x, abs(-u_input.a) | 1i, ~(~u_input.a)) ^ func_3(select(select(!vec4<bool>(arg_0, true, true, arg_0), !vec4<bool>(false, arg_0, false, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, false)), vec4<bool>(true, global0.x > -13383i, true, !arg_0), select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0, true, false), true)), Struct_1(~_wgslsmith_div_i32(u_input.a, -6436i), _wgslsmith_div_i32(global0.x | -11888i, reverseBits(6992i)), !arg_0, select(select(vec2<u32>(1u, 11361u), vec2<u32>(0u, 23885u), vec2<bool>(arg_0, arg_0)), ~vec2<u32>(0u, 0u), !arg_0), 6929u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1363f + 638f)), _wgslsmith_f_op_f32(-1037f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-379f * -1219f), _wgslsmith_f_op_f32(round(-569f))) - -1292f)), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1289f, 1012f))) - -1320f), _wgslsmith_f_op_f32(floor(-461f))));
    let var_2 = vec3<bool>(!arg_0, arg_0, arg_0);
    let var_3 = Struct_1(u_input.a, 0i, true & (any(select(var_2, vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, var_2.x, var_2.x))) == !(!arg_0)), vec2<u32>(1u, 1u), 4294967295u);
    return Struct_4(Struct_3(var_3));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_4(func_2(!(!arg_0.a.a.c)).a);
    var var_1 = vec3<i32>(~0i, firstLeadingBit(var_0.a.a.a >> (~reverseBits(arg_0.a.a.e) % 32u)), arg_0.a.a.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-922f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-473f, -327f))), 445f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-826f, _wgslsmith_div_f32(-871f, -1000f))) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + 1356f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2019f, 1069f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-513f)) * _wgslsmith_div_f32(-941f, -1111f)))), var_1.x, vec2<f32>(_wgslsmith_f_op_f32(-812f + -1000f), _wgslsmith_f_op_f32(680f + -1089f)));
    var var_3 = func_2(false).a;
    var var_4 = arg_0.a.a;
    return arg_0.a;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> i32 {
    var var_0 = Struct_4(func_4(func_2(all(select(vec4<bool>(true, true, arg_2.a.c, arg_0.a.c), vec4<bool>(true, false, true, true), vec4<bool>(arg_0.a.c, arg_2.a.c, false, true)))), 0u));
    var var_1 = vec2<bool>(true, false);
    let var_2 = arg_2.a.b;
    global0 = func_3(vec4<bool>(arg_2.a.c, arg_0.a.c, !((global0.x != u_input.a) & any(vec4<bool>(var_1.x, true, false, true))), arg_0.a.c), func_2(var_0.a.a.c).a.a).xz;
    return -39357i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(1u, 4294967295u);
    global0 = -(~vec2<i32>(func_1(Struct_3(Struct_1(global0.x, u_input.a, false, vec2<u32>(1u, var_0), 1u)), vec2<f32>(-1416f, 616f), Struct_3(Struct_1(-11881i, u_input.a, false, vec2<u32>(1u, 15076u), var_0))), -2147483647i) << (~vec2<u32>(var_0, var_0) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(521f * 404f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-198f))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, 688f, -1497f, -1000f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), _wgslsmith_f_op_f32(-1486f * -1087f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-803f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-348f, _wgslsmith_f_op_f32(ceil(459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(930f, -174f, 1112f), vec3<f32>(648f, -517f, -472f), vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, 1198f, var_1), vec3<f32>(477f, var_1, 430f)))))), -29075i, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(var_1 - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -1621f) - -628f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -283f), 1f))))));
    var var_3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(global0.x, 15149i), 18654i, select(5414i, -1i, false), u_input.a), min(vec4<i32>(-11591i, global0.x, global0.x, -1i) | vec4<i32>(26403i, -6932i, global0.x, var_2.c), vec4<i32>(u_input.a, global0.x << (var_0 % 32u), -global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.x, u_input.a, 16618i), vec4<i32>(3423i, var_2.c, var_2.c, var_2.c))))) ^ abs(reverseBits(-1i));
    var_3 = max(func_3(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(-min(9615i, var_2.c), -2147483647i, func_2(all(vec2<bool>(true, true))).a.a.c, ~vec2<u32>(var_0, 47760u), abs(~var_0))).x, _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.x, 43012i, u_input.a), vec4<i32>(-60211i, 2147483647i, var_2.c, -7630i))), -23577i) << (abs(4294967295u) % 32u));
    let var_4 = vec2<bool>(true, any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false), all(vec3<bool>(true, true, true)))));
    let var_5 = var_2.a.zy;
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.d.x, _wgslsmith_add_vec4_u32(~((vec4<u32>(var_0, 4216u, var_0, 47168u) << (vec4<u32>(1u, var_0, 41480u, var_0) % vec4<u32>(32u))) >> (vec4<u32>(var_0, 30116u, 3135u, var_0) % vec4<u32>(32u))), ~vec4<u32>(var_0, ~var_0, _wgslsmith_mult_u32(0u, var_0), var_0)), _wgslsmith_f_op_f32(-var_2.a.x), var_6.a.x, var_2.c);
}

