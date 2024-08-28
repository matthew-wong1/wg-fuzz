struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    let var_0 = vec4<f32>(arg_2.a.d.d.x, _wgslsmith_f_op_f32(2057f - -1236f), _wgslsmith_f_op_f32(-323f + _wgslsmith_f_op_f32(-1000f - arg_1.a.x)), arg_1.a.x);
    let var_1 = firstLeadingBit(arg_2.a.b.b.x) | max(_wgslsmith_mod_u32(abs(~44023u), firstLeadingBit(select(0u, arg_1.c, false))), 20181u);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2270f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(var_0.x - arg_1.d.x)))))));
    return _wgslsmith_dot_vec2_i32(u_input.d, u_input.d);
}

fn func_3() -> bool {
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    var var_0 = all(select(!vec2<bool>(arg_2, !arg_0), !vec2<bool>(false, !arg_0), !vec2<bool>(true && arg_2, false)));
    var var_1 = _wgslsmith_mult_i32((~arg_1.x | arg_1.x) << (u_input.c.x % 32u), u_input.d.x);
    var var_2 = _wgslsmith_add_vec3_i32(max(-(vec3<i32>(42951i, arg_1.x, 17905i) << (u_input.c % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(26480i, u_input.d.x, arg_1.x) & vec3<i32>(arg_1.x, arg_1.x, u_input.d.x))), vec3<i32>(-_wgslsmith_div_i32(69986i, u_input.d.x), select(_wgslsmith_sub_i32(62699i, arg_1.x), reverseBits(arg_1.x), func_3()), -64638i)) >> (~(~u_input.a) % vec3<u32>(32u));
    var var_3 = Struct_3(vec2<i32>(var_2.x, ~29563i), ~(-(vec4<i32>(var_2.x, 11706i, 0i, arg_1.x) ^ vec4<i32>(u_input.d.x, -32337i, u_input.d.x, -992i))) >> (~countOneBits(select(vec4<u32>(0u, u_input.b, 1u, u_input.b), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.b), vec4<bool>(false, arg_0, true, false))) % vec4<u32>(32u)), abs(func_1(arg_0, Struct_1(vec2<f32>(-931f, -434f), vec4<u32>(4294967295u, u_input.b, u_input.a.x, u_input.c.x), 1u, vec4<f32>(-1944f, -948f, 1400f, -105f)), Struct_5(Struct_2(u_input.a, Struct_1(vec2<f32>(-1500f, -839f), vec4<u32>(97763u, 61994u, u_input.c.x, u_input.c.x), u_input.b, vec4<f32>(757f, 343f, 1000f, 1000f)), vec3<f32>(-498f, -760f, -2031f), Struct_1(vec2<f32>(488f, 561f), vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.b), 25005u, vec4<f32>(-1638f, 2764f, -394f, 988f))))) ^ (~arg_1.x >> (select(u_input.a.x, u_input.c.x, false) % 32u))), u_input.b, select(vec4<bool>(true, !arg_0, select(1u > u_input.b, false, false), true), vec4<bool>(true, !all(vec3<bool>(false, arg_2, false)), all(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(true, arg_0, false, true), arg_2)), !arg_2), all(!vec4<bool>(true, true, arg_0, arg_2)) & true));
    var var_4 = ~(~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_3.d, var_3.d, 4294967295u, u_input.b)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, 5389u, var_3.d), vec4<u32>(var_3.d, 25810u, 6587u, u_input.b)), _wgslsmith_sub_vec4_u32(max(vec4<u32>(var_3.d, 1u, u_input.b, var_3.d), vec4<u32>(51819u, 59074u, u_input.a.x, var_3.d)), ~vec4<u32>(var_3.d, var_3.d, 40911u, 43450u))));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), 870f) + -150f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-437f - _wgslsmith_f_op_f32(step(336f, 1031f))), 781f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1584f, -253f, var_0.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, -831f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(354f, var_0.x, 1694f) * vec3<f32>(1000f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1715f, var_0.x, 875f))), vec3<f32>(var_0.x, -1103f, _wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = Struct_3(-select(vec2<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, -1i)), countOneBits(u_input.d), vec2<bool>(true, all(vec3<bool>(false, true, true)))), vec4<i32>(-1i, ~_wgslsmith_mult_i32(0i, u_input.d.x), ~u_input.d.x, select(-2147483647i, -1i, -1505f == var_0.x)) >> (~vec4<u32>(0u, u_input.b, ~1u, 8717u) % vec4<u32>(32u)), _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(_wgslsmith_div_i32(u_input.d.x, u_input.d.x)), func_1(true, Struct_1(vec2<f32>(var_0.x, 1000f), vec4<u32>(u_input.b, 13548u, u_input.b, 1u), u_input.c.x, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), Struct_5(Struct_2(vec3<u32>(u_input.b, u_input.c.x, 4294967295u), Struct_1(var_0.xy, vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 14620u), 8047u, vec4<f32>(-772f, 1158f, -176f, var_0.x)), vec3<f32>(1334f, var_0.x, -222f), Struct_1(vec2<f32>(-881f, 392f), vec4<u32>(u_input.c.x, 8564u, u_input.c.x, 0u), 1u, vec4<f32>(var_0.x, -284f, var_0.x, -1308f)))))), u_input.d.x), ~_wgslsmith_add_u32(u_input.c.x, u_input.a.x) << (_wgslsmith_sub_u32(~func_2(false, vec2<i32>(2147483647i, -71173i), false), u_input.a.x & _wgslsmith_div_u32(115613u, 1u)) % 32u), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)), true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true))));
    var var_2 = Struct_5(Struct_2(vec3<u32>(~(~56590u), ~(22432u | u_input.c.x), select(44390u, _wgslsmith_div_u32(32300u, 36179u), var_1.e.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1521f, 1549f) - vec2<f32>(var_0.x, -842f))), firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 59824u, 4294967295u)), 80594u, vec4<f32>(_wgslsmith_f_op_f32(-171f + 378f), 1136f, _wgslsmith_f_op_f32(step(var_0.x, 618f)), _wgslsmith_f_op_f32(-1794f + var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, -286f, var_0.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -410f))), reverseBits(vec4<u32>(0u, u_input.c.x, var_1.d, 7454u)) & firstLeadingBit(vec4<u32>(u_input.a.x, 6354u, 8324u, 1u)), u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1499f, var_0.x, -1210f, var_0.x), vec4<f32>(var_0.x, 651f, 1233f, var_0.x), false)))));
    var var_3 = (func_1(var_1.e.x, Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.a.b.a.x, 291f), var_2.a.b.a)), min(vec4<u32>(u_input.c.x, u_input.a.x, var_1.d, 1u), vec4<u32>(u_input.b, 1u, 46903u, var_2.a.b.b.x)), ~75437u, _wgslsmith_f_op_vec4_f32(step(var_2.a.d.d, var_2.a.d.d))), Struct_5(var_2.a)) ^ _wgslsmith_add_i32(var_1.c, _wgslsmith_add_i32(var_1.a.x, var_1.c))) & 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, abs(var_1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-47450i, 1i, -11199i), var_1.b.zyx)) >> ((58752u >> (_wgslsmith_mult_u32(var_1.d, var_1.d) % 32u)) % 32u), u_input.d.x, u_input.d.x, ~(var_1.b.x ^ -2147483647i)), vec3<u32>(1u, ~(~var_2.a.a.x), _wgslsmith_mod_u32(~(var_2.a.d.c >> (1u % 32u)), u_input.a.x)), u_input.c);
}

