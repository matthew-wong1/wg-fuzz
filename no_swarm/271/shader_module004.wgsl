struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> bool {
    var var_0 = select(!vec2<bool>(!(!arg_1.a.b), arg_1.a.b), vec2<bool>(arg_1.a.b, all(vec2<bool>(arg_1.a.b, !arg_1.a.b))), true);
    var_0 = select(vec2<bool>(!(!(!arg_1.a.b)), all(select(select(vec4<bool>(var_0.x, true, arg_1.a.b, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(arg_1.a.b, true, var_0.x, arg_1.a.b), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, arg_1.a.b, true, true)), true))), select(select(vec2<bool>(true, !arg_1.a.b), vec2<bool>(var_0.x, false), all(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, arg_1.a.b, var_0.x, arg_1.a.b), vec4<bool>(false, var_0.x, false, arg_1.a.b)))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !(!vec2<bool>(arg_1.a.b, var_0.x)), true), arg_1.a.b), !vec2<bool>(var_0.x, true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -294f, -127f, 1339f) * _wgslsmith_div_vec4_f32(vec4<f32>(1453f, -1000f, -826f, -736f), vec4<f32>(-165f, 690f, -619f, -3343f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 946f, -369f, -191f))))));
    var_0 = !(!select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), select(vec2<bool>(arg_1.a.b, var_0.x), vec2<bool>(var_0.x, arg_1.a.b), vec2<bool>(true, true))), select(select(vec2<bool>(var_0.x, arg_1.a.b), vec2<bool>(arg_1.a.b, false), vec2<bool>(true, var_0.x)), vec2<bool>(false, arg_1.a.b), true), arg_1.a.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.a.ww)));
    return arg_1.a.b;
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = reverseBits(_wgslsmith_clamp_u32(~1u, max(~55089u, 0u), ~1u));
    let var_1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, func_3(vec4<i32>(1i, u_input.a, u_input.b.x, 1i), Struct_4(Struct_3(1u, true, Struct_2(vec2<i32>(u_input.b.x, u_input.a)), Struct_2(vec2<i32>(u_input.b.x, u_input.a))), u_input.b.x), vec4<u32>(36175u, 10114u, 2667u, 973u), 2147483647i))), vec2<bool>(func_3(abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, 30706i)), Struct_4(Struct_3(15234u, false, Struct_2(u_input.b), Struct_2(vec2<i32>(u_input.b.x, -8737i))), -20831i), ~vec4<u32>(40334u, 4294967295u, 24486u, 6174u), -26398i), true), false));
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(41876u, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(4294967295u, 0u), 1u)), 1u, 1u, max(_wgslsmith_dot_vec2_u32(~vec2<u32>(69443u, 5356u), vec2<u32>(1u, 1u)), ~(~10249u)));
    let var_3 = Struct_5(vec2<u32>(_wgslsmith_mod_u32(~1u, ~min(var_2.x, var_2.x)), 8545u), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a & u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.b.x, u_input.a, -2147483647i)), _wgslsmith_mult_i32(u_input.a, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(0i, u_input.a, -33903i, 15929i)))), ~select(~vec4<i32>(u_input.b.x, 0i, 1i, -23365i), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -2910i), false)), _wgslsmith_clamp_u32(94407u, ~(~37838u), 48551u), Struct_4(Struct_3(1u, all(vec2<bool>(var_1.x, var_1.x)), Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(-17465i, u_input.a))), Struct_2(max(vec2<i32>(1i, -24513i), vec2<i32>(u_input.a, u_input.a)))), 2147483647i), Struct_4(Struct_3(~(~4294967295u), var_1.x, Struct_2(abs(vec2<i32>(-2147483647i, u_input.a))), Struct_2(select(vec2<i32>(u_input.b.x, 1i), vec2<i32>(18143i, -1i), vec2<bool>(var_1.x, var_1.x)))), reverseBits(-1i)));
    var var_4 = !select(vec4<bool>(true, false, true, all(!vec4<bool>(false, var_3.d.a.b, true, var_3.e.a.b))), select(select(!vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_3.d.a.b, false, var_1.x, true), !vec4<bool>(false, false, var_1.x, var_3.e.a.b)), !vec4<bool>(var_3.e.a.b, var_3.d.a.b, false, var_1.x), !var_1.x), func_3(-vec4<i32>(1i, var_3.d.b, -1i, 1i), Struct_4(var_3.d.a, ~40384i), ~(~var_2), 52549i));
    return select(vec2<bool>(var_3.d.a.b, false), !select(vec2<bool>(var_4.x, true), !(!vec2<bool>(true, var_4.x)), !var_4.x & (var_4.x | var_1.x)), var_1);
}

fn func_1() -> vec4<f32> {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-496f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1732f, 613f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1753f + -206f) - -1969f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(floor(462f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(646f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-220f, -223f))))), _wgslsmith_f_op_f32(-1253f - _wgslsmith_f_op_f32(ceil(-847f))));
    let var_1 = !all(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(710f, var_0.x, var_0.x, 1000f) * vec4<f32>(-1000f, -1715f, var_0.x, var_0.x)) * vec4<f32>(var_0.x, var_0.x, 1242f, var_0.x))));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1513f, -175f, var_0.x, -158f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -474f, 746f, var_0.x)))))).x;
    var var_3 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(26290u, 1u, _wgslsmith_sub_u32(~56242u, 45047u), ~62973u), reverseBits(~vec4<u32>(1u, 1u, 1u, 1u))));
    let var_4 = _wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(~var_3.x, var_3.x)), 0u >> (~4294967295u % 32u));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1673f, var_0.x) - vec4<f32>(var_0.x, -1000f, var_0.x, var_0.x)) * vec4<f32>(-295f, var_0.x, var_0.x, 883f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -681f, -121f, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, -664f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.x, -854f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f + -1058f)), var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = -select(_wgslsmith_add_vec2_i32(-vec2<i32>(arg_1.c.a.x, -46560i), vec2<i32>(arg_3.x, arg_1.c.a.x)), arg_1.c.a, arg_1.b) & ~vec2<i32>(arg_3.x, _wgslsmith_sub_i32(~(-2147483647i), i32(-1i) * -1i));
    var_0 = -vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.c.a.x, -10017i), -(vec2<i32>(-2147483647i, 915i) << (vec2<u32>(arg_1.a, arg_1.a) % vec2<u32>(32u)))), countOneBits(36771i));
    var_0 = reverseBits(u_input.b);
    var_0 = vec2<i32>(_wgslsmith_add_i32(arg_1.c.a.x << (firstLeadingBit(min(68229u, 2396u)) % 32u), arg_1.c.a.x), _wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(2147483647i, 29799i, arg_3.x, arg_3.x) >> (vec4<u32>(24359u, arg_1.a, arg_1.a, 4294967295u) % vec4<u32>(32u)))), abs(abs(firstTrailingBit(vec4<i32>(u_input.a, var_0.x, arg_1.c.a.x, var_0.x))))));
    var_0 = ~vec2<i32>(max(i32(-1i) * -103319i, _wgslsmith_mult_i32(-u_input.b.x, -arg_3.x)), -1i);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(-542f + 590f), true)), arg_0.a.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), -1006f)), -977f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(arg_2.x, arg_0.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(137f + _wgslsmith_f_op_f32(ceil(476f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f)), !select(true, true, arg_1.b))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = u_input.b.x;
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 3729u, 26147u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 49289u, 5754u, 28223u), vec4<u32>(1u, 0u, 0u, 112211u), vec4<u32>(0u, 66060u, 4294967295u, 10749u))), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(52283u, 14598u), vec2<u32>(31601u, 1u)), 1u))), ~_wgslsmith_mod_u32(1u, ~(~39639u)), _wgslsmith_clamp_u32(57348u, _wgslsmith_add_u32(1u, ~select(4294967295u, 53214u, false)), 1u), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(45549u, 0u, 0u), 89083u) & abs(4294967295u));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec4<f32>(arg_3.x, 1908f, 145f, arg_3.x)), Struct_3(var_1.x, arg_0.x, Struct_2(vec2<i32>(17387i, u_input.a)), Struct_2(vec2<i32>(u_input.b.x, u_input.b.x))), vec4<f32>(arg_3.x, arg_3.x, -1011f, 866f), vec3<i32>(1i, -1i, u_input.a))).x))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1519f)), _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -317f), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1942f - 254f) * _wgslsmith_f_op_f32(abs(-994f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(1194f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(783f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1156f))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(true, true, select(false, false, false)), true, true, _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec4<f32>(var_0, 106f, var_0, var_0)), Struct_3(4294967295u, false, Struct_2(u_input.b), Struct_2(vec2<i32>(-7804i, u_input.a))), _wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_clamp_vec3_i32(vec3<i32>(-50472i, u_input.a, u_input.a), vec3<i32>(u_input.a, 22835i, 2147483647i), vec3<i32>(1i, u_input.b.x, u_input.a)))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, _wgslsmith_div_f32(-381f, 1863f), var_0, -380f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 296f, 442f, var_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 192f, -164f, -1377f) + vec4<f32>(var_0, var_0, -1000f, var_0)))))));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(12868u, ~0u)), firstTrailingBit(~(~max(vec2<u32>(39987u, 75542u), vec2<u32>(1u, 2308u)))));
    let var_4 = var_1;
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(any(vec3<bool>(true, false, false)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), any(vec2<bool>(false, true))), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, true), true)), true, _wgslsmith_f_op_vec3_f32(round(var_4.a.wzy)))));
    let var_6 = ~(_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(u_input.a), u_input.a, ~26703i), vec3<i32>(~33348i, var_2.x >> (18235u % 32u), var_2.x)) << (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    var_3 = 1u;
    var_3 = firstTrailingBit(15151u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~90625u, 1u, 1u), var_5.a.xz);
}

