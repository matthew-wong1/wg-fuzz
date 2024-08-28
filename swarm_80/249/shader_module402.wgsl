struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(769f + 744f))))))), u_input.e ^ ~(~u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1155f, 1000f, 1432f) * vec3<f32>(-1874f, -269f, -524f))))), any(vec3<bool>(true, select(false, true, true), true)), u_input.b, 1i));
    let var_1 = 1u;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.x - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2182f) + _wgslsmith_f_op_f32(-413f - var_0.a)), var_0.a);
    var_2 = var_0.c.a;
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + 1226f), 354f);
    return !(!vec4<bool>(var_0.c.b && any(vec3<bool>(true, var_0.c.b, var_0.c.b)), ~42164u < var_1, var_0.c.b, var_0.c.b));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-276f + -1085f)))))), _wgslsmith_f_op_f32(-667f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1982f, 1073f) + _wgslsmith_f_op_f32(sign(153f))))), Struct_2(_wgslsmith_f_op_f32(trunc(567f)), u_input.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1518f, 738f, -1158f))), any(vec4<bool>(true, true, true, true)), 4294967295u, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(3852i, -22922i, -54787i, 46177i), vec4<i32>(u_input.a.x, 2222i, 2147483647i, u_input.e))))), vec2<f32>(1f, _wgslsmith_f_op_f32(-1540f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -716f))))), true);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1568f)) * var_0.d.x)), _wgslsmith_f_op_f32(-333f + var_0.b), Struct_2(-719f, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_0.c.b, -2147483647i, 0i, u_input.c.x)), ~vec4<i32>(0i, var_0.c.c.d, -56977i, 1i)), var_0.c.c), _wgslsmith_f_op_vec2_f32(trunc(var_0.d)), all(select(select(func_3(), !vec4<bool>(var_0.e, true, var_0.e, var_0.e), true), vec4<bool>(true, any(vec3<bool>(var_0.e, var_0.e, var_0.e)), true, all(vec2<bool>(true, var_0.c.c.b))), select(!vec4<bool>(false, false, var_0.c.c.b, true), vec4<bool>(var_0.e, var_0.c.c.b, var_0.e, var_0.e), any(vec4<bool>(true, false, var_0.c.c.b, true))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f)) - var_0.d.x)), var_0.a, var_0.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, var_0.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2285f, -117f))), var_0.d)), select(false, var_0.e, func_3().x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.c.c.a.x), var_0.c.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(115f)), _wgslsmith_f_op_f32(sign(var_0.c.a)))), all(select(func_3(), !vec4<bool>(var_0.c.c.b, var_0.c.c.b, false, var_0.c.c.b), func_3().x)), _wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(7851u, 48737u, u_input.b), vec3<u32>(0u, 0u, u_input.b))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 88118u), vec3<u32>(69389u, 8541u, var_0.c.c.c)), vec3<u32>(var_0.c.c.c, 1958u, var_0.c.c.c))), u_input.d.x));
    var_1 = var_0.c;
    return Struct_3(1428f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-653f + _wgslsmith_f_op_f32(select(1000f, var_0.d.x, false))))), -647f)), var_0.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.a.zx) - _wgslsmith_f_op_vec2_f32(-var_0.c.c.a.xx)) + _wgslsmith_f_op_vec2_f32(var_1.c.a.yy * var_0.c.c.a.zy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(select(907f, var_0.c.c.a.x, var_0.e)))))), any(!select(select(vec3<bool>(false, var_0.e, var_1.c.b), vec3<bool>(var_0.e, var_0.e, true), vec3<bool>(false, var_0.e, false)), !vec3<bool>(false, var_0.c.c.b, var_0.e), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = ~2147483647i | arg_1.c.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2().d.x, -1033f, _wgslsmith_f_op_f32(f32(-1f) * -2034f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f))));
    var var_2 = reverseBits(vec2<u32>(~u_input.b, func_2().c.c.c));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(282f)) + 939f), _wgslsmith_f_op_f32(select(-963f, _wgslsmith_f_op_f32(var_1.x - -1446f), !arg_1.e)))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(113f, arg_1.d.x, 1118f, arg_1.a))))));
    var var_3 = vec3<i32>(reverseBits(i32(-1i) * -(i32(-1i) * -1i)), u_input.e, -abs(6250i));
    return arg_1.c.c;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-110f)), _wgslsmith_f_op_f32(-arg_2.a), arg_2.a)))), true, _wgslsmith_mult_u32(1u, abs((21296u | arg_0.c.c) & ~0u)), _wgslsmith_sub_i32(-1i, i32(-1i) * 0i));
    var_0 = arg_2.c;
    var var_1 = select(vec4<bool>(func_2().e | ((u_input.c.x & u_input.c.x) >= 2147483647i), any(!vec2<bool>(var_0.b, false)), arg_2.c.b & var_0.b, !all(vec2<bool>(arg_2.c.b, var_0.b))), func_3(), false);
    var_1 = vec4<bool>(all(var_1.zwy), !(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, -20736i, arg_2.b), u_input.a.www) <= _wgslsmith_div_i32(2147483647i, arg_0.c.d ^ arg_0.c.d)), all(!vec3<bool>(!var_1.x, arg_2.c.b && arg_2.c.b, false)), any(vec2<bool>(arg_0.c.b, firstTrailingBit(arg_0.c.d) != (arg_1 ^ arg_0.b))));
    var var_2 = !vec4<bool>(36099u >= _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.c, var_0.c, arg_2.c.c), vec4<u32>(arg_2.c.c, arg_2.c.c, 4294967295u, u_input.b)), firstLeadingBit(arg_2.c.c)), true, true, !(!(!var_1.x)));
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a * arg_2.a), arg_2.a)) - -624f))), min(countOneBits(var_0.d) >> (countOneBits(20500u) % 32u), _wgslsmith_mult_i32(8591i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(u_input.d, u_input.a)))), arg_2.c);
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_u32(55426u, ~u_input.b | (countOneBits(arg_3.c) << (arg_0.c.c % 32u)));
    var_0 = 4294967295u;
    let var_1 = !(_wgslsmith_f_op_f32(-arg_3.a.x) < 1107f) && false;
    let var_2 = func_5(Struct_2(arg_0.c.a.x, -firstTrailingBit(_wgslsmith_mult_i32(0i, 2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.c.a))), func_3().x, arg_3.c, _wgslsmith_clamp_i32(0i, -25389i >> (arg_0.c.c % 32u), 5944i))), min(_wgslsmith_div_i32(abs(max(arg_3.d, u_input.a.x)), -arg_2.c.c.d), func_2().c.b), func_2().c).c;
    return Struct_2(453f, reverseBits(-1i), arg_3);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_6(func_5(Struct_2(-434f, countOneBits(_wgslsmith_sub_i32(1i, 2147483647i)), func_4(countOneBits(arg_0.x), func_2())), func_2().c.c.d, func_2().c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2188f * 614f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(max(-1223f, 1f))), func_2(), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(295f)))), -961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2475f, 362f)))), -(i32(-1i) * -8953i) != ~u_input.e, 4294967295u, _wgslsmith_mod_i32(-2147483647i, abs(arg_0.x))));
    var var_1 = any(select(!(!vec4<bool>(var_0.c.b, true, false, var_0.c.b)), select(!(!vec4<bool>(true, var_0.c.b, var_0.c.b, var_0.c.b)), vec4<bool>(var_0.c.b, var_0.c.a.x <= var_0.c.a.x, var_0.c.b, select(var_0.c.b, var_0.c.b, var_0.c.b)), vec4<bool>(true, all(vec4<bool>(var_0.c.b, var_0.c.b, false, var_0.c.b)), !var_0.c.b, func_4(arg_0.x, Struct_3(-1869f, 437f, var_0, vec2<f32>(var_0.c.a.x, var_0.a), var_0.c.b)).b)), !func_3()));
    let var_2 = Struct_3(func_2().d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(var_0.a - var_0.c.a.x))) * _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x * -1349f)))), var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_2().a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)))), true);
    var var_3 = var_2.c;
    var_1 = var_2.c.c.d < ~11495i;
    return func_4(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d.zyx, -u_input.c ^ u_input.d.ywz)), func_2());
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    var var_0 = arg_1.b;
    var_0 = true;
    return arg_2.x <= _wgslsmith_f_op_f32(f32(-1f) * -612f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, func_7(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1119f - 116f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f - -1929f)), Struct_2(_wgslsmith_div_f32(-913f, 1000f), u_input.c.x, func_1(vec2<i32>(u_input.a.x, u_input.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-144f, 1624f) - vec2<f32>(-1519f, 2143f))), !func_2().e), Struct_1(vec3<f32>(1f, 1f, 1f), true, u_input.b & (7821u | u_input.b), 0i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, -901f))), !((func_3().x | false) || true), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1589f) < func_6(func_6(Struct_2(-334f, -3747i, Struct_1(vec3<f32>(-552f, -1019f, 1631f), var_0.x, 45357u, -33349i)), 1416f, Struct_3(481f, 251f, Struct_2(-1872f, u_input.d.x, Struct_1(vec3<f32>(198f, -2704f, 1174f), true, u_input.b, u_input.d.x)), vec2<f32>(301f, 1159f), var_0.x), Struct_1(vec3<f32>(1518f, -1700f, 1287f), var_0.x, 93721u, u_input.a.x)), _wgslsmith_f_op_f32(floor(-186f)), func_2(), func_1(u_input.d.zz)).c.a.x, !(!(!var_0.x)), true, false), select(select(!vec4<bool>(var_0.x, true, true, false), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), true), func_2().c.c.b), vec4<bool>(true, var_0.x, !var_0.x, false)), vec4<bool>(false, true, var_0.x, false), var_0.x), select(select(select(!vec4<bool>(var_0.x, true, true, true), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, false, var_0.x, false), var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x), func_6(Struct_2(-690f, 1i, Struct_1(vec3<f32>(1000f, 2081f, 1087f), true, u_input.b, 15098i)), -1000f, func_2(), func_4(21703i, Struct_3(-725f, -358f, Struct_2(1032f, u_input.c.x, Struct_1(vec3<f32>(-280f, -1000f, -1463f), var_0.x, 0u, u_input.a.x)), vec2<f32>(807f, -918f), var_0.x))).c.b), !select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, false, false, var_0.x), true)), !select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, false, var_0.x, true))));
    var_0 = !select(func_3(), vec4<bool>(all(vec2<bool>(var_0.x, true)), u_input.b >= u_input.b, all(!var_0.zzy), func_5(Struct_2(-397f, u_input.a.x, Struct_1(vec3<f32>(-337f, 870f, 203f), false, u_input.b, u_input.e)), u_input.e, Struct_2(410f, u_input.e, Struct_1(vec3<f32>(-453f, 629f, -1000f), var_0.x, u_input.b, u_input.c.x))).c.c > 1u), func_3());
    let var_1 = !vec2<bool>(true, !(!var_0.x));
    var_0 = vec4<bool>(var_0.x, var_1.x, func_6(func_5(func_6(func_6(Struct_2(-360f, u_input.e, Struct_1(vec3<f32>(-818f, -632f, 1308f), false, u_input.b, u_input.e)), -239f, Struct_3(-134f, -758f, Struct_2(-479f, u_input.e, Struct_1(vec3<f32>(-1000f, 768f, 1023f), var_0.x, 5190u, u_input.a.x)), vec2<f32>(-1035f, 713f), false), Struct_1(vec3<f32>(-936f, -354f, -641f), true, u_input.b, u_input.e)), _wgslsmith_f_op_f32(-1014f * -842f), Struct_3(971f, -1886f, Struct_2(735f, u_input.d.x, Struct_1(vec3<f32>(783f, -739f, -829f), var_0.x, 4294967295u, 1i)), vec2<f32>(1977f, 1114f), var_1.x), func_6(Struct_2(-1311f, 9453i, Struct_1(vec3<f32>(-229f, 1127f, -231f), false, 24392u, -66557i)), 1056f, Struct_3(549f, -453f, Struct_2(401f, -1i, Struct_1(vec3<f32>(471f, -1806f, -856f), true, 4294967295u, u_input.d.x)), vec2<f32>(315f, -521f), true), Struct_1(vec3<f32>(436f, -1021f, -475f), false, 39031u, u_input.e)).c), u_input.c.x, func_5(Struct_2(-918f, u_input.a.x, Struct_1(vec3<f32>(-929f, -1849f, -330f), var_1.x, u_input.b, u_input.c.x)), i32(-1i) * -43228i, Struct_2(1430f, u_input.d.x, Struct_1(vec3<f32>(-869f, 665f, -1110f), false, u_input.b, u_input.c.x)))), _wgslsmith_f_op_f32(min(-312f, 1178f)), func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-304f, 867f, 1543f) - _wgslsmith_div_vec3_f32(vec3<f32>(-1695f, -484f, 978f), vec3<f32>(-102f, 646f, 1273f))), var_0.x, ~u_input.b, 1i)).c.b, func_4(2147483647i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f + -221f)), _wgslsmith_f_op_f32(f32(-1f) * -766f), func_6(func_5(Struct_2(-345f, u_input.a.x, Struct_1(vec3<f32>(-452f, 334f, 1000f), false, u_input.b, u_input.c.x)), 47964i, Struct_2(-494f, u_input.e, Struct_1(vec3<f32>(262f, 797f, 1056f), true, 11668u, -2147483647i))), -569f, func_2(), Struct_1(vec3<f32>(208f, 187f, -185f), false, 61520u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1030f, 944f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-492f, 1242f))), func_5(Struct_2(568f, u_input.e, Struct_1(vec3<f32>(-704f, 1373f, 352f), var_0.x, 51981u, 17130i)), 0i, func_2().c).c.b)).b);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec3<u32>(59024u, u_input.b, u_input.b))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, 17959u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 10049u) % vec3<u32>(32u))), vec3<u32>(~u_input.b, ~u_input.b, abs(75299u))), !any(!vec4<bool>(var_1.x, var_1.x, true, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(400f + 153f), -1087f))), func_1(select(countOneBits(u_input.d.xz), vec2<i32>(u_input.c.x, -1i), vec2<bool>(false, var_1.x))).a.x), select((u_input.d.zxz >> (vec3<u32>(61652u, u_input.b, 28878u) % vec3<u32>(32u))) ^ -vec3<i32>(u_input.a.x, u_input.e, u_input.e), countOneBits(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-36096i, 0i, -60742i), u_input.c, u_input.d.zyy))), var_0.wxy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-348f * _wgslsmith_div_f32(1301f, 2411f)), func_5(func_5(Struct_2(186f, u_input.c.x, Struct_1(vec3<f32>(1000f, -602f, 735f), false, 7196u, u_input.e)), 0i, Struct_2(-259f, 26652i, Struct_1(vec3<f32>(1652f, 546f, -160f), true, 1u, u_input.e))), u_input.c.x, func_2().c).c.a.x)));
}

