struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(887f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1166f, 1000f)), -403f)))), 958f));
    let var_1 = -21900i;
    var_0 = -1070f;
    var_0 = 340f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1431f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1539f, -1000f)), _wgslsmith_f_op_f32(select(-2287f, 1188f, true)))), arg_1.d.x)) * -1178f);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(min(u_input.b.x, u_input.b.x), 1u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), arg_1.a), ~vec4<u32>(arg_1.a, ~4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.c.x, 71093u), 1u), _wgslsmith_mult_u32(abs(41174u), 1u)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = func_3(!any(vec2<bool>(false, arg_1.d.x || true)), Struct_3(_wgslsmith_add_u32(~u_input.b.x, _wgslsmith_clamp_u32(1u, 1u, 1u)), ~(vec3<i32>(arg_1.b.x, arg_2.x, u_input.a) & vec3<i32>(u_input.a, arg_2.x, arg_1.b.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_0, arg_0, u_input.b.x), vec3<u32>(arg_0 << (u_input.b.x % 32u), ~u_input.b.x, arg_1.c.x)), select(vec2<bool>(false, arg_1.d.x != false), vec2<bool>(false, arg_1.d.x), !arg_1.d)), vec3<bool>(true, true, !arg_1.d.x));
    var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, 13420u) | vec4<u32>(var_0.x, arg_0, 97929u, arg_1.c.x), ~vec4<u32>(1u, 41711u, arg_1.c.x, u_input.b.x)), 4294967295u, 71974u, arg_0));
    let var_1 = Struct_2(Struct_1(arg_1.b, true, reverseBits(~_wgslsmith_sub_u32(var_0.x, arg_0)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 23005u, u_input.b.x, 18175u), vec4<u32>(arg_1.a, u_input.b.x, arg_0, 15433u)) > ~_wgslsmith_clamp_u32(arg_1.a, 0u, var_0.x), vec3<bool>(true, !(arg_1.d.x & true), arg_1.d.x)));
    let var_2 = Struct_2(var_1.a);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-198f - 1490f))))) * 961f), -753f));
    return Struct_2(Struct_1(firstTrailingBit(_wgslsmith_clamp_vec3_i32(var_1.a.a & var_1.a.a, arg_1.b, vec3<i32>(-2566i, arg_2.x, -2147483647i))), arg_1.d.x, arg_1.a, true, select(select(select(vec3<bool>(var_2.a.d, false, var_2.a.e.x), vec3<bool>(false, false, false), var_2.a.e), vec3<bool>(var_1.a.d, true, var_2.a.d), vec3<bool>(arg_1.d.x, arg_1.d.x, false)), vec3<bool>(true == var_2.a.e.x, false, var_2.a.d), vec3<bool>(all(vec4<bool>(var_2.a.e.x, var_2.a.e.x, arg_1.d.x, arg_1.d.x)), arg_0 >= 0u, false))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_3 {
    var var_0 = func_2(4294967295u, arg_1, select(-_wgslsmith_mult_vec2_i32(arg_1.b.zz, arg_1.b.zx), vec2<i32>(u_input.a, arg_2), false));
    let var_1 = firstTrailingBit(select(vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(abs(u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_0.a.c, var_0.a.c), vec3<u32>(4294967295u, 39747u, arg_1.c.x))), 0u), ~vec3<u32>(1u, firstLeadingBit(37209u), 1u), var_0.a.e));
    var var_2 = arg_1;
    var_0 = func_2(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.a.c, 23998u), 22074u)), arg_1, -firstLeadingBit(vec2<i32>(var_0.a.a.x, func_2(var_1.x, arg_1, vec2<i32>(1i, var_2.b.x)).a.a.x)));
    var var_3 = Struct_1(~arg_1.b, arg_0.x != -319f, 4294967295u | (var_0.a.c | (u_input.b.x << (~var_1.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f)) - _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(floor(-742f))))), var_0.a.e);
    return Struct_3(~30920u, -firstLeadingBit(arg_1.b), _wgslsmith_div_vec3_u32(var_2.c, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, 12699u, 96417u), ~0u, countOneBits(arg_1.a)), func_3(true, Struct_3(var_2.c.x, vec3<i32>(-2147483647i, arg_1.b.x, -55147i), arg_1.c, arg_1.d), select(vec3<bool>(false, arg_1.d.x, var_3.d), var_3.e, false)).yxx)), func_2(~(~25986u), Struct_3(var_0.a.c, -max(vec3<i32>(4043i, var_3.a.x, var_0.a.a.x), var_3.a), select(var_1, arg_1.c, var_2.d.x), vec2<bool>(true, true)), var_2.b.yz).a.e.xx);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = vec4<u32>(reverseBits(u_input.b.x) >> (_wgslsmith_sub_u32(select(var_0, ~4294967295u, !arg_3), ~func_1(vec2<f32>(-689f, 472f), arg_1, -38765i, 1789f).c.x) % 32u), var_0, u_input.b.x, ~select(~(~54262u), func_3(true, func_1(vec2<f32>(-689f, 1117f), arg_1, -1i, 2769f), vec3<bool>(true, true, true)).x, arg_3));
    var_1 = _wgslsmith_add_vec4_u32(~abs(firstLeadingBit(~vec4<u32>(u_input.b.x, var_0, 100680u, 1u))), vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(arg_1.c.x, 4294967295u) & abs(u_input.b.x)), arg_1.c.x, u_input.b.x, max(~_wgslsmith_dot_vec3_u32(arg_1.c, vec3<u32>(1u, 0u, var_0)), arg_1.a)));
    let var_2 = func_2(~reverseBits(u_input.b.x) << (4294967295u % 32u), Struct_3(u_input.b.x, _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, -1i, arg_1.b.x), arg_1.b), ~firstTrailingBit(u_input.b), arg_1.d), arg_1.b.zy).a.c == var_0;
    let var_3 = any(!vec3<bool>(all(vec3<bool>(false, false, true)) && !var_2, arg_2, arg_0));
    return func_2(0u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-206f, 502f), vec2<f32>(-1832f, 1000f))), vec2<f32>(135f, -577f))), Struct_3(var_0, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<i32>(arg_1.b.x, arg_1.b.x, u_input.a))), min(arg_1.c, u_input.b), !(!arg_1.d)), select(u_input.a, reverseBits(u_input.a), arg_0), -1276f), ~reverseBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(17379i, u_input.a), -arg_1.b.xz))).a;
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = -(-(-vec3<i32>(u_input.a, arg_0.a.x, -19169i) | max(vec3<i32>(75505i, 0i, 1i), vec3<i32>(5250i, arg_0.a.x, arg_0.a.x))) | ~(~(-vec3<i32>(2147483647i, arg_0.a.x, -8404i))));
    var_0 = -_wgslsmith_mod_vec3_i32(~vec3<i32>(~(-1i), _wgslsmith_mod_i32(var_0.x, arg_0.a.x), _wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(25832i, u_input.a, -2147483647i))), -arg_0.a);
    let var_1 = reverseBits(~(~countOneBits(u_input.b.zx)) | reverseBits(~(~vec2<u32>(u_input.b.x, arg_0.c))));
    var var_2 = var_1;
    let var_3 = vec4<u32>(1u, func_3(true, func_1(vec2<f32>(_wgslsmith_f_op_f32(1440f - 775f), 362f), Struct_3(15305u, -vec3<i32>(-48921i, arg_0.a.x, arg_0.a.x), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(var_1.x, 15226u, u_input.b.x)), select(vec2<bool>(arg_0.d, true), vec2<bool>(arg_0.e.x, false), arg_0.e.zx)), ~(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1605f * -381f) - _wgslsmith_f_op_f32(min(607f, -756f)))), arg_0.e).x, 49653u, countOneBits(~(_wgslsmith_mod_u32(9587u, var_1.x) ^ ~u_input.b.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1863f)) - _wgslsmith_f_op_f32(-233f + 722f)) - 1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1016f, -1000f) * 1f))), -1136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1663f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-777f, 1897f)))), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-603f * -708f), _wgslsmith_f_op_f32(1635f + -632f), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(-(~(-1i)) >> ((u_input.b.x & ~u_input.b.x) % 32u), u_input.a | 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_5(func_4(all(vec2<bool>(false, false)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 823f) + vec2<f32>(-1231f, -336f)), Struct_3(u_input.b.x, vec3<i32>(var_0, var_0, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<bool>(true, true)), var_0, 238f), true, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) <= u_input.b.x)))));
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-max(u_input.a, u_input.a), _wgslsmith_mult_i32(-var_0, -1i), _wgslsmith_clamp_i32(-1i, abs(1i), u_input.a)), select(u_input.a, min(u_input.a, max(-2147483647i, var_0)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), max(-var_0, var_0)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), ~(~(~0u) >> (u_input.b.x % 32u)), true, vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), var_0 <= u_input.a)), !func_2(u_input.b.x, func_1(vec2<f32>(var_1.x, var_1.x), Struct_3(u_input.b.x, vec3<i32>(0i, 1i, -49122i), vec3<u32>(24849u, 0u, 4294967295u), vec2<bool>(true, false)), var_0, var_1.x), -vec2<i32>(u_input.a, var_0)).a.d, true));
    let var_3 = var_1.x;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 980f, -246f, _wgslsmith_f_op_f32(select(2007f, -673f, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1539f, var_1.x, var_1.x)), vec4<f32>(-452f, -102f, -444f, 103f), vec4<bool>(false, var_2.e.x, var_2.e.x, var_2.d)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -270f, -1724f, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 841f, 1568f, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, -734f)))))));
    let var_4 = 44307u;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4, _wgslsmith_add_i32(~(-9846i), _wgslsmith_div_i32(abs(1i), u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(249f, -2605f)), _wgslsmith_f_op_f32(-412f + -1377f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -736f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -413f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-358f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1838f, -1000f)))));
}

