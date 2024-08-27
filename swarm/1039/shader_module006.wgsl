struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = true;
    var var_1 = _wgslsmith_add_vec4_i32(~abs(vec4<i32>(-15707i, _wgslsmith_mod_i32(arg_2.x, arg_2.x), arg_2.x, abs(arg_2.x))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_2.x, 2096i, -1i, arg_2.x) >> (u_input.a % vec4<u32>(32u))), min(~vec4<i32>(-1i, 0i, -2147483647i, arg_2.x), -vec4<i32>(arg_2.x, 0i, -1i, -7887i))) & vec4<i32>(-reverseBits(-11155i), arg_2.x, 9558i, _wgslsmith_mod_i32(arg_2.x & 6683i, countOneBits(1i))));
    var var_2 = arg_1;
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(31793i, 2147483647i << (_wgslsmith_add_u32(arg_1.x, _wgslsmith_dot_vec3_u32(arg_1, u_input.b)) % 32u)), _wgslsmith_clamp_i32(arg_2.x, _wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(-1246i, var_1.x))), vec2<i32>(~(-17050i), firstTrailingBit(1i))), 0i));
}

fn func_2() -> bool {
    let var_0 = Struct_4(Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-236f * 312f), -1487f), 1582f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-408f, 1724f) + 594f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_div_f32(1234f, -122f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, 219f, 1138f, 528f)))), vec4<i32>(1i & func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-817f, -556f)), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)), min(vec2<i32>(82348i, 1i), vec2<i32>(24656i, -2147483647i))), _wgslsmith_dot_vec3_i32(~(vec3<i32>(2147483647i, 0i, 1i) >> (vec3<u32>(4294967295u, u_input.a.x, 68963u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(27149i, 11350i, -1i), vec3<i32>(-2147483647i, 2147483647i, 12013i), vec3<bool>(false, false, true)), vec3<i32>(-1077i, 79092i, -3467i) << (u_input.b % vec3<u32>(32u)))), -9938i, -_wgslsmith_dot_vec2_i32(-vec2<i32>(-16362i, -23608i), select(vec2<i32>(-9569i, -27665i), vec2<i32>(4486i, 36261i), vec2<bool>(true, true)))));
    global0 = var_0.a.a.x != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.b.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.a.x)))), true));
    var var_1 = abs(~u_input.a.yw);
    var var_2 = _wgslsmith_mult_vec3_i32(var_0.b.yyx, vec3<i32>(var_0.b.x, -(~firstLeadingBit(var_0.b.x)), var_0.b.x));
    var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(~_wgslsmith_sub_u32(var_1.x, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, var_1.x), u_input.a.wxw))), 63601u);
    return true;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(485f, 1289f, -1074f, -1583f) + vec4<f32>(442f, -180f, -639f, 526f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(602f, 1000f, -2368f, -1443f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1910f, -320f, -363f, 1920f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2430f, 607f, 1794f, 1935f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(290f, -505f, -463f, -1000f), vec4<f32>(913f, -1638f, 1107f, 623f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(329f, -1082f, 1699f, 656f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, 279f, -1000f, 1000f) + vec4<f32>(-1449f, -490f, 1848f, 494f)))))));
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -787f), vec4<f32>(var_0.a.x, 888f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(round(var_0.a)))))));
    var var_3 = !(!func_2());
    var_3 = false;
    return !vec2<bool>(-1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_0.a.x)), (true | var_1) && !arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!func_1(any(vec3<bool>(true, false, false)))));
    let var_1 = -vec3<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, 51428i, 1i), vec4<i32>(0i, 8046i, 8411i, 30244i), vec4<i32>(-1i, -2147483647i, 43581i, 7812i)), firstLeadingBit(~vec4<i32>(-58318i, 0i, 1i, -1i))), abs(max(-37566i, ~16936i)), reverseBits(-50431i) ^ _wgslsmith_mod_i32(_wgslsmith_mod_i32(34574i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 43919i), vec3<i32>(0i, 9665i, -1i))));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1203f)))), -341f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f - _wgslsmith_f_op_f32(1586f - -458f)) + 214f))));
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) - var_2.x)), 456f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -490f)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1466f, var_2.x, var_2.x, 276f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, -1i, 1i, var_1.x), ~max(~min(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), vec4<i32>(var_1.x, -45086i, var_1.x, var_1.x)), vec4<i32>(firstLeadingBit(-19352i), var_1.x | 1i, i32(-1i) * -12641i, -var_1.x)), ~u_input.b | vec3<u32>(~4294967295u & abs(u_input.a.x), ~48910u, 26331u), reverseBits(u_input.a.x & (0u | u_input.a.x)) & 1u);
}

