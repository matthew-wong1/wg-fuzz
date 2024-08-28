struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    return reverseBits(0u);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = ~(~(~u_input.b));
    var var_1 = Struct_1(true, _wgslsmith_dot_vec3_i32(firstTrailingBit(-(u_input.a.yzy ^ u_input.a.xxy)), ~vec3<i32>(1i, u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec3<bool>(false, false, true))), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), false), all(vec3<bool>(true, true, true))), 44886u, false);
    var var_2 = Struct_1(true, var_1.b, vec2<bool>(var_1.c.x, true), ~2961u, false);
    let var_3 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b, 1u, _wgslsmith_add_u32(var_1.d, 1u), countOneBits(66847u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.d, var_1.d, u_input.b, 53109u), select(vec4<u32>(var_2.d, var_2.d, var_1.d, u_input.b), vec4<u32>(1u, 4294967295u, 5844u, 4294967295u), vec4<bool>(var_1.e, true, var_2.a, true)))));
    var_1 = Struct_1(all(vec3<bool>(true, any(vec2<bool>(var_2.c.x, true)), var_1.a)), ~22328i, var_1.c, ~select(_wgslsmith_dot_vec2_u32(~vec2<u32>(59923u, var_1.d), ~vec2<u32>(4294967295u, 29328u)), var_3.x, false), var_1.c.x);
    return ~(~var_1.d);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = Struct_2(arg_1.a.a, arg_1.a.b | vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.c.d, 33501u, 49140u, 4294967295u), vec4<u32>(arg_1.a.c.d, 7720u, arg_1.e.d, 4294967295u) << (vec4<u32>(u_input.b, 80675u, arg_1.a.b.x, u_input.b) % vec4<u32>(32u))), ~(arg_1.e.d ^ 0u)), Struct_1(true, ~(_wgslsmith_sub_i32(1i, -7550i) >> (~arg_1.a.b.x % 32u)), select(select(arg_1.b, select(arg_1.a.c.c, arg_1.a.c.c, arg_1.a.c.e), !arg_1.a.c.c), select(vec2<bool>(arg_1.e.a, false), select(vec2<bool>(arg_1.a.c.e, arg_1.a.c.e), vec2<bool>(arg_1.b.x, false), arg_1.b), arg_1.a.c.a), arg_1.b.x), _wgslsmith_sub_u32(select(arg_1.a.b.x, ~u_input.b, arg_1.b.x || true), ~firstTrailingBit(40622u)), true));
    let var_1 = arg_0.x;
    var_0 = Struct_2(var_0.a, max(vec3<u32>(5995u, func_2(u_input.b, var_0.c, arg_1.b, arg_1.a), var_0.b.x), (var_0.b & var_0.b) & arg_1.a.b), arg_1.a.c);
    var var_2 = arg_0.yx;
    var var_3 = _wgslsmith_mult_u32(arg_1.e.d, func_3(~(-(u_input.a.wy ^ u_input.a.wy))));
    return vec2<u32>(~1u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, ~_wgslsmith_add_u32(u_input.b, u_input.b)), countOneBits(func_1(vec3<f32>(1559f, 175f, -820f), Struct_3(Struct_2(u_input.a.x, vec3<u32>(4087u, u_input.b, 0u), Struct_1(false, u_input.a.x, vec2<bool>(false, false), 31242u, false)), vec2<bool>(false, true), vec2<f32>(919f, -1322f), vec2<f32>(1000f, 1048f), Struct_1(false, -31532i, vec2<bool>(true, true), 2935u, true))))) | ~firstLeadingBit(~(vec2<u32>(u_input.b, 1u) ^ vec2<u32>(u_input.b, u_input.b)));
    let var_1 = Struct_2(select(u_input.a.x, u_input.a.x, any(vec2<bool>(true, true))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(49357u, 31590u), max(24201u, var_0.x), 4294967295u), ~vec3<u32>(var_0.x, 0u, 15663u), firstTrailingBit(vec3<u32>(1u, u_input.b, u_input.b)) >> (~vec3<u32>(var_0.x, u_input.b, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 15702u, u_input.b)), vec3<u32>(~33570u, 4294967295u, var_0.x)), Struct_1(true, 14771i, vec2<bool>(true, _wgslsmith_f_op_f32(step(360f, 1778f)) > _wgslsmith_div_f32(624f, -1319f)), abs(var_0.x), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(816f * -842f) - _wgslsmith_div_f32(-593f, 1834f))) - -961f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, 141f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(550f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(749f, 1383f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1153f, -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-977f)), -1043f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -869f)))))));
    let var_3 = var_1;
    var var_4 = vec2<u32>(var_3.b.x, 1u);
    var_4 = max(~var_0, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.b.xx, var_3.b.yx), u_input.b), 1u));
    let var_5 = countOneBits(select(var_1.a, _wgslsmith_dot_vec2_i32(u_input.a.yw, _wgslsmith_add_vec2_i32(-vec2<i32>(-3395i, -44323i), u_input.a.yz)), false));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1850f, var_2.x, var_2.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, var_2.x, var_2.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -1372f)), vec4<f32>(var_2.x, 1120f, var_2.x, -1660f))), vec4<f32>(_wgslsmith_f_op_f32(659f - 867f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(132f + 1025f), _wgslsmith_f_op_f32(max(var_2.x, 643f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1313f, -262f) * vec4<f32>(var_2.x, var_2.x, 971f, 1000f)), vec4<f32>(732f, var_2.x, var_2.x, 749f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xz, -9145i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_3.c.c.x)), 763f, _wgslsmith_f_op_f32(-544f - 733f), 1492f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1897f, var_2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 2004f, var_2.x, var_2.x) + vec4<f32>(-965f, 967f, 689f, 549f))))), ~4294967295u, 1i);
}

