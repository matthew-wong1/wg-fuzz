struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = u_input.b.x;
    var var_1 = min(abs(-u_input.a), firstLeadingBit(~_wgslsmith_add_i32(u_input.a, u_input.a))) ^ u_input.a;
    var_1 = 0i;
    var_1 = max(_wgslsmith_clamp_i32(u_input.a, -u_input.a, 0i), abs(min(-1i, u_input.a)));
    var_1 = -1509i;
    return reverseBits(57331i);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(-71603i, -func_3())) >= _wgslsmith_div_i32(~(-u_input.a | select(2147483647i, u_input.a, true)), -firstTrailingBit(-2147483647i));
    let var_1 = vec3<f32>(1f, 1f, 1f);
    let var_2 = arg_0.a;
    var_0 = true;
    let var_3 = _wgslsmith_sub_vec3_u32(~(reverseBits(~u_input.b) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, 7966u, u_input.c.x), vec3<u32>(6697u, 1u, 1u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 1u, ~4294967295u), u_input.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x * 1000f))))) * _wgslsmith_f_op_f32(abs(160f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: u32) -> Struct_2 {
    var var_0 = ~firstTrailingBit(u_input.c.x);
    var_0 = u_input.c.x & 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, 1152f)))))));
    let var_2 = Struct_1(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, true)) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(trunc(329f))), var_1.x, -598f), vec2<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-arg_0.x)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)) * 613f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))))), 1377f, _wgslsmith_f_op_f32(func_2(Struct_2(!arg_1))));
    return Struct_2(all(!(!(!vec4<bool>(true, arg_1, arg_1, arg_1)))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    return func_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), arg_0.c.x, _wgslsmith_f_op_f32(sign(arg_0.c.x))), all(!(!select(vec3<bool>(arg_2.a, true, false), vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(true, false, arg_2.a)))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(51142u, 4294967295u, u_input.b.x, arg_3.a.x)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, arg_0.a.x, arg_3.a.x, 44598u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, 4154u, 4294967295u), vec4<u32>(19627u, 13453u, 21151u, u_input.b.x)))), reverseBits(vec4<u32>(143827u, arg_0.a.x, select(36425u, 11227u, true), arg_0.a.x))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(true);
    let var_1 = _wgslsmith_dot_vec3_i32(~(~reverseBits(vec3<i32>(-9173i, u_input.a, 2147483647i)) & -vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(~(~(-58221i)), u_input.a, ~1i), abs(-firstLeadingBit(vec3<i32>(-13924i, u_input.a, u_input.a)))));
    let var_2 = 1709f;
    var_0 = func_5(Struct_1(abs(vec2<u32>(u_input.c.x << (7363u % 32u), ~u_input.c.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, -1246f, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 2408f, arg_0.x, var_2) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-533f, arg_0.x, var_2, var_2) + vec4<f32>(323f, -674f, -1672f, -648f))), _wgslsmith_div_f32(var_2, 2478f) >= _wgslsmith_f_op_f32(select(var_2, -270f, var_0.a)))), _wgslsmith_f_op_vec2_f32(arg_0 - arg_0)), 0u, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(func_2(Struct_2(true))), -331f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, var_2, var_2) - vec3<f32>(arg_0.x, arg_0.x, var_2))))), var_0.a, firstTrailingBit(1u)), Struct_1(_wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(102626u, u_input.b.x), u_input.b.xx), vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x), 808u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(false))), arg_0.x, 1000f, _wgslsmith_f_op_f32(abs(var_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_2), arg_0) - vec2<f32>(arg_0.x, arg_0.x)))));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-249f, var_2, 309f) + vec3<f32>(var_2, 1000f, 1539f))), vec3<f32>(-435f, _wgslsmith_f_op_f32(step(937f, 1883f)), var_2)))), !var_0.a, firstLeadingBit(u_input.c.x));
    return Struct_2(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_2, -301f), _wgslsmith_f_op_f32(var_2 + arg_0.x), arg_0.x), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(max(arg_0.x, var_2)), arg_0.x), false)), true, ~(max(u_input.b.x, u_input.c.x) ^ 1u)).a);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = !(!select(vec4<bool>(any(vec2<bool>(true, false)), true, true, false), select(!vec4<bool>(true, false, arg_1.a, arg_1.a), vec4<bool>(false, arg_1.a, true, true), !arg_1.a), vec4<bool>(u_input.c.x >= 4294967295u, arg_1.a, true, true)));
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1530f, -2184f, -1000f, 330f)))))), vec2<f32>(-607f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1933f, _wgslsmith_f_op_f32(step(-1249f, -674f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1125f, 481f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-649f, -1221f, var_1.c.x)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.zww) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.b.yxx, vec3<f32>(var_2.x, -304f, var_1.b.x), vec3<bool>(true, false, arg_1.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 242f, var_2.x) - var_1.b.yyy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.yxw) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-421f, var_2.x, 1422f) * var_1.b.wzy))))));
    var var_3 = vec4<bool>(((!arg_1.a | true) & any(select(var_0, vec4<bool>(true, true, var_0.x, var_0.x), var_0))) & true, select(false, func_5(Struct_1(u_input.b.xy, _wgslsmith_f_op_vec4_f32(ceil(var_1.b)), _wgslsmith_f_op_vec2_f32(max(var_1.b.wy, vec2<f32>(-431f, var_2.x)))), min(var_1.a.x, 1u), Struct_2(false), Struct_1(_wgslsmith_clamp_vec2_u32(var_1.a, vec2<u32>(u_input.b.x, arg_0.x), u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(1222f, 151f, -589f, var_1.c.x) + vec4<f32>(842f, var_1.c.x, var_2.x, var_1.b.x)), var_2.yx)).a, false), false & any(var_0), !((_wgslsmith_div_i32(u_input.a, u_input.a) | u_input.a) > (select(-2147483647i, u_input.a, false) ^ (2147483647i ^ u_input.a))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(0i <= func_6(~u_input.b.yx, func_1(vec2<f32>(1921f, 1845f))));
    let var_1 = max(countOneBits(u_input.b.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.b.x), vec4<u32>(69863u, u_input.b.x, 84208u, u_input.c.x)), min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(79038u, 0u, 0u, 59343u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 1u, 5682u, u_input.c.x), vec4<u32>(1u, 1u, 1u, u_input.c.x), vec4<u32>(25977u, 4294967295u, u_input.c.x, 1u)))), u_input.b.x ^ max(_wgslsmith_div_u32(1u, u_input.c.x), 1u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(212f, 506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1030f + -1000f) + _wgslsmith_f_op_f32(745f * -338f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, -730f, 638f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 372f, 1659f) - vec3<f32>(514f, -786f, 944f)))))))));
    let var_3 = Struct_1(u_input.b.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-231f, var_2.x, var_2.x, -1304f) + vec4<f32>(var_2.x, var_2.x, -1042f, var_2.x)), vec4<f32>(-383f, var_2.x, 942f, -1032f), true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(532f, 505f, 798f, -762f), vec4<f32>(var_2.x, 2028f, var_2.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1250f, var_2.x, 1000f, 311f), vec4<f32>(-524f, 505f, var_2.x, -213f), var_0.a))))), var_2.xz);
    var var_4 = _wgslsmith_add_vec2_i32(abs(select(vec2<i32>(-1i) * -vec2<i32>(-1i, u_input.a), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 13540i)) & (vec2<i32>(u_input.a, -35391i) | vec2<i32>(21239i, 0i)), select(select(vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.a), true), !vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true)))), ~(vec2<i32>(-1i, u_input.a) & (vec2<i32>(2147483647i, -2147483647i) ^ vec2<i32>(u_input.a, u_input.a))) >> (u_input.c % vec2<u32>(32u)));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -665f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1123f + 140f), _wgslsmith_f_op_f32(step(var_2.x, var_3.c.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1076f)), 1366f, 355f)), true));
    var var_5 = var_3;
    let var_6 = u_input.b.x;
    var_4 = ~countOneBits(-abs(vec2<i32>(10447i, 38829i)) & ~vec2<i32>(u_input.a, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-57875i, u_input.a, u_input.a, -14942i), vec4<i32>(-48188i, u_input.a, 0i, var_4.x))) ^ select(-vec4<i32>(-37752i, -1i, 24850i, u_input.a), ~vec4<i32>(-2147483647i, 16522i, 21818i, -1i), select(vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_0.a, true, var_0.a, var_0.a), true)), abs(vec4<i32>(u_input.a, -1i, u_input.a, -22804i) >> (~vec4<u32>(var_1, var_1, var_3.a.x, 1u) % vec4<u32>(32u)))));
}

