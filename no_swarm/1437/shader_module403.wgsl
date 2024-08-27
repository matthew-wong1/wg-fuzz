struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_1 {
    var var_0 = 2147483647i;
    var_0 = abs(_wgslsmith_sub_i32(~22088i, _wgslsmith_clamp_i32(u_input.a, 1i, -1i)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1733f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-717f, -987f)))))), -649f));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(false, false, all(vec2<bool>(true, select(all(vec4<bool>(false, true, true, false)), select(true, false, false), true))), func_1(), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, _wgslsmith_div_f32(617f, -1000f), _wgslsmith_f_op_f32(1000f * -1391f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, -481f) + vec3<f32>(2059f, 961f, 392f)), vec3<f32>(-1040f, -1000f, 422f))), vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_1 = ~firstTrailingBit(32318u);
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(12333u, 1u, ~var_1, ~var_1), countOneBits(firstLeadingBit(vec4<u32>(0u, 21771u, 4294967295u, 4294967295u) << (vec4<u32>(4294967295u, 51175u, var_1, 4294967295u) % vec4<u32>(32u))))), ~countOneBits(abs(vec4<u32>(1u, 100209u, 4294967295u, 65170u))) >> (vec4<u32>(62672u, countOneBits(_wgslsmith_mult_u32(var_1, var_1)), 4294967295u, firstTrailingBit(~26518u)) % vec4<u32>(32u)));
    var_0 = Struct_3(var_0.e.c.x, true, any(!(!(!vec4<bool>(true, var_0.b, true, false)))), func_1(), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 1329f))), var_0.e.b, vec2<bool>(true, true), var_0.e.c));
    var_0 = Struct_3(!(var_0.b && var_0.b), !(var_0.b | var_0.e.d.x), -633f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1114f * 956f) * _wgslsmith_f_op_f32(step(var_0.d.a, -781f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1149f, 2103f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a))), var_0.e);
    return _wgslsmith_sub_i32(u_input.a, min(_wgslsmith_add_i32(~1i, ~u_input.a), u_input.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> vec2<bool> {
    let var_0 = arg_0.x;
    var var_1 = Struct_3(~var_0 == abs(11391u), !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), true)), all(vec4<bool>(true, true, true, true)), func_1(), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1681f - -268f)), 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, 1000f, -360f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(848f, -1326f, 547f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(1159f, 1182f, 1654f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1003f, -2490f, -435f))))), vec2<bool>(!all(vec4<bool>(true, true, true, true)), !(1u > var_0)), vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    var_1 = Struct_3(false, var_1.c, var_1.a, func_1(), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)), var_1.e.b, var_1.e.c, var_1.e.c));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-233f, -237f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a) + var_1.d.a)));
    var var_3 = ~abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_0, 45591u, 40528u), vec4<u32>(arg_0.x, arg_0.x, var_0, var_0)), 0u & var_0)) ^ countOneBits(arg_0.yz);
    return select(var_1.e.c, !var_1.e.c, var_1.e.d);
}

fn func_2() -> f32 {
    let var_0 = Struct_3(any(func_4(vec3<u32>(1u, 1u, 1u), u_input.a, _wgslsmith_mod_i32(u_input.a, func_3()))), true, !(!(true && all(vec3<bool>(true, false, false)))), func_1(), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-682f)))) - 448f), vec3<f32>(176f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(501f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -195f)), 1000f), vec2<bool>(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true))), vec2<bool>(true, false)));
    let var_1 = Struct_5(countOneBits(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)))), Struct_4(func_4(vec3<u32>(~6156u, _wgslsmith_dot_vec3_u32(vec3<u32>(19652u, 0u, 1u), vec3<u32>(0u, 0u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 31293u), vec2<u32>(55646u, 1u))), -(~u_input.a), i32(-1i) * -2147483647i).x, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-275f)), 326f, -443f), vec2<bool>(false, var_0.b), select(vec2<bool>(var_0.a, var_0.c), var_0.e.c, var_0.e.d)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.a, 1000f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.e.b + vec3<f32>(var_0.e.a, 166f, var_0.e.b.x)), var_0.e.b)), !vec2<bool>(false, var_0.e.d.x), !(!var_0.e.d)), vec4<bool>(_wgslsmith_sub_i32(u_input.a, u_input.a) < min(u_input.a, -5974i), any(select(vec3<bool>(var_0.e.c.x, var_0.e.c.x, var_0.c), vec3<bool>(var_0.a, var_0.a, var_0.c), true)), true, any(vec3<bool>(false, var_0.c, false)))));
    let var_2 = _wgslsmith_f_op_f32(-1215f * var_0.d.a);
    var var_3 = Struct_5(u_input.a, var_1.b);
    var_3 = var_1;
    return -601f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~76842u <= abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(21254u, 9115u, 4294967295u, 80281u))), (any(vec2<bool>(true, true)) != true) | all(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1012f, 1183f, any(vec4<bool>(true, true, true, false))))) >= -558f, func_1(), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), -874f, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1527f, -1321f, 318f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(847f, 1525f, -144f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(324f, -742f, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-925f, 649f, 111f))), any(vec2<bool>(true, true))))), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), vec2<bool>(true, false)), vec2<bool>(true, true)));
    let var_1 = Struct_5(~(-_wgslsmith_dot_vec2_i32(-vec2<i32>(34390i, u_input.a), vec2<i32>(-1971i, 14819i))), Struct_4(false, Struct_2(221f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-633f, 1840f, var_0.d.a)), vec2<bool>(!var_0.b, var_0.b && false), var_0.e.c), Struct_2(var_0.d.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1434f, var_0.d.a, -682f)), var_0.e.d, select(var_0.e.d, select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, false), var_0.c), func_4(vec3<u32>(44486u, 0u, 62184u), 2147483647i, u_input.a))), select(!vec4<bool>(var_0.b, var_0.c, true, var_0.c), !select(vec4<bool>(var_0.a, true, false, var_0.c), vec4<bool>(var_0.a, true, var_0.b, true), vec4<bool>(true, var_0.a, var_0.e.c.x, var_0.e.d.x)), true)));
    let var_2 = Struct_2(-126f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.b.a, -106f, var_1.b.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_f_op_f32(max(-412f, 321f)))), var_0.e.b)), var_1.b.d.wy, func_4(vec3<u32>(1u, 1u, 1u), -1i, -24210i));
    let var_3 = var_0.d;
    var var_4 = func_1();
    let var_5 = any(!select(!var_1.b.d.yzw, select(vec3<bool>(false, true, var_2.d.x), var_1.b.d.zwy, !var_1.b.d.wwx), false != var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, -19630i, var_1.a, u_input.a), vec4<i32>(-2147483647i, var_1.a, u_input.a, u_input.a) | vec4<i32>(2147483647i, -1i, -55748i, var_1.a)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -83533i, 0i, -55320i), vec4<i32>(var_1.a, -16998i, var_1.a, 0i)))), vec2<i32>(~countOneBits(1i), var_1.a) >> ((firstLeadingBit(vec2<u32>(20501u, 4294967295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) | firstTrailingBit(vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
}

