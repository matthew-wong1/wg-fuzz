struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    return arg_2.a;
}

fn func_3() -> bool {
    let var_0 = min(firstTrailingBit(_wgslsmith_clamp_u32(~43644u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(36925u, 0u)), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)) | 14377u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.c.x, u_input.d), vec4<u32>(35771u, 16703u, u_input.b, 1u)), ~vec4<u32>(1u, 4294967295u, u_input.b, u_input.c.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(19600u, 35430u, u_input.b, 44188u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d), vec4<u32>(u_input.c.x, u_input.b, u_input.d, 4294967295u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(17584u, 31149u, u_input.d, u_input.c.x)), vec4<u32>(u_input.d, u_input.a, 0u, 0u) & vec4<u32>(u_input.a, u_input.c.x, 4294967295u, u_input.d)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, u_input.c.x, u_input.a)), vec4<u32>(u_input.c.x, 1u, 1u, u_input.b)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -674f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(218f, -1167f)))), countOneBits(max(~vec4<u32>(var_0, 61797u, 4294967295u, u_input.d), vec4<u32>(43893u, var_0, 69320u, var_0)))), ~select(var_0, 1u, false), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2220f - 1099f)) - _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1226f)))), vec4<u32>(4294967295u, u_input.b, 4294967295u, 1u)), -1000f);
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-12022i), u_input.e) & (vec2<i32>(-1i) * -vec2<i32>(u_input.e, -2147483647i)), vec2<i32>(~u_input.e, abs(u_input.e))), true, -278f, _wgslsmith_f_op_f32(ceil(320f)), Struct_1(var_1.d, vec4<u32>(1u, var_0, var_1.c.b.x, u_input.a)));
    var var_3 = _wgslsmith_f_op_f32(floor(-236f));
    var var_4 = vec4<bool>(var_2.b, false, !(!(!(!var_2.b))), var_2.b);
    return ~(~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), 4294967295u)) >= 15899u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3;
    let var_1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, arg_3.a, 1i) << (var_0.e.b.xzz % vec3<u32>(32u)), ~vec3<i32>(arg_3.a, 2147483647i, u_input.e))), ~(~var_0.a)), func_3(), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(189f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.e.a, var_0.d))))), _wgslsmith_f_op_f32(arg_3.d - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c * -874f), _wgslsmith_f_op_f32(arg_3.d * arg_3.d), 1i == arg_3.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, arg_3.e.a)) * -230f), -1016f)) * arg_3.c), Struct_1(arg_3.c, vec4<u32>(u_input.a, arg_2.x, 4294967295u, 9178u)));
    var var_2 = Struct_3(arg_3.a, !(~var_0.e.b.x > arg_3.e.b.x), 473f, var_0.e.a, var_1.e);
    var var_3 = !vec3<bool>(!arg_1.x, !(!arg_1.x) & (_wgslsmith_f_op_f32(-arg_3.e.a) < -277f), true || (~37773i != var_2.a));
    var_2 = var_1;
    return _wgslsmith_mult_i32(-20267i | _wgslsmith_mod_i32(~var_2.a & -2147483647i, ~1i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(u_input.e, false, 500f, -190f, Struct_1(-541f, vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.a))), false, Struct_1(452f, vec4<u32>(0u, u_input.c.x, u_input.d, u_input.a)), vec3<bool>(true, true, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f + -154f) * _wgslsmith_f_op_f32(-891f - -219f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-711f)), _wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(987f - 566f)))))), _wgslsmith_f_op_f32(629f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1395f)))));
    var var_1 = 1u;
    var_0 = 538f;
    var var_2 = -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(29994i, u_input.e, 2147483647i, -1i), vec4<i32>(u_input.e, u_input.e, -2147483647i, u_input.e)), -vec4<i32>(u_input.e, -13766i, u_input.e, u_input.e)), vec4<i32>(u_input.e, 1i, 19687i, func_2(vec2<u32>(u_input.b, 1u), vec2<bool>(true, false), vec3<u32>(44625u, 1u, u_input.c.x), Struct_3(u_input.e, true, 1000f, 693f, Struct_1(-1901f, vec4<u32>(4294967295u, 0u, u_input.c.x, 7356u)))))), vec4<i32>(u_input.e << (28947u % 32u), u_input.e, _wgslsmith_mult_i32(-2147483647i, u_input.e), ~0i) & vec4<i32>(1i, _wgslsmith_sub_i32(-12880i, -13569i), min(u_input.e, 1i), 0i));
    var_0 = _wgslsmith_f_op_f32(sign(-627f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-240f)) + -1220f));
    var var_3 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1639f, 2936f, -848f) - vec3<f32>(-1000f, -808f, -1145f))) * _wgslsmith_div_vec3_f32(vec3<f32>(187f, 1000f, -487f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-430f, 1600f, 539f) + vec3<f32>(1478f, 452f, -1722f))))), -(1i ^ (var_2.x ^ _wgslsmith_add_i32(-43692i, var_2.x))));
}

