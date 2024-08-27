struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = !(_wgslsmith_f_op_f32(1289f + _wgslsmith_f_op_f32(arg_1.c.x + 645f)) >= _wgslsmith_f_op_f32(arg_1.c.x + -1375f));
    var var_2 = _wgslsmith_mult_vec4_i32((vec4<i32>(u_input.e.x, arg_1.a, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -1i, arg_1.a, u_input.c), vec4<i32>(-1i, 2147483647i, 0i, 1i))) >> (~(vec4<u32>(u_input.d, u_input.a, u_input.d, u_input.a) & vec4<u32>(17693u, 0u, u_input.d, 964u)) % vec4<u32>(32u))) | vec4<i32>(arg_1.a, _wgslsmith_sub_i32(select(arg_1.a, -26671i, var_1), countOneBits(arg_1.a)), 0i, _wgslsmith_mult_i32(-1i, 2147483647i)), vec4<i32>(_wgslsmith_add_i32(22053i, arg_1.a), 1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_1.a, arg_1.a), arg_1.a, ~arg_1.a, arg_1.a), -select(vec4<i32>(-2147483647i, -30116i, -26262i, 1i), vec4<i32>(arg_1.a, arg_1.a, -3862i, u_input.c), vec4<bool>(true, false, true, var_0.a.x)))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.x)) + arg_1.c.x))))));
    var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -48030i, var_2.x), var_2.yzw)), select(vec3<i32>(arg_1.a, 1i, u_input.c), -u_input.b, select(vec3<bool>(false, true, false), select(vec3<bool>(arg_1.e, false, arg_1.b.x), arg_1.d.wzy, true), arg_1.d.xzz))), -arg_1.a, 7520i, ~abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(560i, 1i), -1i)));
    return all(!(!vec4<bool>(any(arg_1.d), true, all(vec4<bool>(false, false, true, arg_1.b.x)), u_input.d <= 101932u)));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 68624u, u_input.a), ~vec4<u32>(1u, 1u, u_input.a, u_input.a)) ^ abs(u_input.d), ~(~_wgslsmith_sub_u32(u_input.d, _wgslsmith_clamp_u32(6486u, 1u, 1u))));
    var var_1 = abs(-39839i);
    let var_2 = reverseBits(~vec3<u32>(7421u, var_0, 0u));
    let var_3 = Struct_1(_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_mult_i32(-41339i, u_input.b.x)), !(!vec3<bool>(arg_0, any(vec3<bool>(arg_0, false, arg_0)), any(vec3<bool>(arg_0, arg_0, arg_0)))), vec3<f32>(-161f, _wgslsmith_f_op_f32(min(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -380f)))), -1152f), vec4<bool>(any(vec3<bool>(all(vec2<bool>(false, true)), true, true)), false, all(!vec2<bool>(arg_0, arg_0)), u_input.e.x > _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, -25703i), min(u_input.e, vec2<i32>(2147483647i, u_input.e.x)))), all(vec4<bool>(false, true, true, func_3(Struct_2(vec2<bool>(arg_0, arg_0)), Struct_1(u_input.e.x, vec3<bool>(false, false, arg_0), vec3<f32>(-641f, -557f, 967f), vec4<bool>(arg_0, arg_0, arg_0, false), arg_0)))));
    let var_4 = vec4<u32>(4294967295u, var_2.x & 4294967295u, abs(1u), 54249u);
    return !select(!any(var_3.b.xx), select(var_3.b.x, 1i >= var_3.a, !arg_0 & all(vec2<bool>(true, true))), arg_0);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = 1000f;
    var var_1 = vec2<bool>(!any(arg_1), false);
    let var_2 = Struct_2(select(arg_1, select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(Struct_2(vec2<bool>(arg_0, arg_1.x)), Struct_1(-2147483647i, vec3<bool>(arg_0, true, arg_0), vec3<f32>(1891f, 1170f, -493f), vec4<bool>(arg_0, true, arg_0, arg_1.x), true))), func_2(arg_1.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)) + -1776f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-509f, _wgslsmith_f_op_f32(step(387f, -526f)))))) - -195f);
    return u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = vec4<u32>(func_4(select(all(vec4<bool>(true, true, false, arg_0.a.x)), func_2(any(vec3<bool>(true, true, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(5908i, u_input.b.x, u_input.c, 16282i), vec4<i32>(-1i, u_input.c, 35395i, 1i)) <= u_input.e.x), !select(select(vec2<bool>(arg_2.a.x, arg_0.a.x), arg_2.a, vec2<bool>(true, arg_2.a.x)), arg_2.a, arg_0.a)), u_input.d, 1u, u_input.d);
    let var_1 = arg_2;
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(-188f + 806f);
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(1i, arg_3.a, 2147483647i);
    var var_1 = func_4(!(all(vec4<bool>(true, false, arg_3.e, false)) || arg_3.e), vec2<bool>(any(vec3<bool>(false, false, arg_3.b.x)), false)) & u_input.d;
    var_0 = u_input.b;
    let var_2 = !select(vec3<bool>(arg_3.d.x, true, (u_input.a >= 25733u) | (arg_3.d.x || true)), !select(!arg_3.d.yzx, vec3<bool>(arg_3.e, arg_3.e, true), arg_3.d.yzy), arg_3.e);
    var var_3 = arg_3;
    return Struct_2(vec2<bool>(false, arg_3.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-14260i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(196f, -688f, -108f), vec3<f32>(-382f, -845f, 2206f), true)))), i32(-1i) * -_wgslsmith_mod_i32(-27786i, 2147483647i), Struct_1(u_input.c, !vec3<bool>(36489u < u_input.d, true, true), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(false, true)), vec4<f32>(199f, 737f, 1450f, -1317f), Struct_2(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(f32(-1f) * -743f)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, true, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), true), true));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(684f, -1000f), _wgslsmith_f_op_f32(trunc(924f)))), _wgslsmith_f_op_f32(max(-772f, _wgslsmith_f_op_f32(trunc(-401f))))))));
    var var_2 = var_0.a.x;
    var var_3 = ~(vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.a, 0u), _wgslsmith_sub_u32(17862u, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a)) >> (vec3<u32>(~1u, _wgslsmith_sub_u32(u_input.d, u_input.d), firstTrailingBit(0u)) % vec3<u32>(32u))) & ~(~(vec3<u32>(43998u, 0u, 4294967295u) >> (vec3<u32>(u_input.d, u_input.a, 89918u) % vec3<u32>(32u))) & ~vec3<u32>(u_input.a, u_input.d, 0u));
    var_2 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(trunc(1545f)), 813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f)) * _wgslsmith_f_op_f32(abs(-385f))), 1445f), firstTrailingBit(~reverseBits(vec4<u32>(4294967295u, u_input.d, var_3.x, u_input.a))), ~firstLeadingBit(select(~vec4<u32>(u_input.a, u_input.a, var_3.x, u_input.d), firstTrailingBit(vec4<u32>(1u, u_input.d, 53811u, u_input.d)), select(vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec4<bool>(true, true, var_0.a.x, var_0.a.x), vec4<bool>(true, true, var_0.a.x, var_0.a.x)))));
}

