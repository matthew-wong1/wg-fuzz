struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b.x, 0u, 4294967295u, var_0), select(vec4<u32>(u_input.b.x, var_0, 4294967295u, var_0), vec4<u32>(10414u, var_0, var_0, var_0), true), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(var_0, 22076u, 1u, 66428u) << (vec4<u32>(1u, 40389u, 37025u, u_input.b.x) % vec4<u32>(32u)))), vec4<u32>(max(1u, 1u), var_0, ~var_0 & u_input.b.x, u_input.b.x)), firstLeadingBit(max(~vec4<u32>(var_0, var_0, 4294967295u, var_0), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 0u, var_0), vec4<u32>(var_0, 23054u, var_0, u_input.b.x)))), reverseBits(countOneBits(select(vec4<u32>(35176u, 1u, var_0, 30593u), vec4<u32>(14263u, var_0, 0u, var_0) >> (vec4<u32>(var_0, 69239u, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1285f)) - _wgslsmith_f_op_f32(round(1055f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1122f, -156f)) * -1117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-576f)) + 269f)) * vec3<f32>(663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f - -1547f)), -244f)));
    var_2 = Struct_1(var_2.a);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -200f), 1f))));
    return _wgslsmith_add_u32(~(var_1.x >> (max(~4294967295u, var_0 ^ u_input.b.x) % 32u)), 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: f32) -> vec2<u32> {
    let var_0 = 1f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2))));
    let var_2 = ~(~min(67917u, func_3() << (firstTrailingBit(u_input.b.x) % 32u)));
    let var_3 = !(!((-arg_1.x != _wgslsmith_mult_i32(arg_1.x, 1i)) & true));
    let var_4 = select(!vec2<bool>(!all(vec2<bool>(var_3, var_3)), any(vec4<bool>(false, var_3, var_3, false)) || !var_3), select(vec2<bool>(func_3() < var_2, var_3), select(vec2<bool>(var_3, var_3), !(!vec2<bool>(true, var_3)), select(select(vec2<bool>(false, true), vec2<bool>(var_3, true), vec2<bool>(true, true)), vec2<bool>(true, var_3), !vec2<bool>(false, var_3))), vec2<bool>(true, true)), !vec2<bool>((arg_1.x <= 2147483647i) == any(vec3<bool>(true, false, var_3)), var_3));
    return ~_wgslsmith_mult_vec2_u32(u_input.b.yy, ~vec2<u32>(~1198u, ~u_input.b.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = true;
    let var_1 = arg_3;
    var_0 = false;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1027f), arg_3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1317f - _wgslsmith_div_f32(467f, -1324f)) + _wgslsmith_f_op_f32(round(arg_3.a.x))) + _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-966f, var_1.a.x), 911f, any(vec3<bool>(false, true, false)))))), arg_3.a.x)));
    let var_3 = -224f;
    return var_1.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.b.x, arg_1, 4294967295u, u_input.b.x) | vec4<u32>(u_input.b.x, 0u, arg_1, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u), vec4<u32>(u_input.b.x, 4294967295u, 1u, arg_1), vec4<u32>(arg_1, arg_1, arg_1, 0u)), false), min(vec4<u32>(arg_1, u_input.b.x, arg_1, 1u), vec4<u32>(u_input.b.x, 0u, 22030u, arg_1))), max(_wgslsmith_clamp_vec4_i32(-u_input.d, vec4<i32>(0i, -2147483647i, u_input.d.x, 1i), firstTrailingBit(u_input.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -57428i, -4168i, -1i), u_input.d) ^ -vec4<i32>(2147483647i, 24201i, -2147483647i, -20502i)), vec4<u32>(u_input.b.x | firstTrailingBit(6145u), 57248u, _wgslsmith_dot_vec2_u32(u_input.b.zy, func_2(vec3<i32>(-14452i, -1i, u_input.c), u_input.d.wzx, vec3<f32>(arg_0.x, arg_0.x, 311f), arg_0.x)), 1u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2753f, 1239f, -1921f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(364f, arg_0.x, arg_0.x)))))));
    var var_1 = vec4<u32>(abs(arg_1) >> (6522u % 32u), ~u_input.b.x ^ ~u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(~6165u, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(arg_1, 47780u)))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, u_input.b.x), ~u_input.b.yz)), arg_1);
    let var_2 = all(!vec2<bool>(!any(vec4<bool>(true, false, true, true)), !(-1i < u_input.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a));
    var_3 = Struct_1(var_3.a);
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -304f;
    let var_1 = u_input.c | ~0i;
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(85744u, u_input.b.x), u_input.b.x);
    var_0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2128f, 2504f))));
    var var_3 = ~(~reverseBits(var_2));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1364f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-438f - 1363f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-489f, 1118f) - vec2<f32>(-1022f, 1000f)), ~44453u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)), _wgslsmith_f_op_f32(511f * _wgslsmith_f_op_f32(-1918f - -1270f)), 6322u >= var_2)))));
    var_0 = -1000f;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1500f, -212f, 512f, -326f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1157f, 2248f, -171f, -1027f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-1560f, 1148f, 758f, 1467f), vec4<f32>(-1849f, 371f, -410f, 554f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, -1028f, -879f, 1729f))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<i32>(2147483647i, var_1, -(~(-1i)), ~(~var_1) << (var_2 % 32u)));
}

