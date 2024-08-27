struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = Struct_2(1i >> (u_input.c.x % 32u), Struct_1(false), u_input.c.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1081f)) * _wgslsmith_f_op_f32(floor(1579f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f), 181f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1027f)) * _wgslsmith_div_f32(-983f, 1996f)), -484f))), arg_0.x);
    let var_1 = ~(~vec3<i32>(-1101i, -(~(-11768i)), _wgslsmith_div_i32(-2147483647i, var_0.a >> (21130u % 32u))));
    let var_2 = Struct_3(var_0.d.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(558f, -230f))))));
    let var_3 = abs(var_1.x);
    var var_4 = ~firstTrailingBit(~(~69201u));
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = false;
    var var_1 = -1i;
    let var_2 = vec2<u32>(4294967295u, 724u) & vec2<u32>(39276u, ~u_input.c.x);
    var_1 = abs(-2823i);
    let var_3 = u_input.c;
    return u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> f32 {
    let var_0 = vec4<i32>((i32(-1i) * -1i) << (~(abs(arg_0.c) ^ max(43144u, 4294967295u)) % 32u), u_input.b, -15156i, firstTrailingBit(func_4(Struct_1(33192u < arg_0.c), Struct_1(true), Struct_2(func_3(vec3<bool>(arg_0.e, true, arg_0.b.a)), arg_0.b, ~32049u, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_0.d.x, 734f, 599f))), arg_0.d.x < arg_0.d.x))));
    let var_1 = Struct_1(arg_0.b.a);
    let var_2 = Struct_1(true);
    let var_3 = Struct_2(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32(var_0.x, 1i)), abs(arg_0.a) >> (1u % 32u)) ^ (206i << (arg_0.c % 32u)), arg_0.b, 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.x * 1183f))) - _wgslsmith_f_op_f32(step(-1000f, 892f))), 374f, _wgslsmith_f_op_f32(floor(arg_0.d.x)), _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(arg_1 * 1f))), var_2.a);
    var var_4 = var_3.b;
    return arg_2.a.x;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(-arg_1.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(u_input.b, Struct_1(false), arg_2, vec4<f32>(-681f, 432f, -313f, 1366f), arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -591f), Struct_3(vec2<f32>(-312f, 1193f), vec2<f32>(-1505f, -1072f))))), Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(504f, 129f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-746f, 1007f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(860f, 538f), vec2<f32>(-407f, 453f), false)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(2147483647i, arg_0, 5264u, vec4<f32>(-213f, 2694f, -1000f, 1289f), true), _wgslsmith_f_op_f32(sign(625f)), Struct_3(vec2<f32>(-1000f, -759f), vec2<f32>(633f, -1586f))))), _wgslsmith_f_op_f32(trunc(1000f))));
    var_0 = Struct_3(var_0.b, _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.x, var_0.b.x)))))));
    let var_1 = Struct_1(!select(!arg_0.a & false, _wgslsmith_add_u32(1u, 16735u) >= (arg_2 & 0u), true));
    let var_2 = select(vec3<bool>(false, true, arg_1.x & any(arg_1)), select(select(select(select(vec3<bool>(arg_0.a, false, false), vec3<bool>(var_1.a, false, false), vec3<bool>(false, var_1.a, var_1.a)), !vec3<bool>(var_1.a, var_1.a, arg_0.a), !vec3<bool>(true, arg_0.a, arg_0.a)), vec3<bool>(true, true, true), !vec3<bool>(arg_1.x, var_1.a, true)), !(!select(vec3<bool>(arg_1.x, arg_1.x, var_1.a), vec3<bool>(false, var_1.a, var_1.a), var_1.a)), !select(!vec3<bool>(false, true, arg_0.a), !vec3<bool>(arg_0.a, true, true), all(vec2<bool>(var_1.a, var_1.a)))), vec3<bool>(all(vec2<bool>(all(arg_1), u_input.c.x < u_input.a.x)), any(select(select(vec3<bool>(true, arg_0.a, false), vec3<bool>(var_1.a, true, false), false), select(vec3<bool>(false, var_1.a, arg_0.a), vec3<bool>(true, false, false), vec3<bool>(true, var_1.a, true)), vec3<bool>(true, arg_0.a, var_1.a))), !(true && var_1.a) | !(!arg_0.a)));
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b ^ _wgslsmith_dot_vec3_i32(vec3<i32>(35374i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 1i)), min(u_input.b & u_input.b, ~42006i)), select(~abs(vec2<i32>(-13452i, -33918i)), _wgslsmith_add_vec2_i32(vec2<i32>(-6512i, 4489i), vec2<i32>(u_input.b, u_input.b)) & firstTrailingBit(vec2<i32>(24997i, u_input.b)), vec2<bool>(arg_0.a | true, any(vec4<bool>(true, arg_1.x, true, arg_0.a))))), arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, abs(17412u), ~_wgslsmith_div_u32(u_input.a.x, 12692u)), vec3<u32>(arg_2 & (arg_2 | u_input.c.x), firstLeadingBit(1u), ~min(4294967295u, arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1007f) - vec4<f32>(var_0.a.x, 1165f, -1240f, -648f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(211f, 1724f, 808f, var_0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -199f, -158f, -964f) - vec4<f32>(-280f, var_0.a.x, 1322f, var_0.a.x)))))), !var_1.a);
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1i, Struct_1(false), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(726f + -2611f), 849f, _wgslsmith_f_op_f32(f32(-1f) * -1679f), _wgslsmith_f_op_f32(1000f + 452f))))), true);
    var var_1 = var_0.d.x;
    var_1 = var_0.d.x;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(276f, -497f))) >= _wgslsmith_f_op_f32(abs(796f));
    var_1 = _wgslsmith_f_op_f32(func_1(Struct_1(false), vec2<bool>(any(vec3<bool>(var_0.c != var_0.c, var_0.d.x >= var_0.d.x, true)), all(select(!vec2<bool>(var_0.e, true), !vec2<bool>(var_0.e, var_0.b.a), var_0.b.a))), 1u));
    var_1 = var_0.d.x;
    var_2 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(-(~vec3<i32>(-2147483647i, -24451i, 1i))));
}

