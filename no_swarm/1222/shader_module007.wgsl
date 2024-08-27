struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: bool) -> vec3<f32> {
    var var_0 = vec3<u32>(~countOneBits(global0.d), 42137u, ~arg_2.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1624f), 177f)), 1i, firstTrailingBit(~global0.c), 4294967295u);
    var var_2 = Struct_1(-102f, abs(reverseBits(0i)), 0i, ~(arg_2.x << (0u % 32u)));
    let var_3 = Struct_1(var_1.a, reverseBits(-select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.b, -2147483647i, -10697i), vec4<i32>(arg_0.c, 35276i, var_1.c, arg_0.c)), _wgslsmith_mult_i32(var_1.c, 2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.d, 104010u), u_input.b), 32u)])), 1i, 362u);
    let var_4 = max(u_input.b, ~(~_wgslsmith_clamp_vec4_u32(select(u_input.b, vec4<u32>(0u, var_0.x, arg_2.x, 4294967295u), vec4<bool>(arg_3, true, false, arg_1)), vec4<u32>(0u, 9500u, 4294967295u, 38636u), u_input.b)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(-var_2.a), -1397f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), -639f, _wgslsmith_f_op_f32(abs(-1568f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), _wgslsmith_f_op_f32(select(var_3.a, -497f, global1[_wgslsmith_index_u32(arg_2.x, 32u)])), _wgslsmith_f_op_f32(floor(var_3.a))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -182f), -30824i, -1i, 52779u), -1000f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -177f) + _wgslsmith_f_op_f32(max(1404f, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) - _wgslsmith_f_op_f32(max(-140f, global0.a))))), ~abs(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(4294967295u, global0.d)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzw, ~countOneBits(vec3<u32>(15429u, arg_0.x, u_input.b.x))), 32u)]));
    var var_1 = arg_1.yyz;
    global0 = Struct_1(-1000f, -(global0.b ^ firstLeadingBit(i32(-1i) * -34235i)), global0.c, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(firstTrailingBit(var_1.x), max(u_input.a.x, 4294967295u), arg_2), arg_0.x));
    var var_2 = ~(abs(~vec3<i32>(global0.b, -53392i, -21966i)) ^ (~vec3<i32>(-49053i, global0.b, global0.c) >> (vec3<u32>(arg_1.x, abs(var_1.x), 4294967295u) % vec3<u32>(32u))));
    let var_3 = max(global0.c, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-4525i, global0.b, global0.b, global0.b), vec4<i32>(0i, var_2.x, var_2.x, global0.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0.c, 44720i, -2147483647i), vec4<i32>(var_2.x, var_2.x, global0.b, -1i), vec4<i32>(1i, 2147483647i, 2147483647i, -212i)), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_1.x, 32u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], false, global1[_wgslsmith_index_u32(0u, 32u)]), global1[_wgslsmith_index_u32(arg_0.x, 32u)])), _wgslsmith_add_vec4_i32(~vec4<i32>(15685i, 2147483647i, global0.c, global0.b), -vec4<i32>(var_2.x, 9219i, 2147483647i, var_2.x))), (vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) << (vec4<u32>(4294967295u, 9813u, 4294967295u, arg_0.x) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_mod_u32(1u, global0.d), global0.d, global0.d ^ 1u, 58412u) % vec4<u32>(32u))));
    return -683f;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(446f, global0.a) + vec2<f32>(arg_1.a, global0.a))), vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.a.x, u_input.a.x), u_input.b, 23167u)), global0.a))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) + -1702f))), _wgslsmith_f_op_f32(floor(1513f))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))), 14510i, reverseBits(2147483647i), u_input.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0.x, -12929i, -12675i, 1u), true, ~u_input.a, any(vec4<bool>(false, global1[_wgslsmith_index_u32(34103u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(global0.d, 32u)])))).x)))), ~0i, 1i, u_input.a.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-419f)))), 41689i, firstLeadingBit(global0.b), ~(reverseBits(abs(global0.d)) | ~_wgslsmith_add_u32(global0.d, 23465u)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))) - _wgslsmith_f_op_f32(2270f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, 816f)) + _wgslsmith_f_op_f32(-409f - arg_0.x)))), 43569i, global0.b, 22697u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_f32(global0.a, global0.a), -max(2147483647i, global0.c), 0i, u_input.b.x);
    global0 = func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(~max(vec4<i32>(1i, 2147483647i, var_0.b, 21976i), vec4<i32>(1i, 2147483647i, var_0.b, var_0.b)), Struct_1(1555f, global0.c, _wgslsmith_sub_i32(var_0.c, -41220i), 1u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 684f, var_0.a, -118f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -884f, var_0.a, global0.a))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), 593f, _wgslsmith_f_op_f32(1084f - var_0.a), _wgslsmith_f_op_f32(ceil(var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, 1372f, var_0.a, 858f), vec4<f32>(global0.a, -1726f, -937f, -1002f), vec4<bool>(true, global1[_wgslsmith_index_u32(22833u, 32u)], global1[_wgslsmith_index_u32(14027u, 32u)], false))))))));
}

