struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1833f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * -1151f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-227f * -866f), 1000f))))) + arg_1.x);
    var var_1 = -785f;
    let var_2 = vec4<u32>(_wgslsmith_add_u32(u_input.a, (u_input.e.x | ~u_input.a) >> (abs(u_input.a) % 32u)), 30098u, u_input.a, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b, u_input.b, u_input.e.x) >> (~vec3<u32>(37616u, u_input.e.x, u_input.b) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~u_input.e, countOneBits(vec3<u32>(1u, u_input.e.x, u_input.b)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(186f)));
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(arg_0, abs(~vec4<i32>(2147483647i, -2147483647i, 2147483647i, arg_0.x))), arg_0));
    return firstTrailingBit(_wgslsmith_sub_i32(1i, -11301i << (_wgslsmith_add_u32(9052u, u_input.a | var_2.x) % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_5(true, all(arg_0.xzw));
    global0 = _wgslsmith_f_op_f32(sign(1292f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-701f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-524f)))), _wgslsmith_f_op_f32(abs(-936f))));
    var var_1 = max(vec4<i32>(arg_1, firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, -5820i, 0i, -1i), vec4<i32>(-29092i, arg_1, 2147483647i, -18000i) | vec4<i32>(-44329i, arg_1, u_input.c.x, u_input.d.x))), ~arg_1, -7706i), -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(69560i, u_input.c.x, -37517i, arg_1), vec4<i32>(u_input.c.x, 11480i, 0i, u_input.d.x)), -vec4<i32>(u_input.d.x, 0i, u_input.c.x, 1i) & (vec4<i32>(-10623i, arg_1, 19695i, u_input.d.x) & vec4<i32>(arg_1, arg_1, u_input.c.x, u_input.c.x))));
    return 159f;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    global0 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(true, arg_0.x, false, false), arg_0.x), func_3(vec4<i32>(arg_1.x, arg_1.x, 1i, u_input.c.x), vec4<f32>(1115f, 753f, 1259f, 147f), Struct_5(false, false), 746f), abs(vec4<u32>(u_input.e.x, u_input.b, 56873u, u_input.e.x)), ~u_input.e.yy)), -252f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(319f + -1944f), -229f)), -1151f, 0i < arg_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1611f, 1000f)) + _wgslsmith_f_op_f32(trunc(1756f)))))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1992f * _wgslsmith_f_op_f32(f32(-1f) * -1043f)), _wgslsmith_f_op_f32(f32(-1f) * -671f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, -1169f)))), _wgslsmith_f_op_f32(round(1279f))));
    var var_1 = Struct_5(arg_2 || arg_0.x, any(!arg_0));
    global0 = _wgslsmith_f_op_f32(select(var_0.x, var_0.x, all(arg_0.yz)));
    return var_0.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2285f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-116f - 1375f), _wgslsmith_f_op_f32(f32(-1f) * -129f))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - 1000f))), -1065f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-994f)), _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), vec2<i32>(66600i, arg_0.x), true)))), 207f) - -844f);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), -370f);
    let var_1 = true;
    return -755f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-436f, -1256f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1300f, -155f)) - -478f) * -996f), 2047f))));
    let var_0 = max(-19060i, u_input.c.x);
    let var_1 = _wgslsmith_mult_i32(var_0 << (~_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), 0i);
    global0 = -764f;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-348f, 522f)) * -197f), _wgslsmith_f_op_f32(func_1(vec3<i32>(-2147483647i, var_0, 1i), vec3<i32>(var_1, 6584i, u_input.c.x)))) + -1400f)));
    var var_2 = _wgslsmith_f_op_f32(-258f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -2194f)))));
    var var_3 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), false), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true)), !vec4<bool>(true, var_1 != var_1, true, all(vec3<bool>(true, false, true))));
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2012f), _wgslsmith_f_op_f32(f32(-1f) * -1138f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1423f, -1235f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -652f) + vec2<f32>(452f, -1107f)), true)))), _wgslsmith_add_vec4_i32(vec4<i32>(abs(var_0), var_1, var_0, -21979i & u_input.d.x), vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, 1i)) ^ -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-3430i, var_1, 2147483647i, u_input.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, var_0), vec4<i32>(0i, var_0, var_0, var_0), vec4<i32>(var_1, 0i, -55892i, 0i))));
}

