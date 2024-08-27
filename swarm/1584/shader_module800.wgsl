struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec3<bool>(false, true, true), Struct_2(true, Struct_1(vec3<f32>(-219f, 917f, -1541f), -526f, vec3<u32>(1u, 52801u, 0u)), Struct_1(vec3<f32>(-258f, -138f, -661f), -2140f, vec3<u32>(1u, 50101u, 31551u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, false, true), Struct_2(false, Struct_1(vec3<f32>(2977f, 403f, -1364f), 1000f, vec3<u32>(1u, 1u, 29374u)), Struct_1(vec3<f32>(404f, 1000f, -1521f), -275f, vec3<u32>(40625u, 4294967295u, 3318u))), vec2<bool>(true, true)), Struct_3(vec3<bool>(true, false, true), Struct_2(false, Struct_1(vec3<f32>(-1215f, -928f, 2102f), 926f, vec3<u32>(71219u, 0u, 61181u)), Struct_1(vec3<f32>(826f, -1318f, 1000f), -681f, vec3<u32>(4294967295u, 47141u, 33838u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, false, false), Struct_2(false, Struct_1(vec3<f32>(-526f, -410f, -1340f), 578f, vec3<u32>(0u, 7907u, 2299u)), Struct_1(vec3<f32>(1047f, -680f, -460f), 249f, vec3<u32>(0u, 4294967295u, 0u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(true, true, false), Struct_2(true, Struct_1(vec3<f32>(1000f, 1244f, 221f), 1390f, vec3<u32>(0u, 69541u, 1u)), Struct_1(vec3<f32>(205f, -807f, -550f), -137f, vec3<u32>(1u, 0u, 26864u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(true, true, true), Struct_2(true, Struct_1(vec3<f32>(-446f, 467f, -890f), 2130f, vec3<u32>(20170u, 70812u, 46114u)), Struct_1(vec3<f32>(1053f, -706f, -1820f), -367f, vec3<u32>(1u, 26174u, 4294967295u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(false, true, true), Struct_2(false, Struct_1(vec3<f32>(-282f, -1000f, -1606f), 649f, vec3<u32>(20932u, 80997u, 64026u)), Struct_1(vec3<f32>(1000f, -379f, -228f), -677f, vec3<u32>(0u, 18760u, 0u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(false, true, false), Struct_2(false, Struct_1(vec3<f32>(164f, 345f, -163f), 438f, vec3<u32>(0u, 0u, 0u)), Struct_1(vec3<f32>(-595f, -699f, 544f), 602f, vec3<u32>(25083u, 1u, 34018u))), vec2<bool>(true, true)), Struct_3(vec3<bool>(false, false, true), Struct_2(true, Struct_1(vec3<f32>(-1118f, 869f, 2337f), 649f, vec3<u32>(4294967295u, 13006u, 27615u)), Struct_1(vec3<f32>(-301f, -320f, 237f), 628f, vec3<u32>(1u, 74657u, 22158u))), vec2<bool>(true, true)), Struct_3(vec3<bool>(false, true, false), Struct_2(true, Struct_1(vec3<f32>(-661f, 1388f, -1325f), 453f, vec3<u32>(4294967295u, 43291u, 1u)), Struct_1(vec3<f32>(-222f, -1731f, 1891f), -513f, vec3<u32>(85355u, 4294967295u, 116170u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(true, false, false), Struct_2(false, Struct_1(vec3<f32>(-845f, -142f, -581f), 680f, vec3<u32>(63228u, 36698u, 0u)), Struct_1(vec3<f32>(-994f, -1478f, 680f), 667f, vec3<u32>(1u, 5440u, 48588u))), vec2<bool>(true, true)), Struct_3(vec3<bool>(true, false, false), Struct_2(false, Struct_1(vec3<f32>(1133f, 130f, 1000f), 210f, vec3<u32>(4294967295u, 13849u, 0u)), Struct_1(vec3<f32>(-1000f, -1671f, 1453f), -198f, vec3<u32>(1u, 139210u, 0u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(false, true, true), Struct_2(false, Struct_1(vec3<f32>(1077f, 826f, 811f), 674f, vec3<u32>(30775u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(2246f, -629f, 1404f), -154f, vec3<u32>(34821u, 53888u, 0u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(true, false, true), Struct_2(false, Struct_1(vec3<f32>(209f, -1336f, 495f), -703f, vec3<u32>(4294967295u, 1679u, 4294967295u)), Struct_1(vec3<f32>(-1425f, 1027f, -1207f), -1741f, vec3<u32>(4294967295u, 1u, 0u))), vec2<bool>(true, true)), Struct_3(vec3<bool>(false, false, false), Struct_2(false, Struct_1(vec3<f32>(-1009f, 486f, -819f), -1000f, vec3<u32>(0u, 624u, 55012u)), Struct_1(vec3<f32>(536f, 1649f, 487f), -1503f, vec3<u32>(0u, 1u, 1u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(false, false, false), Struct_2(true, Struct_1(vec3<f32>(-1235f, -737f, -1241f), 280f, vec3<u32>(0u, 0u, 92068u)), Struct_1(vec3<f32>(-270f, -472f, 352f), -766f, vec3<u32>(1u, 4294967295u, 0u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, true, true), Struct_2(false, Struct_1(vec3<f32>(-2426f, 262f, -331f), 403f, vec3<u32>(4294967295u, 1u, 5338u)), Struct_1(vec3<f32>(684f, 1294f, -373f), 1201f, vec3<u32>(41758u, 35044u, 1u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(true, false, true), Struct_2(false, Struct_1(vec3<f32>(2217f, 1878f, -1146f), -530f, vec3<u32>(4294967295u, 0u, 35378u)), Struct_1(vec3<f32>(1572f, -575f, 1000f), -719f, vec3<u32>(21945u, 13249u, 0u))), vec2<bool>(true, true)), Struct_3(vec3<bool>(true, false, true), Struct_2(true, Struct_1(vec3<f32>(1578f, 1287f, 316f), 1169f, vec3<u32>(0u, 4294967295u, 57894u)), Struct_1(vec3<f32>(184f, 286f, 2902f), -1140f, vec3<u32>(38732u, 0u, 0u))), vec2<bool>(true, false)), Struct_3(vec3<bool>(false, false, true), Struct_2(false, Struct_1(vec3<f32>(155f, -1000f, -1000f), -424f, vec3<u32>(4294967295u, 71386u, 10004u)), Struct_1(vec3<f32>(-297f, 1000f, 151f), -507f, vec3<u32>(1u, 15361u, 51143u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(true, false, false), Struct_2(false, Struct_1(vec3<f32>(-889f, 1148f, 473f), -1295f, vec3<u32>(13985u, 29352u, 5254u)), Struct_1(vec3<f32>(-2163f, 2193f, 795f), 851f, vec3<u32>(4294967295u, 4294967295u, 0u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, false, false), Struct_2(false, Struct_1(vec3<f32>(-345f, -556f, 501f), -2322f, vec3<u32>(45176u, 24291u, 1u)), Struct_1(vec3<f32>(-1457f, 1526f, 2171f), 1544f, vec3<u32>(24006u, 1u, 0u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(false, false, true), Struct_2(false, Struct_1(vec3<f32>(1604f, 250f, 1000f), -224f, vec3<u32>(8322u, 6255u, 9674u)), Struct_1(vec3<f32>(1943f, 1487f, 141f), 470f, vec3<u32>(1u, 0u, 1u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(true, true, true), Struct_2(false, Struct_1(vec3<f32>(-388f, 458f, 803f), 1482f, vec3<u32>(42555u, 124215u, 1u)), Struct_1(vec3<f32>(-2109f, -442f, 531f), -127f, vec3<u32>(1u, 0u, 35149u))), vec2<bool>(true, true)), Struct_3(vec3<bool>(true, true, true), Struct_2(true, Struct_1(vec3<f32>(868f, 1808f, -207f), -300f, vec3<u32>(26511u, 33074u, 1u)), Struct_1(vec3<f32>(404f, -195f, -488f), 809f, vec3<u32>(4294967295u, 74357u, 4294967295u))), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, true, true), Struct_2(true, Struct_1(vec3<f32>(-928f, -2177f, 332f), 1352f, vec3<u32>(5326u, 105777u, 4294967295u)), Struct_1(vec3<f32>(889f, 774f, -1592f), -1031f, vec3<u32>(4294967295u, 706u, 0u))), vec2<bool>(true, false)), Struct_3(vec3<bool>(false, false, false), Struct_2(true, Struct_1(vec3<f32>(959f, -385f, -2010f), -308f, vec3<u32>(20231u, 1u, 28128u)), Struct_1(vec3<f32>(499f, 929f, 1055f), 316f, vec3<u32>(4294967295u, 48086u, 120304u))), vec2<bool>(true, false)), Struct_3(vec3<bool>(false, true, true), Struct_2(true, Struct_1(vec3<f32>(-1000f, -427f, 1399f), -681f, vec3<u32>(1u, 1431u, 57663u)), Struct_1(vec3<f32>(-1849f, 752f, 1435f), -1993f, vec3<u32>(4294967295u, 18937u, 1u))), vec2<bool>(false, true)), Struct_3(vec3<bool>(true, false, true), Struct_2(true, Struct_1(vec3<f32>(-295f, -419f, -1607f), 620f, vec3<u32>(3838u, 30154u, 4294967295u)), Struct_1(vec3<f32>(-580f, 453f, -695f), 178f, vec3<u32>(57093u, 1u, 75543u))), vec2<bool>(false, false)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = vec3<bool>(u_input.b.x >= 0i, false | all(vec4<bool>(true, arg_0.x > 289f, true, any(vec2<bool>(false, false)))), true);
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x & 4294967295u, 29u)];
    let var_2 = Struct_4(var_1.b.c);
    let var_3 = Struct_3(var_1.a, Struct_2(var_1.b.a, var_2.a, Struct_1(arg_0, _wgslsmith_f_op_f32(-var_2.a.a.x), ~var_2.a.c)), vec2<bool>(true, !var_1.c.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_3.b.c.a))), var_3.b.b.a));
    return var_3.a.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    global0 = array<Struct_3, 29>();
    var var_0 = vec3<f32>(240f, arg_1.a.a.x, 121f);
    var var_1 = _wgslsmith_div_vec2_i32(max(~u_input.b.yz >> (vec2<u32>(1u, arg_3) % vec2<u32>(32u)), vec2<i32>(-u_input.b.x, u_input.b.x | 32644i)), u_input.b.zy) << (u_input.a % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(712f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(sign(-717f))))), _wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = false && any(select(select(!vec4<bool>(false, true, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, false), vec4<bool>(true, false, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)), all(arg_2.yx)), select(select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x), arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, false), !vec4<bool>(true, arg_2.x, true, true)), false));
    return 277f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<bool> {
    global0 = array<Struct_3, 29>();
    return select(select(vec2<bool>(true, arg_1.a), select(!(!vec2<bool>(true, arg_1.a)), vec2<bool>(all(vec3<bool>(false, true, arg_1.a)), arg_1.a | false), true), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c.a - vec3<f32>(arg_1.b.a.x, -1000f, arg_1.c.b)), _wgslsmith_f_op_vec3_f32(-arg_1.b.a)))), !vec2<bool>(~arg_1.b.c.x <= u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 14400i), vec2<i32>(u_input.b.x, 0i)) >= reverseBits(0i)), !select(vec2<bool>(true, true), vec2<bool>(arg_1.a | true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = ~(~u_input.a.x);
    var_0 = countOneBits(u_input.a.x);
    global0 = array<Struct_3, 29>();
    var var_1 = select(!(!(!arg_0.zz)), vec2<bool>(all(select(!vec3<bool>(arg_0.x, arg_0.x, true), !arg_0, !arg_0)), any(vec3<bool>(arg_0.x, any(vec4<bool>(arg_0.x, true, true, arg_0.x)), !arg_0.x))), all(vec3<bool>(!arg_0.x, func_2(vec3<f32>(-235f, 436f, -1564f)), true)) | true);
    var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-665f, -2847f), vec2<f32>(961f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, -1669f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-312f, 585f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, -520f)), arg_0.xz)))), Struct_2(select(arg_0.x, any(arg_0), var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-802f, 2758f, 1309f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1857f, -1029f, 362f), vec3<f32>(652f, -1333f, 441f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(537f))), vec3<u32>(0u, select(4294967295u, u_input.a.x, var_1.x), countOneBits(u_input.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(370f, 1686f, 889f), vec3<f32>(926f, 1118f, -922f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, 60388u, 16025u), vec4<u32>(24585u, 102287u, u_input.a.x, u_input.a.x)), Struct_4(Struct_1(vec3<f32>(-795f, 1000f, 320f), 586f, vec3<u32>(38712u, u_input.a.x, 0u))), vec3<bool>(true, arg_0.x, true), 34308u)), ~(~vec3<u32>(47628u, u_input.a.x, 0u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(327f, -241f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1071f, -2731f))))))));
    return ~vec3<i32>(_wgslsmith_mult_i32(-2147483647i, min(_wgslsmith_clamp_i32(u_input.b.x, -1i, -2147483647i), ~23688i)), 0i, -_wgslsmith_sub_i32(~2147483647i, u_input.b.x ^ -1i));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, 16265u), vec3<u32>(u_input.a.x, 55655u, u_input.a.x)) << (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(1u, 0u, 4294967295u), u_input.a.x, 8119u)), 0u, 1u, 28986u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, countOneBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 99426u, u_input.a.x, u_input.a.x)), ~(~u_input.a.x)), vec4<u32>(~reverseBits(0u), firstTrailingBit(_wgslsmith_add_u32(232u, 1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 45396u), vec4<u32>(0u, u_input.a.x, 21209u, 49063u)), 21344u >> (_wgslsmith_add_u32(u_input.a.x, 4294967295u) % 32u))));
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    let var_1 = Struct_3(vec3<bool>(!func_2(vec3<f32>(145f, arg_3, arg_3)) || true, (2147483647i != -u_input.b.x) | all(vec3<bool>(true, true, true)), false), Struct_2(true, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3, arg_3, arg_3))), arg_3, ~_wgslsmith_add_vec3_u32(var_0.wxy, var_0.zzz)), Struct_1(vec3<f32>(arg_3, 1f, _wgslsmith_f_op_f32(sign(arg_3))), _wgslsmith_f_op_f32(-1240f + _wgslsmith_f_op_f32(arg_3 + arg_3)), ~(vec3<u32>(var_0.x, 46250u, 0u) >> (vec3<u32>(4294967295u, var_0.x, 18779u) % vec3<u32>(32u))))), !func_4(vec2<f32>(_wgslsmith_div_f32(arg_3, 229f), _wgslsmith_f_op_f32(-arg_3)), Struct_2(true, Struct_1(vec3<f32>(arg_3, arg_3, 940f), arg_3, vec3<u32>(1u, u_input.a.x, var_0.x)), Struct_1(vec3<f32>(arg_3, arg_3, -703f), -184f, vec3<u32>(var_0.x, 25720u, 0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, arg_3))));
    let var_2 = min(abs(vec3<u32>(_wgslsmith_div_u32(~var_1.b.c.c.x, reverseBits(u_input.a.x)), var_1.b.c.c.x, var_0.x)), abs(var_0.yxw << (var_0.wyw % vec3<u32>(32u))));
    return Struct_2((4294967295u < (_wgslsmith_mod_u32(u_input.a.x, 4294967295u) >> (94642u % 32u))) || true, var_1.b.c, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.b.b.a, var_1.b.c.a))), _wgslsmith_f_op_vec3_f32(select(var_1.b.b.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.b.a.x, arg_3, -757f), var_1.b.b.a), select(var_1.a, vec3<bool>(true, true, true), var_1.a))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(min(var_0, var_0), Struct_4(Struct_1(var_1.b.b.a, -312f, vec3<u32>(1u, 8529u, 78715u))), select(vec3<bool>(var_1.b.a, false, false), vec3<bool>(false, false, true), vec3<bool>(false, var_1.a.x, true)), abs(0u))))), var_1.b.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), false)), 0i, ~u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -145f));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.a - var_0.b.a), _wgslsmith_f_op_vec3_f32(-var_0.b.a)))), var_0.c.b, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(4294967295u, var_0.c.c.x), u_input.a), ~vec2<u32>(16023u, 67450u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(50099u, 4294967295u), vec2<u32>(u_input.a.x, 33620u)), _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(var_0.c.c.x, u_input.a.x)))));
    let var_2 = Struct_3(vec3<bool>(select(func_2(vec3<f32>(-629f, var_1.a.a.x, var_1.a.b)), u_input.b.x <= u_input.b.x, true) || (true | (true && var_0.a)), var_0.a, var_0.a), func_5(firstTrailingBit(-min(vec3<i32>(u_input.b.x, -1i, u_input.b.x), vec3<i32>(u_input.b.x, -15860i, u_input.b.x))), 1i, _wgslsmith_add_i32(2147483647i, -2147483647i), var_0.b.b), !(!(!func_4(var_1.a.a.yz, Struct_2(false, Struct_1(vec3<f32>(-1000f, var_1.a.b, 480f), 192f, var_0.c.c), var_1.a), var_1.a.a.zz))));
    let var_3 = -(~(~reverseBits(-vec4<i32>(1i, u_input.b.x, -1i, -25772i))));
    var var_4 = Struct_4(var_0.b);
    var var_5 = func_5(~var_3.zxy, -31411i, 0i, var_1.a.a.x);
    var var_6 = ~var_0.b.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(var_0.c.c.x, var_0.c.c.x, 1u, var_0.b.c.x), Struct_4(var_4.a), var_2.a, u_input.a.x)))), 121f), countOneBits(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), var_3.zxw), vec3<i32>(var_3.x, min(-33842i, -1i), _wgslsmith_div_i32(60962i, var_3.x)))), select(32065i, -((1i >> (var_4.a.c.x % 32u)) & ~var_3.x), var_0.c.a.x > _wgslsmith_f_op_f32(ceil(var_2.b.b.a.x))), ~var_0.c.c.x);
}

