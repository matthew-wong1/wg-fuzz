struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    let var_0 = ~vec2<u32>(51387u, global1.b);
    global0 = ~(-u_input.c);
    var var_1 = (_wgslsmith_div_u32(~arg_0.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 52963u), u_input.d.zx)) << (1u % 32u)) >> (u_input.b % 32u);
    var_1 = _wgslsmith_div_u32(~1u, ~_wgslsmith_dot_vec4_u32(u_input.d, ~_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d)));
    let var_2 = Struct_1(arg_0.a, ~_wgslsmith_dot_vec2_u32(var_0, firstTrailingBit(u_input.d.xz)) & _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(arg_0.b, 1u, 56104u)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, 1u, global1.c), vec3<u32>(arg_0.b, 1u, u_input.d.x))), 4294967295u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-318f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    global1 = arg_2;
    var var_0 = _wgslsmith_f_op_f32(ceil(553f));
    let var_1 = arg_2;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(var_1, arg_2, arg_0, 1000f)))) - _wgslsmith_f_op_f32(f32(-1f) * -2511f)))));
    var_0 = 2078f;
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1533i, -2147483647i, -2147483647i, 3465i)), vec4<i32>(-27352i, 2147483647i, arg_1, var_1.a), max(vec4<i32>(arg_1, u_input.c, arg_2.a, -2147483647i), vec4<i32>(var_1.a, 2147483647i, global1.a, arg_1))) ^ (~vec4<i32>(-1i, arg_2.a, arg_2.a, 12153i) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 2147483647i, global1.a, 44038i), vec4<i32>(global1.a, arg_2.a, global1.a, -6407i))), ~(-countOneBits(vec4<i32>(u_input.a, arg_2.a, -18112i, 32990i))));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(~(vec4<i32>(global1.a, -39519i, global1.a, -6434i) & vec4<i32>(u_input.c, arg_0.a, arg_0.a, global1.a))), abs(min(vec4<i32>(u_input.c, arg_0.a, u_input.a, global1.a), reverseBits(vec4<i32>(44493i, -2147483647i, 19978i, -45049i))))), abs(-1i));
    global0 = func_2(vec3<bool>(5144u >= min(abs(54830u), u_input.b | u_input.d.x), _wgslsmith_f_op_f32(trunc(-151f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f - -1338f) + _wgslsmith_f_op_f32(sign(2165f))), true), 24815i, Struct_1(-2147483647i, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.wwz, vec3<u32>(0u, global1.b, u_input.b)), firstTrailingBit(u_input.d.wwx)), firstTrailingBit(4294967295u)), u_input.b));
    var var_1 = u_input.d.ww;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) + -1134f) * _wgslsmith_f_op_f32(min(2148f, _wgslsmith_div_f32(-411f, -1000f)))) - -315f));
    var var_3 = vec4<bool>(true, true, _wgslsmith_clamp_i32(1i << (global1.b % 32u), _wgslsmith_mult_i32(0i, global1.a << (arg_0.b % 32u)), global1.a) <= select(49705i, u_input.a, select(12667u != u_input.d.x, true, true)), true);
    return vec2<i32>(countOneBits(-8789i), -34564i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(func_1(Struct_1(-1i ^ (8891i & u_input.a), 1u, 32676u)), vec2<i32>(~((global1.a << (u_input.b % 32u)) & ~u_input.a), _wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(global1.a, 14324i)), vec2<i32>(global1.a, -global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, -1i), vec3<i32>(global1.a, var_0.x, 1i)), vec3<i32>(var_0.x, 1i, -52604i))), (~u_input.a | max(_wgslsmith_clamp_i32(global1.a, -1i, 2147483647i), ~33710i)) | ~_wgslsmith_add_i32(abs(-36924i), var_0.x >> (global1.c % 32u)));
}

