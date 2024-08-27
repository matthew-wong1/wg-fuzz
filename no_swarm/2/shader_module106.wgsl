struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -934f;

var<private> global1: vec2<u32>;

var<private> global2: vec4<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    return false;
}

fn func_2(arg_0: i32) -> vec2<u32> {
    var var_0 = func_3();
    var var_1 = 22085i;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, max(1u, 4294967295u), global1.x, _wgslsmith_div_u32(global1.x, global1.x)), ~vec4<u32>(global1.x, 4294967295u, global1.x, global1.x), !select(vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, 35760u, 4294967295u, 50469u), max(vec4<u32>(global1.x, 1595u, 2023u, 1u), vec4<u32>(global1.x, 4294967295u, 4294967295u, global1.x))) | firstLeadingBit(vec4<u32>(4294967295u, 37447u, global1.x, 1u))), firstLeadingBit(~global1.x) >= firstTrailingBit(~_wgslsmith_div_u32(1u, 99616u)));
    global1 = min(_wgslsmith_sub_vec2_u32(vec2<u32>(36454u, ~22242u), ~vec2<u32>(~1478u, _wgslsmith_clamp_u32(19736u, 15054u, 58172u))), ~(vec2<u32>(global1.x, ~var_2.a) >> (abs(vec2<u32>(47428u, var_2.a) << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-456f)))) * _wgslsmith_f_op_f32(-269f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-116f, _wgslsmith_f_op_f32(sign(140f)))), false)), _wgslsmith_f_op_f32(1373f + -1000f), _wgslsmith_f_op_f32(1281f - -101f));
    return select(firstLeadingBit(((vec2<u32>(var_2.a, 34932u) << (vec2<u32>(4294967295u, 49525u) % vec2<u32>(32u))) | ~vec2<u32>(global1.x, var_2.a)) & ~(vec2<u32>(var_2.a, 22202u) ^ vec2<u32>(0u, 4294967295u))), countOneBits(~(vec2<u32>(0u, 0u) << (vec2<u32>(4294967295u, var_2.a) % vec2<u32>(32u)))), vec2<bool>(global2.x, false));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>) -> Struct_2 {
    return Struct_2(-select(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -46242i), -vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i)), -max(vec4<i32>(u_input.a.x, 1i, -24299i, 17019i), vec4<i32>(u_input.a.x, 8633i, u_input.a.x, u_input.a.x)), vec4<bool>(all(global2.wxx), global2.x, global2.x, any(vec4<bool>(false, global2.x, false, global2.x)))));
}

fn func_1() -> i32 {
    let var_0 = func_4(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~global1.x, max(4294967295u, 4294967295u)), _wgslsmith_clamp_vec2_u32(func_2(u_input.a.x), ~vec2<u32>(global1.x, global1.x), vec2<u32>(4294967295u, global1.x))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(49981u, 4294967295u) | vec2<u32>(37986u, global1.x), ~vec2<u32>(4294967295u, global1.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1238f, 1586f, -1098f), vec3<f32>(-1322f, -917f, 1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(select(643f, 974f, global2.x)), _wgslsmith_f_op_f32(select(365f, 436f, true)), -395f)))));
    var var_1 = u_input.a;
    var_1 = u_input.a;
    global2 = vec4<bool>(true, false, global2.x & !any(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), !global2.x || !global2.x);
    global1 = vec2<u32>(1u, 1u);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(min(u_input.a.x, ~(~(-3293i))), u_input.a.x), func_1());
    let var_1 = all(vec4<bool>(global2.x, !all(vec3<bool>(global2.x, global2.x, global2.x)), true, !global2.x));
    global2 = select(!select(select(vec4<bool>(false, true, true, false), !vec4<bool>(global2.x, false, false, var_1), true), select(select(vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(true, false, false, true), global2.x), !vec4<bool>(global2.x, global2.x, false, false), var_1), !(!vec4<bool>(true, global2.x, false, true))), vec4<bool>(var_1, all(!vec4<bool>(true, var_1, var_1, true)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1028f, 1605f) - _wgslsmith_f_op_f32(step(229f, 490f))) != -1194f), true);
    var var_2 = global1.x ^ select(global1.x, ~global1.x, false);
    var var_3 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, reverseBits(~u_input.a.x), var_0.x, _wgslsmith_mult_i32(0i, u_input.a.x)), vec4<i32>(reverseBits(-7202i), min(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(var_0.x, -4746i, -8862i)), 1i) ^ (~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 13531i) | vec4<i32>(u_input.a.x, 4842i, u_input.a.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(select(var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-15568i, -1i, 37298i), var_0), true), var_0.x, -1i, -2147483647i), vec4<f32>(1f, 1f, 1f, 1f));
}

