struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    global0 = -1000f;
    global0 = 936f;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(294f, 1000f))) - _wgslsmith_div_f32(1000f, -1675f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(921f, 719f)), _wgslsmith_div_vec2_f32(vec2<f32>(-2003f, -822f), vec2<f32>(-1000f, 1136f)), true))))));
    global0 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)));
    return abs(max(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), u_input.a)), -(~u_input.a) & _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(u_input.a.x, 93029i, u_input.a.x))));
}

fn func_2() -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -417f), 1f))) - 1904f);
    global0 = 1607f;
    var var_0 = _wgslsmith_dot_vec3_i32(~func_3(), u_input.a);
    var var_1 = Struct_1(-1784f, _wgslsmith_add_u32(4294967295u, u_input.b.x >> (max(~1u, ~u_input.b.x) % 32u)), -u_input.a);
    let var_2 = !(!((~27957u <= ~var_1.b) != true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-231f - var_1.a), _wgslsmith_f_op_f32(var_1.a * var_1.a), _wgslsmith_f_op_f32(-171f - var_1.a))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), -908f, 981f)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> f32 {
    global0 = arg_0.a;
    global0 = -1000f;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(187f - 287f)))), arg_0.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -585f)))));
    var var_1 = _wgslsmith_sub_i32(-1i, -36153i);
    return _wgslsmith_f_op_f32(-878f - arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), countOneBits(u_input.b.x), ~68518u), abs(~vec3<u32>(33235u, 1u, u_input.b.x))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-536f, _wgslsmith_f_op_f32(min(-1561f, _wgslsmith_f_op_f32(f32(-1f) * -1769f))))) - _wgslsmith_div_f32(-227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -2157f, true)) + _wgslsmith_f_op_f32(func_1(Struct_2(1968f, -1644f), -44182i, 2902i))))), 1129f);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-182f, _wgslsmith_f_op_vec3_f32(func_2()).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a))))), u_input.b.x, _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), u_input.a), max(vec3<i32>(~(-1i), u_input.a.x, u_input.a.x), vec3<i32>(2147483647i << (u_input.b.x % 32u), 0i ^ u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.a.x))))));
    let var_3 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, ~var_2.c.x), -(~var_2.c.x));
    global0 = _wgslsmith_f_op_f32(min(var_1.b, 989f));
    var_2 = Struct_1(_wgslsmith_f_op_f32(702f - _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_add_u32(u_input.b.x, max(_wgslsmith_sub_u32(~70930u, var_2.b), 54920u)), min(-vec3<i32>(var_2.c.x, u_input.a.x, -1i), u_input.a));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-602f + var_2.a), 4294967295u, _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(firstTrailingBit(-34614i << (1u % 32u)), (9890i ^ var_2.c.x) << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 3959i), max(vec2<i32>(4262i, 45451i), vec2<i32>(u_input.a.x, var_2.c.x)))), vec3<i32>(firstLeadingBit(var_2.c.x >> (u_input.b.x % 32u)), 14330i, -34884i)));
    var var_5 = vec4<i32>(firstLeadingBit(reverseBits(var_2.c.x)), u_input.a.x, u_input.a.x, -1i ^ u_input.a.x);
    var_5 = _wgslsmith_sub_vec4_i32(~select(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 6189i, var_2.c.x, -1i), vec4<i32>(22865i, -2147483647i, 0i, -49441i)), _wgslsmith_mult_vec4_i32(vec4<i32>(38451i, -2147483647i, 1i, var_5.x) | vec4<i32>(-50055i, 0i, var_4.c.x, var_2.c.x), vec4<i32>(u_input.a.x, -25111i, var_2.c.x, -15563i)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))), abs(countOneBits(~select(vec4<i32>(0i, 30664i, u_input.a.x, 1i), vec4<i32>(var_5.x, -2147483647i, var_4.c.x, u_input.a.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(var_1.b - 1009f)), _wgslsmith_f_op_f32(sign(var_4.a)))), ~countOneBits(_wgslsmith_div_i32(-var_3.x, u_input.a.x)));
}

