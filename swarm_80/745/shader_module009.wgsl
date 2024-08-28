struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> bool {
    return true;
}

fn func_1() -> bool {
    let var_0 = Struct_1(!any(vec4<bool>(true, true, true, true)) && all(vec2<bool>(true, true)), ~(~u_input.b), max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 3126i), vec2<i32>(2147483647i, 14191i)), ~1i, ~0i, u_input.a.x) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(34319u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 37707u)), ~vec4<u32>(u_input.b.x, u_input.b.x, 99602u, 0u)) % vec4<u32>(32u)), -select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 55069i, 1i, -2147483647i), vec4<i32>(2147483647i, u_input.a.x, 29942i, u_input.c.x)), ~vec4<i32>(-2147483647i, -1i, 0i, u_input.a.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false))), vec3<u32>(~4294967295u, ~37079u, countOneBits(0u)), !(1u <= u_input.b.x));
    let var_1 = var_0;
    var var_2 = vec3<i32>(var_0.c.x, (i32(-1i) * -(~(-29171i))) << (0u % 32u), firstTrailingBit(u_input.a.x));
    var_2 = -vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-8560i, var_1.c.x), 0i), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_2.x, 0i), var_2.x)) & -abs(-vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x));
    let var_3 = u_input.b.x;
    return all(select(!vec4<bool>(any(vec2<bool>(false, false)), var_1.a & true, var_1.a, true), vec4<bool>(func_2(375f, Struct_1(false, vec2<u32>(0u, var_0.d.x), vec4<i32>(-23648i, -11331i, var_0.c.x, 40012i), vec3<u32>(1u, 0u, 55301u), false), var_1.c.x, var_2.x) & all(vec4<bool>(var_0.a, true, var_0.a, false)), var_1.a, !var_0.a, func_2(_wgslsmith_f_op_f32(-1344f - 706f), var_1, _wgslsmith_mod_i32(var_1.c.x, -1i), -6688i)), vec4<bool>(true, false, true, -var_0.c.x < 61620i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(205f)), -1916f, _wgslsmith_f_op_f32(-1350f - 169f), -257f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(222f, 400f, 423f, 985f)))))));
    var var_1 = arg_1;
    var var_2 = 1042f;
    let var_3 = !var_1.a == select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_2.e, false, arg_2.e), vec4<bool>(false, false, true, var_1.a))), any(select(vec3<bool>(true, arg_1.a, true), vec3<bool>(true, true, true), true)), false | var_1.a);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-684f, var_0.x, 1000f, -966f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, -1000f, var_0.x, -468f) - vec4<f32>(var_0.x, var_0.x, -2128f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, 651f, 849f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1165f, 922f, 1172f) - vec4<f32>(2030f, -187f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1223f, -1422f, 1517f, 268f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1015f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, 706f, 342f, var_0.x)), vec4<f32>(309f, -741f, 816f, var_0.x)))))));
    return any(!select(!select(vec3<bool>(true, var_1.e, var_3), vec3<bool>(false, true, false), vec3<bool>(var_1.a, arg_1.e, var_1.a)), vec3<bool>(true, any(vec3<bool>(var_3, true, arg_2.e)), !arg_1.a), select(select(vec3<bool>(arg_1.a, arg_2.a, arg_1.a), vec3<bool>(var_3, false, arg_1.a), vec3<bool>(true, var_3, arg_2.e)), !vec3<bool>(arg_2.a, true, false), !arg_2.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, firstTrailingBit(arg_2.c.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(arg_2.c.x, arg_0.c.x, arg_0.c.x, arg_2.c.x)))), min(~vec3<i32>(arg_0.c.x, arg_1.x, -15979i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, -1i), vec3<i32>(arg_2.c.x, 5677i, 1i), u_input.a))), arg_1.x);
    var var_1 = Struct_1(arg_0.e, countOneBits(vec2<u32>(~60968u, ~(~arg_2.d.x))), arg_2.c, vec3<u32>(~(~32668u), _wgslsmith_mod_u32(arg_2.d.x ^ arg_0.d.x, 35678u << (firstLeadingBit(arg_0.d.x) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(7780u >> (1u % 32u), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(82246u, 69894u, arg_0.d.x, 0u), vec4<u32>(25221u, 1u, arg_0.b.x, 25707u)), u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, arg_2.b.x, arg_0.b.x, arg_2.d.x), firstLeadingBit(vec4<u32>(arg_0.b.x, 40259u, 164042u, u_input.b.x))))), func_1());
    var_1 = arg_0;
    var_0 = 2147483647i;
    let var_2 = vec4<bool>(!arg_2.a, arg_2.e, !var_1.a & !(~arg_0.b.x < ~arg_2.b.x), !(!any(select(vec2<bool>(false, arg_2.e), vec2<bool>(true, arg_2.a), vec2<bool>(var_1.a, false)))));
    return ~(arg_2.d.x >> ((u_input.b.x | ~arg_2.d.x) % 32u));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: u32) -> vec2<f32> {
    var var_0 = -vec3<i32>(2147483647i, -1i, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-8565i, u_input.c.x), ~66667i));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1025f, -419f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(258f, _wgslsmith_div_f32(-2694f, 1381f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(-981f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-841f, 422f)) + _wgslsmith_f_op_f32(f32(-1f) * -428f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1102f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(vec3<bool>(~u_input.b.x < u_input.b.x, u_input.b.x < 32962u, true), func_1(), 65417u, func_4(Struct_1(func_3(u_input.a >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), Struct_1(false, u_input.b, vec4<i32>(u_input.a.x, 2147483647i, 26274i, -2147483647i), vec3<u32>(11548u, 1u, 98737u), false), Struct_1(false, vec2<u32>(u_input.b.x, u_input.b.x), vec4<i32>(35240i, 15092i, -32926i, -2147483647i), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), false)), ~select(u_input.b, u_input.b, false), -(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(u_input.c.x, -2147483647i, 0i, 32620i)), ~(~vec3<u32>(39137u, u_input.b.x, u_input.b.x)), true), _wgslsmith_mod_vec2_i32(u_input.a.xy, u_input.c), Struct_1(true, min(u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 12245u), vec2<u32>(u_input.b.x, u_input.b.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x), vec4<i32>(2147483647i, u_input.c.x, u_input.a.x, 45767i)), vec3<u32>(1u, ~u_input.b.x, ~u_input.b.x), func_1()))));
    var var_2 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1778f), 1747f)))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -1086f, true)));
    var var_3 = ~vec2<u32>(0u, abs(4294967295u));
    var_0 = 0u;
    var var_4 = 1000f;
    var var_5 = countOneBits(min(-((i32(-1i) * -36272i) & u_input.a.x), ~u_input.a.x));
    let var_6 = Struct_1(all(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(false, false, false, true), -38125i < u_input.a.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), ~reverseBits(~u_input.b | _wgslsmith_sub_vec2_u32(u_input.b, u_input.b)), vec4<i32>(abs(98081i), -(~u_input.c.x), ~min(21902i & u_input.a.x, ~u_input.c.x), -u_input.c.x), ~(~vec3<u32>(26566u, 0u, var_3.x) & _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b.x, 40417u, 106102u)), ~vec3<u32>(4294967295u, u_input.b.x, 16253u))), !func_3(vec3<i32>(u_input.c.x, ~2147483647i, -22336i), Struct_1(all(vec2<bool>(true, true)), firstTrailingBit(u_input.b), ~vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x), abs(vec3<u32>(7875u, u_input.b.x, var_3.x)), all(vec4<bool>(true, false, true, false))), Struct_1(false, vec2<u32>(1u, 1u) | vec2<u32>(1u, u_input.b.x), vec4<i32>(u_input.a.x, u_input.c.x, 16593i, -2147483647i) ^ vec4<i32>(-51542i, u_input.a.x, 19686i, 1i), countOneBits(vec3<u32>(4294967295u, 26144u, u_input.b.x)), true)));
    var var_7 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, var_1.x, var_1.x, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -777f, var_1.x, -886f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)))), 313f, _wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_div_f32(var_7.x, _wgslsmith_f_op_f32(-1f))));
}

