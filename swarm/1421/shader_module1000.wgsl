struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 839f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1053f + 941f))), _wgslsmith_f_op_f32(-2195f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1394f * 465f))))));
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(1118f, -2143f, true)), _wgslsmith_div_f32(-278f, -1107f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-885f, 442f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(654f))))));
    let var_1 = -(vec2<i32>(-1i) * -(~select(vec2<i32>(1i, -68616i), vec2<i32>(26937i, u_input.e), true)));
    global0 = var_0.a.x;
    var var_2 = Struct_3(var_0, vec3<i32>(firstTrailingBit(-1i), 2147483647i, abs(-var_1.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.a.x, -1000f, 1000f, var_2.a.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.a.x, -857f, -1422f, 838f), vec4<f32>(var_2.a.a.x, -409f, 1000f, 642f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.a.x, var_0.a.x, 1406f, var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, var_0.a.x, var_2.a.a.x, -739f)), false))) * vec4<f32>(var_2.a.a.x, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(select(var_2.a.a.x, -1104f, false))), -472f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-913f, var_0.a.x) - var_2.a.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + var_2.a.a.x), var_2.a.a.x), 724f, var_0.a.x, var_0.a.x) + vec4<f32>(_wgslsmith_f_op_f32(max(1000f, -1494f)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2297f - -1000f)), 1645f)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-790f, 244f), _wgslsmith_f_op_f32(818f * -287f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f - -541f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -449f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(491f, -1000f, 590f, -1253f), vec4<f32>(1000f, -1061f, 538f, 888f), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(func_3(u_input.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1631f, -475f, -353f, -2715f), vec4<f32>(-880f, -1620f, -1487f, -966f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1305f, 246f, 126f, 1598f))))));
    return Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-377f * _wgslsmith_f_op_f32(-907f * var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-341f - var_0.x), var_0.x)))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, arg_0.x, 2147483647i, u_input.d), vec4<i32>(u_input.e, -81595i, arg_0.x, arg_0.x)), u_input.d, ~arg_0.x), arg_0) ^ (-vec3<i32>(arg_0.x, 27236i, 10054i) ^ arg_0));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_2(vec2<f32>(-440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-196f, arg_0), arg_0)))));
    let var_1 = u_input.c.x;
    var var_2 = func_2(vec3<i32>(max(1i, _wgslsmith_clamp_i32(-arg_1.x, 4710i, u_input.d | u_input.e)), min(-67262i, abs(0i)) >> ((var_1 >> (~0u % 32u)) % 32u), u_input.d));
    var var_3 = Struct_1(firstLeadingBit(arg_1.x));
    var var_4 = func_2(vec3<i32>(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(8585i, 2147483647i, -2147483647i), vec3<i32>(arg_1.x, var_2.b.x, 2241i)) & _wgslsmith_div_vec3_i32(arg_1.zwx, vec3<i32>(6883i, -49715i, 32843i))).b.x, 0i, var_2.b.x));
    return select(vec3<u32>(_wgslsmith_div_u32(var_1 | 1u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~arg_3.x, select(var_1, 36567u, arg_2.x), ~arg_3.x), ~u_input.a), ~arg_3.x), vec3<u32>(~(arg_3.x ^ u_input.c.x) >> ((u_input.b.x | ~var_1) % 32u), max(45109u, ~(~61365u)), ~var_1), all(!arg_2.yxy));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = arg_3.x;
    var_0 = -1806f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1572f), _wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 * arg_2))))));
    var var_2 = Struct_1(u_input.e);
    var_2 = Struct_1(min(-2147483647i, 0i));
    return -(func_2(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-1i, 0i, -14400i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_2.a, -1i), vec3<i32>(19006i, 1i, 1i)))).b.x ^ 34974i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<i32>(u_input.e, countOneBits(0i), ~(-_wgslsmith_sub_i32(u_input.e, u_input.e))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(u_input.e, u_input.d, -11334i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(233i, u_input.e, u_input.d) >> (~vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, 2308i), vec3<i32>(-30944i, u_input.e, -2147483647i)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, 55151i), vec3<i32>(u_input.e, 0i, u_input.d)), abs(vec3<i32>(-4835i, u_input.d, 16675i) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))))), true);
    let var_1 = vec4<i32>(-42297i, max(var_0.x, _wgslsmith_mult_i32(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(163f, 1000f, -191f, -950f), vec4<f32>(-1458f, -335f, 460f, -563f)), func_1(-1222f, vec4<i32>(25730i, 46900i, u_input.e, 14013i), vec4<bool>(false, false, true, true), u_input.c), vec3<f32>(897f, 288f, -514f), _wgslsmith_div_vec4_f32(vec4<f32>(413f, 728f, 282f, -695f), vec4<f32>(-1151f, 200f, 442f, -369f))), ~(u_input.d ^ u_input.e))), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.x, min(_wgslsmith_mult_i32(17940i, u_input.d), 36410i)), _wgslsmith_dot_vec2_i32(var_0.zz, abs(reverseBits(var_0.yy)))), firstTrailingBit(~(~firstLeadingBit(u_input.d))));
    global0 = _wgslsmith_f_op_f32(-func_2(vec3<i32>(u_input.e, max(var_0.x, u_input.e | 2147483647i), var_0.x)).a.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-112f, _wgslsmith_f_op_f32(-1963f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1206f))))));
    let var_3 = firstTrailingBit(~abs(~countOneBits(122320u)));
    let x = u_input.a;
    s_output = StorageBuffer(1992f, _wgslsmith_add_vec2_i32(var_0.yx, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-72079i, var_0.x), var_0.yx), _wgslsmith_sub_vec2_i32(vec2<i32>(-20435i, -14843i), abs(var_0.zx)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1270f + -268f), _wgslsmith_f_op_f32(1613f * -620f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_3)).x), func_2(-vec3<i32>(-6666i, -33076i, 2147483647i)).a.a.x), var_0.xy);
}

