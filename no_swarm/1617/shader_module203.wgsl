struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = arg_2.a.c.x;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x) * 232f), 467f)), _wgslsmith_f_op_f32(arg_0.a.c.x - 813f));
    return arg_0.a.d.x;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = u_input.c;
    return Struct_1(firstTrailingBit(abs(var_0.x)) | ~_wgslsmith_dot_vec4_u32(var_0, ~u_input.c), i32(-1i) * -u_input.b.x, vec3<f32>(-1282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f - _wgslsmith_div_f32(1648f, -168f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(31345u, arg_0.b, vec3<f32>(135f, -137f, -1997f), vec3<f32>(-1362f, -890f, 1147f), 4294967295u)), -1i, Struct_2(Struct_1(46075u, arg_0.b, vec3<f32>(-749f, -2294f, -333f), vec3<f32>(-1341f, 1105f, -1531f), 4294967295u)), -239f)) + _wgslsmith_f_op_f32(-584f + 1141f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-343f, -445f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f + -144f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1366f, -339f, -192f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(121f, 186f, -672f), vec3<f32>(1000f, -216f, -288f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(580f, 1097f, 306f)))), 4294967295u);
}

fn func_3() -> vec3<bool> {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = -575f;
    var var_2 = Struct_1(~u_input.c.x, 2147483647i, vec3<f32>(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-804f * var_1))))), var_1), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(max(-1737f, var_1)), var_1)))), _wgslsmith_dot_vec4_u32(abs(~(~u_input.c)), ~vec4<u32>(~u_input.d, 25117u, ~u_input.e.x, func_1(Struct_3(vec2<u32>(u_input.c.x, 9853u), u_input.b.x, u_input.b.wy)).e)));
    var_2 = func_1(Struct_3(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, u_input.d), vec3<u32>(4294967295u, 14441u, 4294967295u)), var_2.a), u_input.b.x & _wgslsmith_sub_i32(u_input.b.x >> (4294967295u % 32u), var_2.b), -vec2<i32>(-1i, 1i)));
    var_0 = select(vec3<bool>(false, false, any(select(var_0.xx, vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x))) && false), vec3<bool>(!(var_0.x & true), var_0.x, false), select(select(!(!vec3<bool>(var_0.x, false, false)), vec3<bool>(var_1 >= var_2.c.x, var_0.x, all(var_0.yx)), reverseBits(u_input.c.x) < ~4294967295u), !vec3<bool>(var_0.x, var_0.x, true), all(select(!vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x)))));
    return vec3<bool>(var_0.x, firstTrailingBit(i32(-1i) * -6018i) <= _wgslsmith_sub_i32(countOneBits(~var_2.b), 13783i), _wgslsmith_sub_i32(u_input.b.x, var_2.b) < _wgslsmith_add_i32(reverseBits(reverseBits(var_2.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-4267i, u_input.b.x, var_2.b, 32099i), vec4<i32>(u_input.b.x, 24045i, var_2.b, var_2.b)), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = func_1(Struct_3(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 27956u, 1u), 33484u), 2753u), var_0, u_input.b.wy));
    var_1 = Struct_1(_wgslsmith_add_u32(~var_1.e, abs(0u)), 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.d.x, var_1.d.x))), 1366f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d.x, 958f, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -529f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), var_1.c, u_input.c.x);
    var var_2 = func_3();
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(956f, var_1.c.x, var_1.d.x, 451f) - vec4<f32>(var_1.c.x, var_1.c.x, var_1.d.x, var_1.d.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.c.x, 2098f, 1235f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, 1072f, _wgslsmith_f_op_f32(var_1.c.x - 2073f), 1f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1032f, 707f, 608f, 1626f) - vec4<f32>(1000f, var_1.c.x, var_1.d.x, 2283f)), vec4<f32>(-791f, -1000f, -668f, -1802f), select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(false, var_2.x, false, true))))) + vec4<f32>(_wgslsmith_f_op_f32(select(949f, -153f, func_3().x)), -675f, -1128f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x))))));
    var var_4 = Struct_1(u_input.a, -(~reverseBits(1i)), var_1.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_div_f32(var_1.c.x, 175f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2145f, var_1.c.x, var_3.x))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(min(var_1.c, var_3.ywz))))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_1.a, ~countOneBits(1u)), 1u ^ func_1(Struct_3(u_input.e, var_1.b, vec2<i32>(-13680i, var_1.b))).a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -903f)))), 1373f), var_1.e, _wgslsmith_dot_vec3_i32(u_input.b.yzy >> (vec3<u32>(reverseBits(1u), u_input.e.x, ~var_4.e) % vec3<u32>(32u)), abs(select(countOneBits(u_input.b.zzw), abs(vec3<i32>(u_input.b.x, var_4.b, 0i)), var_2.x))), ~0u);
}

