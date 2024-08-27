struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = 1i;
    var var_1 = Struct_1(!any(vec3<bool>(true, !arg_0.a, arg_0.a)), 24737u, var_0);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2153f, 1418f, 263f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, 741f, -625f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1057f, 1155f, arg_1.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_1.x, 593f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -473f, arg_1.x), false)), select(vec3<bool>(false, arg_0.a, var_1.a), vec3<bool>(arg_0.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, _wgslsmith_f_op_f32(step(-771f, _wgslsmith_f_op_f32(round(arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(ceil(arg_1.x))))));
    var var_3 = arg_0;
    var var_4 = Struct_1(any(!select(select(vec2<bool>(true, false), vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_0.a)), vec2<bool>(arg_0.a, var_1.a), !vec2<bool>(var_3.a, true))), ~1u, _wgslsmith_mod_i32(var_0, 1i << (var_3.b % 32u)));
    return vec3<u32>(_wgslsmith_add_u32(~(~36602u) ^ u_input.e, 53259u), ~0u, 24766u);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    global0 = ~countOneBits(arg_0.b ^ reverseBits(u_input.d.x));
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, u_input.b.x >> (72985u % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3, 27979u) << (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1u, 9821u, 59637u, u_input.d.x)) % 32u), arg_3)), func_3(Struct_1(arg_0.a, ~1u & ~arg_3, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c, 29295i), firstLeadingBit(arg_0.c))), vec2<f32>(277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(938f)) - 1009f))));
    return 2147483647i;
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    return Struct_1(true, 67034u, _wgslsmith_sub_i32(func_2(Struct_1(true, u_input.b.x, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), u_input.a.xw), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c), u_input.a), firstTrailingBit(u_input.d.x)) << (~u_input.d.x % 32u), -countOneBits(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -184f;
    var var_1 = u_input.a.xxy;
    let var_2 = firstTrailingBit(-_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c, -8822i), -39778i ^ var_1.x), u_input.c));
    var var_3 = func_1();
    let var_4 = ~_wgslsmith_sub_u32(18691u, _wgslsmith_mod_u32(u_input.d.x, max(35624u, u_input.e) & firstTrailingBit(var_3.b)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2254f + -1255f));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(377f - 169f), _wgslsmith_f_op_f32(164f * -454f), _wgslsmith_f_op_f32(-1532f + 1568f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global0 = ~4294967295u;
    var var_6 = _wgslsmith_div_vec2_i32(~var_1.xx, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~(vec2<i32>(var_2, var_3.c) ^ vec2<i32>(73467i, -2147483647i)), firstLeadingBit(vec2<i32>(0i, var_3.c)), abs(vec2<i32>(u_input.c, 2147483647i))), vec2<i32>(var_1.x, reverseBits(_wgslsmith_div_i32(-14977i, 28889i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, -(~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(var_6.x, u_input.a.x, u_input.c, 22829i)) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(16195i, var_2, -2147483647i, var_3.c), vec4<i32>(1i, 6915i, var_2, var_6.x))), 1i, vec3<f32>(var_5.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x))), var_5.x);
}

