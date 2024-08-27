struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = true;
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.a.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.a.a.x, arg_0.a.a.a.x), max(vec2<u32>(13024u, arg_1.b), vec2<u32>(u_input.a, 36996u)))), countOneBits(_wgslsmith_div_vec2_u32(select(arg_1.a, arg_1.a, vec2<bool>(false, true)), arg_0.a.a.a)), select(~select(arg_1.a, arg_1.a, false), arg_0.a.a.a, select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), arg_1.b);
    let var_2 = arg_1;
    var_1 = Struct_2(vec2<u32>(0u, (~var_1.b & ~arg_0.a.a.a.x) | _wgslsmith_div_u32(var_1.a.x, abs(0u))), 4294967295u);
    let var_3 = arg_0.a;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(557f)) - -430f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-149f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-328f)) + _wgslsmith_f_op_f32(-1334f - -1113f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(258f, -1008f, true))))), _wgslsmith_div_f32(-1610f, 430f))));
}

fn func_2() -> u32 {
    let var_0 = -_wgslsmith_sub_i32(((i32(-1i) * -11274i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, 2147483647i))) ^ ~(-1i), 1i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1063f, _wgslsmith_f_op_f32(-192f * -784f)))))), var_0, any(vec4<bool>(true, all(vec4<bool>(true, true, true, false)), 4294967295u == u_input.a, true)) || any(vec3<bool>(true, true, true)), firstTrailingBit(~_wgslsmith_mult_vec4_u32(~vec4<u32>(54294u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(69283u, u_input.b, u_input.a, 1277u), vec4<u32>(11708u, 74658u, 0u, 24620u), vec4<bool>(true, false, false, false)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_2(var_1.d.yx, 0u))), Struct_2(vec2<u32>(var_1.d.x, u_input.b), _wgslsmith_sub_u32(var_1.d.x, 67055u)))), 2147483647i, all(vec4<bool>(var_1.c, true, !any(vec3<bool>(false, false, var_1.c)), true)), reverseBits(vec4<u32>(~19000u ^ ~u_input.b, 1u, ~_wgslsmith_add_u32(var_1.d.x, 29515u), _wgslsmith_mod_u32(abs(u_input.a), ~u_input.b))));
    var_1 = Struct_1(1350f, -5338i, var_1.a >= _wgslsmith_f_op_f32(-1902f + _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_2(vec2<u32>(2948u, u_input.b), 4294967295u))), Struct_2(vec2<u32>(0u, var_1.d.x), u_input.b)))), min(var_1.d, select(var_1.d, vec4<u32>(var_1.d.x, u_input.a >> (var_1.d.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(38581u, var_1.d.x, 30799u, 33810u), vec4<u32>(65987u, u_input.b, 19075u, var_1.d.x)), _wgslsmith_div_u32(u_input.a, var_1.d.x)), var_1.c)));
    let var_2 = Struct_2(vec2<u32>(0u >> (1u % 32u), ~(~u_input.b)), var_1.d.x);
    return abs(71485u);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(arg_3, _wgslsmith_clamp_i32(-arg_3, i32(-1i) * -arg_3, arg_3));
    var_0 = ~_wgslsmith_mult_i32(1i, ~(-(i32(-1i) * -3231i)));
    let var_1 = vec4<f32>(-710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1528f - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1200f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f - -585f) + 358f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.zw);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1217f + var_1.x) * 396f)));
    return Struct_3(Struct_2(countOneBits(vec2<u32>(arg_0, u_input.b)), ~(~_wgslsmith_mod_u32(arg_0, arg_0))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(845f, -845f) - vec2<f32>(271f, 760f)))) - vec2<f32>(_wgslsmith_f_op_f32(-934f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f * -448f) + 746f))));
    var var_1 = func_4(func_2(), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false))), select(all(vec3<bool>(false, true, false)), true, true)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), any(vec2<bool>(any(vec2<bool>(true, true)), true))), select(!vec2<bool>(false, all(vec3<bool>(false, true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), -33467i);
    let var_2 = -vec2<i32>(0i, firstLeadingBit(_wgslsmith_clamp_i32(~1i, 1i, 2147483647i)));
    var var_3 = 0u;
    let var_4 = arg_1.x;
    return Struct_4(Struct_3(arg_0.a));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + 1f)) >= 1634f) & any(!vec2<bool>(all(vec4<bool>(arg_1.c, false, false, arg_1.c)), true));
    let var_1 = Struct_4(arg_3.a);
    var var_2 = var_1;
    var_2 = arg_3;
    var var_3 = max(abs(vec3<u32>(arg_3.a.a.a.x, ~(~var_2.a.a.b), _wgslsmith_dot_vec2_u32(var_2.a.a.a, abs(arg_1.d.yz)))), vec3<u32>(34778u, 0u, ~_wgslsmith_clamp_u32(var_1.a.a.b, _wgslsmith_add_u32(arg_1.d.x, 4294967295u), ~0u)));
    return _wgslsmith_div_vec2_u32(var_2.a.a.a, var_1.a.a.a);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    var var_0 = func_1(func_4(arg_1.b, !(!(!vec3<bool>(false, arg_2, arg_2))), !select(vec2<bool>(arg_3.c, false), vec2<bool>(arg_2, arg_3.c), vec2<bool>(arg_3.c, true)), arg_3.b), arg_3.d.wxx).a;
    let var_1 = !(!vec2<bool>(any(select(vec4<bool>(arg_3.c, true, arg_2, arg_2), vec4<bool>(true, false, true, arg_3.c), false)), false));
    let var_2 = select(_wgslsmith_sub_i32(firstTrailingBit(min(arg_3.b, arg_3.b)), 1i) & arg_3.b, ~(~(-(~1i))), false);
    var_0 = func_1(Struct_3(var_0.a), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(91771u, 0u), ~var_0.a.a.x), ~32980u), 610u, arg_1.b)).a;
    var var_3 = Struct_4(func_4(28084u, !select(vec3<bool>(arg_3.c, true, false), vec3<bool>(false, true, true), 10271i < var_2), var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2, i32(-1i) * -2147483647i), vec3<i32>(var_2 << (1149u % 32u), _wgslsmith_div_i32(-20804i, 27052i), var_2))));
    return Struct_3(func_4(~(~firstLeadingBit(arg_1.b)), select(!(!vec3<bool>(true, arg_2, arg_3.c)), !vec3<bool>(true, true, arg_2), !select(vec3<bool>(arg_3.c, arg_3.c, arg_3.c), vec3<bool>(arg_2, var_1.x, arg_3.c), vec3<bool>(false, false, arg_2))), vec2<bool>(!(false | arg_2), select(true, !arg_2, true)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2, 2147483647i, arg_3.b, var_2)) ^ vec4<i32>(arg_3.b, arg_3.b, var_2, -20849i), vec4<i32>(var_2, max(var_2, -4483i), abs(1i), _wgslsmith_div_i32(arg_3.b, 39353i)))).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~(~(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 63480u), vec2<u32>(0u, u_input.b)) << (abs(vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u)))), Struct_2(select(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(-1255f, 11560i, true, vec4<u32>(u_input.b, 0u, 1u, 0u)), firstLeadingBit(vec2<u32>(34232u, 1u)), func_1(Struct_3(Struct_2(vec2<u32>(u_input.b, u_input.a), 24377u)), vec3<u32>(85819u, u_input.a, 23347u))), abs(~vec2<u32>(u_input.a, u_input.b)), true), 1u), false, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -437f)))), 1i, true, vec4<u32>(_wgslsmith_mult_u32(12495u, 62944u), 4294967295u, 41345u, u_input.a)));
    var var_1 = func_1(func_4(~(~func_2()), vec3<bool>(true, true, true), select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(false, true), true), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-744i, -12673i), firstTrailingBit(-2147483647i), _wgslsmith_sub_i32(1i, -46057i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -41139i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 72280i), vec2<i32>(1i, 2147483647i))))), vec3<u32>(1u, ~u_input.a, _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(148880u, _wgslsmith_mod_u32(u_input.a, var_0.a.a.x)))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1539f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + 1358f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(674f)) + 2301f)) + _wgslsmith_f_op_f32(118f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) + _wgslsmith_f_op_f32(round(127f)))))));
    var var_3 = ~abs(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(10228u, 34200u, 0u, var_0.a.a.x)) & vec4<u32>(var_0.a.b, u_input.a, 1u, 15351u), abs(~vec4<u32>(43652u, 23730u, var_0.a.b, u_input.b))));
    var var_4 = i32(-1i) * -56509i;
    let var_5 = firstLeadingBit(~var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(541f, _wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(f32(-1f) * -927f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1837f, 936f, 220f))), vec3<f32>(var_2, var_2, var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-var_2)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 - 736f))))));
}

