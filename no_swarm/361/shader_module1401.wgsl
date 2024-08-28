struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = !(!vec4<bool>(true & (arg_1 && false), any(select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), vec2<bool>(arg_1, false))), any(vec3<bool>(true, true, arg_1)), true));
    let var_1 = Struct_4(Struct_3((max(vec3<i32>(69451i, 0i, u_input.c), vec3<i32>(-41831i, u_input.c, 26832i)) & -vec3<i32>(-21120i, u_input.c, -2147483647i)) | -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, 74063i), vec3<i32>(1i, 24232i, u_input.a.x)), vec4<u32>(_wgslsmith_mult_u32(u_input.b & 42032u, u_input.b), 0u, min(7705u, 30761u), ~(u_input.b & 15046u)), any(var_0.yxw), Struct_1(arg_1 != true, firstTrailingBit(min(1u, 22290u)), 0i), Struct_1(_wgslsmith_f_op_f32(round(1000f)) != _wgslsmith_f_op_f32(-754f + -699f), u_input.b >> (arg_0 % 32u), -1i)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(1364f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-660f, -1255f, !arg_1)))), all(select(!vec4<bool>(var_1.a.e.a, var_0.x, var_1.a.e.a, var_0.x), vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_1, false))))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-2147483647i, var_1.a.d.c, 64807i), var_1.a.a), abs(vec3<i32>(~(-12957i), _wgslsmith_mod_i32(68044i, var_1.a.a.x), arg_2))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-549f, 1353f)))))) >= 1000f, _wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(43434u, 0u))), reverseBits(~var_1.a.b.xx)) & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 8326u, u_input.b, var_1.a.d.b) & var_1.a.b, ~vec4<u32>(var_1.a.e.b, arg_0, 37910u, var_1.a.d.b)));
    var var_3 = 0u;
    let var_4 = Struct_3(var_1.a.a, var_1.a.b, select(false, var_2.c, !arg_1), var_1.a.d, var_1.a.e);
    return -364f;
}

fn func_2() -> f32 {
    var var_0 = min(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(u_input.b & u_input.b), ~80793u, 4294967295u), u_input.b, ~43523u << (abs(u_input.b ^ 0u) % 32u)), ~firstLeadingBit(~0u));
    let var_1 = !(!vec2<bool>(33775i > u_input.a.x, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false))));
    var_0 = 4294967295u;
    var var_2 = _wgslsmith_mod_i32(u_input.a.x, max(~(-(1i << (u_input.b % 32u))), _wgslsmith_sub_i32(u_input.a.x, u_input.c >> (u_input.b % 32u))));
    var var_3 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -944f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(1u, var_1.x, -1i)), 608f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) * _wgslsmith_f_op_f32(select(446f, -1188f, all(vec3<bool>(var_1.x, var_1.x, false)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), -2127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f)) * -1608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-646f - 416f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(-124f)), _wgslsmith_f_op_f32(1187f + -689f), _wgslsmith_f_op_f32(f32(-1f) * -111f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(477f, -183f, 1044f, 1000f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(967f, -933f, 425f, -272f), vec4<f32>(287f, -2229f, 1159f, -1419f), false)))))));
    var var_1 = true;
    var_1 = select(any(!vec3<bool>(any(vec4<bool>(true, true, false, true)), u_input.a.x != u_input.c, any(vec4<bool>(true, true, true, true)))), true, all(!vec3<bool>(all(vec3<bool>(true, true, true)), false, -1000f <= var_0.x)));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.a.x), countOneBits(vec4<i32>(26571i, 2147483647i, 1i, -2169i)), vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, 1i) << (vec4<u32>(18828u, 0u, u_input.b, 1u) % vec4<u32>(32u)))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.c, -1i), ~vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 12505i), max(vec4<i32>(15384i, 2147483647i, -2642i, 40742i), vec4<i32>(2147483647i, u_input.c, -7468i, u_input.a.x)))), abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.c, -2147483647i, u_input.a.x, 0i), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.c, 86219i, u_input.c) & vec4<i32>(u_input.c, 97432i, u_input.c, u_input.a.x)))));
    var_1 = select(select(true, false, true), !(_wgslsmith_add_i32(u_input.c, var_2.x) != _wgslsmith_mod_i32(-1i, u_input.c)) && (_wgslsmith_div_i32(0i, -1i) > (i32(-1i) * -var_2.x)), !(!all(vec3<bool>(false, false, false))));
    return Struct_1(false, 9550u, -2147483647i);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: bool) -> Struct_4 {
    let var_0 = vec2<u32>((~(~1u) & _wgslsmith_add_u32(~arg_1.a.d.b, _wgslsmith_div_u32(0u, u_input.b))) | ~func_1().b, _wgslsmith_clamp_u32(u_input.b, arg_1.a.b.x, ~(~_wgslsmith_clamp_u32(37346u, 19538u, 12856u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1352f, -869f, 505f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-679f, 305f, 401f, -1915f)))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -423f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(round(var_1.x))) - _wgslsmith_f_op_f32(func_3(~reverseBits(arg_1.a.e.b), any(select(vec3<bool>(arg_1.a.c, false, true), vec3<bool>(false, arg_2, arg_2), false)), -22956i))), arg_0.x, 186f);
    let var_2 = func_1();
    let var_3 = Struct_4(arg_1.a);
    return var_3;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_2(-1252f, u_input.c, any(select(!(!vec2<bool>(arg_0.a.c, false)), vec2<bool>(arg_0.a.e.a & arg_0.a.d.a, !arg_0.a.d.a), vec2<bool>(false, func_4(vec2<f32>(-691f, arg_1.x), arg_0, true).a.e.a))), 38109u);
    return Struct_4(func_4(arg_1, Struct_4(arg_0.a), !func_1().a).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 901f;
    let var_1 = vec2<i32>(firstTrailingBit(max(_wgslsmith_add_i32(-2147483647i, abs(2147483647i)), ~u_input.a.x)), -(~u_input.a.x) & -2147483647i);
    let var_2 = -_wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_sub_i32(15433i, u_input.a.x)), u_input.c, _wgslsmith_div_i32(-2147483647i << (u_input.b % 32u), -3437i), -2147483647i), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, var_1.x, 23963i) << (vec4<u32>(u_input.b, 1u, 50415u, 0u) % vec4<u32>(32u)), vec4<i32>(4087i, -55236i, u_input.c, u_input.a.x) >> (vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u)))));
    var var_3 = func_5(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1253f, -1000f)))), Struct_4(Struct_3(var_2.ywx, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true, func_1(), Struct_1(true, u_input.b, var_1.x))), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(744f, 1115f))), -437f)));
    var var_4 = _wgslsmith_div_vec3_i32((select(vec3<i32>(var_3.a.e.c, var_3.a.e.c, u_input.c), var_3.a.a, true) >> (vec3<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(var_3.a.b.zx, vec2<u32>(4294967295u, var_3.a.d.b)), min(u_input.b, 15720u)) % vec3<u32>(32u))) | reverseBits(var_3.a.a), vec3<i32>(~(~(-2147483647i)), 1i, var_3.a.e.c));
    let var_5 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, var_3.a.e.b, 64172u) & (vec3<u32>(5034u, 0u, u_input.b) | var_3.a.b.yww)), var_3.a.b.xyy) << (var_3.a.e.b % 32u);
    var_3 = Struct_4(Struct_3(abs(~func_4(vec2<f32>(-833f, 183f), Struct_4(Struct_3(vec3<i32>(16979i, u_input.c, var_4.x), var_3.a.b, false, var_3.a.d, Struct_1(var_3.a.d.a, 91696u, -2137i))), var_3.a.d.a).a.a), ~abs(~vec4<u32>(var_3.a.e.b, var_5, var_5, 86885u)), !((var_3.a.e.a && var_3.a.d.a) && !var_3.a.c), func_4(vec2<f32>(245f, _wgslsmith_f_op_f32(abs(394f))), Struct_4(var_3.a), var_3.a.d.a).a.e, var_3.a.d));
    var_3 = Struct_4(func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-240f, -1774f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1079f, 521f) * vec2<f32>(593f, 1084f))))), Struct_4(Struct_3(-vec3<i32>(var_1.x, var_4.x, -1i), func_5(Struct_4(Struct_3(var_3.a.a, var_3.a.b, var_3.a.d.a, var_3.a.e, var_3.a.d)), vec2<f32>(841f, -645f)).a.b, var_3.a.e.a, Struct_1(var_3.a.e.a, 4294967295u, var_1.x), func_4(vec2<f32>(-1135f, -487f), Struct_4(Struct_3(var_2.xxy, vec4<u32>(u_input.b, u_input.b, 0u, 36264u), var_3.a.d.a, Struct_1(false, 4294967295u, -24919i), Struct_1(var_3.a.e.a, 11459u, var_4.x))), true).a.d)), true).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1544f, -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f * -843f))))));
}

