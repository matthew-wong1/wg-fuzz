struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> bool {
    return false;
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = true;
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_0.a, u_input.a, u_input.a, arg_0.a)), _wgslsmith_div_vec4_u32(select(vec4<u32>(0u, arg_0.a, 1u, arg_0.a), vec4<u32>(arg_0.a, u_input.a, 0u, 44803u), false), vec4<u32>(arg_0.a, 1974u, 0u, arg_0.a))), arg_0.a, _wgslsmith_mult_u32(~(~9739u), arg_0.a), ~(~(~36469u)));
    global0 = true;
    let var_1 = Struct_4(firstLeadingBit(_wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.b, 0i, u_input.d.x), vec4<i32>(38188i, 1i, u_input.d.x, u_input.b)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.b, u_input.e, u_input.c), vec4<i32>(arg_0.b, 0i, arg_0.b, u_input.d.x)), ~0i, -u_input.c, 2147483647i))), Struct_3(arg_0, _wgslsmith_div_f32(-504f, _wgslsmith_f_op_f32(trunc(-731f))), abs(_wgslsmith_add_u32(var_0.x, arg_0.a) << (arg_0.a % 32u)), false), Struct_3(Struct_1(abs(~u_input.a), abs(22606i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(546f)) - -739f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(992f)) + _wgslsmith_f_op_f32(-115f + -1500f))), arg_0.a, true), Struct_2(_wgslsmith_div_vec2_i32(~(-u_input.d), u_input.d), arg_0, arg_0));
    global0 = true;
    return ~firstLeadingBit(46918u);
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(u_input.a >> (_wgslsmith_div_u32(23321u, 1u) % 32u), -25699i), -1360f, 11380u, any(!vec3<bool>(true, u_input.d.x == -32452i, false)));
    let var_1 = vec4<bool>(true, var_0.d, true, arg_1);
    var_0 = Struct_3(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -156f), 590f), var_0.c, true);
    global0 = arg_1;
    var_0 = Struct_3(Struct_1(func_3(var_0.a), 1i), 1412f, 15985u, all(var_1.yw));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 299f)))) + vec2<f32>(var_0.b, 1f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1836f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)));
    global0 = all(vec3<bool>(any(vec3<bool>(u_input.d.x >= u_input.e, false, true)), _wgslsmith_f_op_f32(174f - _wgslsmith_f_op_f32(-224f - -308f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(950f, -303f)), _wgslsmith_f_op_f32(round(1303f))), func_1(u_input.b & 89814i)));
    global0 = any(vec3<bool>(false, true, true));
    var var_0 = countOneBits(vec4<u32>(u_input.a, firstLeadingBit(u_input.a), 23368u, 4294967295u));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.a, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-343f, 167f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-475f, 650f))), vec2<f32>(-672f, -1565f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-356f, -1109f) + vec2<f32>(-1010f, 975f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-657f, 361f) + vec2<f32>(661f, 379f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(106f, -1155f), vec2<f32>(1f, 1f), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))))));
    let var_2 = Struct_2(vec2<i32>(abs(-(~u_input.c)), u_input.c), Struct_1(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c & 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -73290i, u_input.e), vec3<i32>(2147483647i, u_input.b, u_input.d.x)), u_input.e), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.d.x, 0i, u_input.d.x), ~vec3<i32>(u_input.b, u_input.c, 32169i), firstLeadingBit(vec3<i32>(0i, u_input.b, 34879i))))), Struct_1(0u, -19566i));
    let var_3 = var_2.b.b;
    var_0 = (vec4<u32>(~var_2.b.a, var_0.x, firstTrailingBit(_wgslsmith_div_u32(u_input.a, u_input.a)), 83390u) | ~(~(~vec4<u32>(u_input.a, var_0.x, 66622u, u_input.a)))) << (vec4<u32>(1u, func_3(var_2.b), var_0.x, var_0.x) % vec4<u32>(32u));
    let var_4 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(14938i, 1446i, 2147483647i, 2147483647i), vec4<i32>(var_2.c.b, var_3, 4856i, -1i) ^ vec4<i32>(27862i, -21647i, u_input.c, u_input.b)), 2147483647i) ^ -var_2.a, var_2.b, Struct_1(40011u, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~(-firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, 57172i, u_input.e), vec3<i32>(var_2.b.b, var_2.a.x, var_2.c.b)))));
}

