struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> vec4<bool> {
    return vec4<bool>((u_input.d.x >= firstLeadingBit(u_input.b.x & -2147483647i)) && select(14240u <= _wgslsmith_mult_u32(u_input.a.x, 15139u), all(vec3<bool>(false, false, true)), true), -(~u_input.b.x) >= u_input.d.x, false, all(vec3<bool>(true, true, true)));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    global0 = _wgslsmith_mod_i32(~1i, u_input.d.x | -_wgslsmith_sub_i32(-35973i, u_input.e.x));
    global0 = u_input.d.x;
    let var_0 = u_input.e | u_input.b.wxz;
    var var_1 = select(vec3<u32>(~(arg_0.d.d | 4294967295u), 57583u, select(countOneBits(0u), ~arg_0.d.d, select(arg_0.a.b, arg_0.d.b, false))) & (countOneBits(firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.a.x))) & vec3<u32>(abs(u_input.a.x), firstTrailingBit(u_input.a.x), ~u_input.a.x)), ~(~(~arg_0.c.c.xyz << (vec3<u32>(u_input.a.x, 15016u, u_input.a.x) % vec3<u32>(32u)))), arg_0.c.b != true);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -716f), _wgslsmith_f_op_f32(trunc(736f))))))))));
    return arg_0.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1441f, 267f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, -297f, arg_0.x)))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-255f - _wgslsmith_f_op_f32(1973f - arg_0.x)), all(!(!vec2<bool>(arg_1, arg_1))), vec4<u32>(4294967295u, ~(u_input.a.x << (19518u % 32u)), ~abs(u_input.a.x), _wgslsmith_add_u32(~u_input.a.x, 29052u)), ~_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 66471u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1060f, arg_0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1831f, arg_0.x))) * _wgslsmith_f_op_vec2_f32(-var_0.xz))), Struct_1(-260f, arg_1, ~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 0u << (u_input.a.x % 32u), max(u_input.a.x, 25395u), ~u_input.a.x), u_input.a.x), Struct_1(arg_0.x, u_input.a.x < max(~0u, abs(0u)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(10126u, 33961u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 69552u, 2363u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u)), ~u_input.a.x), u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1051f, arg_0.x, -146f, var_0.x) * vec4<f32>(var_0.x, 964f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(458f, var_0.x, arg_0.x, -1041f))))))));
    let var_2 = var_1;
    var var_3 = var_2.d.c;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_2.e.zzz * vec3<f32>(-1033f, var_2.d.a, -446f)), vec3<f32>(var_1.a.a, arg_0.x, 1382f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 236f, var_1.b.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, var_1.d.a, var_1.e.x))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f + _wgslsmith_f_op_f32(var_0.x + -1089f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))))), -1402f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.e))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(-913f, true, ~(~vec4<u32>(804u, 75850u, u_input.a.x, u_input.a.x)), 1u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xz * vec2<f32>(arg_2, arg_1.x)) * arg_1.zx))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0)))), false, ~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), 1u), Struct_1(-346f, true, _wgslsmith_mod_vec4_u32(vec4<u32>(70155u, 4294967295u, 2977u, u_input.a.x), vec4<u32>(u_input.a.x, 40682u, 22892u, 6048u)) | ~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 117926u), firstTrailingBit(~1u)), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(-1289f, false, vec4<u32>(16010u, u_input.a.x, 0u, 32213u), 4294967295u), arg_1.yx, Struct_1(arg_2, false, vec4<u32>(u_input.a.x, 76375u, 74548u, u_input.a.x), 18005u), Struct_1(374f, true, vec4<u32>(51859u, 0u, u_input.a.x, u_input.a.x), 5116u), vec4<f32>(arg_0, -990f, arg_0, -283f))))), all(vec2<bool>(true, true))))), ~(min(34842u, 1u) & _wgslsmith_div_u32(4294967295u & u_input.a.x, u_input.a.x >> (0u % 32u))), ~14219u, u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(670f + var_0.a.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, var_0.a.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(301f)))))));
    var var_2 = min(min(-firstTrailingBit(vec4<i32>(-35500i, -56i, u_input.c.x, u_input.b.x)), vec4<i32>(u_input.d.x | u_input.d.x, 2147483647i, 11685i, -8228i)) << (max(vec4<u32>(48004u >> (u_input.a.x % 32u), firstTrailingBit(27051u), 90916u, 4294967295u), ~select(var_0.a.c.c, vec4<u32>(u_input.a.x, 0u, 0u, var_0.d), vec4<bool>(true, false, var_0.a.c.b, true))) % vec4<u32>(32u)), vec4<i32>(-28708i, u_input.d.x, i32(-1i) * -(~u_input.d.x), _wgslsmith_clamp_i32(u_input.b.x, u_input.d.x, u_input.e.x)));
    var_2 = vec4<i32>(-5453i, -var_2.x, reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(64770i, 1i, -6502i, 30055i), ~vec4<i32>(2147483647i, var_2.x, -1i, var_2.x))), ~0i) | ~select((u_input.d ^ u_input.d) ^ vec4<i32>(u_input.d.x, 2849i, 21232i, -15241i), vec4<i32>(var_2.x ^ 1i, -42961i << (var_0.d % 32u), u_input.e.x << (var_0.b % 32u), ~u_input.c.x), func_1(vec3<f32>(var_0.a.e.x, 327f, -913f), -171f));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)), true, select(var_0.a.c.c ^ vec4<u32>(1u, 31258u, 75684u, 4294967295u), select(vec4<u32>(75512u, u_input.a.x, 1u, 64345u), vec4<u32>(1u, u_input.a.x, 24u, u_input.a.x), vec4<bool>(var_0.a.d.b, var_0.a.c.b, true, var_0.a.d.b)), select(var_0.a.a.b, true, true)), max(2869u, u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.a) + _wgslsmith_f_op_f32(sign(-191f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-465f, var_0.a.b.x, false)))), var_0.a.c, Struct_1(-1612f, true, vec4<u32>(_wgslsmith_mod_u32(var_0.b, 0u), var_0.b, u_input.a.x, 1u), 87805u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), var_0.a.a.a, -1239f, -1065f))), u_input.a.x, ~1151u, var_0.a.d.d);
    return all(select(select(select(select(vec4<bool>(var_3.a.a.b, true, true, var_0.a.d.b), vec4<bool>(var_3.a.d.b, true, var_0.a.a.b, true), vec4<bool>(var_0.a.a.b, var_0.a.d.b, false, true)), vec4<bool>(var_3.a.c.b, var_0.a.c.b, true, true), vec4<bool>(var_3.a.d.b, false, false, false)), func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, -819f, var_1.x))), -1145f), min(-22727i, 20451i) >= u_input.b.x), !(!func_1(var_3.a.e.xzx, arg_2)), -3709i <= firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), vec2<i32>(-20996i, 1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 35041u;
    let var_1 = !select(vec4<bool>(all(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, true)), true, true), select(select(vec4<bool>(true, true, true, true), func_1(vec3<f32>(181f, -1000f, 168f), -591f), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, all(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, true)), func_2(1136f, vec4<f32>(-1942f, 320f, -1096f, 472f), -923f)));
    global0 = ~(~(u_input.e.x ^ 16027i));
    let var_2 = reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.b.x), u_input.d.x, -u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, -1i)), vec4<i32>(0i, -2147483647i, 2147483647i ^ u_input.d.x, -10521i)) | (vec4<i32>(~u_input.b.x, -u_input.c.x, -1i, _wgslsmith_clamp_i32(-1i, u_input.c.x, u_input.e.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 25180u, 0u) << (vec4<u32>(u_input.a.x, 22185u, 0u, u_input.a.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(17337u, 39146u, 4294967295u, u_input.a.x))) % vec4<u32>(32u))));
    var var_3 = !(!(select(0i, u_input.d.x, var_1.x) > ~0i) && !any(!vec3<bool>(false, var_1.x, false)));
    var var_4 = var_2.x;
    var_4 = 7532i;
    global0 = ~firstTrailingBit(var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

