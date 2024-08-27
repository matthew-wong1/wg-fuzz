struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<f32> {
    let var_0 = select(vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true && any(vec3<bool>(false, false, false)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true)), false);
    var var_1 = Struct_1(vec2<i32>(-(~1i), countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 5623i), vec3<i32>(-2147483647i, -26607i, 27731i)))), 243f);
    let var_2 = Struct_1(var_1.a, var_1.b);
    var_1 = var_2;
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(1082f + _wgslsmith_f_op_f32(638f - _wgslsmith_div_f32(-928f, -1247f))));
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(386f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -745f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1495f)))));
}

fn func_2() -> vec4<f32> {
    var var_0 = firstTrailingBit(u_input.a.zwz);
    let var_1 = Struct_1(~(-_wgslsmith_mod_vec2_i32(~vec2<i32>(46818i, 22101i), vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -260f), -1503f)));
    var var_2 = ~u_input.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, -1043f) * vec2<f32>(var_1.b, var_1.b))))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_1.b, _wgslsmith_f_op_f32(exp2(var_1.b)))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_div_f32(var_1.b, -310f)))));
    var var_4 = u_input.c.x ^ abs(4294967295u);
    return vec4<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-199f * var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1472f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(399f + -479f));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~(u_input.d >> (u_input.d % 32u)), u_input.c.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 0u, 61745u), u_input.a) ^ ~u_input.d, u_input.c.x, 1u));
    var var_1 = Struct_1(vec2<i32>(max(-678i, arg_2.a.x) | 5359i, -34933i), arg_0.x);
    var var_2 = arg_2;
    let var_3 = Struct_1(vec2<i32>(~(var_1.a.x ^ (var_2.a.x | var_1.a.x)), min(2147483647i, ~arg_2.a.x | ~var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1)))))), -689f));
    var_2 = var_3;
    return false;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2()), 171f, Struct_1(-arg_1.zx, _wgslsmith_f_op_vec4_f32(func_2()).x)) != all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), 413f <= arg_0.x), vec4<bool>(true, true, true, true)));
    let var_1 = ~_wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(u_input.a.yww, vec3<u32>(u_input.b, 13053u, u_input.c.x)), 1u << (u_input.a.x % 32u), true) | (_wgslsmith_mult_u32(u_input.b, 39655u) ^ 0u), 1u);
    var var_2 = arg_0;
    var var_3 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(floor(-817f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(714f))) * 1231f) + 1275f));
    let var_4 = Struct_1(-abs(-vec2<i32>(arg_1.x, 1i)), var_2.x);
    return true;
}

fn func_5(arg_0: bool) -> StorageBuffer {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(52337u, abs(1u), select(~0u, _wgslsmith_sub_u32(u_input.b, u_input.d), all(vec2<bool>(false, var_0)))) | (vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wxz, vec3<u32>(39130u, u_input.b, 4294967295u)), 43451u, u_input.b) >> (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.c.x, 4294967295u, 86561u)), _wgslsmith_add_vec3_u32(vec3<u32>(14905u, u_input.d, u_input.d), vec3<u32>(21723u, u_input.c.x, u_input.a.x))) % vec3<u32>(32u))), ~vec3<u32>(~48932u, 1u, 59554u), abs(min(vec3<u32>(u_input.c.x, 77676u, 12757u), u_input.a.xzz)));
    let var_2 = Struct_1(vec2<i32>(0i, ~(-2147483647i)), _wgslsmith_f_op_f32(floor(-2662f)));
    let var_3 = Struct_1(firstLeadingBit(min(~(~var_2.a), _wgslsmith_sub_vec2_i32(var_2.a, select(vec2<i32>(var_2.a.x, -1i), var_2.a, true)))), -1000f);
    let var_4 = var_2;
    return StorageBuffer(reverseBits(firstTrailingBit(61174u)), ~_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(u_input.b, u_input.a.x, var_1.x) >> (reverseBits(u_input.d) % 32u)), var_2.a | ~_wgslsmith_add_vec2_i32(var_2.a, vec2<i32>(var_3.a.x, -2147483647i)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(96733u, 4294967295u, 3480u), vec3<u32>(u_input.a.x, var_1.x, u_input.b)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(u_input.c.x, 14069u, var_1.x)), 91388u)), _wgslsmith_add_vec2_i32(var_2.a, -(~var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f * 1688f));
    let x = u_input.a;
    s_output = func_5(!(true != func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-257f, var_0, var_0, var_0), vec4<f32>(292f, 1000f, 580f, 619f))), -vec3<i32>(1i, 0i, -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, var_0, var_0) * vec3<f32>(var_0, 487f, var_0)))));
}

