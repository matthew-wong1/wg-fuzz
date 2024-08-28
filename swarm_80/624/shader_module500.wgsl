struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(~select(vec3<u32>(0u, 9348u, 1u), vec3<u32>(1224u, 11248u, 0u), true)), vec3<u32>(_wgslsmith_add_u32(~0u, select(0u, 22382u, arg_1)), reverseBits(_wgslsmith_mod_u32(13670u, 16968u)), _wgslsmith_add_u32(_wgslsmith_add_u32(61270u, 10680u), _wgslsmith_mod_u32(28207u, 4294967295u)))), vec3<u32>(1u, 1u, 1u));
    let var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) * arg_0.b), countOneBits(u_input.a) == -1i)));
    let var_2 = Struct_1(arg_0.a, -1191f);
    var_0 = _wgslsmith_mod_u32(~(~1u), 6830u);
    var_0 = 1u;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 24190i, u_input.a), -vec3<i32>(-85864i, u_input.a, _wgslsmith_mult_i32(1i, ~u_input.a)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = select(-vec4<i32>(63507i, -func_3(Struct_1(vec4<f32>(arg_1.x, arg_1.x, -890f, 801f), arg_1.x), false), -266i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-95i, 5346i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a))), -(~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, 15741i, 27223i), vec4<i32>(u_input.a, u_input.a, 2147483647i, -10665i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, -14527i, u_input.a, 1i))), true);
    var var_1 = select(select(!(!select(false, false, true)), true, any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), all(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), all(vec2<bool>(false, true)))), !(((arg_1.x <= -405f) || true) & !(0u >= arg_0)));
    var_0 = countOneBits(abs(_wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(1i, -2147483647i, -27987i, var_0.x)), min(~vec4<i32>(var_0.x, -12381i, 40745i, -55906i), -vec4<i32>(u_input.a, u_input.a, 4829i, u_input.a)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, 1000f, -726f, 257f) + vec4<f32>(1308f, 991f, arg_1.x, 399f)) + vec4<f32>(arg_1.x, arg_1.x, 2168f, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
    var_0 = ~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(var_0.x, u_input.a), firstLeadingBit(var_0.x), 1i, 601i)), -countOneBits(-vec4<i32>(-38634i, u_input.a, -16607i, var_0.x)));
    return ~vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 33048u, arg_0)), _wgslsmith_mod_u32(~13270u, ~arg_0)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0, 1u), vec3<u32>(arg_0, arg_0, arg_0)), ~vec3<u32>(42677u, 4294967295u, arg_0)), vec3<u32>(4294967295u >> (arg_0 % 32u), 2220u, arg_0)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 46677u), vec2<u32>(1u, ~23216u))), abs(func_2(~0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1947f, 189f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 237f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, 947f, -375f, -338f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, 1488f, 176f, -596f)))))), 263f);
    var_0 = firstLeadingBit(_wgslsmith_mod_vec2_u32(min(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(76620u, var_0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 56705u), vec2<u32>(1u, var_0.x))), vec2<u32>(~var_0.x, 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 4294967295u) | vec2<u32>(var_0.x, 51051u), vec2<u32>(var_0.x, var_0.x))));
    let var_2 = Struct_2(var_1);
    var_0 = _wgslsmith_mod_vec2_u32(min(~((vec2<u32>(var_0.x, 28558u) & vec2<u32>(2574u, 12682u)) & vec2<u32>(41579u, 74308u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x ^ 110u, ~31928u), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(47446u, var_0.x), vec2<u32>(var_0.x, var_0.x)), vec2<u32>(var_0.x, var_0.x)))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 9830u), vec2<u32>(var_0.x, var_0.x)) & vec2<u32>(var_0.x, var_0.x)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 581f, -1469f, var_2.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(round(-1085f))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    return StorageBuffer(-1263f, arg_0.a.b, ~53261u, _wgslsmith_f_op_f32(sign(arg_0.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(countOneBits(u_input.a), vec2<i32>(u_input.a, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) - 1f));
}

