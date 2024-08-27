struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> u32 {
    return 0u;
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1453f, 633f))) * -656f)), ~(-2147483647i ^ u_input.c));
    var var_1 = ~firstLeadingBit(u_input.a) >> (u_input.a % vec3<u32>(32u));
    var_1 = _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(countOneBits(var_1.x ^ u_input.a.x), min(var_1.x, ~0u), reverseBits(u_input.d) >> (0u % 32u))) >> (u_input.a % vec3<u32>(32u));
    let var_2 = Struct_1(1006f, var_0.b);
    global0 = array<vec2<f32>, 2>();
    return _wgslsmith_dot_vec2_i32(select(vec2<i32>(_wgslsmith_add_i32(var_0.b, 1i), min(var_0.b, -46296i)), u_input.b, vec2<bool>(true, true)), u_input.b) ^ _wgslsmith_add_i32(2147483647i, ~u_input.c);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> vec2<f32> {
    let var_0 = Struct_1(-956f, -1i);
    let var_1 = Struct_1(113f, _wgslsmith_mult_i32(func_3(), var_0.b));
    let var_2 = var_0;
    global0 = array<vec2<f32>, 2>();
    global0 = array<vec2<f32>, 2>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_2.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.wx, arg_0.yx), vec2<f32>(arg_0.x, arg_2)), select(arg_1.x, u_input.d >= ~u_input.a.x, !all(arg_1) || !arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d), ~u_input.d, u_input.d >> (14183u % 32u), 4294967295u)), reverseBits(func_1(true, Struct_1(-204f, 0i >> (u_input.d % 32u)), -645f)));
    let var_1 = abs(u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(919f, -1283f, -713f, -1000f), vec3<bool>(true, false, true), -2102f, -165f)) + vec2<f32>(-412f, -169f)))))));
    var var_3 = Struct_1(var_2.x, ~(~(-1i)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -431f), select(min(-(i32(-1i) * -460i), _wgslsmith_clamp_i32(u_input.c, -12128i, countOneBits(var_3.b))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.c, 78326i), abs(vec4<i32>(u_input.c, -33890i, -28413i, -1i))), ~(~vec4<i32>(0i, 0i, var_3.b, var_3.b))), true));
    var var_5 = !(!(!vec3<bool>(true, all(vec2<bool>(false, true)), true)));
    global1 = 1088u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0 >> (abs(u_input.a.zy) % vec2<u32>(32u)), 2782u, _wgslsmith_f_op_f32(floor(-3557f)), u_input.a.x, firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, var_1.x, 8609u, 1u) | vec4<u32>(4294967295u, var_0.x, 20756u, var_1.x), firstTrailingBit(vec4<u32>(38206u, 6231u, 95239u, 1u)))));
}

