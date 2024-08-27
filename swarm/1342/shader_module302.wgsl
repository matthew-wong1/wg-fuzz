struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = arg_0.wz;
    let var_1 = Struct_3(!any(vec2<bool>(true, true)), all(vec3<bool>(true, all(vec2<bool>(false, true)) || true, true)), Struct_1(min(u_input.b.x, select(_wgslsmith_mod_u32(1u, 4294967295u), 1u, all(vec2<bool>(true, true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_0.x)), -826f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, arg_0.x)))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 86733u), select(~u_input.b, vec3<u32>(u_input.b.x, 4294967295u, 0u), u_input.a == -117001i))), Struct_1(u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.x, 181f)), _wgslsmith_f_op_f32(337f - _wgslsmith_f_op_f32(max(-1701f, -796f))), -1561f, arg_0.x)));
    let var_2 = Struct_4(Struct_1(35094u >> (u_input.b.x % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.e.b * arg_0) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.c.b + arg_0))))));
    let var_3 = Struct_2(Struct_1(abs(0u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(var_2.a.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-301f, arg_0.x, -288f, -207f), vec4<f32>(arg_0.x, 1211f, var_2.a.b.x, var_0.x)))))))), Struct_1(abs(u_input.b.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a.b + vec4<f32>(720f, arg_0.x, var_2.a.b.x, -245f)) + arg_0)))), _wgslsmith_f_op_vec4_f32(step(var_1.c.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.x, -1000f, var_1.e.b.x, -643f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-748f, -430f, var_1.c.b.x, arg_0.x))))))), select(vec2<bool>(true, true), !vec2<bool>(var_1.a, any(vec4<bool>(false, true, false, true))), !select(select(vec2<bool>(var_1.b, true), vec2<bool>(true, false), vec2<bool>(var_1.a, var_1.b)), select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.b, var_1.b), var_1.b), false)));
    let var_4 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.c.x + 342f), _wgslsmith_f_op_f32(-var_0.x))));
    return _wgslsmith_sub_u32(var_3.b.a, 4294967295u);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = ~vec2<u32>(arg_0.a.a, firstTrailingBit(func_3(_wgslsmith_f_op_vec4_f32(-arg_0.a.b))));
    var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.b.yy, ~u_input.b.zy));
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(~var_0.x, vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.b.x), arg_0.a.b.x, arg_0.a.b.x, 614f));
    var var_3 = vec3<i32>(~u_input.a ^ (-21557i | u_input.a), 1i, arg_2) << (_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.b), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, arg_0.a.a, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 133981u, 13851u), u_input.b)), ~(~var_2.a))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(min(1368f, arg_0.a.b.x)) <= 696f;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = ~1227u;
    var var_1 = u_input.b.x;
    let var_2 = !arg_1.x;
    let var_3 = true;
    let var_4 = Struct_1(4294967295u, arg_2.c.b);
    return Struct_3(func_2(arg_0, 19294u, u_input.a << (~_wgslsmith_div_u32(var_0, arg_0.a.a) % 32u)), arg_1.x, arg_2.e, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, _wgslsmith_mod_u32(var_0, 41620u)), ~(~vec4<u32>(arg_0.a.a, 0u, 4294967295u, u_input.b.x))), _wgslsmith_div_u32(~select(16144u, u_input.b.x, arg_1.x), countOneBits(arg_0.a.a >> (arg_0.a.a % 32u))), !arg_2.a), Struct_1(~max(u_input.b.x >> (u_input.b.x % 32u), var_4.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-730f, _wgslsmith_f_op_f32(-824f - var_4.b.x), _wgslsmith_f_op_f32(-1005f * arg_0.a.b.x), _wgslsmith_f_op_f32(-998f + arg_2.c.b.x))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_add_vec3_i32(reverseBits(countOneBits(vec3<i32>(u_input.a ^ 0i, u_input.a, firstLeadingBit(-7450i)))), vec3<i32>(u_input.a & ~(-2147483647i), ~_wgslsmith_div_i32(u_input.a, firstTrailingBit(u_input.a)), u_input.a));
    var var_1 = Struct_2(Struct_1(reverseBits(4294967295u), arg_1.e.b), arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(175f * 140f)))), 973f, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(435f * -2368f)))), select(select(select(!vec2<bool>(arg_1.a, arg_1.a), select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.a, arg_1.a), arg_1.a), arg_1.a && arg_1.a), vec2<bool>(!arg_1.a, select(false, true, true)), !vec2<bool>(false, arg_1.a)), vec2<bool>(true, false), arg_1.a));
    var_1 = Struct_2(func_1(Struct_4(Struct_1(arg_1.e.a, _wgslsmith_f_op_vec4_f32(-arg_1.e.b))), vec3<bool>(!all(var_1.d), true, !(var_0.x != -4667i)), Struct_3(true, func_1(Struct_4(Struct_1(u_input.b.x, var_1.b.b)), vec3<bool>(true, var_1.d.x, true), Struct_3(var_1.d.x, var_1.d.x, var_1.a, u_input.b.x, var_1.a)).a, Struct_1(_wgslsmith_add_u32(u_input.b.x, 4294967295u), vec4<f32>(265f, -1000f, arg_1.c.b.x, -704f)), 4294967295u, var_1.b)).c, func_1(Struct_4(arg_1.e), !select(select(vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x), vec3<bool>(true, false, false), arg_1.a), vec3<bool>(true, true, true), true), arg_1).c, _wgslsmith_f_op_vec4_f32(-arg_1.c.b), select(vec2<bool>(var_0.x == -29615i, !arg_1.b), select(vec2<bool>(false, var_1.d.x), select(select(vec2<bool>(arg_1.a, true), var_1.d, vec2<bool>(arg_1.b, arg_1.a)), vec2<bool>(arg_1.a, arg_1.a), select(var_1.d, var_1.d, arg_1.a)), vec2<bool>(var_1.b.a < 16702u, any(vec2<bool>(var_1.d.x, true)))), false));
    var_1 = Struct_2(Struct_1(select(firstTrailingBit(34926u), u_input.b.x, !any(vec3<bool>(arg_1.a, false, var_1.d.x))), func_1(Struct_4(Struct_1(arg_1.e.a, vec4<f32>(var_1.c.x, -1503f, 1481f, -638f))), vec3<bool>(arg_1.a, arg_1.b, all(vec4<bool>(false, false, true, arg_1.b))), arg_1).c.b), Struct_1(0u ^ arg_1.d, vec4<f32>(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(229f + -657f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), 719f, _wgslsmith_f_op_f32(floor(434f)), var_1.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.c.b + _wgslsmith_f_op_vec4_f32(arg_1.e.b + vec4<f32>(arg_0, var_1.a.b.x, 475f, var_1.a.b.x)))))), select(vec2<bool>(!all(vec2<bool>(var_1.d.x, arg_1.b)), !all(vec2<bool>(true, true))), var_1.d, var_1.d.x));
    var_1 = Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1071f, 283f, var_1.a.b.x, 553f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, -1000f, 333f, arg_0))))), Struct_1(_wgslsmith_dot_vec2_u32(max(u_input.b.zx, vec2<u32>(1u, u_input.b.x)), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.d, u_input.b.x)), firstLeadingBit(vec2<u32>(1u, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.b.x - 147f), -1016f, arg_0, arg_0) * vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_1.a.b.x - 755f), -703f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1.e.b))) + _wgslsmith_f_op_vec4_f32(select(arg_1.e.b, _wgslsmith_f_op_vec4_f32(-arg_1.c.b), false))))), vec2<bool>(all(vec4<bool>(func_1(Struct_4(Struct_1(u_input.b.x, var_1.a.b)), vec3<bool>(arg_1.b, var_1.d.x, false), Struct_3(false, true, Struct_1(var_1.b.a, vec4<f32>(-914f, arg_1.c.b.x, arg_1.c.b.x, -1366f)), var_1.a.a, Struct_1(80280u, vec4<f32>(arg_1.e.b.x, var_1.c.x, 1099f, arg_1.c.b.x)))).a, true, all(var_1.d), any(var_1.d))), func_2(Struct_4(func_1(Struct_4(Struct_1(32931u, var_1.c)), vec3<bool>(true, false, var_1.d.x), arg_1).c), ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), var_0.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.c.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~countOneBits(countOneBits(_wgslsmith_mult_u32(49020u, u_input.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(224f, -1000f, 985f, 702f), vec4<f32>(722f, -1013f, -265f, 448f), vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1894f, 1624f, -1041f, 234f), vec4<f32>(-160f, -2164f, -1000f, 453f), vec4<bool>(false, true, false, true)))) * vec4<f32>(_wgslsmith_div_f32(695f, 905f), -1000f, -1741f, _wgslsmith_f_op_f32(min(-1041f, 2073f)))), true)));
    var_0 = Struct_1(36670u, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-var_0.b.x), func_1(Struct_4(Struct_1(0u, var_0.b)), vec3<bool>(true, false, true), Struct_3(true, false, Struct_1(var_0.a, vec4<f32>(var_0.b.x, 1358f, var_0.b.x, var_0.b.x)), u_input.b.x, Struct_1(u_input.b.x, var_0.b))))))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 270f)), var_0.b.x));
    var var_1 = (0i | u_input.a) >> (u_input.b.x % 32u);
    var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.a, -4867i)), _wgslsmith_add_vec2_i32(-(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(1i, -1i)), ~select(vec2<i32>(u_input.a, 4492i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true)))), -_wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(reverseBits(-15983i), countOneBits(u_input.a))));
    let var_2 = vec4<u32>(106160u, ~var_0.a, countOneBits(4294967295u), 79732u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b.zxz), var_0.b.ywx, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_2.x == 4807u), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true))), abs(u_input.a));
}

