struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = countOneBits(~(~countOneBits(vec3<u32>(1u, u_input.a, u_input.a))));
    var var_1 = Struct_3(-107f);
    let var_2 = Struct_3(-1500f);
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(-_wgslsmith_add_i32(~(-1i), ~(-1i)), select(~firstLeadingBit(-6652i), 1i, true)), ((firstTrailingBit(-2147483647i) & ~1i) >> (var_0.x % 32u)) & _wgslsmith_mod_i32(_wgslsmith_mult_i32(24246i, select(-6612i, 1i, false)), 1i));
    let var_4 = -vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-13558i, var_3.x, -37102i), vec3<i32>(-3365i, 0i, var_3.x))), ~var_3.x), var_3.x);
    return -_wgslsmith_mod_i32(var_4.x, 43051i);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> vec3<f32> {
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))))) <= -1019f;
    let var_2 = vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(40082i, -20418i, 4545i, 44362i), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(28476i, -4961i, 1i, -2147483647i), vec4<i32>(-12319i, 34555i, 2147483647i, -1i)))), func_3()) & (~_wgslsmith_mod_vec3_i32(vec3<i32>(-63454i, -1i, -86573i), vec3<i32>(1i, 1i, 1i)) >> (vec3<u32>(firstTrailingBit(~u_input.a), ~abs(5437u), ~u_input.a) % vec3<u32>(32u)));
    let var_3 = reverseBits(vec2<i32>(max(_wgslsmith_mod_i32(-var_2.x, select(var_2.x, 1i, false)), reverseBits(~2147483647i)), _wgslsmith_dot_vec3_i32(var_2 & var_2, var_2) << (u_input.a % 32u)));
    var var_4 = 436f;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(312f, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x + -908f)))), -1323f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(ceil(-511f)))), arg_0.ywz, true));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2147f))) + -784f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1155f, 822f, -1858f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(1000f, -309f, -411f, -311f), 1663f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1054f, 361f, -164f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2653f, -170f, 1741f) * vec3<f32>(-103f, -759f, 389f)), vec3<f32>(713f, 1000f, -1110f)))));
    let var_1 = var_0;
    var var_2 = select(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, var_0.a < 264f, true), false), select(!vec4<bool>(all(vec4<bool>(true, false, true, true)), 0u <= u_input.a, 4294967295u != arg_0.x, select(true, false, false)), vec4<bool>(all(vec2<bool>(false, false)), select(all(vec3<bool>(false, true, false)), true, true), false, true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, arg_0.x == 4294967295u))), vec4<bool>(any(vec3<bool>(arg_0.x != 35579u, true, true)), (_wgslsmith_sub_u32(0u, u_input.a) & ~45573u) <= select(abs(1u), arg_0.x << (57095u % 32u), false), false, true));
    var var_3 = var_2.xwy;
    let var_4 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))), var_1.b.x, u_input.a, var_2.x, var_0);
    return _wgslsmith_f_op_f32(var_4.b * _wgslsmith_f_op_f32(sign(-2364f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, -1391f), _wgslsmith_f_op_f32(sign(arg_2.a)))) + -1863f) - arg_2.b.x));
    let var_1 = _wgslsmith_clamp_u32(abs(~firstTrailingBit(1u << (u_input.a % 32u))), countOneBits(~(max(78705u, u_input.a) >> (u_input.a % 32u))), u_input.a);
    var var_2 = Struct_2(arg_1, arg_0, _wgslsmith_add_u32(~firstTrailingBit(_wgslsmith_mod_u32(u_input.a, u_input.a)), reverseBits(0u)), false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1230f)), _wgslsmith_f_op_f32(-arg_2.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1058f)) * 424f)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * arg_1.a), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1573f, 1000f)) - arg_2.a))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0, -1314f)), -1670f)))));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2129f), _wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, 77592u))), _wgslsmith_f_op_f32(sign(var_2.e.b.x))))), var_3.a, var_2.c ^ reverseBits(70080u), any(!(!(!vec3<bool>(var_2.d, var_2.d, var_2.d)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec2<u32>(1u, u_input.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.e.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 176f, arg_1.b.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.e.b, vec3<f32>(arg_0, -478f, var_0), vec3<bool>(var_2.d, var_2.d, var_2.d)))))));
    return Struct_3(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1705f, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(1u, 0u))), -303f), true)) + _wgslsmith_f_op_f32(f32(-1f) * -1198f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(633f, -1000f) + -1041f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-976f, -266f, -1257f), vec3<f32>(701f, -911f, -300f), vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1783f, -141f, 125f) + vec3<f32>(-436f, -241f, -1088f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f + -663f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(203f)), _wgslsmith_f_op_f32(f32(-1f) * -511f), -635f)))));
    var_0 = Struct_3(961f);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let var_1 = 24858i;
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-var_0.a), true)) + _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) - var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(-(~vec4<i32>(6342i, -38339i, -51270i, var_1)), vec4<i32>(var_1 | 2147483647i, -2147483647i, _wgslsmith_clamp_i32(-40017i, var_1, -1i), i32(-1i) * -11302i)), vec2<i32>(~var_1, _wgslsmith_sub_i32(-52454i, ~var_1) ^ _wgslsmith_div_i32(0i, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, -226f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1923f, -1286f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, 720f), vec2<bool>(false, false)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1761f, var_0.a, 1305f, -510f) - vec4<f32>(-2763f, 204f, -576f, -724f)), _wgslsmith_f_op_f32(max(1000f, var_0.a)))).yz)), abs(var_1));
}

