struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = min(~abs(abs(vec3<u32>(u_input.a, u_input.a, 49214u))), min(~(~select(vec3<u32>(50575u, u_input.a, u_input.a), vec3<u32>(20484u, u_input.a, 4294967295u), false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a | u_input.a, 4294967295u), ~vec3<u32>(1u, u_input.a, 4294967295u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 9502u, u_input.a), vec3<u32>(36708u, 21909u, 8894u)), reverseBits(~vec3<u32>(u_input.a, 4294967295u, 0u)))));
    var_0 = _wgslsmith_add_vec3_u32(countOneBits(abs(~vec3<u32>(u_input.a, var_0.x, var_0.x))), vec3<u32>(countOneBits(var_0.x), countOneBits(var_0.x) << (0u % 32u), _wgslsmith_div_u32(var_0.x ^ u_input.a, u_input.a))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, abs(u_input.a), _wgslsmith_clamp_u32(var_0.x, u_input.a, var_0.x)) ^ vec3<u32>(1u, 1u, ~42778u), ~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)));
    var_0 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(~var_0.x, ~var_0.x, 0u), ~firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(0u, var_0.x, 1u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, ~1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 22644u, 5744u), vec3<u32>(u_input.a, 1u, 86136u))));
    var_0 = min(select(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(0u, 0u, 1u)), vec3<u32>(86279u, var_0.x, 0u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 10827u), vec3<u32>(u_input.a, 4992u, u_input.a)), ~vec3<u32>(41259u, 22453u, 0u), vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, false))) ^ reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, 40811u), firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.a)))), ~vec3<u32>(70014u, _wgslsmith_div_u32(1u, var_0.x), var_0.x));
    var var_1 = _wgslsmith_div_vec3_u32(~(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(417u, 0u, 15129u), vec3<u32>(20038u, 43658u, var_0.x), vec3<u32>(1u, var_0.x, var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, 0u), vec3<u32>(u_input.a, var_0.x, u_input.a))) | abs(select(vec3<u32>(0u, var_0.x, 75390u), vec3<u32>(18786u, 4294967295u, var_0.x), vec3<bool>(false, false, false)))), ~(~(~(~vec3<u32>(4294967295u, var_0.x, 28459u)))));
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = min(func_3(vec2<f32>(_wgslsmith_f_op_f32(sign(-1166f)), 373f)), 7745u);
    let var_1 = _wgslsmith_div_u32(reverseBits(abs(1u)), max(func_3(vec2<f32>(-577f, 1166f)) << ((1u ^ arg_1.x) % 32u), 1u) & (25178u << (select(var_0 << (arg_1.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(17492u, 4294967295u, 4569u), vec3<u32>(1u, u_input.a, arg_0)), any(vec4<bool>(arg_2, false, arg_2, arg_2))) % 32u)));
    var var_2 = vec2<i32>(arg_3.x, ~(-(i32(-1i) * -arg_3.x)));
    var var_3 = select(select(!(!vec3<bool>(true, arg_2, arg_2)), !vec3<bool>(arg_2, true, arg_2), !any(vec4<bool>(false, false, arg_2, false))), !select(vec3<bool>(any(vec3<bool>(arg_2, false, false)), true, false), select(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), arg_2), !vec3<bool>(arg_2, arg_2, false), any(vec2<bool>(arg_2, arg_2))), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, arg_2, true))), select(select(vec3<bool>(!arg_2, false, true), vec3<bool>(select(arg_2, false, arg_2), arg_2, false), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, false, false), true | arg_2)), !select(!vec3<bool>(arg_2, false, false), select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, arg_2), true), !vec3<bool>(false, arg_2, true)), select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false), true), !select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2), false), vec3<bool>(any(vec2<bool>(arg_2, false)), false, !arg_2))));
    var var_4 = 0u;
    return ~(vec4<u32>(var_1, min(~1u, ~var_0), 4294967295u, ~1u) ^ vec4<u32>(~var_1, _wgslsmith_sub_u32(u_input.a, countOneBits(0u)), u_input.a, firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(26290u, 8075u)))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = -11835i;
    let var_1 = firstTrailingBit(~(~func_2(~u_input.a, ~vec2<u32>(1u, 0u), true, vec4<i32>(arg_0.x, u_input.c.x, -2114i, -39156i))));
    var_0 = ~(-(34165i >> (~u_input.a % 32u)) | ~(~u_input.c.x));
    var var_2 = vec4<u32>(0u, var_1.x, var_1.x, var_1.x);
    var_0 = ~_wgslsmith_dot_vec3_i32(~(~arg_0), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 35416i, 7031i), ~arg_0)));
    return vec4<i32>(arg_0.x, ~(-74855i & ((-2147483647i | u_input.b) | -u_input.c.x)), arg_0.x << (1u % 32u), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, false, any(vec4<bool>(_wgslsmith_f_op_f32(floor(638f)) == -767f, true, !all(vec3<bool>(true, false, true)), true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1719f)))));
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)));
    let var_4 = Struct_4(vec4<i32>(1i, -1i, 0i & select(u_input.b, -2147483647i, false), u_input.b) | func_1(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.b, u_input.b)));
    var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(476f)), _wgslsmith_f_op_f32(select(var_3.x, 1938f, true))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(965f, var_3.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(525f, var_3.x), vec2<f32>(var_3.x, -619f), vec2<bool>(true, var_0.x))), all(var_0.xx))))))));
    let var_5 = vec2<bool>(var_0.x, !(!var_0.x) | var_0.x);
    var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1323f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1455f)))), -2428f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(var_3.x)), -689f, -488f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -491f)))), vec3<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(190f)), -1325f))), any(!(!vec3<bool>(var_5.x, false, true))))));
}

