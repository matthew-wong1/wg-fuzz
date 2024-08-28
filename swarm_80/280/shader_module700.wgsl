struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_i32(-abs(abs(0i)), -15853i);
    var var_1 = Struct_2(Struct_1(u_input.a, ~(~firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-206f, -1000f, 850f), vec3<f32>(1030f, 1852f, -146f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(3164f, -361f, 2356f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, 657f, -1520f) * vec3<f32>(700f, 841f, -1306f))))), -_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(-48912i, 1i, var_0), countOneBits(5779i)));
    let var_2 = select(vec4<i32>(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, var_1.d, -2147483647i), vec3<i32>(var_0, 1i, 3826i)), -vec3<i32>(var_1.d, 37141i, 1i)), var_1.d, 1i, -54374i), max(((vec4<i32>(var_1.d, var_1.d, 42241i, -2147483647i) | vec4<i32>(var_1.d, -1i, var_0, var_1.d)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(14636u, var_1.a.b.x, 51069u, u_input.a.x), vec4<u32>(var_1.b, u_input.a.x, var_1.a.b.x, var_1.a.b.x), vec4<u32>(u_input.a.x, u_input.a.x, var_1.a.b.x, 1u)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, -17269i, -2147483647i), vec4<i32>(21433i, -114831i, var_1.d, -45714i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, 29886i, 44582i, var_0), vec4<i32>(21708i, 7643i, var_1.d, 0i))), -vec4<i32>(var_1.d | -41990i, _wgslsmith_mult_i32(1i, var_0), _wgslsmith_div_i32(var_1.d, 817i), var_0 & var_1.d)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, any(vec2<bool>(false, false)), var_1.c.x != var_1.c.x), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_3 = Struct_4(Struct_3(var_1.a, Struct_2(var_1.a, ~u_input.a.x, var_1.c, 26880i)), u_input.a.x, vec2<i32>(var_0, var_1.d), _wgslsmith_mod_i32(~abs(-23885i) | -_wgslsmith_dot_vec4_i32(vec4<i32>(-19383i, var_0, 1i, var_0), var_2), 1i));
    var_1 = var_3.a.b;
    return firstTrailingBit(i32(-1i) * -_wgslsmith_add_i32(-2147483647i << (var_1.a.a.x % 32u), var_2.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(1u, arg_0.x));
    let var_1 = vec2<i32>(select(~func_3(), arg_1, !select(true, false, true)) ^ 1i, firstTrailingBit(_wgslsmith_mod_i32(14994i, 25058i)));
    var var_2 = 1f;
    var_2 = arg_2.x;
    var_0 = _wgslsmith_clamp_u32(~(~arg_0.x), _wgslsmith_mod_u32(~max(4294967295u, 0u & u_input.a.x), _wgslsmith_dot_vec3_u32(~u_input.a.zyy, _wgslsmith_div_vec3_u32(vec3<u32>(101468u, 38422u, 1u), vec3<u32>(1123u, 10346u, 52419u)))), _wgslsmith_div_u32(u_input.a.x, firstTrailingBit(arg_0.x ^ arg_0.x)));
    return !(!(13533i >= _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_1, -1i, arg_1)), -vec3<i32>(arg_1, -47459i, var_1.x))));
}

fn func_1() -> i32 {
    var var_0 = select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), select(false, true, true), select(true, true, true)), func_2(firstLeadingBit(vec3<u32>(1u, u_input.a.x, 117706u)), _wgslsmith_sub_i32(1i, 12831i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, -1273f)))), !func_2(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zzz, vec3<u32>(1u, 0u, 26380u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1663i, -2147483647i), vec2<i32>(-1009i, 0i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1337f, 1000f), vec2<f32>(230f, 597f))))));
    let var_1 = Struct_2(Struct_1(~u_input.a, u_input.a.zww), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -205f, 261f) - vec3<f32>(214f, -395f, 1596f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1098f, 499f, -1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, 1232f, -1709f) * vec3<f32>(656f, 1784f, 1628f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(509f, -965f, 394f), vec3<f32>(264f, -796f, 474f))), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x)))), true))), ~_wgslsmith_add_i32(1i, _wgslsmith_add_i32(~41897i, 0i)));
    var_0 = !vec3<bool>(all(!(!vec4<bool>(true, var_0.x, false, var_0.x))), true, var_1.d >= max(i32(-1i) * -12525i, ~var_1.d));
    var_0 = vec3<bool>(select(!(859f < _wgslsmith_f_op_f32(2135f - var_1.c.x)), !(!var_0.x), false), all(select(!vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, -2147483647i <= var_1.d, u_input.a.x > var_1.a.a.x), any(vec3<bool>(var_0.x, false, var_0.x)))), !(-506f >= _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(min(749f, var_1.c.x)))));
    let var_2 = var_1.a;
    return _wgslsmith_add_i32(abs(2147483647i), -34317i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yyx;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(-273f)), _wgslsmith_f_op_f32(-1665f - -1407f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, 140f, 1787f)))));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_div_f32(-187f, 155f), -1105f);
    let var_3 = var_0.x;
    var var_4 = _wgslsmith_f_op_f32(-var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1));
}

