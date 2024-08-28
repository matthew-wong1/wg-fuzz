struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    return -1632f;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_4(Struct_1(-22734i, select(1i, -2147483647i, !arg_1.c), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))), u_input.b.x), Struct_2(!vec3<bool>(all(vec2<bool>(false, arg_1.c)), false != arg_1.c, !arg_1.c)), min(arg_1.b, 0i), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(38925i, 2147483647i, all(vec3<bool>(arg_1.c, arg_1.c, true)), _wgslsmith_div_f32(1000f, -694f), u_input.a), vec2<i32>(-2147483647i, -1i))), arg_1.d, _wgslsmith_f_op_f32(arg_0.x - arg_1.d), -474f));
    let var_1 = arg_1.d;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(850f, _wgslsmith_f_op_f32(-258f * _wgslsmith_f_op_f32(-var_1)), -645f) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1056f, var_0.a.d))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, arg_1.d, var_1)))))), Struct_1(abs(-37148i), _wgslsmith_add_i32(~arg_1.b ^ -10001i, -arg_1.a), var_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1337f), ~35664u), -19766i, Struct_2(select(var_0.b.a, select(vec3<bool>(arg_1.c, true, true), var_0.b.a, var_0.b.a), all(!vec4<bool>(true, true, arg_1.c, true)))), var_0.a);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_div_f32(arg_0.x, -167f)))))));
    var var_4 = var_0;
    return !(!vec4<bool>(var_2.b.c, var_0.b.a.x, var_0.a.c, false));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    let var_0 = 50211u;
    var var_1 = Struct_2(select(select(vec3<bool>(arg_2.x && arg_2.x, arg_2.x, arg_2.x), select(arg_2.zwz, !vec3<bool>(true, arg_2.x, arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, true)), !select(arg_2.zyw, arg_2.wzy, vec3<bool>(false, arg_2.x, true))), !(!(!arg_2.wxz)), !vec3<bool>(arg_2.x & true, false, arg_2.x | true)));
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(55278u, ~u_input.b.x, (1u | var_0) << (_wgslsmith_add_u32(u_input.b.x, var_0) % 32u), min(_wgslsmith_mult_u32(1u, var_0), u_input.a)), ~vec4<u32>(var_0, 15301u, var_0, var_0) | _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(30386u, var_0, u_input.a, var_0)), select(vec4<u32>(var_0, 0u, 860u, 1u), vec4<u32>(var_0, u_input.b.x, u_input.a, u_input.a), vec4<bool>(false, var_1.a.x, arg_2.x, false)))), vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.b.x), ~vec4<u32>(reverseBits(select(u_input.b.x, 1u, arg_2.x)), select(40774u, abs(u_input.b.x), var_1.a.x), 1u, 4294967295u));
    let var_3 = 5497i;
    var_1 = Struct_2(select(select(arg_2.zyx, vec3<bool>(true, true, true), arg_0 > _wgslsmith_f_op_f32(sign(202f))), select(!vec3<bool>(arg_2.x, false, true), vec3<bool>(any(arg_2), true, true), true & all(vec4<bool>(var_1.a.x, var_1.a.x, arg_2.x, false))), arg_2.xxw));
    return _wgslsmith_f_op_f32(min(arg_0, 474f));
}

fn func_5(arg_0: f32) -> Struct_4 {
    var var_0 = !select(!select(func_3(vec2<f32>(arg_0, 271f), Struct_1(42113i, 2147483647i, false, arg_0, u_input.a)), vec4<bool>(true, false, false, true), all(vec4<bool>(false, false, false, false))), vec4<bool>(true, u_input.b.x >= _wgslsmith_mod_u32(19359u, u_input.a), !all(vec3<bool>(false, true, false)), false), func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-166f, 1573f))), Struct_1(47013i, 1i, false, 1990f, 68102u)).x || true);
    let var_1 = vec3<f32>(1448f, _wgslsmith_f_op_f32(arg_0 * arg_0), -178f);
    var var_2 = select(max(firstTrailingBit(~vec3<u32>(u_input.b.x, 1394u, u_input.a)), ~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 6923u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 21488u, u_input.b.x), vec3<u32>(u_input.a, 1u, 62899u)))), vec3<u32>(u_input.b.x, ~u_input.a, ~min(u_input.a, 4294967295u)) & _wgslsmith_mod_vec3_u32(select(vec3<u32>(9452u, 48348u, u_input.a), vec3<u32>(u_input.b.x, 13535u, u_input.a) | vec3<u32>(0u, u_input.b.x, 0u), var_0.wyz), vec3<u32>(1u, 1u, 1u)), var_0.x);
    var_0 = func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_1.xx, var_1.yx), _wgslsmith_f_op_vec2_f32(-var_1.yz))))), Struct_1(33535i, ~(~(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 262f)) >= _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(max(var_1.x, 606f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2328f, _wgslsmith_f_op_f32(var_1.x * var_1.x)))), 4294967295u));
    let var_3 = vec2<i32>(1i << (u_input.a % 32u), 64718i);
    return Struct_4(Struct_1((~(-10980i) & _wgslsmith_clamp_i32(var_3.x, var_3.x, 1i)) & 1i, max(22507i, 13661i), any(!vec4<bool>(true, var_0.x, false, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1260f)), _wgslsmith_dot_vec2_u32(var_2.yy & vec2<u32>(4294967295u, 0u), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 4294967295u))) & u_input.a), Struct_2(!(!var_0.zxx)), var_3.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + arg_0))) - 803f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)))), -785f, arg_0));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: bool) -> Struct_4 {
    return func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(arg_1.c, arg_1.c, arg_3, arg_1.a.x, u_input.b.x), vec2<i32>(-2147483647i, -1i)))) * arg_1.e.d), arg_1.c, !(!func_3(arg_0.yy, arg_1.e)))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<u32>) -> f32 {
    let var_0 = !arg_2.b.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.d, vec4<f32>(-614f, arg_2.a.d, 2329f, arg_2.d.x)) - vec4<f32>(1000f, -684f, arg_1.a.d, arg_1.a.d)))));
    let var_2 = func_5(_wgslsmith_f_op_f32(-702f * 1076f));
    var var_3 = var_2.b.a.x;
    var_3 = any(!vec2<bool>(func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -666f, -1000f), vec3<f32>(620f, -777f, var_2.a.d))), Struct_3(vec3<f32>(var_1.x, -377f, arg_2.d.x), Struct_1(23531i, var_2.a.a, true, var_2.d.x, 1u), -75633i, Struct_2(vec3<bool>(var_2.a.c, false, arg_0.x)), arg_2.a), _wgslsmith_f_op_vec4_f32(arg_2.d * vec4<f32>(235f, -402f, var_1.x, var_2.a.d)), true).a.c, func_3(vec2<f32>(arg_2.a.d, arg_1.a.d), arg_1.a).x));
    return 1044f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(-27252i, -(~0i), -28463i) & 0i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1763f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1778f, 268f, 280f)), Struct_3(vec3<f32>(-1224f, 264f, -348f), Struct_1(var_0, var_0, true, 2073f, u_input.a), var_0, Struct_2(vec3<bool>(false, false, false)), Struct_1(var_0, var_0, true, -1721f, 15931u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1269f, -1803f, -1536f, -2078f)), all(vec3<bool>(true, false, true))), func_5(_wgslsmith_div_f32(1750f, -1196f)), reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.b.x)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, 4294967295u, 0u, 0u))))), _wgslsmith_f_op_f32(-1965f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_div_f32(-420f, 332f)))));
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, -(~1i)), vec2<i32>(var_0, -_wgslsmith_add_i32(var_0, -12153i))), _wgslsmith_div_vec2_i32(~(~select(vec2<i32>(0i, var_0), vec2<i32>(-68391i, var_0), false)), select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -2147483647i, var_0), vec3<i32>(var_0, var_0, var_0)), select(0i, -16600i, false)), reverseBits(~vec2<i32>(1i, var_0)), func_1(vec3<f32>(-1812f, var_1.x, 162f), Struct_3(vec3<f32>(-2183f, var_1.x, var_1.x), Struct_1(var_0, var_0, false, var_1.x, u_input.b.x), 27984i, Struct_2(vec3<bool>(true, true, false)), Struct_1(var_0, 0i, false, var_1.x, 4294967295u)), vec4<f32>(var_1.x, -402f, var_1.x, var_1.x), false).a.a >= min(var_0, -7233i))));
    let var_3 = Struct_4(Struct_1(~(~abs(-7318i)), ~firstLeadingBit(-6520i), false, var_1.x, u_input.a), func_1(_wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, -1359f))), Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_1, vec3<f32>(var_1.x, 459f, var_1.x), vec3<bool>(true, true, true))))), Struct_1(var_0 & -120i, ~27750i, var_2.x >= -14562i, _wgslsmith_f_op_f32(-var_1.x), ~u_input.a), 0i, func_5(_wgslsmith_f_op_f32(717f * -270f)).b, func_5(611f).a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1103f, -800f, var_1.x, _wgslsmith_f_op_f32(331f + -216f)))), true).b, _wgslsmith_div_i32(countOneBits(-1i), _wgslsmith_mod_i32(-1i, -16293i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(452f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-641f)), -537f)), 566f, _wgslsmith_f_op_f32(func_2(func_1(var_1, Struct_3(vec3<f32>(var_1.x, var_1.x, -1000f), Struct_1(var_2.x, -23797i, false, 849f, u_input.a), var_0, Struct_2(vec3<bool>(true, true, false)), Struct_1(var_0, var_2.x, true, var_1.x, 1u)), vec4<f32>(var_1.x, -743f, var_1.x, var_1.x), false).a, -vec2<i32>(21807i, var_2.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1798f, 1678f, var_1.x, -1000f), vec4<f32>(702f, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_1.x, 254f, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 331f), _wgslsmith_div_f32(var_1.x, var_1.x), -538f, 187f)))));
    let var_4 = select(-vec3<i32>(2696i, ~var_0 >> (1u % 32u), 1i), vec3<i32>(_wgslsmith_clamp_i32(1i, ~var_3.c, -2147483647i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-74351i, var_3.a.b), func_5(_wgslsmith_div_f32(var_3.d.x, var_1.x)).c), select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.c, var_0, var_0), vec3<i32>(2147483647i, var_0, var_0)), firstTrailingBit(vec3<i32>(var_2.x, var_2.x, -1i))), var_3.c ^ min(18459i, 58945i), any(func_1(var_3.d.xzz, Struct_3(var_1, Struct_1(1612i, var_0, var_3.b.a.x, -783f, u_input.b.x), 2147483647i, var_3.b, var_3.a), vec4<f32>(-1542f, 113f, var_1.x, -1498f), false).b.a.yy))), true);
    let var_5 = func_5(-870f).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_3.d), _wgslsmith_f_op_vec4_f32(-var_3.d)))))));
}

