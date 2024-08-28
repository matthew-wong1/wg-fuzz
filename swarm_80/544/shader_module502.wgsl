struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(232f, Struct_1(vec4<i32>(2147483647i, -1i, 45229i, -31325i), 962f, 1i, true, vec2<i32>(0i, 1i))), Struct_2(1344f, Struct_1(vec4<i32>(22400i, 60317i, -1i, -1i), 172f, 1i, false, vec2<i32>(2147483647i, -21418i))), Struct_2(-751f, Struct_1(vec4<i32>(0i, 24017i, 1i, 0i), 148f, -7192i, false, vec2<i32>(11120i, -75955i))), Struct_2(605f, Struct_1(vec4<i32>(-1i, -17521i, i32(-2147483648), 25985i), -733f, -18272i, false, vec2<i32>(-1i, -2852i))), Struct_2(-1053f, Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 87715i), 203f, i32(-2147483648), false, vec2<i32>(40836i, 59840i))), Struct_2(-220f, Struct_1(vec4<i32>(-1i, 0i, i32(-2147483648), -16158i), -136f, -1053i, false, vec2<i32>(1i, 1i))), Struct_2(-404f, Struct_1(vec4<i32>(i32(-2147483648), -43988i, 339i, 2147483647i), -424f, 0i, false, vec2<i32>(23005i, -22307i))), Struct_2(-907f, Struct_1(vec4<i32>(-18954i, 1i, -1i, 9870i), -909f, -1i, false, vec2<i32>(-62798i, 4686i))), Struct_2(-1549f, Struct_1(vec4<i32>(-31575i, -1i, 13763i, i32(-2147483648)), -1234f, -1i, false, vec2<i32>(i32(-2147483648), -67119i))), Struct_2(-1123f, Struct_1(vec4<i32>(2147483647i, 14581i, -26074i, -5294i), -1000f, -15322i, false, vec2<i32>(16830i, 2863i))), Struct_2(-666f, Struct_1(vec4<i32>(-3546i, i32(-2147483648), -1i, -34818i), 785f, 73521i, true, vec2<i32>(15662i, 13668i))), Struct_2(1000f, Struct_1(vec4<i32>(2147483647i, -1984i, -7354i, -5801i), -107f, -1i, false, vec2<i32>(61204i, 10243i))), Struct_2(339f, Struct_1(vec4<i32>(2147483647i, 2147483647i, 46298i, -17758i), 2121f, i32(-2147483648), false, vec2<i32>(2147483647i, -4730i))), Struct_2(-1462f, Struct_1(vec4<i32>(-19459i, i32(-2147483648), -6109i, i32(-2147483648)), 379f, 2147483647i, false, vec2<i32>(-13533i, -2121i))), Struct_2(1836f, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -7349i, i32(-2147483648)), 1114f, 16927i, true, vec2<i32>(0i, i32(-2147483648)))), Struct_2(724f, Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 1i), 511f, 38461i, true, vec2<i32>(-34991i, 0i))), Struct_2(833f, Struct_1(vec4<i32>(-1i, -3876i, 71316i, 32353i), 856f, -1i, true, vec2<i32>(-33001i, 16420i))), Struct_2(-220f, Struct_1(vec4<i32>(-14920i, 20931i, 0i, -67636i), -1000f, 18682i, true, vec2<i32>(1i, -15491i))), Struct_2(148f, Struct_1(vec4<i32>(i32(-2147483648), -42535i, 968i, 18535i), -964f, 2147483647i, true, vec2<i32>(12955i, 12946i))), Struct_2(-921f, Struct_1(vec4<i32>(2147483647i, -1i, 1i, -1i), -1000f, 0i, true, vec2<i32>(-1i, i32(-2147483648)))), Struct_2(-1874f, Struct_1(vec4<i32>(11092i, -47150i, 2147483647i, 1i), -223f, -46366i, false, vec2<i32>(i32(-2147483648), -15231i))));

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<i32> {
    global0 = array<Struct_2, 21>();
    return abs(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(3639i, -54995i), vec2<i32>(20390i, 16530i))), firstLeadingBit(firstTrailingBit(vec2<i32>(-31108i, 10907i))))) | -(~vec2<i32>(1i, 1i));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = select(any(global1.wxy), global1.x, true);
    global0 = array<Struct_2, 21>();
    var var_1 = reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), ~abs(u_input.a ^ arg_2.a), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, u_input.a), vec3<u32>(1339u, arg_2.a, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_2.a, arg_2.a, 4294967295u), vec4<u32>(7877u, u_input.a, 0u, 15815u)))), ~_wgslsmith_add_u32(1u, 0u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + 160f)) * -870f);
    global1 = select(vec4<bool>(33894i > arg_1.c, !(!arg_0 & (arg_1.a.x <= arg_1.c)), false, min(29085i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, 1i, -2147483647i), vec3<i32>(arg_1.e.x, arg_2.b.x, arg_2.b.x))) <= 1i), !select(!(!vec4<bool>(false, global1.x, arg_1.d, global1.x)), !select(vec4<bool>(arg_0, true, global1.x, false), vec4<bool>(true, global1.x, arg_0, false), vec4<bool>(true, arg_0, false, false)), !vec4<bool>(true, arg_1.d, false, global1.x)), !(!select(select(vec4<bool>(false, arg_0, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, arg_0), vec4<bool>(false, arg_1.d, arg_1.d, false)), !vec4<bool>(arg_1.d, arg_1.d, true, arg_0), any(vec2<bool>(true, arg_1.d)))));
    return ~(~(~_wgslsmith_mod_vec2_u32(var_1.zw, ~var_1.zw)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(-(~arg_2.e.x), func_1(vec3<u32>(18052u, arg_3.x, u_input.a)).x, arg_2.a.x, arg_2.e.x) | countOneBits(select(arg_2.a, arg_2.a, vec4<bool>(global1.x, true, global1.x, false)) >> (~vec4<u32>(u_input.a, 112983u, 1u, arg_0) % vec4<u32>(32u))), 2156f, arg_2.e.x, !(select(_wgslsmith_clamp_i32(arg_2.c, -12644i, 0i), 53181i >> (1u % 32u), true) > arg_2.a.x), vec2<i32>(-1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_2.a.x), min(vec2<i32>(arg_2.e.x, 2147483647i), arg_2.e)))));
    var var_1 = firstLeadingBit(vec4<i32>(-78199i, -43810i, -var_0.e.x, _wgslsmith_div_i32(arg_2.c, firstTrailingBit(-1i | var_0.a.x))));
    let var_2 = vec3<bool>(true && (any(vec3<bool>(arg_1, true, true)) != (_wgslsmith_f_op_f32(arg_2.b * var_0.b) <= _wgslsmith_f_op_f32(sign(687f)))), true, select(all(select(global1.yx, global1.xy, global1.zz)), true, true));
    var_0 = arg_2;
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b, arg_2.b))))), -((i32(-1i) * -1i) ^ _wgslsmith_dot_vec2_i32(max(var_1.wz, vec2<i32>(arg_2.a.x, arg_2.c)), reverseBits(vec2<i32>(arg_2.a.x, var_0.c)))), all(select(select(select(vec3<bool>(arg_2.d, false, true), vec3<bool>(global1.x, false, var_0.d), vec3<bool>(true, false, global1.x)), vec3<bool>(true, false, var_2.x), !var_2.x), !select(global1.wzx, global1.yyz, true), select(!vec3<bool>(global1.x, global1.x, true), global1.wyz, var_2.x))), -arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec4<i32>(-27481i, i32(-1i) * -2147483647i, ~(i32(-1i) * -56460i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -54483i), vec2<i32>(51569i, -22375i)), -31754i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1052f, 1845f)))))), 0i, !(!any(vec4<bool>(global1.x, global1.x, true, global1.x))), max(vec2<i32>(2147483647i, 20236i), _wgslsmith_mult_vec2_i32(-vec2<i32>(-1i, 0i), -vec2<i32>(1i, 30615i))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-24564i, 0i), vec2<i32>(-1i, -34026i))), max(_wgslsmith_add_vec2_i32(vec2<i32>(-24634i, 20157i), vec2<i32>(1i, -2001i)), func_1(vec3<u32>(u_input.a, u_input.a, 4294967295u)))));
    var_0 = func_3(78616u, true, Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(round(var_0.b))), 0i, all(!vec2<bool>(var_0.d, false)), var_0.e), countOneBits(func_2(var_0.d, Struct_1(var_0.a, var_0.b, -1i, false, vec2<i32>(-1i, var_0.c)), Struct_3(44894u, vec2<i32>(var_0.a.x, 27820i))) & ~vec2<u32>(6434u, 1u)) ^ ~vec2<u32>(1u, func_2(false, Struct_1(vec4<i32>(-1i, -38583i, var_0.e.x, 50525i), 1308f, 55190i, false, var_0.a.zz), Struct_3(4294967295u, var_0.e)).x));
    var var_1 = countOneBits(u_input.a) & firstLeadingBit(_wgslsmith_div_u32(1u, 1u));
    var var_2 = 13413u;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), 522f)))) * vec3<f32>(-866f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b), -1735f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b, -930f)))), true)), -1127f));
    var var_4 = var_0.a.x;
    var var_5 = select(_wgslsmith_add_vec2_i32(var_0.a.yx & var_0.e, vec2<i32>(-15616i, var_0.a.x)), var_0.a.xx >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), all(vec2<bool>(func_3(1u, var_3.x >= 997f, Struct_1(var_0.a, var_3.x, var_0.e.x, true, var_0.a.yz), ~vec2<u32>(u_input.a, 0u)).d, global1.x)));
    var_1 = _wgslsmith_add_u32(41378u, 0u << (~(u_input.a & ~38571u) % 32u));
    var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(283f + var_3.x), _wgslsmith_f_op_f32(633f + var_0.b), var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_div_f32(604f, -1115f)))), true & var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~63280u), 1183f, vec3<u32>(func_2(var_0.d, Struct_1(select(var_0.a, var_0.a, vec4<bool>(false, global1.x, false, global1.x)), -1000f, ~var_5.x, false, var_0.e), Struct_3(u_input.a, var_0.e)).x, 74737u, abs(51707u)), _wgslsmith_f_op_f32(trunc(var_0.b)));
}

