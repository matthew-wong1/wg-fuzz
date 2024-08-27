struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
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

var<private> global0: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = 6332u;
    var var_0 = vec2<bool>(true, all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))));
    var_0 = vec2<bool>(true, !(!var_0.x));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-203f, -749f)), 1394f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)))))));
    return reverseBits(~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, arg_0, u_input.c), select(vec3<u32>(16574u, arg_0, 4294967295u), vec3<u32>(26942u, 39410u, arg_0), false)) & _wgslsmith_mod_vec3_u32(vec3<u32>(32169u, u_input.b, 54517u), ~vec3<u32>(u_input.c, 4294967295u, 3309u))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(ceil(959f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(232f)), _wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(835f * -120f))))));
    global0 = _wgslsmith_div_u32(~_wgslsmith_add_u32(~(~4294967295u), u_input.a.x), u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(979f, -1239f, 864f)) + vec3<f32>(449f, -1990f, -451f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_div_f32(1709f, 1631f)))));
    global0 = ~1u << (0u % 32u);
    let var_2 = -1910f;
    return Struct_1(~(-(select(vec3<i32>(-4088i, 5384i, 0i), vec3<i32>(1i, -30511i, 8691i), true) << (func_3(1u) % vec3<u32>(32u)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = ~reverseBits(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.b), vec4<u32>(0u, 125877u, 10472u, 47844u), vec4<u32>(23449u, 1u, u_input.a.x, u_input.a.x)) >> (~vec4<u32>(1u, 4294967295u, 1u, u_input.b) % vec4<u32>(32u))));
    var var_1 = arg_1;
    var var_2 = select((~_wgslsmith_sub_u32(u_input.b, u_input.b) | _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, var_0.x, var_0.x), var_0.zxx, vec3<bool>(false, true, false)), _wgslsmith_clamp_vec3_u32(var_0.wxy, var_0.xxz, vec3<u32>(0u, var_0.x, var_0.x)))) ^ u_input.b, _wgslsmith_dot_vec3_u32(var_0.yzy, select(~vec3<u32>(1u, 21534u, var_0.x) << (var_0.ywx % vec3<u32>(32u)), vec3<u32>(70575u, u_input.b, 0u), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1467f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * arg_0)) > 1030f);
    global0 = u_input.c;
    global0 = ~(~(~11503u));
    return arg_3;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(select(vec3<i32>(firstLeadingBit(-126i), -(~2147483647i), (arg_3.a.x << (1u % 32u)) << (1u % 32u)), abs(-(vec3<i32>(arg_3.a.x, 10889i, arg_3.a.x) & vec3<i32>(-64692i, arg_3.a.x, 2147483647i))), true));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1.yxy)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(arg_2)), _wgslsmith_div_vec3_f32(arg_1.yzz, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-arg_1.x), func_2(false), arg_3, arg_1.zxx))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-344f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1010f) + 959f)), var_1.x));
    let var_3 = select(vec3<bool>(true, any(vec4<bool>(any(vec3<bool>(true, true, false)), true, all(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, true, false)))), true), !vec3<bool>(abs(var_0.a.x) >= 15748i, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), true);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(35806u, 4294967295u)), countOneBits(_wgslsmith_add_u32(u_input.b, 0u)), 15559u ^ reverseBits(u_input.b), _wgslsmith_clamp_u32(arg_0.x, reverseBits(arg_0.x), arg_0.x)), ~vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, arg_0.x), firstLeadingBit(u_input.c), 44707u, abs(u_input.c))) ^ 15117u;
    return ~(~vec4<u32>(~_wgslsmith_div_u32(1u, arg_0.x), 67040u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(79892u, 4294967295u, 1u), vec3<u32>(8903u, arg_0.x, u_input.c)), arg_0.x), 71656u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(func_1(max(select(~vec2<u32>(u_input.c, u_input.a.x), vec2<u32>(u_input.b, 1u), vec2<bool>(true, false)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 13550u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1349f, 171f, -614f)), vec4<f32>(-892f, 922f, -1209f, -2010f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2046f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1360f)) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f - 205f) * _wgslsmith_f_op_f32(f32(-1f) * -720f))), Struct_1(vec3<i32>(1i, 1i, 1i))), vec4<u32>(0u, 0u, abs(abs(u_input.b)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.a << (u_input.a % vec2<u32>(32u)))));
    global0 = var_0.x;
    global0 = var_0.x;
    let var_1 = _wgslsmith_mod_u32((reverseBits(3151u) ^ u_input.b) ^ ~(1u | u_input.c), 59558u) > _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 16690u, ~(~var_0.x)), 1u);
    global0 = _wgslsmith_add_u32(1u, ~u_input.b);
    var var_2 = Struct_1(vec3<i32>(-26984i, firstLeadingBit(-40738i), ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-_wgslsmith_div_i32(-1i, var_2.a.x)));
}

