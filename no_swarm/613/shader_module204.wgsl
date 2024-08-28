struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = -1062f;
    let var_1 = ((abs(arg_0) & -2147483647i) | _wgslsmith_mod_i32(abs(-u_input.b.x), firstTrailingBit(abs(-15524i)))) & ~1577i;
    var_0 = 167f;
    let var_2 = 0i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), select(vec3<u32>(u_input.a, 0u, 32950u), vec3<u32>(u_input.a, u_input.a, 33677u), true)), vec3<u32>(u_input.a, 4294967295u, 16134u) ^ ~vec3<u32>(u_input.a, 4294967295u, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)))), !vec4<bool>(arg_1.x < -292f, true, true, true), !select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, arg_1.x <= arg_1.x), true));
    return vec3<bool>(!var_3.e.x, var_3.e.x, true && ((reverseBits(var_3.b) >> (1u % 32u)) <= 1u));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-539f)) * _wgslsmith_f_op_f32(-arg_3)))) + _wgslsmith_f_op_f32(1830f + _wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.c.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -161f))))));
    var_0 = -836f;
    var var_1 = arg_2.c.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a) + 906f) - -151f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - 1000f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1630f)) * -573f);
    return _wgslsmith_f_op_f32(-467f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.a), arg_1.c.a, arg_0.x)));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(select(1033f, _wgslsmith_f_op_f32(func_4(func_3(2147483647i, vec4<f32>(-949f, 906f, arg_0, arg_0), u_input.b.zy), Struct_2(vec3<u32>(u_input.a, 4294967295u, 63655u), 1i, Struct_1(arg_0, 64797u, vec4<f32>(-970f, arg_0, 1000f, -323f), vec4<bool>(true, true, false, true), vec3<bool>(false, true, true)), false), Struct_2(vec3<u32>(1u, 25372u, 13331u), u_input.b.x, Struct_1(arg_0, 1u, vec4<f32>(arg_0, arg_0, arg_0, -1034f), vec4<bool>(true, true, false, true), vec3<bool>(true, true, true)), false), _wgslsmith_f_op_f32(-arg_0))), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1124f * arg_0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-145f - arg_0), _wgslsmith_f_op_f32(-arg_0))) * -253f), 710f);
    let var_1 = -50442i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(arg_0)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1182f) - -1460f))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(round(1477f))))), u_input.a, var_2, vec4<bool>(!(1000f <= var_0.x), true, true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), vec3<bool>(true, true, true)), ~vec4<i32>(var_1, firstLeadingBit(var_1), -(~u_input.b.x), 2778i), Struct_1(-1161f, ~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2, var_2, vec4<bool>(true, false, true, false))) - var_2) * _wgslsmith_div_vec4_f32(vec4<f32>(1068f, var_0.x, var_2.x, 710f), var_2)), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, !any(vec2<bool>(false, true)), true), vec3<bool>(true, true, !all(vec3<bool>(true, true, true)))), _wgslsmith_mult_u32(u_input.a, 0u));
    var var_4 = Struct_2(vec3<u32>(~1u, 66717u, 20464u), max(5036i, i32(-1i) * -1i), Struct_1(var_0.x, ~(~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(var_3.a.c, vec4<f32>(var_0.x, -1845f, var_3.a.c.x, var_0.x), vec4<bool>(var_3.c.d.x, false, false, var_3.a.e.x))))) * vec4<f32>(_wgslsmith_f_op_f32(var_2.x * 1279f), -1223f, _wgslsmith_f_op_f32(-var_3.a.c.x), -1684f)), !select(vec4<bool>(var_3.a.e.x, false, true, false), vec4<bool>(false, false, false, var_3.c.d.x), true), var_3.a.d.xzy), all(!select(!var_3.a.d.xwz, !vec3<bool>(var_3.a.d.x, var_3.a.d.x, false), !var_3.c.e)));
    return 290f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = -1210f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(min(arg_0, -1413f))), _wgslsmith_f_op_f32(-arg_0))));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_2(-1320f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(max(arg_0, -815f))))), var_1.x));
    var var_2 = u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 23857u >> (~u_input.a % 32u)), _wgslsmith_mult_vec2_u32(~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), abs(vec2<u32>(35898u, 0u)))) % 32u);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-665f, var_1.x), vec2<f32>(var_1.x, 132f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(1000f, 983f)))) - vec2<f32>(var_1.x, _wgslsmith_div_f32(343f, 100f))))));
    return Struct_1(338f, 1u, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(393f, var_1.x))), var_1.x, _wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), Struct_2(select(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 4294967295u), false), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(var_1.x, u_input.a, vec4<f32>(arg_0, arg_0, 490f, -2455f), vec4<bool>(false, false, true, false), vec3<bool>(false, false, true)), all(vec3<bool>(true, true, false))), Struct_2(min(vec3<u32>(25036u, 0u, 1u), vec3<u32>(4294967295u, 12831u, u_input.a)), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(arg_0, u_input.a, vec4<f32>(-796f, 275f, arg_0, 629f), vec4<bool>(false, true, false, true), vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-778f)), -153f) - -1023f)), !vec4<bool>(true, any(vec3<bool>(true, true, true)), true, countOneBits(29790u) == ~u_input.a), func_3(68021i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, 165f, 372f, var_1.x)))), u_input.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~vec3<u32>(u_input.a, u_input.a, 1u), ~(-20180i), func_1(-2217f), true);
    var_0 = Struct_2(select(vec3<u32>(max(countOneBits(12711u), var_0.c.b), ~41333u, min(~59772u, ~15149u)), var_0.a, (_wgslsmith_div_i32(u_input.b.x, var_0.b) < -1i) || true), 0i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.c.c.x), all(vec2<bool>(false, var_0.c.d.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(161f)))), _wgslsmith_add_u32(~_wgslsmith_mod_u32(var_0.a.x, var_0.a.x), var_0.c.b), _wgslsmith_f_op_vec4_f32(var_0.c.c + _wgslsmith_f_op_vec4_f32(var_0.c.c - var_0.c.c)), !vec4<bool>(false, false, any(var_0.c.d.zy), all(var_0.c.d)), var_0.c.d.yww), var_0.d);
    let var_1 = var_0.b;
    let var_2 = all(vec3<bool>(!(u_input.b.x < 1i), false, !(_wgslsmith_mod_i32(var_0.b, u_input.b.x) == reverseBits(0i))));
    var_0 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.c.b, var_0.a.x, var_0.c.b), vec4<u32>(32149u, 6631u, u_input.a, u_input.a)), ~(~u_input.a), var_0.c.b), ~var_0.a | _wgslsmith_clamp_vec3_u32(vec3<u32>(62814u, var_0.c.b, 0u), firstLeadingBit(vec3<u32>(var_0.c.b, 0u, 53436u)), var_0.a)), ~37266i, Struct_1(-1000f, 88830u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.c.c * vec4<f32>(var_0.c.c.x, 941f, var_0.c.c.x, var_0.c.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.c.x, -1000f, var_0.c.c.x, 902f) * var_0.c.c) - var_0.c.c)), vec4<bool>(var_2, var_0.d, true, true), vec3<bool>(var_0.c.e.x, var_0.b < ~0i, func_1(var_0.c.c.x).d.x)), select(true, true, any(func_1(var_0.c.a).d)));
    var var_3 = Struct_4(vec2<i32>(-u_input.b.x, var_0.b));
    let var_4 = -1000f;
    let var_5 = Struct_2(~var_0.a, _wgslsmith_add_i32(var_3.a.x, -1i), func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4 + -501f), func_1(var_0.c.a).c.x))), var_2);
    let var_6 = Struct_2(vec3<u32>(~1u & abs(var_0.c.b), var_5.c.b, 1u) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(8764u, u_input.a, 4294967295u) ^ vec3<u32>(1u, 56390u, var_5.c.b), var_5.a), var_5.a, var_5.a) % vec3<u32>(32u)), abs(~(-(~var_5.b))), Struct_1(1265f, ~(func_1(var_4).b >> (_wgslsmith_mult_u32(var_5.a.x, u_input.a) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1580f, var_5.c.a, var_0.c.d.x)), _wgslsmith_f_op_f32(trunc(var_5.c.a)), _wgslsmith_f_op_f32(func_4(vec3<bool>(var_0.d, false, false), Struct_2(var_5.a, var_5.b, Struct_1(-539f, 1u, vec4<f32>(var_0.c.c.x, -119f, 1537f, 725f), var_5.c.d, var_5.c.e), var_2), Struct_2(vec3<u32>(1u, 4294967295u, var_5.a.x), 0i, var_0.c, true), -458f)), _wgslsmith_f_op_f32(-966f - var_5.c.a))), !vec4<bool>(var_2, true, true, var_2), !func_3(33996i, _wgslsmith_div_vec4_f32(var_0.c.c, vec4<f32>(var_0.c.a, var_0.c.a, -827f, var_4)), vec2<i32>(u_input.b.x, var_5.b))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_5.c.c.yy * var_5.c.c.xx) * _wgslsmith_f_op_vec2_f32(max(var_5.c.c.zy, var_5.c.c.wz))), vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(var_0.c.e.x, true, var_0.c.e.x), var_5, Struct_2(vec3<u32>(34518u, 4294967295u, u_input.a), 0i, Struct_1(-598f, 0u, vec4<f32>(var_0.c.a, var_0.c.a, 204f, -170f), var_6.c.d, vec3<bool>(false, false, true)), var_5.d), -898f)), _wgslsmith_f_op_f32(-var_6.c.a)))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_6.a.x, u_input.a, var_5.c.b, 4294967295u), ~vec4<u32>(var_0.a.x, 52948u, var_0.c.b, 28067u)), reverseBits(_wgslsmith_mod_u32(var_0.a.x, var_5.a.x))));
}

