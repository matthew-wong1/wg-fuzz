struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1113f, 667f) + _wgslsmith_div_f32(-932f, -763f)) * 884f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1628f)) + -921f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f + -744f) + -1453f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-320f, _wgslsmith_f_op_f32(f32(-1f) * -621f)))));
    let var_1 = vec3<bool>(all(select(vec4<bool>(false, true, true, var_0 != 299f), select(vec4<bool>(false, arg_3.c.x, true, arg_3.c.x), vec4<bool>(arg_3.d, arg_1.c.x, true, arg_3.d), select(vec4<bool>(arg_3.c.x, arg_2.x, true, true), vec4<bool>(arg_1.c.x, arg_1.d, true, true), vec4<bool>(arg_3.c.x, arg_1.d, arg_2.x, arg_3.c.x))), select(vec4<bool>(arg_1.d, true, arg_1.c.x, arg_3.c.x), !vec4<bool>(true, false, false, arg_3.c.x), arg_2.x))), !(~(-u_input.b) != ~(arg_3.b | arg_3.e.x)), true);
    var var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1327f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f + 632f) * _wgslsmith_f_op_f32(var_0 + var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2031f, _wgslsmith_f_op_f32(step(420f, var_0)))))));
    var var_4 = _wgslsmith_f_op_f32(-var_0);
    return select(!(!select(var_1, var_1, !vec3<bool>(false, arg_1.c.x, true))), vec3<bool>(var_2.x, !var_1.x, !select(arg_2.x, any(vec4<bool>(false, true, arg_2.x, true)), arg_3.d & arg_3.d)), true);
}

fn func_2() -> i32 {
    let var_0 = select(!func_3(_wgslsmith_dot_vec2_u32(u_input.a, u_input.d.zx), Struct_1(u_input.d.wx, u_input.b << (1u % 32u), vec2<bool>(false, false), true, ~vec4<i32>(-61487i, u_input.b, u_input.b, u_input.b)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), Struct_1(reverseBits(vec2<u32>(u_input.a.x, u_input.d.x)), -2147483647i, vec2<bool>(true, true), true, -vec4<i32>(u_input.b, u_input.b, u_input.b, 1i))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(u_input.a.x, Struct_1(vec2<u32>(u_input.a.x, u_input.c), u_input.b, vec2<bool>(true, true), false, vec4<i32>(u_input.b, u_input.b, -10381i, u_input.b)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, u_input.c), u_input.b, vec2<bool>(false, true), true, vec4<i32>(-2999i, 1i, 22282i, 0i)))), all(vec2<bool>(true, !func_3(u_input.d.x, Struct_1(u_input.a, 1i, vec2<bool>(false, false), true, vec4<i32>(-36155i, -1i, u_input.b, 2147483647i)), vec2<bool>(false, true), Struct_1(u_input.a, -26627i, vec2<bool>(true, true), false, vec4<i32>(15043i, 0i, -2147483647i, -1i))).x)));
    let var_1 = !vec4<bool>(~1u != _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 702u, u_input.d.x), vec3<u32>(0u, 4294967295u, u_input.d.x)), ~u_input.c), any(!vec4<bool>(true, true, var_0.x, var_0.x)), true, 1i <= abs(u_input.b));
    return -5574i;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(firstTrailingBit(~u_input.d.yw), u_input.b, !vec2<bool>(true, !(7105u == u_input.a.x)), select(false, select(any(vec4<bool>(false, false, true, false)), select(all(vec2<bool>(true, false)), u_input.b < 1i, true), any(vec2<bool>(true, true))), true), vec4<i32>(21432i, u_input.b, func_2(), ~(~u_input.b)));
    return _wgslsmith_f_op_f32(-257f - _wgslsmith_f_op_f32(f32(-1f) * -1438f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c;
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(u_input.a, reverseBits(~u_input.d.zy))), min(10442i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-12194i, u_input.b, -15222i)) | -vec3<i32>(u_input.b, u_input.b, -59967i), ~min(vec3<i32>(0i, 11741i, 2147483647i), vec3<i32>(-2147483647i, u_input.b, 2147483647i)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(false, !(1i == u_input.b)), true), _wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(828f, 598f))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~(vec4<i32>(8524i, u_input.b, 10835i, -33423i) | vec4<i32>(-12500i, u_input.b, 4096i, u_input.b)), ~countOneBits(vec4<i32>(-19826i, -13296i, -2147483647i, 37555i))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(4929i, -2736i), 0i), 22568i, _wgslsmith_add_i32(~1i, u_input.b & 4308i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, 17753i)))));
    var var_2 = Struct_1(vec2<u32>(68280u, _wgslsmith_sub_u32(~var_1.a.x ^ 1u, ~_wgslsmith_clamp_u32(29495u, 0u, 4294967295u))), u_input.b, var_1.c, all(vec4<bool>(!(var_1.d | var_1.d), var_1.d, var_1.d, true)), vec4<i32>(u_input.b, ~_wgslsmith_div_i32(~(-2147483647i), var_1.b), -2147483647i, 2147483647i));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~4294967295u, 0u), 28413u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, u_input.c, 4294967295u, 4294967295u), u_input.d), 1u), select(u_input.d, _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, u_input.c, var_2.a.x, 4294967295u), vec4<u32>(var_2.a.x, 1u, u_input.d.x, var_1.a.x)), select(vec4<bool>(true, var_2.d, var_1.c.x, var_1.c.x), !vec4<bool>(var_1.c.x, true, var_1.c.x, var_2.c.x), select(vec4<bool>(var_2.d, var_1.c.x, false, false), vec4<bool>(false, true, false, var_2.d), vec4<bool>(true, false, var_2.c.x, true))))), ~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(var_2.a.x, u_input.c, 0u), u_input.d.xzz), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(var_0, 1u, 1u)), vec3<u32>(1u, 65338u, 46816u) << (u_input.d.wwz % vec3<u32>(32u)))));
    var_3 = ~28173u;
    var var_4 = Struct_1(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x & 33019u, var_1.a.x), u_input.d.zw, ~vec2<u32>(4502u, var_2.a.x)), ~_wgslsmith_clamp_vec2_u32(abs(var_2.a), vec2<u32>(var_0, 4294967295u), _wgslsmith_sub_vec2_u32(var_1.a, vec2<u32>(1u, var_0)))), -2147483647i, var_2.c, !(any(vec3<bool>(var_2.c.x, false, true)) || all(vec4<bool>(true, true, true, true))), (var_1.e | var_1.e) & vec4<i32>(~(i32(-1i) * -2891i), 13100i, -8442i ^ (4674i ^ u_input.b), ~var_2.b >> (80125u % 32u)));
    let var_5 = Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(~39704u, u_input.c), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.zww, u_input.d.xxz), 49825u)), _wgslsmith_add_i32(var_1.e.x, firstTrailingBit(u_input.b)), vec2<bool>(false, var_1.b >= -2147483647i), any(vec2<bool>(all(vec2<bool>(false, var_2.d)), var_4.c.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_2.b ^ 2147483647i, var_2.e.x, 0i), firstTrailingBit(var_4.e | var_2.e)));
    var_4 = Struct_1((((vec2<u32>(25015u, 13320u) | var_4.a) & _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.x, var_0), var_1.a)) << (var_1.a % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(select(var_2.a, var_1.a, !var_5.c.x), ~vec2<u32>(var_0, 56510u)), ~(-1i), var_5.c, !var_4.d, -(~var_5.e));
    var_2 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_div_vec2_i32(vec2<i32>(var_4.e.x, u_input.b), vec2<i32>(-18910i, -2147483647i)) >> (~vec2<u32>(33329u, 49466u) % vec2<u32>(32u)), reverseBits(vec2<i32>(var_5.e.x, var_5.e.x))), min(~(~vec3<u32>(var_5.a.x, var_1.a.x, u_input.a.x)) & u_input.d.wyz, u_input.d.zww), -1000f, 1i);
}

