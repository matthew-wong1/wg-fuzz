struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 0u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(126f)) * _wgslsmith_f_op_f32(round(-303f)))), _wgslsmith_f_op_f32(trunc(-3057f))) < _wgslsmith_f_op_f32(select(308f, _wgslsmith_f_op_f32(-arg_1), all(vec4<bool>(true, true, true, true))));
    return ~max(53479u, arg_0.x);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.c, 1u, u_input.c)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(27167u, 0u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.d.x))))), abs(vec2<u32>(func_3(vec2<u32>(10381u, u_input.c), _wgslsmith_f_op_f32(round(arg_1.x))), 0u)));
    let var_1 = ~firstTrailingBit(~vec2<u32>(~u_input.c, u_input.d.x));
    global1 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(max(1u, u_input.c), 37262u), abs(_wgslsmith_sub_vec2_u32(var_1, u_input.d)), select(!arg_0, false, !arg_0)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 41386u), select(u_input.d, _wgslsmith_clamp_vec2_u32(var_1, u_input.d, var_1), vec2<bool>(arg_0, arg_0)))) & var_0.x;
    let var_2 = _wgslsmith_sub_u32(4294967295u, var_0.x) <= (var_1.x ^ ~firstLeadingBit(var_1.x << (var_1.x % 32u)));
    let var_3 = !any(select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), vec2<bool>(u_input.b < 2147483647i, u_input.b <= u_input.a)));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1060f, _wgslsmith_f_op_f32(floor(886f)))) * 1343f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, vec4<f32>(_wgslsmith_div_f32(-1081f, -1501f), -774f, -386f, 421f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-858f * _wgslsmith_f_op_f32(416f + -782f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_div_f32(-557f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -173f), 1456f))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(var_0.x - -160f), !all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))))), var_0.x);
    let var_2 = vec2<u32>(~_wgslsmith_add_u32(arg_1.x, abs(arg_1.x)), arg_1.x);
    let var_3 = arg_2.x << (~min(arg_0.x, firstTrailingBit(0u)) % 32u);
    let var_4 = any(select(vec4<bool>(false, true, all(vec3<bool>(true, true, true)) != (arg_1.x > 1u), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true && (0u < var_2.x), -arg_2.x > ~36458i)));
    return ~(~(~select(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, arg_1.x), u_input.d), _wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_1.x), vec2<u32>(6465u, arg_1.x)), !var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~abs(u_input.d) | ((~vec2<u32>(u_input.c, u_input.c) & reverseBits(vec2<u32>(50950u, 0u))) | _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 1u) & vec2<u32>(u_input.c, 2414u)))) | func_1(~min(~vec3<u32>(u_input.d.x, 1u, 4294967295u), ~vec3<u32>(u_input.c, u_input.c, u_input.d.x)), ~u_input.d, abs(vec3<i32>(-2147483647i, u_input.a, 1i)));
    var_0 = vec2<u32>(~(~_wgslsmith_add_u32(69136u ^ u_input.c, _wgslsmith_div_u32(1u, var_0.x))), 44537u);
    let var_1 = max(abs(~(~(~vec4<u32>(0u, var_0.x, u_input.c, 0u)))), ~(~(~reverseBits(vec4<u32>(56616u, 18485u, 0u, 483u)))));
    global0 = var_1.x;
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(0u, 4294967295u), ~var_1.zww, _wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(u_input.b, 0i), 16470i, u_input.b | 5771i, min(u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.b, u_input.a, 19796i, -1880i), vec4<i32>(63851i, -57636i, 0i, u_input.a)), vec4<i32>(u_input.b, u_input.b, 28710i, 74104i)) | ~vec4<i32>(8956i, u_input.b, -1i, u_input.b)), ~4294967295u);
}

