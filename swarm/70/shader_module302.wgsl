struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.c, 659f, arg_3.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-arg_3.c), all(vec4<bool>(arg_1.x, false, arg_1.x, true)))) * _wgslsmith_f_op_f32(-423f - _wgslsmith_f_op_f32(f32(-1f) * -1655f))), arg_3.c, _wgslsmith_f_op_f32(floor(758f)))));
    var var_0 = !(!select(vec3<bool>(select(arg_2.x, false, arg_1.x), true, false && arg_1.x), select(vec3<bool>(true, true, arg_2.x), arg_2, !arg_1.x), !arg_1.x));
    return -930f;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(1i, !vec2<bool>(arg_0.b, false), select(select(vec3<bool>(false, arg_0.b, true), vec3<bool>(true, arg_0.d, false), arg_0.b), vec3<bool>(arg_0.d, arg_0.b, arg_0.d), arg_0.d), Struct_1(u_input.b, abs(42368u), _wgslsmith_f_op_f32(arg_2 - global0.x)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(0i & arg_0.a.a.x, select(u_input.e.x, 25987i, true)), select(!vec2<bool>(arg_0.b, false), select(vec2<bool>(false, false), vec2<bool>(arg_0.b, false), vec2<bool>(false, false)), true), vec3<bool>(arg_0.d, arg_0.b, all(vec3<bool>(arg_0.b, arg_0.d, true))), arg_0.a)), global0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, global0.x), _wgslsmith_f_op_f32(abs(arg_0.a.c)), _wgslsmith_f_op_f32(exp2(arg_0.c.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1542f, -1000f, -1162f) * vec3<f32>(global0.x, arg_0.c.c, -1200f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -134f, arg_2) + vec3<f32>(arg_0.a.c, arg_2, global0.x))))));
    let var_0 = !(!all(vec3<bool>(all(vec4<bool>(false, true, true, arg_0.b)), true, any(vec4<bool>(arg_0.d, true, arg_0.b, true)))));
    global0 = vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(-1068f - arg_2)))), arg_0.c.c, _wgslsmith_f_op_f32(sign(-1537f)));
    var var_1 = 1074f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1084f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2111f * -1175f)))) * arg_0.c.c));
    return _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-global0.x), -357f)))));
}

fn func_1() -> Struct_5 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2370f, -1174f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(vec4<i32>(7336i, -67029i, u_input.b.x, 1i), u_input.d.x, global0.x), false, Struct_1(vec4<i32>(u_input.a, u_input.e.x, -51194i, u_input.b.x), 8191u, global0.x), false, u_input.b), u_input.c.x, 801f)))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-709f, -1813f, _wgslsmith_f_op_f32(-725f + _wgslsmith_f_op_f32(step(global0.x, 741f)))), vec3<f32>(-219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-1422f - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-780f)))))));
    let var_0 = u_input.d.x;
    let var_1 = Struct_4(Struct_3(-1081f, ~(~vec3<u32>(var_0, 4294967295u, u_input.c.x) << (u_input.d % vec3<u32>(32u))), true, Struct_1(reverseBits(u_input.b), u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(u_input.b, u_input.c.x, global0.x), true, Struct_1(u_input.b, u_input.d.x, global0.x), true, u_input.e), var_0, global0.x)).x * -158f))), _wgslsmith_clamp_i32(-2147483647i, (countOneBits(u_input.e.x) >> (~0u % 32u)) & ~2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, u_input.a, u_input.a), u_input.e), ~u_input.e), 1i)), abs(u_input.b.ww));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 534f, _wgslsmith_f_op_f32(ceil(global0.x))), vec3<f32>(354f, var_1.a.a, _wgslsmith_f_op_f32(var_1.a.d.c + var_1.a.d.c)))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.d.c, -105f, 1757f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(558f, 1408f, -847f), vec3<f32>(-665f, -1717f, 101f))))))) * vec3<f32>(-1762f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.d.c, -225f)) + _wgslsmith_f_op_f32(trunc(-124f))))), _wgslsmith_f_op_f32(2218f * -975f)));
    return Struct_5(u_input.d.x, vec4<f32>(1000f, global0.x, global0.x, global0.x), global0.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1();
    var var_2 = Struct_5(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.a, ~var_1.a, 21540u), countOneBits(var_0.a)), func_1().b, var_0.c);
    var var_3 = vec2<bool>(true, false);
    var_3 = !vec2<bool>(-_wgslsmith_dot_vec4_i32(vec4<i32>(13012i, 51245i, u_input.a, u_input.a), vec4<i32>(-31852i, u_input.e.x, -36106i, 15092i)) > reverseBits(abs(u_input.b.x)), all(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(true, false), true)));
    var var_4 = !select(!vec3<bool>(false && var_3.x, all(vec3<bool>(false, var_3.x, false)), var_3.x), select(vec3<bool>(1u > u_input.c.x, false, any(vec2<bool>(true, var_3.x))), vec3<bool>(all(vec3<bool>(false, false, true)), var_3.x || false, var_2.c.x != 344f), select(select(vec3<bool>(var_3.x, true, false), vec3<bool>(true, false, var_3.x), var_3.x), vec3<bool>(true, var_3.x, true), select(vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(false, true, var_3.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(1u, 456f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(363f, var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -514f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 147f, -129f))))), ~firstTrailingBit(_wgslsmith_mult_u32(var_0.a, _wgslsmith_dot_vec3_u32(u_input.c, u_input.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(301f)) - -1739f));
}

