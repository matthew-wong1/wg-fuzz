struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = ~abs(vec2<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.d.x, 22885u, arg_2.a)), 68016u));
    var var_1 = _wgslsmith_f_op_f32(trunc(-807f));
    var_0 = u_input.d.wz;
    let var_2 = Struct_3(~arg_1.b.d);
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b.c.x), _wgslsmith_f_op_f32(619f * _wgslsmith_f_op_f32(149f - arg_0))));
    return select(vec4<bool>(-(~u_input.b) == min(~arg_1.c.b, firstLeadingBit(-11767i)), false && (~arg_1.c.d <= 1u), false, arg_1.c.b != u_input.b), select(select(select(!vec4<bool>(arg_1.a, arg_1.a, true, true), select(vec4<bool>(false, arg_1.a, false, false), vec4<bool>(false, true, false, arg_1.a), arg_1.a), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, arg_1.a, arg_1.a, false), arg_1.a), true), false), vec4<bool>(true, all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), arg_1.a, !arg_1.a && arg_1.a), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, arg_1.a, true), !select(vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(true, arg_1.a, arg_1.a, true), vec4<bool>(false, arg_1.a, arg_1.a, false)))), all(select(select(!vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, arg_1.a), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), all(vec3<bool>(arg_1.a, false, false)))));
}

fn func_2() -> f32 {
    let var_0 = true;
    let var_1 = select(!(!vec4<bool>(true & var_0, true, true, all(vec4<bool>(var_0, var_0, var_0, var_0)))), !select(!select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, true, var_0, false), true), vec4<bool>(var_0 & false, var_0, all(vec3<bool>(var_0, true, var_0)), true), select(vec4<bool>(false, false, true, var_0), func_3(1209f, Struct_2(var_0, Struct_1(vec4<f32>(236f, -264f, 342f, 1017f), -44362i, vec3<f32>(1168f, -1011f, -1350f), u_input.c), Struct_1(vec4<f32>(1295f, -169f, -1000f, -657f), -10069i, vec3<f32>(-140f, 1958f, 1290f), 30948u)), Struct_3(u_input.d.x)), vec4<bool>(true, true, var_0, var_0))), var_0);
    let var_2 = ~(~u_input.a >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 46056u), vec2<u32>(u_input.d.x, u_input.d.x)) & vec2<u32>(u_input.d.x, ~u_input.d.x)) % vec2<u32>(32u)));
    var var_3 = vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(5422u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, var_2.x, var_2.x), vec4<u32>(u_input.c, var_2.x, var_2.x, var_2.x))), ~84247u), 25961u));
    let var_4 = ~abs(min(abs(u_input.d.zxx), _wgslsmith_add_vec3_u32(u_input.d.ywx, u_input.d.yxy))) | ~reverseBits(u_input.d.ywx);
    return -433f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(-(~vec2<i32>(u_input.b, -26606i) & -abs(arg_1.wz)), vec2<i32>(min(arg_1.x >> (113369u % 32u), ~(-1i)) << (abs(4294967295u) % 32u), _wgslsmith_div_i32(arg_1.x, arg_2.b)));
    var var_1 = Struct_2(select(true, false, true && (_wgslsmith_f_op_f32(-arg_2.c.x) == _wgslsmith_f_op_f32(func_2()))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, arg_2.c.x, -1000f, arg_2.c.x)), func_3(1116f, Struct_2(false, Struct_1(vec4<f32>(154f, arg_2.a.x, 511f, 1061f), 0i, vec3<f32>(-836f, -578f, arg_2.c.x), arg_2.d), Struct_1(arg_2.a, arg_1.x, arg_2.c, 39296u)), Struct_3(u_input.c))))), u_input.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_2.c.x + -1000f), _wgslsmith_f_op_f32(arg_2.a.x - 879f), -857f), vec3<f32>(arg_2.a.x, _wgslsmith_div_f32(arg_2.a.x, -1377f), -240f))), _wgslsmith_div_u32(~arg_3.x ^ arg_0.x, 68378u)), arg_2);
    let var_2 = !(!select(!vec2<bool>(var_1.a, false), vec2<bool>(any(vec2<bool>(false, true)), var_1.a), var_1.a));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-423f, arg_2.c.x, var_1.b.a.x, arg_2.c.x), arg_2.a)))))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0, var_0 << (vec2<u32>(arg_2.d, arg_2.d) % vec2<u32>(32u))), vec2<i32>(-(~arg_1.x), 1i)), arg_2.c, _wgslsmith_mult_u32(arg_3.x, ~(~1u)));
    var var_4 = vec2<u32>(var_3.d, _wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(var_3.d, 31259u), 21746u), max(_wgslsmith_clamp_u32(arg_2.d, var_3.d, arg_3.x) ^ var_1.c.d, ~(~4294967295u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(448f)), -432f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d.zwz, vec4<i32>(u_input.b, -40421i, u_input.b, u_input.b), Struct_1(vec4<f32>(-1049f, -1516f, 928f, -420f), u_input.b, vec3<f32>(-1780f, -1972f, -788f), u_input.c), u_input.d)))), _wgslsmith_div_f32(951f, -233f), _wgslsmith_f_op_f32(max(-1302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-754f, 567f)))))));
    let var_1 = 1f;
    let var_2 = Struct_2(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_0.x, -355f)), u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(sign(-335f)), _wgslsmith_f_op_f32(min(-1334f, -1131f)))), reverseBits(28990u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-1285f + 1393f), var_0.x, var_0.x)), -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 1424f, -1456f), u_input.d.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_2.c.c.x * -167f), true)), _wgslsmith_f_op_f32(-var_2.b.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_2.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c.x) + 826f), !(var_0.x > var_1))))), vec3<u32>(8311u & var_2.c.d, var_2.b.d, min(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d | vec4<u32>(u_input.c, 1u, 5786u, var_2.b.d)), ~34883u)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-53345i, 2147483647i, -2147483647i), 1i, -40814i ^ var_2.c.b, var_2.b.b), vec4<i32>(var_2.b.b, -3128i, abs(-17823i), ~(-1i))), abs(vec4<i32>(_wgslsmith_add_i32(var_2.b.b, -34382i), 21243i ^ u_input.b, abs(var_2.c.b), var_2.b.b))), 42798u);
}

