struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(-33484i, 213f, 4075u, Struct_2(Struct_1(vec2<f32>(335f, 1316f), 1436f, vec4<bool>(false, false, false, false)))), Struct_4(1i, -535f, 4294967295u, Struct_2(Struct_1(vec2<f32>(-672f, -1658f), -1000f, vec4<bool>(true, false, true, true)))), Struct_4(33762i, 592f, 0u, Struct_2(Struct_1(vec2<f32>(1131f, 211f), -1000f, vec4<bool>(false, false, false, false)))), Struct_4(i32(-2147483648), 637f, 40861u, Struct_2(Struct_1(vec2<f32>(-175f, -768f), -1324f, vec4<bool>(true, false, false, false)))), Struct_4(48510i, -1000f, 16570u, Struct_2(Struct_1(vec2<f32>(-277f, -375f), 1143f, vec4<bool>(true, false, false, true)))), Struct_4(-1i, 223f, 46143u, Struct_2(Struct_1(vec2<f32>(1442f, 860f), -802f, vec4<bool>(true, true, false, false)))), Struct_4(56298i, -457f, 1u, Struct_2(Struct_1(vec2<f32>(2576f, -644f), 640f, vec4<bool>(true, false, false, false)))), Struct_4(2147483647i, 2051f, 1u, Struct_2(Struct_1(vec2<f32>(-715f, 1000f), -1095f, vec4<bool>(true, true, true, true)))), Struct_4(0i, -125f, 10173u, Struct_2(Struct_1(vec2<f32>(-594f, -1055f), -1478f, vec4<bool>(false, false, true, true)))), Struct_4(13407i, 1034f, 45948u, Struct_2(Struct_1(vec2<f32>(-363f, 885f), 643f, vec4<bool>(true, true, false, false)))), Struct_4(-2790i, -489f, 65277u, Struct_2(Struct_1(vec2<f32>(-916f, -624f), 280f, vec4<bool>(true, false, false, false)))), Struct_4(i32(-2147483648), -2880f, 1u, Struct_2(Struct_1(vec2<f32>(-1000f, -280f), -1000f, vec4<bool>(false, false, true, true)))), Struct_4(-22116i, 378f, 1u, Struct_2(Struct_1(vec2<f32>(1198f, -1000f), 323f, vec4<bool>(true, true, false, true)))), Struct_4(-1i, 1000f, 20798u, Struct_2(Struct_1(vec2<f32>(967f, -669f), -946f, vec4<bool>(false, true, false, false)))), Struct_4(1i, 758f, 1u, Struct_2(Struct_1(vec2<f32>(-166f, 111f), 956f, vec4<bool>(false, false, false, true)))), Struct_4(i32(-2147483648), 513f, 24853u, Struct_2(Struct_1(vec2<f32>(-2040f, -1519f), -1977f, vec4<bool>(true, false, false, false)))));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = abs(u_input.b);
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(743f, 988f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-249f, _wgslsmith_div_f32(-274f, -1000f)))), _wgslsmith_f_op_f32(round(-1150f)), -141f), false);
    let var_2 = _wgslsmith_div_vec2_f32(var_1.a.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yy)));
    var_0 = ~u_input.b;
    var_0 = select(~u_input.b, firstTrailingBit(u_input.b), !all(!select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, true), vec2<bool>(false, var_1.b))));
    return -(~u_input.a.x);
}

fn func_2(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, -(~u_input.a)), _wgslsmith_add_i32(u_input.e, func_3())), _wgslsmith_f_op_f32(-arg_0.x), firstLeadingBit(0u), Struct_2(Struct_1(arg_0.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(round(2060f));
    let var_2 = !var_0.d.a.c.x;
    var var_3 = ~_wgslsmith_div_u32(var_0.c, 44864u);
    var_3 = ~min(var_0.c, 111298u);
    return ~(-vec4<i32>(var_0.a, -var_0.a, select(var_0.a, -12356i, u_input.a.x >= 0i), ~(5673i & var_0.a)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-3177f)))))), 1166f);
    let var_1 = u_input.c;
    var var_2 = min(_wgslsmith_sub_vec4_i32(u_input.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_1.a.b, -196f))))), u_input.a);
    let var_3 = Struct_2(arg_1.a);
    global0 = array<Struct_4, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1200f)) + var_3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, 1f, 171f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(160f * 194f), _wgslsmith_f_op_f32(min(702f, -1295f)), -1544f, _wgslsmith_f_op_f32(func_1(vec2<i32>(11930i, u_input.a.x), Struct_2(Struct_1(vec2<f32>(-400f, -486f), 575f, vec4<bool>(true, false, false, true))), Struct_1(vec2<f32>(-778f, 350f), -1286f, vec4<bool>(false, false, true, false)), true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2270f, 336f, 1000f, -936f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(149f, 387f, 787f, 774f) + vec4<f32>(-457f, 669f, 2792f, 1941f))))));
    global0 = array<Struct_4, 16>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<i32>(0i, -1i), Struct_2(Struct_1(var_0.xy, var_0.x, vec4<bool>(false, true, true, true))), Struct_1(var_0.yz, var_0.x, vec4<bool>(false, true, true, false)), true)), -1445f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1034f, 298f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-234f, var_0.x))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(step(432f, var_0.x)), var_0.x)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_f32(var_0.x + -502f), vec4<bool>(true, true, any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, true)) & false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(u_input.b), 57880u, ~firstTrailingBit(~u_input.b), 1u), _wgslsmith_f_op_f32(trunc(597f)), _wgslsmith_f_op_f32(-843f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1244f)) * _wgslsmith_f_op_f32(-var_1.a.b))), ~vec2<u32>(~_wgslsmith_mult_u32(u_input.b, u_input.b), 1u), 1580f);
}

