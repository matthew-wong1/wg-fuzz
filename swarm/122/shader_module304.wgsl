struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-784f, -692f, 998f);

var<private> global1: array<bool, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> vec3<bool> {
    global1 = array<bool, 3>();
    var var_0 = select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_1.x, arg_1.x, 44377u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 0u, 1u), vec4<u32>(arg_1.x, arg_1.x, 55568u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), 0u), 3u)] || false, true & all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 3u)], any(vec3<bool>(global1[_wgslsmith_index_u32(21901u, 3u)], true, true)), global1[_wgslsmith_index_u32(1u, 3u)] != false)), true);
    let var_1 = 23631i;
    var_0 = any(vec3<bool>(false, global1[_wgslsmith_index_u32(7302u, 3u)], true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-2051f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global0.x, true))) + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x - arg_0)))));
    return vec3<bool>(409f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f + _wgslsmith_f_op_f32(min(global0.x, -619f)))), !(!any(!vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 3u)]))), global1[_wgslsmith_index_u32(14088u, 3u)]);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global1 = array<bool, 3>();
    let var_0 = any(func_2(267f, select(~firstLeadingBit(vec2<u32>(1u, 29386u)), vec2<u32>(1u, 1u), any(!arg_0))).xx);
    let var_1 = min(firstTrailingBit(39231u), _wgslsmith_add_u32(0u, ~abs(1u))) | 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), 155f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-310f, global0.x))));
    let var_3 = vec4<i32>(~_wgslsmith_div_i32(u_input.a, arg_2 | (u_input.a & 9413i)), max(_wgslsmith_mult_i32(-1692i, -9838i), 1i), arg_2 & 10596i, _wgslsmith_mod_i32(u_input.a, 42891i));
    return Struct_1(var_1, _wgslsmith_f_op_f32(step(-1313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_2.x, true))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + -479f)))))), _wgslsmith_sub_vec4_i32(vec4<i32>(-arg_2, var_3.x, _wgslsmith_add_i32(48201i, -23766i), 1i), ~(~abs(vec4<i32>(var_3.x, 2147483647i, u_input.a, u_input.a)))));
}

fn func_1() -> f32 {
    var var_0 = func_3(func_2(global0.x, ~vec2<u32>(~0u, ~8650u)), false, 1i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1832f, _wgslsmith_f_op_f32(min(282f, 1000f))))), -1012f)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-694f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) * global0.x)))), global0.x, 315f);
    let var_2 = Struct_1(reverseBits(var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-646f - var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)) - global0.x)), firstTrailingBit(var_0.c & (~vec4<i32>(-44323i, u_input.a, 2147483647i, -16630i) | vec4<i32>(0i, 25004i, 30334i, var_0.c.x))));
    var var_3 = var_0.a;
    return 722f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1668f, _wgslsmith_f_op_f32(trunc(-957f)), _wgslsmith_f_op_f32(func_1()), global0.x))));
    let var_1 = any(!vec4<bool>(!global1[_wgslsmith_index_u32(75305u, 3u)] && false, false, select(func_2(-390f, vec2<u32>(11833u, 31424u)).x, false, false), true && !global1[_wgslsmith_index_u32(41955u, 3u)]));
    var var_2 = u_input.a;
    var var_3 = Struct_1(_wgslsmith_add_u32(49265u, _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(5788u), abs(71937u), ~1u, firstLeadingBit(4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(23062u, 105674u, 1u, 409u), vec4<u32>(43066u, 63041u, 1u, 1u)) & select(vec4<u32>(5027u, 22478u, 35296u, 0u), vec4<u32>(4294967295u, 4294967295u, 44548u, 1u), vec4<bool>(var_1, true, global1[_wgslsmith_index_u32(67625u, 3u)], var_1)))), global0.x, vec4<i32>(-u_input.a, _wgslsmith_add_i32(~(~u_input.a), ~1i), u_input.a, u_input.a));
    var var_4 = func_3(!vec3<bool>(var_1, true, !global1[_wgslsmith_index_u32(0u, 3u)] || any(vec3<bool>(var_1, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 707f)) >= -348f, 0i << (_wgslsmith_mult_u32(var_3.a, var_3.a) % 32u));
    let var_5 = select(vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(var_3.c, var_3.c), vec4<i32>(var_4.c.x, ~24061i, -var_3.c.x, u_input.a))), var_3.c.wx, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(24743u, _wgslsmith_sub_u32(~(var_4.a & 0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(40219u, 4294967295u, var_4.a), _wgslsmith_add_vec3_u32(vec3<u32>(var_3.a, 4294967295u, var_3.a), vec3<u32>(var_4.a, 4294967295u, var_3.a))))), 3u)]);
    let var_6 = ~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_4.a, 0u, 4294967295u)), vec3<u32>(12138u, ~var_4.a, 55850u & var_3.a)) ^ vec3<u32>(~12404u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_4.a, 26591u, 45162u), ~vec3<u32>(var_3.a, var_4.a, 18614u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.a, var_4.a, var_3.a), vec3<u32>(var_3.a, var_4.a, 4294967295u)))), 42569u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_div_u32(_wgslsmith_mult_u32(abs(max(var_3.a, var_3.a)), ~_wgslsmith_mod_u32(1u, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_6.x, var_6.x), _wgslsmith_clamp_u32(var_3.a & 4294967295u, 21542u, var_3.a))), _wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~68473u, ~var_6.x), _wgslsmith_clamp_vec2_u32(var_6.zx, var_6.zx, var_6.yy) << (~var_6.yx % vec2<u32>(32u))), var_6.xy));
}

