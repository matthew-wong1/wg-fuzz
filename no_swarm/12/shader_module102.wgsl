struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1747f, -279f) + _wgslsmith_div_vec2_f32(vec2<f32>(2336f, -1603f), vec2<f32>(1256f, -176f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1894f, 1975f)))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false))))));
    let var_1 = ((_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(13145u, u_input.b.x, 4294967295u, 1u), vec4<u32>(41128u, 9870u, 38957u, u_input.b.x)), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 0u)) ^ vec4<u32>(~u_input.c.x, ~u_input.c.x, 1u, ~u_input.b.x)) & ~(~abs(vec4<u32>(u_input.c.x, 1u, u_input.b.x, 1u)))) ^ (((~vec4<u32>(u_input.b.x, u_input.b.x, 13180u, 9304u) ^ vec4<u32>(4294967295u, 37243u, u_input.c.x, u_input.b.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.b.x, 45212u) << (vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u))) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(60249u, u_input.b.x, u_input.c.x, u_input.c.x)), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, 1121u))) % vec4<u32>(32u)));
    var var_2 = vec4<u32>(4294967295u, _wgslsmith_mult_u32(min(var_1.x, var_1.x), var_1.x) | (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(3095u, 1u) & var_1.yw) & var_1.x), _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c.x), firstLeadingBit(u_input.c.x)), vec2<u32>(63234u, var_1.x))), u_input.b.x);
    let var_3 = Struct_1(4294967295u, abs(_wgslsmith_mod_u32(~var_1.x, ~(24616u & u_input.c.x))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -348f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -197f)));
    return 1000f;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1396f + 999f), 270f, _wgslsmith_div_f32(-2295f, 1378f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1440f + -1055f), _wgslsmith_f_op_f32(f32(-1f) * -953f))), _wgslsmith_div_f32(-183f, _wgslsmith_f_op_f32(1120f + 174f)), 672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f - -1194f)))), !(!(_wgslsmith_add_u32(u_input.c.x, 29041u) != u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0)));
    var var_2 = Struct_1(firstLeadingBit(38861u), 1u);
    var var_3 = -(~firstLeadingBit(_wgslsmith_mod_vec2_i32(-vec2<i32>(12174i, u_input.a), -vec2<i32>(-21684i, -12632i))));
    var_3 = firstLeadingBit(select(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(u_input.a, 0i)), ~select(vec2<i32>(26757i, 1i), vec2<i32>(3162i, var_3.x), true)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(33743i, var_3.x), vec2<i32>(u_input.a, var_3.x)), vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), (u_input.c.x == 82308u) & true)));
    return 58105u;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1184f, 1054f, 583f), vec3<f32>(839f, 482f, 817f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-947f, -456f, -1138f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-878f, -2389f, -1742f) * vec3<f32>(-1242f, -1484f, -444f)) + vec3<f32>(1839f, -1714f, -1599f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-103f, 103f, 828f), vec3<f32>(760f, 256f, 507f)))))), vec3<f32>(1f, 1f, 1f))), vec3<bool>(false, ~43621u != ~func_2(), !(all(vec3<bool>(false, false, true)) & any(vec3<bool>(true, true, true))))));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(-4553i, u_input.a), 15162i, ~(~(-1i << (arg_0 % 32u))) << (_wgslsmith_dot_vec2_u32(u_input.b.yz, _wgslsmith_mod_vec2_u32(abs(u_input.b.xy), u_input.b.xx)) % 32u));
    var_1 = abs(-_wgslsmith_div_vec3_i32(~select(vec3<i32>(u_input.a, 67586i, var_1.x), vec3<i32>(2147483647i, -2147483647i, var_1.x), vec3<bool>(true, false, false)), ~(-vec3<i32>(-2147483647i, var_1.x, u_input.a))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-989f, _wgslsmith_f_op_f32(128f - var_0.x)))), var_0.x));
    let var_2 = u_input.c;
    return !vec2<bool>(!(arg_1.b <= ~arg_0), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(73453u, ~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x), ~vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x))), reverseBits(~u_input.b.x));
    var var_1 = Struct_1(abs(~(~min(u_input.b.x, u_input.b.x))), ~_wgslsmith_mult_u32(u_input.c.x, ~(~var_0.a)));
    var_0 = Struct_1(4294967295u, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a, var_1.a, 4294967295u)), u_input.b));
    var_0 = Struct_1(1u, 1u);
    var var_2 = func_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(~var_0.a, var_1.b, ~72229u, max(4294967295u, var_0.b)), max(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(74633u, u_input.b.x, 0u, 28459u), vec4<u32>(2335u, 0u, var_0.a, 1u), vec4<u32>(64069u, var_1.a, var_1.a, 0u))), select(vec4<u32>(0u, 2857u, var_0.a, var_0.a), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 21089u, u_input.b.x, var_1.b), vec4<u32>(1u, var_1.a, 1370u, var_1.a)), true))), Struct_1(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.c.x, var_1.a, 4294967295u, var_0.b)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1217u, 0u, var_0.b, 0u)), select(vec4<u32>(23682u, u_input.c.x, 1u, var_1.b), vec4<u32>(u_input.c.x, 4294967295u, 21967u, var_1.a), false))), var_1.b));
    return StorageBuffer(-479f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-1034f + -1000f), _wgslsmith_f_op_f32(round(275f))))))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, _wgslsmith_clamp_u32(0u, u_input.c.x, var_1.a)), ~u_input.b.xz ^ (u_input.c ^ u_input.b.zy)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!select(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4332u, 1u, u_input.b.x), vec4<u32>(22360u, 19529u, 4294967295u, u_input.c.x)), Struct_1(u_input.c.x, u_input.c.x)), vec2<bool>(true, true), !func_1(25459u, Struct_1(61482u, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1804f, -2385f)) - _wgslsmith_div_f32(-876f, 256f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1665f)))) + _wgslsmith_f_op_f32(sign(1f))));
}

