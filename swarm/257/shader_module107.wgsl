struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = -1i;
    let var_1 = Struct_4(_wgslsmith_mod_u32(1u, abs(u_input.b)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1926f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1502f)), 811f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-520f * 2801f), -308f, _wgslsmith_f_op_f32(f32(-1f) * -416f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-190f))))));
    var var_2 = ~_wgslsmith_sub_vec3_u32(u_input.a, select(_wgslsmith_add_vec3_u32(min(u_input.a, vec3<u32>(3740u, 14001u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_1.a, 4294967295u), vec3<u32>(var_1.a, 1u, u_input.a.x))), ~u_input.a ^ _wgslsmith_mod_vec3_u32(u_input.a, u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))));
    var_2 = ~vec3<u32>(746u, ~(~(~u_input.a.x)), 86845u & var_1.a);
    var_2 = ~abs(~(~reverseBits(u_input.a)));
    return max(var_0, countOneBits(select(u_input.c.x, 2147483647i, u_input.a.x == u_input.a.x))) ^ 18369i;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_1(u_input.c, !select(vec3<bool>(true, all(vec3<bool>(false, true, true)), false), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -176f, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1682f)), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(449f, arg_1.x, 270f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(arg_1)))))));
    return arg_1.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = vec4<u32>(firstTrailingBit(u_input.b), reverseBits(arg_2.x) << (countOneBits(1u) % 32u), min(3024u, arg_0), arg_2.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1 + -196f), 1591f);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(292f, var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1286f, -1000f)))));
    let var_2 = Struct_4(0u, vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f * -712f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1712f - var_1.x) - arg_1)), var_1.x), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + arg_1) - _wgslsmith_f_op_f32(f32(-1f) * -1700f)) * _wgslsmith_f_op_f32(func_4(func_3(), vec3<f32>(var_1.x, 1033f, var_1.x), ~arg_2)))));
    let var_3 = u_input.c;
    return vec2<bool>(true, !(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(95681u, arg_2.x, 11028u)), ~u_input.a) == 44816u));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: vec3<i32>) -> bool {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_2.d, -1i) ^ 1i, u_input.c.x), var_0.x, var_0.x, var_0.x), reverseBits(-(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 1i, var_0.x, var_0.x), vec4<i32>(-15279i, u_input.c.x, var_0.x, -2147483647i)))));
    var var_2 = select(select(vec2<bool>(all(vec3<bool>(true, true, true)), select(true, any(vec2<bool>(false, true)), true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), (arg_3.x << (4294967295u % 32u)) <= firstLeadingBit(34697i)), select(vec2<bool>(false, false), vec2<bool>(true, 104702u < u_input.b), select(func_2(u_input.b, -799f, vec3<u32>(4294967295u, arg_0, arg_0)), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(9967u, -1000f, vec3<u32>(4671u, u_input.a.x, arg_0)))));
    var var_3 = -arg_3;
    var var_4 = all(select(vec2<bool>(var_2.x, !var_2.x), !(!(!vec2<bool>(var_2.x, var_2.x))), vec2<bool>(all(func_2(arg_0, 429f, u_input.a)), var_3.x != -2147483647i)));
    return !var_2.x || (countOneBits(u_input.c.x) < arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = vec3<u32>(select(u_input.b, 18664u, !func_1(u_input.b, u_input.c, Struct_5(34466i, u_input.c.x, -2147483647i, 1i), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x))), 4294967295u, countOneBits(~(~4294967295u))) & _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(0u | u_input.a.x), u_input.b, 1u), u_input.a);
    let var_2 = Struct_1(vec2<i32>(i32(-1i) * -1i, 41846i), vec3<bool>(false, false, !select(true, all(vec3<bool>(false, true, false)), true)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1185f, 885f, -1900f, -1038f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1598f, -2287f, 2670f, -239f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(891f, -1036f, 1787f, 790f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1169f, 2283f, -369f, 100f), vec4<f32>(-446f, -1728f, -876f, 1497f)))))), vec3<f32>(_wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1330f - 1075f))), _wgslsmith_f_op_f32(1353f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f + -1000f) * _wgslsmith_f_op_f32(abs(647f)))), _wgslsmith_f_op_f32(f32(-1f) * -413f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2697f, var_2.c.x, _wgslsmith_div_f32(var_2.c.x, var_2.c.x), _wgslsmith_f_op_f32(1748f + var_2.c.x)), var_2.c) * _wgslsmith_f_op_vec4_f32(floor(var_2.c))));
    var var_4 = Struct_2(38736i, _wgslsmith_div_u32(~abs(u_input.b), var_1.x));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(var_2.a.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, -1049f, var_3.x))), ~vec3<u32>(0u, 1u, 4294967295u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d.x), var_2.c.x, all(vec3<bool>(var_2.b.x, true, var_2.b.x))))))) - 1335f);
    var_4 = Struct_2(15835i, firstTrailingBit(24208u));
    var_5 = _wgslsmith_f_op_f32(max(801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f - 815f))) + -711f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -283f, true)))), 645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + 668f)) * _wgslsmith_f_op_f32(f32(-1f) * -276f))), reverseBits(~(~(~vec4<u32>(4294967295u, var_4.b, 70856u, u_input.a.x)))), _wgslsmith_add_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 15260u, var_4.b), vec4<u32>(4294967295u, var_4.b, 1u, 61539u))), ~(vec4<u32>(var_1.x, u_input.a.x, var_4.b, 28510u) << (vec4<u32>(4294967295u, var_1.x, 80140u, var_1.x) % vec4<u32>(32u)))), vec2<u32>(_wgslsmith_add_u32(1u, var_1.x) | ~var_4.b, _wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(abs(var_1.x), 1u))));
}

