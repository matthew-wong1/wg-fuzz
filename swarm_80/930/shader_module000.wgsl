struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(923f, -142f));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -377f, var_0, var_0) + vec4<f32>(var_0, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1636f, var_0, 347f, 891f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1087f, 973f, var_0))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -380f))), _wgslsmith_f_op_f32(650f + _wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0, 1524f))))))));
    let var_2 = Struct_1(!all(!select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(true, false, arg_0.a, false))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1899f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(285f, 871f)), 1f)));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-156f, var_1.x, -1493f, var_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1450f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-670f, 158f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1040f, -1000f, var_1.x, var_1.x), vec4<f32>(-2092f, -1815f, 1794f, var_0)))))), true));
    return _wgslsmith_sub_u32(u_input.b, u_input.b);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: bool) -> vec3<u32> {
    let var_0 = Struct_1(arg_3);
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-890f)) + _wgslsmith_f_op_f32(-235f + 1260f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1441f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 840f)))) * vec2<f32>(_wgslsmith_f_op_f32(-2193f - 1000f), 860f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1649f, -1491f) - vec2<f32>(1392f, -160f)) - vec2<f32>(1061f, 762f))))));
    var var_2 = Struct_2(Struct_1(true), firstTrailingBit(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, 15169u, 0u), min(vec3<u32>(arg_0, arg_0, arg_1), vec3<u32>(arg_0, 25198u, 5021u)), select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, arg_2, false))), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(arg_1, arg_1, u_input.a) | vec3<u32>(arg_0, 101509u, 4294967295u)))), var_0);
    var var_3 = var_1.x;
    let var_4 = Struct_1(var_0.a);
    return ~select(~_wgslsmith_add_vec3_u32(select(var_2.b, vec3<u32>(var_2.b.x, arg_1, var_2.b.x), arg_3), var_2.b), var_2.b, vec3<bool>(var_0.a, true, false));
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(false), ~func_4(~func_3(Struct_1(false), vec3<i32>(u_input.e, 1i, 59148i)), 4294967295u, false, false), Struct_1(true));
    var_0 = Struct_2(var_0.c, select(vec3<u32>(_wgslsmith_div_u32(23725u, 116292u), u_input.a, func_4(var_0.b.x, u_input.a, false, true).x), select(~vec3<u32>(0u, 4294967295u, 33060u), var_0.b, all(vec3<bool>(false, true, var_0.c.a))), true) << (~(countOneBits(var_0.b) | ~vec3<u32>(0u, 13410u, 0u)) % vec3<u32>(32u)), Struct_1(var_0.a.a));
    var var_1 = all(select(vec4<bool>(var_0.c.a, false & all(vec3<bool>(var_0.a.a, var_0.a.a, false)), !all(vec3<bool>(true, false, true)), select(var_0.c.a, !var_0.c.a, false)), vec4<bool>(any(!vec4<bool>(var_0.a.a, true, var_0.a.a, false)), !(!var_0.a.a), false, any(vec3<bool>(true, true, true))), !var_0.c.a));
    let var_2 = var_0.a.a;
    var var_3 = vec2<i32>(1i, -max(27622i, -9609i));
    return select(vec3<i32>(4255i, abs(_wgslsmith_mod_i32(var_3.x, var_3.x)), _wgslsmith_mod_i32(~42847i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -1i, u_input.c), vec3<i32>(var_3.x, var_3.x, -2147483647i))) << (abs(_wgslsmith_mult_u32(32635u, var_0.b.x)) % 32u)), _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 1i, 2147483647i), vec3<i32>(u_input.d, u_input.c, var_3.x)), vec3<i32>(-6554i, var_3.x, u_input.d)), vec3<i32>(~u_input.e, _wgslsmith_div_i32(max(var_3.x, u_input.d), _wgslsmith_add_i32(48383i, var_3.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(var_3.x, 1i), _wgslsmith_sub_i32(var_3.x, 0i)))), !(0i > -(var_3.x & var_3.x)));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = abs(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.e, u_input.c & u_input.e), min(vec3<i32>(0i, -2147483647i, -34622i), vec3<i32>(u_input.c, -19714i, -10752i)) ^ func_2(vec2<f32>(682f, 677f))));
    var var_1 = -(~_wgslsmith_mult_vec2_i32(var_0.yy, func_2(vec2<f32>(287f, -299f)).yz & ~vec2<i32>(u_input.e, var_0.x)));
    let var_2 = ~countOneBits(4294967295u);
    var_0 = abs(countOneBits(select(~(vec3<i32>(1i, var_0.x, 2147483647i) & vec3<i32>(-51303i, 0i, var_1.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, 1i), vec3<i32>(u_input.c, 1i, 24093i)), abs(vec3<i32>(var_0.x, u_input.d, u_input.c))), true | all(vec2<bool>(true, true)))));
    let var_3 = Struct_1(all(!vec4<bool>(true, any(vec4<bool>(true, false, true, true)), true, true)));
    return _wgslsmith_add_u32(~(~4294967295u), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(_wgslsmith_add_u32(u_input.a, func_1(vec2<u32>(u_input.b, u_input.b))), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, 0u), vec3<u32>(22748u, u_input.b, u_input.a)) & ~u_input.a) ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(48085u, u_input.a), 40775u >> (0u % 32u)), _wgslsmith_div_u32(~1u ^ ~u_input.b, ~u_input.b), _wgslsmith_mult_u32(u_input.a, 50052u));
    let var_1 = 1u;
    let var_2 = ~var_0;
    var var_3 = !any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(false, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -1622f), _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(select(-685f, -2611f, true))), vec2<f32>(-1062f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1494f * 956f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-3323f, 948f, -459f, 176f) + vec4<f32>(-1000f, -784f, 1297f, 1065f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-525f + -487f), _wgslsmith_div_f32(-200f, 1496f), _wgslsmith_f_op_f32(262f + 1797f), _wgslsmith_f_op_f32(floor(569f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 349f, -1268f, -802f))), vec4<bool>(true, true, true, true))), false)));
}

