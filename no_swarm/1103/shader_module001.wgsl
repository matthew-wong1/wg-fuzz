struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.d | vec4<u32>(~48271u, ~10740u, arg_0, reverseBits(arg_0)), u_input.d), select(vec4<u32>(~(~61922u), u_input.b, arg_0, u_input.b & 0u), vec4<u32>(21993u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 1u), u_input.d.zyz)), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, arg_0, 55608u), u_input.d), ~u_input.b)), (true && (u_input.a.x >= -1i)) | select(true, true, u_input.a.x > -14061i)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(234f, 899f, -895f), vec3<f32>(-360f, 608f, 589f)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1028f, 176f, -1971f), vec3<f32>(-765f, 529f, 1684f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1432f, 194f, -1142f))))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 * arg_1))))));
    let var_1 = u_input.d & ~max(u_input.d, vec4<u32>(1u, 1u | u_input.d.x, firstTrailingBit(u_input.d.x), 1u));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1567f, 816f) + vec3<f32>(260f, -240f, 303f)))), vec4<bool>(!(2556f != arg_1), (2147483647i >> (u_input.d.x % 32u)) < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, -2147483647i), vec4<i32>(u_input.c, u_input.c, arg_0.x, arg_0.x)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), all(vec3<bool>(true, true, true)))));
    var var_3 = var_1;
    var var_4 = -_wgslsmith_sub_i32(u_input.c, ~(~(~(-2147483647i))));
    return _wgslsmith_f_op_f32(abs(arg_1));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_add_vec3_u32(u_input.d.xyx, firstTrailingBit(~(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 50689u)) & abs(u_input.d.yyz))));
    var var_1 = vec2<i32>(0i, u_input.c);
    let var_2 = select(vec4<bool>((var_1.x >> (_wgslsmith_div_u32(var_0.x, var_0.x) % 32u)) == firstTrailingBit(_wgslsmith_mult_i32(u_input.c, -1i)), true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true))), !vec4<bool>(false, all(vec4<bool>(false, false, true, true)) || any(vec3<bool>(false, false, false)), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), true || (1i < abs(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-909f)))))), -982f, 1239f);
    let var_4 = var_0.x;
    return _wgslsmith_f_op_f32(func_2(~_wgslsmith_sub_vec3_i32(vec3<i32>(-38688i, u_input.c, var_1.x), -vec3<i32>(-2147483647i, u_input.a.x, 57984i)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, var_4) >> (vec3<u32>(var_0.x, 5041u, 0u) % vec3<u32>(32u)), var_0) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -722f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~82184u >> (abs(u_input.d.x) % 32u))));
    var_0 = _wgslsmith_div_u32(1u, ~reverseBits(~(~u_input.b)));
    var var_1 = -(~_wgslsmith_mult_i32(u_input.c, -8816i >> (~u_input.b % 32u)));
    var var_2 = vec2<bool>(true != (any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))) & any(vec3<bool>(true, true, true))), any(vec2<bool>(true, _wgslsmith_mult_u32(54418u, u_input.d.x) != 21773u)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) + _wgslsmith_f_op_f32(1903f + 604f)) + _wgslsmith_f_op_f32(func_1())), -1002f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1224f + -294f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(943f)) + _wgslsmith_f_op_f32(f32(-1f) * -184f))))));
    var_2 = vec2<bool>(true, true);
    var var_4 = _wgslsmith_add_i32(u_input.c, ~(-12694i));
    var_2 = select(vec2<bool>(false, all(!(!vec2<bool>(var_2.x, true)))), vec2<bool>(_wgslsmith_add_u32(0u, abs(u_input.b)) != (u_input.b | u_input.b), -443f == var_3.x), !select(vec2<bool>(!var_2.x, true), select(select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, false), vec2<bool>(true, var_2.x)), !vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false)), vec2<bool>(all(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.d.xxy, min(u_input.d.xwx, ~u_input.d.wwz), !(!var_2.x)), 597f, ~(~u_input.b) & u_input.b);
}

