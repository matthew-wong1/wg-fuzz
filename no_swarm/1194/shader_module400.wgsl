struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(select(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, u_input.b, 0u, u_input.a.x) & vec4<u32>(1u, u_input.b, u_input.b, 10940u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x & 6638u, min(u_input.b, 4294967295u), u_input.b, _wgslsmith_mult_u32(29639u, u_input.a.x)), ~select(vec4<u32>(20022u, 0u, 1u, 37367u), vec4<u32>(4294967295u, 7014u, u_input.b, 0u), true)), true), select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), true), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), -_wgslsmith_add_i32(-(~(-1i)), 2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2114f)))), _wgslsmith_f_op_f32(trunc(-221f))));
    var_0 = Struct_1(vec4<u32>(var_0.a.x, var_0.a.x << (var_0.a.x % 32u), _wgslsmith_dot_vec4_u32(var_0.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.x, 58704u, 17885u), var_0.a)) | (_wgslsmith_sub_u32(33884u, 5629u) & u_input.b), select(var_0.a.x, u_input.a.x, all(vec3<bool>(var_0.b.x, false, true)))), var_0.b, var_0.c, -845f);
    var var_1 = Struct_1(var_0.a, !select(!vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), !(!var_0.b), var_0.b.x && true), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, -3039i, 5119i), vec3<i32>(1i, 1i, var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1132f) + 496f))));
    var_0 = Struct_1(vec4<u32>(~var_0.a.x, ~var_0.a.x, 4294967295u << (~firstTrailingBit(29190u) % 32u), 1u), select(vec4<bool>(_wgslsmith_div_f32(var_0.d, var_1.d) != var_0.d, all(!var_1.b.xz), true, var_0.b.x), select(vec4<bool>(!var_1.b.x, var_0.b.x, var_0.b.x && var_1.b.x, select(var_1.b.x, true, var_1.b.x)), !var_1.b, var_1.b), select(vec4<bool>(true, true, true, true), var_0.b, !var_1.b)), var_1.c, -1411f);
    var var_2 = -718f;
    return _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f - _wgslsmith_f_op_f32(f32(-1f) * -839f)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = -1278f;
    var var_2 = vec3<f32>(1633f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)) + _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(-arg_0.x))) * -583f), -547f);
    let var_3 = Struct_1(arg_2.a, !select(!select(arg_2.b, vec4<bool>(false, false, arg_2.b.x, arg_2.b.x), arg_2.b), !vec4<bool>(false, arg_2.b.x, true, true), arg_2.b), -12381i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(857f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(func_3()))));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(max(var_3.a.x, u_input.a.x), 69335u), countOneBits(vec2<u32>(52977u, _wgslsmith_dot_vec4_u32(arg_2.a, arg_2.a) & (4294967295u | arg_2.a.x))), ~vec2<u32>(34724u, 4294967295u));
    return arg_2;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(arg_0.a >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, 1u, u_input.b), vec4<u32>(46824u, 49568u, u_input.a.x, u_input.a.x), select(arg_0.a, arg_0.a, true)) & arg_0.a) % vec4<u32>(32u)), vec4<bool>(all(!(!arg_0.b)), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * arg_0.d) - _wgslsmith_f_op_f32(max(arg_0.d, 965f))) < arg_0.d, arg_0.b.x), arg_0.c, 330f);
    let var_1 = (var_0.c ^ _wgslsmith_div_i32(-_wgslsmith_div_i32(var_0.c, -1i), -1i & func_2(vec3<f32>(var_0.d, 795f, 135f), 2147483647i, Struct_1(vec4<u32>(arg_0.a.x, u_input.a.x, 32345u, 19120u), var_0.b, var_0.c, -964f)).c)) != 21441i;
    var var_2 = !(!func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1157f, 1087f, var_0.d), vec3<f32>(217f, -629f, 194f))))), -var_0.c, arg_0).b.zxw);
    var var_3 = true;
    let var_4 = max(var_0.a.yyz, select(abs(arg_0.a.zzy << (vec3<u32>(arg_0.a.x, var_0.a.x, var_0.a.x) % vec3<u32>(32u))), arg_0.a.xxx, var_0.a.x == (var_0.a.x << (48714u % 32u)))) >> (var_0.a.yyy % vec3<u32>(32u));
    return arg_0.b;
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = !func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2.d - 428f), func_2(vec3<f32>(arg_2.d, 487f, arg_2.d), arg_2.c, Struct_1(arg_2.a, vec4<bool>(false, arg_2.b.x, false, true), arg_0, -228f)).d, _wgslsmith_f_op_f32(max(arg_2.d, 457f)))), -1i, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -470f, 942f) - vec3<f32>(var_0.d, -973f, 1312f))), _wgslsmith_div_i32(abs(var_0.c), arg_2.c | 1i), func_2(vec3<f32>(arg_2.d, var_0.d, -334f), arg_0, arg_2))).b;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.d, arg_2.d)), _wgslsmith_f_op_f32(var_0.d + var_0.d), -924f);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d, var_2.x, arg_2.d) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-913f, var_2.x, arg_2.d)))), var_2, vec3<bool>(!(arg_1.x || arg_1.x), any(!arg_2.b.yww), true))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d, 1067f, -426f) - var_2))))));
    var var_4 = _wgslsmith_mod_vec2_u32(u_input.a, arg_2.a.wx);
    return Struct_1(vec4<u32>(1u, _wgslsmith_add_u32(firstTrailingBit(var_0.a.x), reverseBits(u_input.a.x)), ~reverseBits(u_input.b), u_input.a.x), vec4<bool>(-1i < var_0.c, false, func_4(arg_2).x, any(arg_1.zyz)), 38197i, _wgslsmith_f_op_f32(min(771f, var_2.x)));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_5(-43049i, select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_4(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-988f, 378f, -1154f), vec3<f32>(161f, -143f, 757f))), 0i, Struct_1(vec4<u32>(14654u, 73268u, 17205u, 0u), vec4<bool>(false, true, true, false), 2147483647i, -543f))), select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, -847f, 271f)), 12918i, func_2(vec3<f32>(-1481f, 2055f, -616f), -20703i, Struct_1(vec4<u32>(4294967295u, arg_0, arg_0, u_input.a.x), vec4<bool>(false, false, true, false), -30495i, 372f))).b, !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), all(func_2(vec3<f32>(-994f, 1961f, 1179f), -24841i, Struct_1(vec4<u32>(u_input.b, u_input.b, arg_0, arg_0), vec4<bool>(false, false, false, true), 7803i, -137f)).b.wyw))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(977f, 670f, 1000f)))), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(33513i, -12563i)), vec2<i32>(~(-9251i), select(1i, -2147483647i, false))), func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(func_3())), 0i, Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, 4294967295u, 0u), vec4<u32>(u_input.b, 38443u, arg_0, 44244u)), vec4<bool>(false, false, true, false), max(1i, -1i), func_2(vec3<f32>(-236f, 653f, -874f), 2147483647i, Struct_1(vec4<u32>(521u, u_input.b, 1u, arg_0), vec4<bool>(true, false, false, false), 2147483647i, -534f)).d))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-306f, var_0.d, _wgslsmith_f_op_f32(trunc(var_0.d))))))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1000f, -176f) * vec3<f32>(2473f, var_0.d, -171f)) - vec3<f32>(var_1.x, var_0.d, -2451f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-275f, var_0.d))))), -518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-342f + 724f), var_0.d)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-845f, 638f, var_0.d))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, -1050f, var_0.d)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(242f, 243f, var_1.x) * vec3<f32>(var_1.x, 534f, var_1.x)), vec3<f32>(-860f, var_0.d, var_1.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1458f, var_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-492f, var_0.d, var_0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 348f, -468f)), var_0.b.x)))))));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1f, func_2(vec3<f32>(var_1.x, var_0.d, var_0.d), 716i, func_2(vec3<f32>(var_0.d, var_1.x, var_0.d), var_0.c, Struct_1(vec4<u32>(u_input.b, 40241u, var_0.a.x, u_input.a.x), var_0.b, 0i, -504f))).d)), var_0.c, Struct_1(var_0.a, func_5(countOneBits(_wgslsmith_add_i32(var_0.c, var_0.c)), select(vec4<bool>(true, true, true, true), var_0.b, select(vec4<bool>(false, false, var_0.b.x, true), var_0.b, var_0.b)), func_2(vec3<f32>(var_1.x, -438f, 2214f), _wgslsmith_mult_i32(var_0.c, 79660i), Struct_1(var_0.a, var_0.b, var_0.c, -2098f))).b, ~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1124f - var_1.x) + _wgslsmith_f_op_f32(-var_0.d)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, 1007f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = select(select(vec3<bool>(func_1(~23982u), any(vec3<bool>(false, var_0, false)), true), vec3<bool>(true, var_0, !func_2(vec3<f32>(497f, 1222f, -804f), 11969i, Struct_1(vec4<u32>(1u, u_input.b, 67188u, 4294967295u), vec4<bool>(var_0, false, var_0, false), 3440i, -831f)).b.x), true), select(!(!(!vec3<bool>(var_0, true, true))), vec3<bool>(true, true, var_0), !(!vec3<bool>(var_0, var_0, true))), vec3<bool>(true, true, true));
    let var_2 = Struct_1(countOneBits(vec4<u32>(~reverseBits(0u), min(u_input.a.x, ~u_input.a.x), 0u, min(u_input.b, ~1u))), vec4<bool>(any(!func_5(-48319i, vec4<bool>(var_0, true, var_1.x, var_1.x), Struct_1(vec4<u32>(31132u, 0u, u_input.b, 20477u), vec4<bool>(var_1.x, var_1.x, var_0, false), 2147483647i, -1093f)).b), true, (var_1.x | false) & true, any(vec4<bool>(true, true, false, true))), select(-countOneBits(-1i), ~1i, true) << (19002u % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(410f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(304f, -1593f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1613f))), !(!var_0))));
    var var_3 = (countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.c, var_2.c), -vec2<i32>(var_2.c, 28645i))) >> ((~_wgslsmith_div_vec2_u32(u_input.a, var_2.a.xx) | _wgslsmith_add_vec2_u32(vec2<u32>(1u, 62581u), vec2<u32>(var_2.a.x, 65046u))) % vec2<u32>(32u))) | ~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-2029i, 0i), vec2<i32>(var_2.c, var_2.c)) | ~vec2<i32>(-2147483647i, -5291i));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-276f * var_2.d), _wgslsmith_f_op_f32(var_4.d * var_2.d))))) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.d)))))), -1i);
}

