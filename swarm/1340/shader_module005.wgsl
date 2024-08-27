struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 63433i), vec2<i32>(74076i, 30146i), vec2<i32>(-28708i, 3062i), vec2<i32>(0i, 22395i), vec2<i32>(-8463i, -11463i), vec2<i32>(i32(-2147483648), -46415i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-18187i, 1i), vec2<i32>(1i, -38270i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -4624i), vec2<i32>(i32(-2147483648), 18726i), vec2<i32>(0i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -7554i), vec2<i32>(1i, 1i), vec2<i32>(40510i, 39253i), vec2<i32>(-1i, -871i), vec2<i32>(24071i, -4725i), vec2<i32>(-33472i, -42421i), vec2<i32>(-1i, 9802i), vec2<i32>(1i, 1i), vec2<i32>(48568i, 30736i), vec2<i32>(-4878i, 0i), vec2<i32>(932i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(-25791i, -19306i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<vec2<i32>, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1303f - _wgslsmith_f_op_f32(min(-2267f, -2791f))) + 1f)), u_input.c.x, countOneBits(u_input.c.ywy));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_0.a))), -393f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f - var_0.a))), _wgslsmith_mult_u32(max(_wgslsmith_add_u32(~4294967295u, u_input.b), 46685u), 0u), var_0.c);
    global0 = array<vec2<i32>, 30>();
    var var_1 = Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(~var_0.c.zy, firstLeadingBit(~u_input.c.wx ^ u_input.d)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(firstTrailingBit(var_0.c.x), var_0.b, var_0.c.x ^ 13821u), vec3<u32>(48414u & var_0.c.x, firstTrailingBit(var_0.b), 108559u)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(var_0.b, 54591u, u_input.b) >> (vec3<u32>(u_input.b, 26168u, var_0.b) % vec3<u32>(32u))), u_input.c.zxx)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1763f, var_1.a)), _wgslsmith_f_op_f32(1280f - var_0.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.a)), -1326f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))))) + _wgslsmith_f_op_f32(-var_0.a));
}

fn func_2() -> vec4<f32> {
    global0 = array<vec2<i32>, 30>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), -713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(981f)) * -474f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2470f * -192f), _wgslsmith_f_op_f32(ceil(537f))))))), _wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-2811f, -1000f)))), _wgslsmith_f_op_f32(step(1816f, _wgslsmith_f_op_f32(-1931f - 812f)))))));
    let var_1 = u_input.e.x;
    global0 = array<vec2<i32>, 30>();
    let var_2 = Struct_4(-firstLeadingBit(u_input.e), !(true || any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))));
    return vec4<f32>(-1580f, var_0.x, -475f, 1734f);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    global0 = array<vec2<i32>, 30>();
    global0 = array<vec2<i32>, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    global0 = array<vec2<i32>, 30>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 244f) * -287f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, arg_1.a.a, 1423f, arg_1.a.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, 617f, -2143f, 927f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(311f, 397f, var_0.x, arg_1.a.a), vec4<f32>(663f, 916f, var_0.x, var_0.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-532f, var_0.x, 612f, 137f), vec4<f32>(arg_1.a.a, var_0.x, 328f, 1070f), arg_0))), vec4<f32>(576f, -918f, -889f, _wgslsmith_f_op_f32(select(arg_1.a.a, var_0.x, false))))));
    return Struct_1(arg_1.a.a, arg_2.x, arg_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(true, true, false | !any(vec4<bool>(true, false, true, true)), select(true, true, true) & true), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -287f), 1u, _wgslsmith_div_vec3_u32(firstLeadingBit(u_input.c.zyz), vec3<u32>(1u, 85627u, u_input.b)))), countOneBits(~(~u_input.c)), true);
    var var_1 = ~abs(-vec3<i32>(u_input.a, -35056i, _wgslsmith_sub_i32(u_input.e.x, 2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true));
    var_1 = u_input.e.zwx;
    let var_3 = var_0.c.x >> (_wgslsmith_dot_vec3_u32(u_input.c.yww, ~var_0.c) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -vec4<i32>(1i, ~var_1.x, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-9990i, -21944i, 12711i, var_1.x)), _wgslsmith_div_i32(u_input.e.x, var_1.x)) | min(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, -2147483647i, -1i, u_input.e.x), u_input.e, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_1.x, var_1.x, 16869i), u_input.e)), abs(-u_input.e)), 4294967295u, ~(-55391i), _wgslsmith_add_i32(-31154i, var_1.x));
}

