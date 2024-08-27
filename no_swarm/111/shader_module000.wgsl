struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 55206u, 4294967295u);

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-56610i, 2147483647i, 0i, -13010i), vec4<i32>(0i, -20751i, i32(-2147483648), 1i), vec4<i32>(0i, 0i, 1i, -1i), vec4<i32>(-69317i, -10656i, 1i, 1190i), vec4<i32>(50605i, 3080i, -1i, 27186i), vec4<i32>(-44263i, 16425i, -2591i, 31471i), vec4<i32>(i32(-2147483648), -1i, 57751i, i32(-2147483648)), vec4<i32>(24802i, 3092i, 0i, 32346i), vec4<i32>(5415i, 2308i, 18106i, 69259i), vec4<i32>(1i, 15715i, 0i, -40744i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -1i), vec4<i32>(38072i, -2346i, -1i, 1i), vec4<i32>(22391i, -32254i, 2147483647i, -7687i), vec4<i32>(46275i, 6145i, 7148i, -1i), vec4<i32>(2147483647i, 2147483647i, -58159i, 34464i), vec4<i32>(-1i, 2147483647i, 1i, -269i), vec4<i32>(27751i, 0i, 67028i, i32(-2147483648)), vec4<i32>(1i, -1i, 1i, 33774i), vec4<i32>(-2993i, 4354i, i32(-2147483648), -21076i), vec4<i32>(0i, i32(-2147483648), 0i, -1i), vec4<i32>(15524i, -1i, -39746i, 1i), vec4<i32>(2147483647i, -1i, 1i, 41932i), vec4<i32>(1i, i32(-2147483648), -29585i, 1805i), vec4<i32>(0i, -1i, i32(-2147483648), 36296i), vec4<i32>(-28507i, 0i, -4822i, -28176i), vec4<i32>(-35388i, 26898i, 0i, -8304i));

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<u32>(21372u, 1u, 59316u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(707f, 552f, -1392f, -1531f), vec4<i32>(0i, 57608i, 1i, -1i)), Struct_2(vec3<u32>(69384u, 1u, 1u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(1293f, -1000f, -1635f, -669f), vec4<i32>(-1i, -1i, 0i, i32(-2147483648))), Struct_2(vec3<u32>(0u, 13739u, 53218u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(-1301f, -2498f, 1760f, 137f), vec4<i32>(20369i, 19843i, 2147483647i, 27460i)), Struct_2(vec3<u32>(19129u, 4294967295u, 0u), Struct_1(vec2<bool>(true, false), false), vec4<f32>(-771f, 817f, -858f, -494f), vec4<i32>(i32(-2147483648), -5830i, i32(-2147483648), 48630i)), Struct_2(vec3<u32>(1u, 40766u, 44206u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(-221f, -944f, 299f, 1298f), vec4<i32>(1i, 1098i, 36770i, -65435i)), Struct_2(vec3<u32>(64148u, 12309u, 4294967295u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(-2341f, 257f, 552f, 1403f), vec4<i32>(1i, -52306i, 58927i, 29042i)), Struct_2(vec3<u32>(1u, 45722u, 4294967295u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(-668f, 2666f, 490f, 1000f), vec4<i32>(-1i, 0i, 1i, i32(-2147483648))), Struct_2(vec3<u32>(38910u, 78882u, 1u), Struct_1(vec2<bool>(true, true), false), vec4<f32>(604f, 461f, -1494f, 947f), vec4<i32>(-22368i, 2147483647i, i32(-2147483648), 0i)), Struct_2(vec3<u32>(4932u, 7110u, 0u), Struct_1(vec2<bool>(false, false), false), vec4<f32>(587f, 2089f, 1000f, 792f), vec4<i32>(-1i, i32(-2147483648), -24284i, i32(-2147483648))), Struct_2(vec3<u32>(1u, 1u, 23722u), Struct_1(vec2<bool>(true, false), true), vec4<f32>(401f, 568f, -1138f, 738f), vec4<i32>(-1i, 0i, 2147483647i, -15073i)), Struct_2(vec3<u32>(39888u, 4294967295u, 6474u), Struct_1(vec2<bool>(true, true), true), vec4<f32>(267f, 733f, -1287f, 1165f), vec4<i32>(-1i, i32(-2147483648), 1i, 9342i)), Struct_2(vec3<u32>(0u, 36844u, 36210u), Struct_1(vec2<bool>(true, true), true), vec4<f32>(-927f, -706f, -714f, -561f), vec4<i32>(-1i, -23725i, 14129i, i32(-2147483648))), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(295f, -554f, 619f, -127f), vec4<i32>(1i, 10845i, -19389i, 21557i)), Struct_2(vec3<u32>(4294967295u, 1u, 9080u), Struct_1(vec2<bool>(false, false), true), vec4<f32>(353f, -1000f, 2115f, 437f), vec4<i32>(32185i, 1049i, 43475i, 1i)), Struct_2(vec3<u32>(1174u, 5229u, 22786u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(-990f, -589f, -257f, 1097f), vec4<i32>(6961i, -10897i, i32(-2147483648), 26115i)), Struct_2(vec3<u32>(31984u, 1u, 43924u), Struct_1(vec2<bool>(false, false), true), vec4<f32>(-1345f, -203f, 308f, -1231f), vec4<i32>(2147483647i, 33511i, i32(-2147483648), 45480i)), Struct_2(vec3<u32>(1u, 58644u, 16732u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(491f, 137f, -724f, -103f), vec4<i32>(-21500i, 0i, i32(-2147483648), i32(-2147483648))), Struct_2(vec3<u32>(27265u, 4294967295u, 104379u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(-372f, -482f, -216f, 2123f), vec4<i32>(-1i, i32(-2147483648), -60628i, 2147483647i)), Struct_2(vec3<u32>(85422u, 3839u, 0u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(1593f, 599f, -740f, 1112f), vec4<i32>(11827i, 18017i, i32(-2147483648), 54341i)), Struct_2(vec3<u32>(52936u, 4294967295u, 7945u), Struct_1(vec2<bool>(true, true), false), vec4<f32>(-380f, 585f, -1871f, 124f), vec4<i32>(-55645i, 0i, 0i, i32(-2147483648))), Struct_2(vec3<u32>(1u, 17080u, 80121u), Struct_1(vec2<bool>(true, true), false), vec4<f32>(264f, 395f, -420f, 827f), vec4<i32>(19139i, -36935i, 0i, 82180i)), Struct_2(vec3<u32>(0u, 35841u, 5566u), Struct_1(vec2<bool>(false, true), true), vec4<f32>(-618f, -1506f, -2379f, -146f), vec4<i32>(32286i, -15576i, 0i, -1i)), Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(-532f, -1193f, 1003f, 268f), vec4<i32>(0i, 1i, -37748i, 2147483647i)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec2<bool>(true, true), true), vec4<f32>(204f, -2488f, -2312f, -823f), vec4<i32>(-35881i, 0i, 1i, i32(-2147483648))), Struct_2(vec3<u32>(1u, 6924u, 85306u), Struct_1(vec2<bool>(true, false), false), vec4<f32>(-1475f, 1000f, -725f, 114f), vec4<i32>(-1i, -1i, -1i, 0i)), Struct_2(vec3<u32>(4294967295u, 54382u, 0u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(684f, 256f, 103f, -428f), vec4<i32>(44956i, 42620i, 0i, -4524i)), Struct_2(vec3<u32>(1u, 36040u, 23887u), Struct_1(vec2<bool>(true, false), true), vec4<f32>(441f, -307f, 684f, -151f), vec4<i32>(-993i, 1i, 2147483647i, 2147483647i)));

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<u32>(1u, 80345u, 0u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(687f, 296f, 1859f, 418f), vec4<i32>(9845i, 2147483647i, i32(-2147483648), -24145i)), Struct_2(vec3<u32>(0u, 0u, 30139u), Struct_1(vec2<bool>(false, true), false), vec4<f32>(1000f, -815f, -1991f, -1435f), vec4<i32>(2147483647i, i32(-2147483648), -65957i, 36040i)), Struct_2(vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec2<bool>(true, true), false), vec4<f32>(-1136f, 1040f, 1131f, 1195f), vec4<i32>(13713i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_2(vec3<u32>(38439u, 88050u, 5577u), Struct_1(vec2<bool>(false, false), true), vec4<f32>(-201f, 1559f, -1476f, -725f), vec4<i32>(-1736i, 0i, -1i, 0i)), Struct_2(vec3<u32>(0u, 34746u, 1u), Struct_1(vec2<bool>(true, true), false), vec4<f32>(907f, -500f, -729f, 1075f), vec4<i32>(-7898i, -47336i, -45404i, -4662i)), Struct_2(vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec2<bool>(true, false), false), vec4<f32>(1054f, -284f, 335f, 492f), vec4<i32>(2147483647i, -29802i, 27678i, -35720i)), Struct_2(vec3<u32>(5174u, 1u, 13271u), Struct_1(vec2<bool>(false, false), true), vec4<f32>(1023f, 671f, -405f, -525f), vec4<i32>(-4717i, -49337i, 4855i, 32237i)), Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(vec2<bool>(true, true), false), vec4<f32>(-1453f, -680f, 610f, -503f), vec4<i32>(-40405i, 21429i, 2910i, 1716i)), Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec2<bool>(true, true), false), vec4<f32>(-507f, 429f, 1646f, -1577f), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i)), Struct_2(vec3<u32>(1u, 1u, 1u), Struct_1(vec2<bool>(true, true), true), vec4<f32>(266f, -806f, -192f, 331f), vec4<i32>(-35926i, -13302i, 10878i, -18306i)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global1 = array<vec4<i32>, 26>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) + -1972f), arg_0));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~4294967295u), 3343u), u_input.c.xx, _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 1u), u_input.c.zw));
    var_1 = ~(~min(u_input.c.wz, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, var_1.x), u_input.c.yy)));
    return -(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.b.x))) << (u_input.c.yyy % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -533f, arg_2)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, arg_2, 650f), vec3<f32>(arg_1, -749f, 966f), vec3<bool>(arg_0.a.x, arg_0.a.x, false))))))));
    var var_1 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(~(~vec3<i32>(2147483647i, -2147483647i, u_input.a)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-37576i, u_input.b.x, u_input.a), vec3<i32>(-1i, u_input.b.x, u_input.a), vec3<i32>(2147483647i, u_input.b.x, 2147483647i))), func_3(arg_1), _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.a, -5173i), _wgslsmith_mod_i32(u_input.a, 1i), ~36416i), vec3<i32>(_wgslsmith_sub_i32(0i, u_input.b.x) >> (_wgslsmith_dot_vec2_u32(arg_3.xx, vec2<u32>(49503u, 30289u)) % 32u), ~u_input.b.x | 0i, 11553i)));
    var_0 = vec3<f32>(arg_1, arg_1, _wgslsmith_div_f32(1015f, _wgslsmith_f_op_f32(abs(var_0.x))));
    let var_2 = Struct_1(arg_0.a, any(!(!vec4<bool>(arg_0.b, arg_0.b, arg_0.a.x, arg_0.b))));
    global2 = array<Struct_2, 27>();
    return firstTrailingBit(_wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(60853u, 4294967295u, 0u)), u_input.c.zxz) | _wgslsmith_mult_vec3_u32(~abs(arg_3.xwy), vec3<u32>(~46940u, ~u_input.c.x, u_input.c.x)));
}

fn func_1() -> vec3<f32> {
    let var_0 = ~0u;
    global0 = ~max(_wgslsmith_clamp_vec3_u32(min(~u_input.c.yww, func_2(Struct_1(vec2<bool>(false, false), false), 1393f, 825f, vec4<u32>(4294967295u, var_0, 22517u, 24115u))), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), u_input.c.zzy ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_0, global0.x, u_input.c.x), u_input.c.zwy)), u_input.c.xyw);
    global3 = array<Struct_2, 10>();
    var var_1 = (false && !all(vec3<bool>(true, true, true))) | !all(vec4<bool>(true, true, true, true));
    var_1 = select(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1165f * _wgslsmith_f_op_f32(-813f + -1239f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-503f)))))) != _wgslsmith_f_op_f32(2106f * _wgslsmith_f_op_f32(step(244f, _wgslsmith_f_op_f32(round(108f))))), any(!vec3<bool>(false, true, all(vec3<bool>(true, false, true)))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(833f, -176f, -2041f), _wgslsmith_f_op_vec3_f32(vec3<f32>(593f, -291f, -190f) + vec3<f32>(-463f, 1017f, -1761f)))), vec3<f32>(-863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1025f + 1389f) + -1422f), -1000f), true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1792f, 194f, 1000f)))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<bool>) -> StorageBuffer {
    global0 = vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u | global0.x, u_input.c.x), ~u_input.c.x) | reverseBits(firstLeadingBit(u_input.c.x)), global0.x);
    return StorageBuffer(-35154i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(205f, -1158f)), _wgslsmith_f_op_f32(floor(770f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f))), -276f, true)), select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, (u_input.a != u_input.b.x) & all(vec2<bool>(true, false)), u_input.a != -u_input.b.x, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true))), any(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), false))));
}

