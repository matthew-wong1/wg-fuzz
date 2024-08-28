struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec2<bool> {
    return arg_2;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(~firstTrailingBit(_wgslsmith_sub_u32(64150u, 26405u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_3.x, 0u) | 25344u, min(arg_3.x, arg_3.x))), 0u);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 1239f)));
    return ~arg_2;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(abs(u_input.a.x), 1u, reverseBits(abs(~vec4<u32>(1u, 1u, 1u, 1u))), true);
    let var_1 = Struct_2(0i, 128f);
    let var_2 = Struct_1(u_input.a.x, 4294967295u, ~_wgslsmith_mult_vec4_u32(var_0.c, ~(~var_0.c)), var_0.d | !(var_0.d | var_0.d));
    let var_3 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(reverseBits(~var_1.a), var_2.a, _wgslsmith_clamp_i32(-1i, 1i, select(var_2.a, var_0.a, var_2.d)), select(var_2.a, -1i >> (var_2.b % 32u), var_2.d)), countOneBits(reverseBits(~(-vec4<i32>(arg_1.x, u_input.a.x, u_input.a.x, u_input.a.x)))), -vec4<i32>(22524i, max(func_3(vec2<bool>(true, var_2.d), var_1, u_input.a.x, vec3<u32>(var_0.b, var_2.c.x, 13903u)), -var_1.a), ~_wgslsmith_clamp_i32(var_2.a, var_0.a, -11975i), arg_1.x));
    return vec2<bool>(select(true, true, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.ww)) * arg_2.xw), true, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, -1000f, -974f)))).x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1537f, -1896f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(110f, 1830f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(102f, 324f), vec2<f32>(-1420f, 639f)))), vec2<bool>(true, true))), true, !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(398f, 883f, 272f))), vec3<f32>(-291f, -548f, 358f))))), select(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-955f, -1011f, -1001f, 1325f), vec4<f32>(-455f, -302f, 1397f, 247f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1086f, 2464f, 567f, 1866f) + vec4<f32>(-1421f, 195f, 961f, -926f))), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(857f, 1113f, -728f, 1458f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1459f, 1687f, -693f, -325f)))), !vec2<bool>(any(vec4<bool>(false, false, false, false)), true), false), !(!func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1614f, -507f, -1493f, 114f)), u_input.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-107f, -1000f, -294f, 953f), vec4<f32>(-1000f, 286f, -633f, 203f))))));
    let var_1 = Struct_1(~_wgslsmith_div_i32(_wgslsmith_add_i32(~u_input.a.x, u_input.a.x), (u_input.a.x | u_input.a.x) & 1i), _wgslsmith_div_u32(94395u, 1467u), _wgslsmith_div_vec4_u32(vec4<u32>(18081u, 1u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 43416u)), reverseBits(1u), abs(min(67691u, 45939u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 5876u, 1u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 62587u))), var_0.x);
    var var_2 = true;
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(abs(~(~var_1.c.x)), var_1.c.x), var_1.b, ~_wgslsmith_div_u32(50718u, reverseBits(1u)));
    let var_4 = all(vec2<bool>(~(1u >> (var_3.x % 32u)) <= var_1.c.x, var_1.d));
    let var_5 = _wgslsmith_dot_vec2_u32(~reverseBits(select(max(vec2<u32>(105120u, 39671u), var_1.c.yx), var_1.c.wx, !vec2<bool>(var_0.x, false))), ~(~vec2<u32>(24896u, 0u)));
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 2877f, 4294967295u, ~reverseBits(~vec2<u32>(var_3.x, var_6.c.x)) & var_6.c.xy, -1000f);
}

