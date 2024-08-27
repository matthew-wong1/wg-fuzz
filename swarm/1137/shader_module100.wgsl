struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec2<f32>(-1890f, 260f), vec4<u32>(4294967295u, 4294967295u, 26635u, 1u), -1735f), Struct_1(vec2<f32>(-916f, 809f), vec4<u32>(0u, 2851u, 4294967295u, 42632u), -992f), vec3<u32>(4294967295u, 119594u, 52551u), false), Struct_2(Struct_1(vec2<f32>(-1405f, -787f), vec4<u32>(28878u, 4294967295u, 1u, 10966u), -2193f), Struct_1(vec2<f32>(2633f, -590f), vec4<u32>(11326u, 61062u, 13934u, 6109u), -288f), vec3<u32>(29201u, 0u, 1u), false), Struct_2(Struct_1(vec2<f32>(-2440f, -734f), vec4<u32>(0u, 6251u, 26339u, 88883u), 1736f), Struct_1(vec2<f32>(396f, -1000f), vec4<u32>(50368u, 4294967295u, 1u, 1u), -485f), vec3<u32>(1u, 4294967295u, 0u), true), Struct_2(Struct_1(vec2<f32>(-794f, 997f), vec4<u32>(86574u, 32898u, 6639u, 1u), -885f), Struct_1(vec2<f32>(-583f, 910f), vec4<u32>(23647u, 1876u, 10137u, 1u), -255f), vec3<u32>(15837u, 1u, 18774u), false), Struct_2(Struct_1(vec2<f32>(-442f, 449f), vec4<u32>(1u, 9592u, 19069u, 53549u), -1617f), Struct_1(vec2<f32>(-1966f, -1017f), vec4<u32>(4294967295u, 48218u, 0u, 39289u), -1549f), vec3<u32>(1u, 0u, 0u), true), Struct_2(Struct_1(vec2<f32>(258f, 1770f), vec4<u32>(1u, 4294967295u, 17793u, 92044u), 199f), Struct_1(vec2<f32>(629f, -1000f), vec4<u32>(1u, 0u, 1u, 4294967295u), 1000f), vec3<u32>(1u, 68518u, 5708u), false), Struct_2(Struct_1(vec2<f32>(-1302f, -416f), vec4<u32>(0u, 14883u, 22240u, 0u), 890f), Struct_1(vec2<f32>(1000f, -1508f), vec4<u32>(47774u, 4294967295u, 27621u, 37684u), 429f), vec3<u32>(1u, 24878u, 50929u), false), Struct_2(Struct_1(vec2<f32>(307f, 293f), vec4<u32>(0u, 7781u, 0u, 0u), -416f), Struct_1(vec2<f32>(649f, -1078f), vec4<u32>(51607u, 25411u, 14404u, 121218u), 119f), vec3<u32>(34611u, 4294967295u, 57883u), true), Struct_2(Struct_1(vec2<f32>(-1645f, 845f), vec4<u32>(81212u, 11488u, 1u, 73763u), 536f), Struct_1(vec2<f32>(-681f, -1161f), vec4<u32>(1u, 4294967295u, 1u, 8441u), -1000f), vec3<u32>(2162u, 1u, 40048u), false), Struct_2(Struct_1(vec2<f32>(978f, -672f), vec4<u32>(61860u, 0u, 1627u, 4294967295u), -1417f), Struct_1(vec2<f32>(1160f, 507f), vec4<u32>(43904u, 4294967295u, 30436u, 29061u), -168f), vec3<u32>(19074u, 0u, 4294967295u), false), Struct_2(Struct_1(vec2<f32>(-583f, -275f), vec4<u32>(48211u, 61396u, 1u, 19791u), -1559f), Struct_1(vec2<f32>(-594f, -544f), vec4<u32>(0u, 1u, 1u, 80820u), -420f), vec3<u32>(1u, 56826u, 1u), true), Struct_2(Struct_1(vec2<f32>(-1039f, -1000f), vec4<u32>(1u, 10034u, 4294967295u, 4294967295u), -126f), Struct_1(vec2<f32>(319f, -399f), vec4<u32>(96038u, 10051u, 36u, 15435u), -260f), vec3<u32>(28027u, 1u, 24222u), false), Struct_2(Struct_1(vec2<f32>(-214f, 942f), vec4<u32>(78617u, 4294967295u, 0u, 1u), -475f), Struct_1(vec2<f32>(570f, 908f), vec4<u32>(4294967295u, 22133u, 4294967295u, 4294967295u), 687f), vec3<u32>(0u, 0u, 7847u), true), Struct_2(Struct_1(vec2<f32>(-100f, -553f), vec4<u32>(0u, 8777u, 4294967295u, 1u), 935f), Struct_1(vec2<f32>(-784f, 1158f), vec4<u32>(1u, 18607u, 14265u, 25237u), -351f), vec3<u32>(0u, 28371u, 13028u), true), Struct_2(Struct_1(vec2<f32>(-1045f, 329f), vec4<u32>(0u, 1u, 4294967295u, 0u), -626f), Struct_1(vec2<f32>(653f, -149f), vec4<u32>(41893u, 17620u, 4294967295u, 0u), 1608f), vec3<u32>(4294967295u, 7300u, 63129u), false), Struct_2(Struct_1(vec2<f32>(-957f, 513f), vec4<u32>(55346u, 15124u, 4294967295u, 4294967295u), 450f), Struct_1(vec2<f32>(-303f, -816f), vec4<u32>(1u, 0u, 63302u, 1u), 862f), vec3<u32>(4972u, 4294967295u, 1u), false), Struct_2(Struct_1(vec2<f32>(755f, 464f), vec4<u32>(0u, 1u, 22835u, 26615u), 2267f), Struct_1(vec2<f32>(-1111f, 217f), vec4<u32>(4294967295u, 57275u, 1u, 0u), -1000f), vec3<u32>(0u, 5110u, 607u), true), Struct_2(Struct_1(vec2<f32>(475f, -960f), vec4<u32>(42705u, 4294967295u, 1u, 43582u), -227f), Struct_1(vec2<f32>(1046f, 120f), vec4<u32>(0u, 1u, 0u, 4294967295u), -185f), vec3<u32>(0u, 4294967295u, 13252u), true), Struct_2(Struct_1(vec2<f32>(-612f, -1758f), vec4<u32>(62023u, 0u, 11325u, 77768u), -510f), Struct_1(vec2<f32>(-301f, -640f), vec4<u32>(68796u, 0u, 98465u, 4294967295u), 754f), vec3<u32>(4294967295u, 40337u, 16687u), true), Struct_2(Struct_1(vec2<f32>(-153f, -1368f), vec4<u32>(31321u, 4294967295u, 49471u, 0u), -116f), Struct_1(vec2<f32>(753f, 853f), vec4<u32>(8282u, 1u, 63648u, 1u), -115f), vec3<u32>(4294967295u, 36799u, 44157u), false), Struct_2(Struct_1(vec2<f32>(-224f, -1761f), vec4<u32>(26904u, 0u, 30091u, 17743u), 264f), Struct_1(vec2<f32>(595f, 1084f), vec4<u32>(18290u, 38326u, 4294967295u, 14026u), 162f), vec3<u32>(8169u, 1u, 4294967295u), true), Struct_2(Struct_1(vec2<f32>(-342f, 180f), vec4<u32>(44450u, 15409u, 35773u, 112u), 112f), Struct_1(vec2<f32>(622f, -409f), vec4<u32>(1u, 13659u, 1u, 63742u), 124f), vec3<u32>(4294967295u, 25962u, 108301u), true), Struct_2(Struct_1(vec2<f32>(290f, 2035f), vec4<u32>(1u, 1468u, 4294967295u, 21823u), 711f), Struct_1(vec2<f32>(1000f, -766f), vec4<u32>(21390u, 0u, 4294967295u, 0u), 1000f), vec3<u32>(39544u, 1u, 58968u), false), Struct_2(Struct_1(vec2<f32>(519f, 472f), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), -479f), Struct_1(vec2<f32>(348f, 137f), vec4<u32>(0u, 16979u, 36383u, 4294967295u), -1071f), vec3<u32>(1u, 4294967295u, 0u), true), Struct_2(Struct_1(vec2<f32>(1955f, -1703f), vec4<u32>(0u, 6308u, 0u, 0u), 305f), Struct_1(vec2<f32>(-1479f, -589f), vec4<u32>(0u, 31781u, 0u, 1u), 445f), vec3<u32>(67601u, 63922u, 7850u), true), Struct_2(Struct_1(vec2<f32>(-221f, -782f), vec4<u32>(17958u, 1u, 0u, 1u), -1040f), Struct_1(vec2<f32>(934f, 966f), vec4<u32>(0u, 20789u, 0u, 0u), -1102f), vec3<u32>(21352u, 1u, 4294967295u), false), Struct_2(Struct_1(vec2<f32>(-547f, 423f), vec4<u32>(72465u, 4294967295u, 4294967295u, 4294967295u), 559f), Struct_1(vec2<f32>(402f, 267f), vec4<u32>(33390u, 0u, 5231u, 4294967295u), -1561f), vec3<u32>(0u, 50845u, 0u), false));

var<private> global1: array<i32, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), true, true, !(~1i != -global1[_wgslsmith_index_u32(reverseBits(108949u), 7u)]));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 87505u)), vec2<u32>(1u, reverseBits(38274u))), firstTrailingBit(~8857u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 12327u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 4810u))), ~(~select(59964u, 64372u, var_0.x))), 27u)], Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(149f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(294f, -781f) - vec2<f32>(1640f, 1195f))), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 12888u, 1u, 1u), vec4<u32>(33325u, 0u, 65865u, 77208u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-502f + -3019f)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-229f, 784f), vec2<f32>(-572f, -229f)))), countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), -276f), select(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 43801u, 67132u), vec3<u32>(37243u, 0u, 54115u)), vec3<u32>(1u, 1u, select(1u, 34518u, var_0.x)), global1[_wgslsmith_index_u32(reverseBits(1u), 7u)] < ~0i), any(select(var_0.zwx, var_0.yzz, true)) | var_0.x), !var_0.yz, !vec4<bool>(any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, false, var_0.x), var_0.x)), select(true, false, all(var_0.ww)), any(var_0), !var_0.x), var_0);
    global1 = array<i32, 7>();
    let var_2 = select(var_1.d, select(select(!(!vec4<bool>(var_0.x, var_1.c.x, true, false)), vec4<bool>(var_1.b.d, !var_1.e.x, u_input.a >= -1i, !var_1.c.x), var_0), vec4<bool>(any(select(vec4<bool>(true, var_0.x, false, var_1.a.d), vec4<bool>(var_1.d.x, var_0.x, true, var_1.b.d), true)), false, any(var_0) | true, true), all(!var_0)), true);
    var var_3 = all(!vec3<bool>(any(var_0.ywz) != true, true, var_2.x));
    return var_1.a.b.b.x;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0)))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, firstTrailingBit(func_3()), 35660u, min(~0u, ~58633u)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1708f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1816f)), 527f)));
    global0 = array<Struct_2, 27>();
    var var_2 = global0[_wgslsmith_index_u32(var_1.b.x, 27u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1888f, var_1.a.x, var_2.a.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1124f, 894f, -566f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1610f, arg_0) - vec3<f32>(838f, var_2.a.a.x, -267f)))), !vec3<bool>(var_1.b.x > var_2.a.b.x, var_2.d || var_2.d, true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    global1 = array<i32, 7>();
    let var_0 = max(-52764i, min(u_input.a, 0i)) | (i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 7u)], -9941i), -global1[_wgslsmith_index_u32(arg_1.b.b.x, 7u)], u_input.a));
    global1 = array<i32, 7>();
    global1 = array<i32, 7>();
    let var_1 = _wgslsmith_mod_vec2_i32((vec2<i32>(20812i, global1[_wgslsmith_index_u32(4294967295u, 7u)]) ^ -vec2<i32>(var_0, global1[_wgslsmith_index_u32(71191u, 7u)])) ^ max(firstLeadingBit(vec2<i32>(-14763i, -13639i)), reverseBits(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mod_vec2_i32(-reverseBits(vec2<i32>(var_0, u_input.a)), -vec2<i32>(var_0, -2147483647i) ^ ~vec2<i32>(var_0, 0i))) << (arg_1.c.xx % vec2<u32>(32u));
    return 1000f;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, arg_1)) + arg_1));
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1423f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2569f, arg_1))), ~(vec4<u32>(1u, 32029u, 4294967295u, 33996u) | vec4<u32>(9398u, 37513u, arg_0, 0u)), 243f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, -245f))), min(~vec4<u32>(55558u, 5006u, 1u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, 1u) & vec4<u32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(284f * arg_1)), max(~vec3<u32>(1u, arg_0, 4294967295u), max(vec3<u32>(49479u, arg_0, 4294967295u) & vec3<u32>(arg_0, arg_0, arg_0), abs(vec3<u32>(5676u, 48570u, 87607u)))), true)));
    let var_2 = any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), any(vec3<bool>(false, true, false)) & (arg_0 != 0u))) | (true | !(select(true, true, false) & select(false, true, true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(238f, -1943f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))) + vec2<f32>(365f, _wgslsmith_f_op_f32(1131f * arg_1)))), ~select(~(vec4<u32>(37921u, 10617u, arg_0, 44884u) ^ vec4<u32>(1u, 1u, 59083u, arg_0)), vec4<u32>(arg_0, ~arg_0, ~arg_0, 106056u), ~(-1i) < _wgslsmith_add_i32(-1i, u_input.a)), arg_1);
    var var_4 = arg_0;
    return Struct_4(Struct_1(var_3.a, vec4<u32>(firstTrailingBit(var_3.b.x), 1u, arg_0, ~1u), var_3.a.x), vec4<bool>(var_2, _wgslsmith_div_i32(-6369i, ~global1[_wgslsmith_index_u32(arg_0, 7u)]) < _wgslsmith_div_i32(u_input.a, 16048i), !var_2, true), select(select(vec3<bool>(true, var_3.a.x < 687f, !var_2), select(!vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, false), !vec3<bool>(false, false, var_2)), select(vec3<bool>(true, false, false), !vec3<bool>(var_2, false, true), true)), vec3<bool>(var_2, all(vec2<bool>(var_2, true)), all(select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), vec2<bool>(var_2, var_2)))), select(vec3<bool>(true, true, any(vec3<bool>(var_2, true, var_2))), select(vec3<bool>(true, var_2, var_2), select(vec3<bool>(true, var_2, false), vec3<bool>(var_2, false, var_2), var_2), false), select(select(vec3<bool>(var_2, true, false), vec3<bool>(var_2, true, var_2), vec3<bool>(true, false, false)), vec3<bool>(var_2, var_2, true), true))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4) -> f32 {
    let var_0 = vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.c.x);
    let var_1 = var_0.x;
    global0 = array<Struct_2, 27>();
    var var_2 = func_1(reverseBits(_wgslsmith_mult_u32(max(~0u, _wgslsmith_sub_u32(4294967295u, arg_0.x)), arg_1.a.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(333f + 511f), arg_1.a.c)), -1490f)), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1095f)))))).x)));
    var var_3 = ~select(max(vec3<i32>(u_input.a, 47341i, 1i), ~vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)])), -select(~vec3<i32>(0i, -7498i, 16544i), _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 7u)], 12267i, 51466i), vec3<i32>(u_input.a, 2147483647i, 0i)), vec3<bool>(true, var_2.b.x, var_1)), select(arg_1.c, select(vec3<bool>(true, true, false), var_0.zyy, vec3<bool>(false, false, var_1)), any(vec4<bool>(false, true, true, arg_1.b.x))));
    return 933f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 7>();
    global1 = array<i32, 7>();
    global0 = array<Struct_2, 27>();
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(174f, -408f), vec2<f32>(-320f, -103f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(556f, -1199f))))), vec4<u32>(countOneBits(~1u), 44805u, ~_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(39396u, 18007u), 75197u)), _wgslsmith_f_op_f32(func_5(~(~vec2<u32>(42453u, 75609u)), func_1(1u, 587f)))), select(vec4<bool>(false, false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), all(vec2<bool>(false, true))), !func_1(~0u, _wgslsmith_f_op_f32(sign(170f))).b, !vec4<bool>(true, any(vec2<bool>(true, false)), true, true)), select(vec3<bool>(true, true, _wgslsmith_add_u32(50446u, 8457u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(7533u, 31223u, 0u, 21647u), vec4<u32>(1u, 29632u, 22612u, 33718u))), select(vec3<bool>(all(vec3<bool>(false, true, true)), false, any(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))), !vec3<bool>(true, false, all(vec2<bool>(true, false)))));
    global1 = array<i32, 7>();
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(~4294967295u, 27u)], global0[_wgslsmith_index_u32(~1u, 27u)], vec2<bool>(var_0.c.x, true), func_1(var_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-859f)))).b, select(vec4<bool>(!(!var_0.c.x), any(func_1(19868u, var_0.a.c).b.yy), select(any(vec3<bool>(var_0.b.x, false, var_0.c.x)), true, true), var_0.b.x), vec4<bool>(true, true, true, !any(vec3<bool>(true, var_0.c.x, var_0.c.x))), select(vec4<bool>(var_0.c.x, var_0.b.x, true, !var_0.c.x), !select(vec4<bool>(true, var_0.c.x, false, var_0.b.x), vec4<bool>(true, var_0.c.x, true, true), var_0.b), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_0.a.b.x, select(_wgslsmith_mod_u32(~20046u, ~0u), ~var_0.a.b.x, func_1(1u, _wgslsmith_f_op_f32(min(var_1.b.a.a.x, var_0.a.a.x))).b.x) ^ ~countOneBits(0u));
}

