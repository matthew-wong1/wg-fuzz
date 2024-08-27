struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_2(!(!(!vec4<bool>(true, arg_0, false, arg_0))));
    let var_1 = var_0.a.wx;
    var var_2 = Struct_1(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(~(-38108i) << (reverseBits(u_input.b.x) % 32u), 1i), _wgslsmith_sub_i32(-7339i, -countOneBits(11106i))));
    var_2 = Struct_1(-2147483647i);
    let var_3 = select(true, false, arg_0);
    return ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, -29020i, var_2.a), firstTrailingBit(vec3<i32>(5446i, var_2.a, -12558i) >> ((vec3<u32>(4294967295u, 22071u, 4294967295u) | u_input.a) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_u32(min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(84409u, 43756u, 0u, 76642u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 151738u)), 0u | u_input.b.x), abs(1u)), (~4294967295u ^ u_input.b.x) ^ (0u >> (~u_input.a.x % 32u)));
    var_0 = u_input.a.x;
    let var_1 = -574f;
    var_0 = ~17937u & ~((4294967295u | u_input.b.x) << (0u % 32u));
    var_0 = _wgslsmith_add_u32(61588u, 0u) ^ (u_input.b.x << (~20002u % 32u));
    return Struct_1(_wgslsmith_sub_i32(-84i ^ (func_3(false) << (min(4294967295u, 32437u) % 32u)), _wgslsmith_dot_vec3_i32(arg_0 << (vec3<u32>(28877u, 4294967295u, 6720u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(-2147483647i, -24815i, arg_0.x))) & _wgslsmith_clamp_i32(22523i | arg_0.x, _wgslsmith_mult_i32(arg_0.x, -39600i), arg_0.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = func_2(-(vec3<i32>(arg_0.x, _wgslsmith_sub_i32(arg_0.x, arg_0.x), 1i) >> (~(~vec3<u32>(106131u, 41850u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f + _wgslsmith_f_op_f32(abs(arg_1))) + _wgslsmith_f_op_f32(f32(-1f) * -1547f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-913f, 2518f, arg_2))))));
    let var_1 = _wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, 1u, 2640u, 37859u))), ~vec4<u32>(~_wgslsmith_mod_u32(u_input.b.x, 43344u), reverseBits(4294967295u) >> (reverseBits(u_input.a.x) % 32u), ~1u, ~_wgslsmith_add_u32(u_input.b.x, u_input.a.x)));
    var_0 = Struct_1(arg_0.x);
    var_0 = Struct_1(arg_0.x);
    let var_2 = func_2(~firstTrailingBit(-select(vec3<i32>(-2147483647i, arg_0.x, var_0.a), vec3<i32>(var_0.a, 2147483647i, arg_0.x), vec3<bool>(arg_2, arg_2, arg_2))), 1023f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, -968f))) + arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-831f, 641f, -1461f, 597f))), vec4<f32>(_wgslsmith_div_f32(-107f, -647f), _wgslsmith_f_op_f32(abs(346f)), _wgslsmith_div_f32(658f, 2167f), 465f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), -708f, -948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-633f)) - var_0.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(452f, 2101f), _wgslsmith_f_op_f32(-1100f * var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x + 1795f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -735f, -337f, 215f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 578f, var_0.x, -1585f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1065f, 1709f, 735f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, var_0.x, var_0.x, 1258f))))));
    var var_2 = _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(1i, 1i)), vec2<i32>(-1i) * -vec2<i32>(1i, 1i));
    let var_3 = Struct_3(0u, _wgslsmith_f_op_f32(abs(-307f)), ~(select(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 50118u)), ~vec3<u32>(1492u, 48281u, u_input.b.x), var_1.x <= var_1.x) ^ abs(select(vec3<u32>(u_input.b.x, u_input.b.x, 44274u), vec3<u32>(1u, 1u, 56733u), true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-vec2<i32>(-2147483647i, 21953i), 1775f, false)) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1249f, var_1.x)) - 1618f), select(true, ~u_input.b.x == ~u_input.b.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.zyy)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.xxy, vec3<f32>(var_1.x, 723f, var_0.x))), var_1.ywx), var_0.zxx)));
    var var_4 = ~(~vec2<i32>(0i, _wgslsmith_add_i32(43891i, -2147483647i)) ^ vec2<i32>(26601i, _wgslsmith_sub_i32(-2147483647i >> (var_3.a % 32u), 1i)));
    let var_5 = !all(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), !any(vec2<bool>(false, false))));
    let var_6 = Struct_1(_wgslsmith_sub_i32(var_4.x, ~(i32(-1i) * -1i) << (~4294967295u % 32u)));
    var var_7 = vec2<bool>(var_5, any(select(vec3<bool>(true, true, true), !(!vec3<bool>(var_5, var_5, true)), var_5)));
    var var_8 = -(~_wgslsmith_mult_vec2_i32(max(vec2<i32>(-26002i, var_4.x), vec2<i32>(-10182i, var_4.x)) >> (min(u_input.b.zz, vec2<u32>(34307u, u_input.a.x)) % vec2<u32>(32u)), vec2<i32>(~54132i, _wgslsmith_div_i32(var_4.x, -1964i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
}

