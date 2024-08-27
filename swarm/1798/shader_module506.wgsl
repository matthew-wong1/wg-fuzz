struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec4<i32>(-52838i, -25558i, 0i, i32(-2147483648)), Struct_2(Struct_1(1i, 599f, vec4<bool>(false, false, false, false)), 1i), vec4<bool>(true, true, false, false), -15042i, vec4<i32>(1i, 2332i, -1i, -47342i)), Struct_3(vec4<i32>(11668i, 0i, -1i, 0i), Struct_2(Struct_1(-18418i, 285f, vec4<bool>(true, true, false, true)), -1i), vec4<bool>(true, true, false, false), -1i, vec4<i32>(10679i, 23168i, 2147483647i, 24100i)), Struct_3(vec4<i32>(15367i, i32(-2147483648), 5425i, -44867i), Struct_2(Struct_1(53259i, -1279f, vec4<bool>(true, true, false, true)), -58847i), vec4<bool>(false, false, false, false), 38060i, vec4<i32>(2147483647i, -43137i, 2147483647i, -1i)), Struct_3(vec4<i32>(52704i, 2147483647i, -23552i, 2147483647i), Struct_2(Struct_1(1i, -183f, vec4<bool>(true, false, false, false)), -7232i), vec4<bool>(false, true, true, true), i32(-2147483648), vec4<i32>(2147483647i, i32(-2147483648), 0i, i32(-2147483648))), Struct_3(vec4<i32>(-26887i, 1i, -18501i, 2147483647i), Struct_2(Struct_1(2147483647i, -771f, vec4<bool>(true, true, true, true)), -1979i), vec4<bool>(true, false, false, false), -1i, vec4<i32>(15851i, 1i, -42050i, 15616i)), Struct_3(vec4<i32>(-45038i, 9012i, -1i, 51230i), Struct_2(Struct_1(27743i, 199f, vec4<bool>(false, false, false, true)), 0i), vec4<bool>(true, false, false, false), 1i, vec4<i32>(1i, -1i, i32(-2147483648), 52158i)), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 96627i, i32(-2147483648)), Struct_2(Struct_1(1i, 1493f, vec4<bool>(false, false, true, true)), 15185i), vec4<bool>(true, false, false, false), 1i, vec4<i32>(-1i, 1i, 2866i, 21692i)), Struct_3(vec4<i32>(0i, -19755i, -1i, 1i), Struct_2(Struct_1(7874i, 739f, vec4<bool>(false, false, true, true)), -23563i), vec4<bool>(true, false, true, true), 52567i, vec4<i32>(-23261i, 37353i, 2507i, 7128i)), Struct_3(vec4<i32>(5836i, -54107i, -22239i, 3584i), Struct_2(Struct_1(0i, -1127f, vec4<bool>(false, true, true, false)), 0i), vec4<bool>(true, false, true, false), -1i, vec4<i32>(i32(-2147483648), 26964i, i32(-2147483648), 1i)), Struct_3(vec4<i32>(-1i, 1481i, -15655i, -13435i), Struct_2(Struct_1(28147i, 537f, vec4<bool>(true, true, false, false)), -1i), vec4<bool>(true, false, false, false), -19072i, vec4<i32>(58114i, 1i, -40130i, 40568i)), Struct_3(vec4<i32>(15423i, 21399i, 2147483647i, -35767i), Struct_2(Struct_1(11710i, 1637f, vec4<bool>(true, true, false, true)), 0i), vec4<bool>(true, true, false, false), -25846i, vec4<i32>(1i, 0i, 31263i, 0i)), Struct_3(vec4<i32>(-33278i, -25772i, 0i, -34559i), Struct_2(Struct_1(-10086i, -160f, vec4<bool>(true, false, false, true)), -22186i), vec4<bool>(false, true, true, false), 0i, vec4<i32>(2147483647i, 0i, -45224i, -1i)), Struct_3(vec4<i32>(11831i, -1301i, 31126i, -16620i), Struct_2(Struct_1(i32(-2147483648), 1000f, vec4<bool>(true, false, true, true)), 1218i), vec4<bool>(true, false, false, false), 64868i, vec4<i32>(30840i, -1i, i32(-2147483648), -53688i)), Struct_3(vec4<i32>(-435i, 16975i, -41086i, -17224i), Struct_2(Struct_1(1i, 1000f, vec4<bool>(true, false, false, true)), -1i), vec4<bool>(true, false, false, false), 34557i, vec4<i32>(0i, i32(-2147483648), 39800i, 35303i)), Struct_3(vec4<i32>(-68849i, i32(-2147483648), 2147483647i, -8710i), Struct_2(Struct_1(27331i, 1086f, vec4<bool>(true, true, false, true)), -4791i), vec4<bool>(false, true, false, false), -4510i, vec4<i32>(1i, 76288i, 5817i, 0i)), Struct_3(vec4<i32>(-37094i, 1076i, 0i, 21483i), Struct_2(Struct_1(31021i, -243f, vec4<bool>(false, true, false, false)), 1i), vec4<bool>(true, false, true, false), 22701i, vec4<i32>(2147483647i, 0i, -26885i, 14791i)), Struct_3(vec4<i32>(16506i, -12911i, 11922i, i32(-2147483648)), Struct_2(Struct_1(6524i, 250f, vec4<bool>(true, false, false, false)), -32447i), vec4<bool>(false, true, false, false), -17984i, vec4<i32>(2147483647i, 1081i, 22266i, 0i)), Struct_3(vec4<i32>(16705i, -1i, 17597i, 0i), Struct_2(Struct_1(-46085i, -287f, vec4<bool>(true, false, false, true)), -56618i), vec4<bool>(false, false, false, true), 1i, vec4<i32>(-628i, -8413i, i32(-2147483648), 1i)), Struct_3(vec4<i32>(15465i, 3658i, 2147483647i, -1i), Struct_2(Struct_1(-1i, -307f, vec4<bool>(false, false, false, true)), 0i), vec4<bool>(true, false, true, false), 2147483647i, vec4<i32>(15802i, 26057i, 2147483647i, 21494i)), Struct_3(vec4<i32>(0i, 78776i, -20398i, -1i), Struct_2(Struct_1(46337i, 510f, vec4<bool>(false, true, true, true)), 1i), vec4<bool>(false, true, true, true), 1i, vec4<i32>(i32(-2147483648), -49876i, -1i, 1i)), Struct_3(vec4<i32>(16115i, -1i, 8675i, i32(-2147483648)), Struct_2(Struct_1(20356i, -280f, vec4<bool>(true, true, true, false)), 10964i), vec4<bool>(true, true, false, false), 26790i, vec4<i32>(-1i, -50047i, -41255i, 0i)), Struct_3(vec4<i32>(-70640i, 44895i, i32(-2147483648), -1i), Struct_2(Struct_1(1i, 288f, vec4<bool>(true, true, false, false)), -38809i), vec4<bool>(true, true, true, true), -25767i, vec4<i32>(1i, 1i, 25545i, 2147483647i)), Struct_3(vec4<i32>(-19327i, 1550i, 34586i, 964i), Struct_2(Struct_1(0i, 738f, vec4<bool>(true, true, false, false)), -21471i), vec4<bool>(false, false, true, true), -1i, vec4<i32>(-22990i, -1i, 6967i, -51067i)), Struct_3(vec4<i32>(-3592i, 2147483647i, -16938i, i32(-2147483648)), Struct_2(Struct_1(i32(-2147483648), 371f, vec4<bool>(true, true, false, false)), 1i), vec4<bool>(true, false, false, true), i32(-2147483648), vec4<i32>(-9859i, 1i, -1i, -1i)), Struct_3(vec4<i32>(3892i, 60118i, 31983i, 38228i), Struct_2(Struct_1(-1i, -1738f, vec4<bool>(true, true, true, true)), -5724i), vec4<bool>(true, false, false, true), 1i, vec4<i32>(-1i, 0i, -29403i, 1i)), Struct_3(vec4<i32>(4967i, 2147483647i, 2147483647i, 2147483647i), Struct_2(Struct_1(-35527i, -287f, vec4<bool>(true, true, true, false)), 0i), vec4<bool>(false, false, true, false), -37465i, vec4<i32>(2147483647i, 0i, i32(-2147483648), 0i)), Struct_3(vec4<i32>(2147483647i, 0i, -13204i, 2147483647i), Struct_2(Struct_1(11561i, 1081f, vec4<bool>(false, false, false, false)), 16912i), vec4<bool>(true, true, true, true), 1i, vec4<i32>(14239i, -12595i, 1i, 0i)), Struct_3(vec4<i32>(1523i, -1i, 15622i, 0i), Struct_2(Struct_1(41779i, 361f, vec4<bool>(true, false, false, true)), i32(-2147483648)), vec4<bool>(false, false, false, false), -1i, vec4<i32>(-10386i, 44356i, 1i, -20874i)));

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<Struct_3, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, _wgslsmith_f_op_f32(max(2005f, _wgslsmith_div_f32(-436f, 1035f)))) * vec2<f32>(-695f, -703f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1514f, _wgslsmith_f_op_f32(-403f + -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(420f)), _wgslsmith_f_op_f32(round(318f)))))));
    return -50552i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(1078f + arg_0.b))), -1218f);
    global1 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(~(~arg_2), 0u), u_input.a.x);
    global1 = arg_2;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f));
    return Struct_3(~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(2147483647i, 44470i, 17532i, 5946i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(2147483647i, arg_0.a, -1i, -64910i), vec4<i32>(arg_0.a, 0i, -1i, 15437i), arg_0.c.x), vec4<i32>(-35932i, 48751i, arg_0.a, var_1.a))), Struct_2(arg_0, func_3(2147483647i)), arg_0.c, ~max(~(-arg_0.a), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.a, var_1.a), firstLeadingBit(-2147483647i))), vec4<i32>(-select(~var_1.a, _wgslsmith_mod_i32(-1i, -11359i), arg_1 == var_1.c.x), arg_0.a, 2147483647i, var_1.a));
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = func_2(arg_0.b.a, true, select(~_wgslsmith_mult_u32(u_input.a.x, ~26908u), _wgslsmith_mult_u32(~11908u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 30107u), vec2<u32>(1u, 19848u)), min(u_input.a.x, u_input.a.x)), func_2(func_2(func_2(Struct_1(7924i, arg_0.b.a.b, arg_0.c), true, 62248u).b.a, u_input.a.x < u_input.a.x, 51334u).b.a, func_2(arg_0.b.a, true, u_input.b.x).c.x && true, 1u).c.x)).b;
    var var_1 = abs(9780u);
    var_1 = 4294967295u;
    global0 = array<Struct_3, 28>();
    var var_2 = func_2(Struct_1(-1i, -2156f, vec4<bool>(abs(11121u) != _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.a.x), false, !(!var_0.a.c.x), func_2(func_2(var_0.a, arg_0.c.x, u_input.a.x).b.a, var_0.a.c.x & var_0.a.c.x, ~9067u).c.x)), var_0.a.c.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), 1u)));
    return u_input.b.x;
}

fn func_5(arg_0: u32, arg_1: i32) -> i32 {
    let var_0 = func_2(Struct_1(-2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1164f, 1279f))))), !vec4<bool>(any(vec3<bool>(true, false, true)), func_2(Struct_1(arg_1, -1106f, vec4<bool>(false, false, true, true)), true, 29339u).b.a.c.x, any(vec4<bool>(false, true, false, true)), false)), true, ~(~(4294967295u >> (u_input.b.x % 32u)))).b;
    var var_1 = var_0.a.b;
    let var_2 = vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(trunc(var_0.a.b)), 712f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(430f * _wgslsmith_f_op_f32(f32(-1f) * -441f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.b))), func_2(func_2(Struct_1(-40106i, var_0.a.b, vec4<bool>(true, false, var_0.a.c.x, false)), var_0.a.c.x, 104520u).b.a, true, firstTrailingBit(68927u)).b.a.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1773f, var_2.x, func_2(Struct_1(-2147483647i, _wgslsmith_f_op_f32(max(-834f, -258f)), select(var_0.a.c, vec4<bool>(false, false, var_0.a.c.x, var_0.a.c.x), var_0.a.c.x)), select(true, true, any(var_0.a.c.yzx)), arg_0).b.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b + var_2.x) - _wgslsmith_f_op_f32(var_2.x * var_2.x))))));
    let var_4 = func_2(Struct_1(var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - var_3.x))), var_0.a.c), false || var_0.a.c.x, ~51419u);
    return ~(var_4.d << (arg_0 % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>) -> vec4<bool> {
    global0 = array<Struct_3, 28>();
    let var_0 = arg_0.b;
    var var_1 = func_5(min(36645u, max(func_4(func_2(Struct_1(53832i, -1140f, vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, true)), false, u_input.a.x)), abs(u_input.a.x))), 1998i & (arg_1 & (1i & firstTrailingBit(arg_1))));
    var_1 = ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, firstTrailingBit(arg_1)), ~arg_0.e.x) >> ((~(~(u_input.a.x >> (u_input.a.x % 32u))) << (7539u % 32u)) % 32u);
    let var_2 = -5640i | -arg_1;
    return var_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_i32(-4982i, -(~18363i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(137f, 546f))), !(!func_1(Struct_3(vec4<i32>(0i, 10845i, 39078i, 10505i), Struct_2(Struct_1(0i, 339f, vec4<bool>(false, false, true, false)), 2147483647i), vec4<bool>(true, true, false, false), 1i, vec4<i32>(-2147483647i, 12982i, -1i, -788i)), -12398i, vec3<f32>(988f, 1576f, 145f)))), -_wgslsmith_add_i32(1i, ~(~(-15254i))));
    global1 = abs(4294967295u);
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, _wgslsmith_div_i32(1i << (_wgslsmith_clamp_u32(1u, u_input.b.x, 1u) % 32u), -1i)), max(~firstTrailingBit(~vec3<i32>(2147483647i, var_0.a.a, var_0.a.a)), ~(~(vec3<i32>(-2147483647i, var_0.a.a, -22915i) >> (u_input.b.yzz % vec3<u32>(32u))))), _wgslsmith_sub_vec3_i32(select(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.b, -2147483647i), vec3<i32>(var_0.b, 41555i, -1i))), vec3<i32>(_wgslsmith_sub_i32(var_0.b, 30001i), i32(-1i) * -26869i, reverseBits(1i)), !var_0.a.c.x), min(~(~vec3<i32>(var_0.b, -2147483647i, -1i)), -countOneBits(vec3<i32>(var_0.a.a, var_0.a.a, var_0.a.a)))));
    var var_2 = func_2(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)), select(var_0.a.c, func_1(Struct_3(vec4<i32>(1i, var_0.a.a, 61224i, var_0.b), Struct_2(var_0.a, var_0.a.a), vec4<bool>(var_0.a.c.x, false, false, false), var_0.b, vec4<i32>(var_1.x, 0i, var_0.b, var_0.a.a)), _wgslsmith_mod_i32(var_0.a.a, var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1262f, 1000f, -1246f))), !(!vec4<bool>(true, false, var_0.a.c.x, true)))), !any(vec4<bool>(false, any(vec2<bool>(var_0.a.c.x, true)), false, var_0.a.c.x)), countOneBits(~(_wgslsmith_div_u32(101074u, u_input.a.x) & 97053u))).b;
    var_0 = func_2(func_2(var_2.a, !(var_2.a.b >= _wgslsmith_f_op_f32(trunc(-1768f))), countOneBits(u_input.a.x)).b.a, true, abs(38797u)).b;
    let var_3 = Struct_3(-(~reverseBits(max(vec4<i32>(221i, 2147483647i, var_1.x, var_2.a.a), vec4<i32>(30411i, 1i, var_0.a.a, 34583i)))), func_2(var_0.a, true, _wgslsmith_sub_u32(max(select(u_input.b.x, u_input.a.x, false), u_input.b.x), countOneBits(0u | u_input.a.x))).b, !vec4<bool>(true, any(vec4<bool>(var_0.a.c.x, var_2.a.c.x, var_0.a.c.x, var_0.a.c.x)), false, 2147483647i <= -var_1.x), var_0.a.a, vec4<i32>(-10347i >> (u_input.a.x % 32u), -var_2.a.a, _wgslsmith_div_i32(~var_0.b, func_2(var_0.a, false, 22122u).a.x), _wgslsmith_div_i32(-10406i, var_1.x) >> (~4294967295u % 32u)) ^ firstLeadingBit(-vec4<i32>(var_0.a.a, -46945i, var_0.b, -2147483647i)));
    let var_4 = 1086f;
    var var_5 = func_2(var_0.a, _wgslsmith_sub_u32(30243u, min(_wgslsmith_sub_u32(u_input.b.x, u_input.a.x), ~4294967295u)) == 30039u, ~(u_input.b.x << (~(~u_input.a.x) % 32u)));
    let var_6 = ~abs(select(~vec3<u32>(u_input.a.x, 0u, 23093u), vec3<u32>(0u, u_input.a.x, u_input.b.x), any(vec2<bool>(var_0.a.c.x, true)))) ^ (_wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, u_input.b.x, u_input.a.x)), ~(vec3<u32>(u_input.b.x, 6927u, 31776u) ^ u_input.a.yxz)) >> (max(~vec3<u32>(u_input.b.x, 7903u, u_input.b.x), ~min(u_input.b.wwy, vec3<u32>(26984u, u_input.b.x, 80760u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_6.x, ~countOneBits(4294967295u), min(~(1u >> (0u % 32u)), var_6.x), min(var_6.x & select(var_6.x, u_input.a.x, true), 43774u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.b.wy), ~min(u_input.b.wx, u_input.a.ww)), ~(~vec2<u32>(29914u, var_6.x))));
}

