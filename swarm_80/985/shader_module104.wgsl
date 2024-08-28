struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<f32> {
    let var_0 = -187f;
    let var_1 = ~vec2<u32>(0u, u_input.c);
    let var_2 = u_input.b.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_0)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), ~var_2, min(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-71784i, -895i, var_2), vec3<i32>(18335i, var_2, 2147483647i)) << (reverseBits(var_1.x) % 32u))), vec4<i32>(~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(1i, u_input.b.x, -30713i, var_2) << (vec4<u32>(var_1.x, 0u, 0u, u_input.c) % vec4<u32>(32u))), u_input.b.x, abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(2147483647i, 0i))), var_2), vec4<i32>(-u_input.b.x, _wgslsmith_add_i32(-1i, u_input.b.x), 1i, -(i32(-1i) * -52596i)));
    let var_4 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_div_f32(773f, 2101f), _wgslsmith_f_op_f32(var_0 + -678f), _wgslsmith_div_f32(var_0, var_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_0, 2469f, 1029f) + vec4<f32>(1000f, 951f, var_3.a, -1330f)), vec4<f32>(-361f, var_3.a, var_3.a, var_0)))))));
}

fn func_2() -> Struct_3 {
    let var_0 = select(!select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, u_input.a <= u_input.a), vec4<bool>(1i <= u_input.b.x, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(reverseBits(~u_input.a) < ~u_input.c, !(4294967295u > u_input.a) | true, !(true & (22827u == u_input.c)), !((u_input.c << (u_input.a % 32u)) != abs(1u))));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-384f * -1596f), -1063f, _wgslsmith_f_op_f32(abs(540f))), _wgslsmith_f_op_vec4_f32(func_3()))))));
    let var_3 = -_wgslsmith_mult_vec3_i32(vec3<i32>((u_input.b.x << (var_1 % 32u)) & -39997i, u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.ww))), abs(vec3<i32>(u_input.b.x, u_input.b.x, -1i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), u_input.b.xzz, u_input.b.yww)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1000f, var_2.x, 217f) * vec4<f32>(var_2.x, 858f, -619f, 659f)) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-1119f - -2687f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 241f, 1000f, 1000f) * vec4<f32>(1064f, var_2.x, var_2.x, var_2.x))), vec4<f32>(_wgslsmith_div_f32(360f, -518f), -1205f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x * -686f)))));
    return Struct_3(~vec2<u32>(var_1, _wgslsmith_add_u32(u_input.a, 3196u)));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<u32>(~u_input.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.c), abs(~vec2<u32>(u_input.a, 64846u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -475f)))));
    var var_2 = func_2();
    let var_3 = vec2<bool>(false, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var_2 = Struct_3(countOneBits(_wgslsmith_div_vec2_u32(select(select(var_2.a, var_2.a, var_3), var_2.a, !vec2<bool>(var_3.x, false)), select(abs(var_2.a), var_2.a & vec2<u32>(4294967295u, u_input.a), select(vec2<bool>(var_3.x, false), var_3, var_3.x)))));
    return Struct_4(Struct_3(var_2.a), ~(~u_input.a) | ~countOneBits(_wgslsmith_sub_u32(1u, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(var_0.a, ~_wgslsmith_add_u32(u_input.c, func_2().a.x));
    var_0 = func_1();
    let var_1 = (~firstLeadingBit(vec4<u32>(38161u, u_input.c, var_0.b, 81972u)) >> (~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21722u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, var_0.a.a.x, u_input.c, 41224u)), ~1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(9796u, u_input.c, 0u, var_0.a.a.x), vec4<u32>(u_input.c, 1u, u_input.c, 0u))) % vec4<u32>(32u))) >> (vec4<u32>(~(_wgslsmith_mult_u32(0u, 26801u) ^ ~u_input.c), _wgslsmith_clamp_u32(min(u_input.c, ~14628u), u_input.a, 29795u), 92702u, ~1u) % vec4<u32>(32u));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), 321f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1469f)), 1517f)), _wgslsmith_f_op_f32(trunc(1000f))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-669f * 926f), -136f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 780f) - _wgslsmith_f_op_f32(-991f + -150f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(floor(-1385f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~30008i, countOneBits(abs(firstLeadingBit(30774i))), u_input.b.x), u_input.b.zzw, ~(~u_input.a) << ((_wgslsmith_dot_vec4_u32(~var_1, var_1) & 43539u) % 32u));
}

