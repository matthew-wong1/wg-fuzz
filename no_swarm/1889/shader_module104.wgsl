struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_2(vec4<bool>(any(vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, false, true, true)))), false, all(vec2<bool>(true, any(vec3<bool>(false, false, false)))), true), _wgslsmith_div_vec4_u32(select(vec4<u32>(115u, 7799u, _wgslsmith_mult_u32(16203u, 58695u), ~82590u), vec4<u32>(1u, 1u, 1u, 1u), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false))), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-427f, 157f, -2120f), vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -392f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1326f, -2135f, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(422f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, -1228f))))))), _wgslsmith_f_op_f32(max(arg_0, -1000f)));
    let var_1 = abs(var_0.b & abs(abs(var_0.b)));
    let var_2 = var_0;
    let var_3 = Struct_1(-961f, vec2<bool>(true, var_0.b.x < 27147u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(arg_0 + var_3.a)) - arg_0) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d + 1055f)))));
    return select(!vec2<bool>(!any(var_2.a), any(var_2.a.yww)), var_3.b, vec2<bool>(var_2.a.x, var_3.b.x));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_2(vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true)), false), vec4<u32>(70548u, ~_wgslsmith_add_u32(~4294967295u, abs(0u)), countOneBits(_wgslsmith_mod_u32(1u, 33860u)), 4294967295u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 1f, _wgslsmith_f_op_f32(max(arg_0, -201f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(363f + -913f), _wgslsmith_div_f32(596f, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(801f + arg_0), arg_0))));
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1420f - var_0.c.x)));
    let var_2 = vec4<u32>(0u, 1u, var_0.b.x, var_0.b.x);
    var_0 = Struct_2(select(vec4<bool>(true, any(vec3<bool>(true, true, true)), all(var_0.a.wxz), true), vec4<bool>(var_0.a.x, !(var_0.d <= arg_0), false, var_0.b.x == 0u), select(vec4<bool>(func_3(var_0.c.x).x, false, var_0.a.x, var_0.a.x), select(select(vec4<bool>(var_0.a.x, var_1.x, false, true), vec4<bool>(false, false, var_1.x, false), false), select(var_0.a, var_0.a, var_0.a), true), var_0.a.x)), ~min(_wgslsmith_mod_vec4_u32(vec4<u32>(24056u, var_0.b.x, 44771u, var_0.b.x), ~var_0.b), firstLeadingBit(var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(var_0.d, arg_0, var_0.d))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_0.c)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-884f, -750f, 1470f))))), var_0.d);
    var var_3 = ~var_0.b.x >> (13348u % 32u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -531f)), _wgslsmith_f_op_f32(round(-557f))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_2(vec4<bool>(true, select(false, !(arg_1.x >= 1461f), any(vec2<bool>(true, false))), true, !any(vec4<bool>(false, true, false, true))), _wgslsmith_clamp_vec4_u32(~(min(vec4<u32>(4294967295u, arg_0, arg_0, 1u), vec4<u32>(1u, arg_0, arg_0, arg_0)) & (vec4<u32>(arg_0, arg_2, arg_0, arg_0) | vec4<u32>(55168u, arg_0, arg_0, 24415u))), ~vec4<u32>(arg_2, arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_0), vec2<u32>(arg_2, arg_2)), arg_0), vec4<u32>(4294967295u, _wgslsmith_div_u32(arg_0, arg_2 << (arg_2 % 32u)), ~4294967295u, _wgslsmith_clamp_u32(arg_2, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 41106u), vec2<u32>(60666u, arg_0))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), -1512f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-298f, 668f, 816f))), _wgslsmith_f_op_vec3_f32(exp2(arg_1))))))), _wgslsmith_f_op_f32(trunc(arg_1.x)));
    let var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1091f, var_0.d, var_0.a.x)))) + 954f)).x;
    return Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-791f, 612f)), _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(floor(var_0.c.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1146f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = 2147483647i;
    var var_1 = select(arg_0.b, !select(vec2<bool>(true, true), arg_0.b, vec2<bool>(arg_0.b.x, !arg_0.b.x)), !(!(!vec2<bool>(arg_0.b.x, arg_0.b.x))));
    let var_2 = arg_0.b.x;
    let var_3 = 79201u;
    let var_4 = -(~min(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -23284i, arg_1.x), vec4<i32>(-1i, u_input.a, u_input.a, arg_1.x)), countOneBits(vec4<i32>(0i, -1i, 0i, arg_1.x))), -vec4<i32>(0i, var_0, -62691i, arg_1.x)));
    return func_4(var_3, vec3<f32>(_wgslsmith_f_op_f32(func_2(-621f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, 1000f)), arg_0.a), arg_2.x), ~(~0u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> vec2<bool> {
    var var_0 = func_4(0u, vec3<f32>(arg_1.d, 976f, 785f), firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.b.x, 6527u), arg_1.b.wxx) ^ arg_0.b.x)).a.x;
    let var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_mod_u32(max(var_1, var_1), abs(_wgslsmith_dot_vec3_u32(arg_0.b.yzy, func_1(Struct_1(arg_0.c.x, vec2<bool>(arg_0.a.x, arg_0.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_3, u_input.a), vec2<i32>(2147483647i, u_input.a)), _wgslsmith_f_op_vec3_f32(arg_1.c - arg_0.c), 1u).b.zyy)));
    let var_3 = 17557u;
    var_0 = arg_1.a.x;
    return select(vec2<bool>(6551u <= (min(9466u, arg_1.b.x) & 61282u), arg_1.a.x), vec2<bool>(any(!arg_0.a), (any(arg_1.a.yy) | true) & !select(false, false, false)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(reverseBits(5997i));
    let var_1 = Struct_1(-1761f, !func_5(Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), ~vec4<u32>(52912u, 94473u, 1u, 31358u), _wgslsmith_f_op_vec3_f32(vec3<f32>(574f, 322f, -184f) * vec3<f32>(-125f, 2205f, -1099f)), 770f), func_1(Struct_1(772f, vec2<bool>(true, false)), _wgslsmith_add_vec2_i32(vec2<i32>(15796i, -18095i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(570f, 164f, -421f)), 1u), true | all(vec2<bool>(false, false)), -1i));
    var_0 = u_input.a >> (~abs(1u) % 32u);
    var_0 = ~(~(~_wgslsmith_add_i32(u_input.a, 14148i)));
    var_0 = _wgslsmith_div_i32(u_input.a, -(i32(-1i) * -u_input.a));
    var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -_wgslsmith_div_i32(u_input.a, 1647i), -3023i) | max(-2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 0i), min(vec2<i32>(-14107i, 1i), vec2<i32>(u_input.a, 0i)))), abs(u_input.a << (27315u % 32u)));
    let var_2 = Struct_2(vec4<bool>(func_5(func_4(~45764u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, var_1.a, 111f))), 10521u), Struct_2(!vec4<bool>(false, true, var_1.b.x, false), vec4<u32>(1u, 1u, 1u, 1u), func_4(22846u, vec3<f32>(999f, -758f, 438f), 1u).c, _wgslsmith_f_op_f32(f32(-1f) * -861f)), any(var_1.b), max(u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a))).x, var_1.b.x, false, !(1000f <= _wgslsmith_f_op_f32(var_1.a * var_1.a))), firstLeadingBit(func_4(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(78612u, 5340u, 4294967295u, 1u), vec4<u32>(104315u, 10993u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(-310f, var_1.a, var_1.a)))), ~(20533u >> (1u % 32u))).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, 596f) + vec3<f32>(461f, var_1.a, 185f)), vec3<f32>(var_1.a, var_1.a, var_1.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1389f, 1068f, var_1.a), vec3<f32>(var_1.a, 608f, var_1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_1.a)) * _wgslsmith_f_op_f32(-var_1.a)));
    var var_3 = var_2.a.zxz;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(948f)))), _wgslsmith_f_op_f32(var_1.a + var_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + 531f)) * _wgslsmith_f_op_f32(-121f * func_1(Struct_1(-1985f, var_2.a.xw), vec2<i32>(-2147483647i, -1i), var_2.c, var_2.b.x).d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-184f - _wgslsmith_div_f32(-745f, 1677f)), var_2.d)), countOneBits(u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1294f, _wgslsmith_f_op_f32(-var_1.a), func_1(Struct_1(var_4.x, var_3.xz), vec2<i32>(-1i, 61523i), _wgslsmith_f_op_vec3_f32(sign(var_2.c)), var_2.b.x).a.x)), var_4.x));
}

