struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_2(true, vec4<f32>(645f, -323f, 1970f, 845f)), Struct_2(true, vec4<f32>(756f, 1000f, 100f, 222f)), Struct_1(vec3<f32>(258f, -570f, -1202f), true, 119f), false), Struct_3(Struct_2(false, vec4<f32>(-1074f, -199f, 355f, -1000f)), Struct_2(false, vec4<f32>(1005f, -773f, 706f, -291f)), Struct_1(vec3<f32>(290f, 1316f, -987f), true, 312f), false), Struct_3(Struct_2(true, vec4<f32>(1434f, -138f, -1000f, -1309f)), Struct_2(true, vec4<f32>(-1378f, 590f, -107f, -336f)), Struct_1(vec3<f32>(454f, 752f, 1113f), false, -2073f), true), Struct_3(Struct_2(true, vec4<f32>(1500f, 2204f, 810f, 1689f)), Struct_2(true, vec4<f32>(-888f, -1303f, 943f, -1478f)), Struct_1(vec3<f32>(680f, 1000f, -1076f), true, -714f), false), Struct_3(Struct_2(true, vec4<f32>(1491f, 1208f, 662f, -970f)), Struct_2(false, vec4<f32>(-1000f, 817f, 410f, -1000f)), Struct_1(vec3<f32>(972f, -110f, 829f), false, -427f), true), Struct_3(Struct_2(false, vec4<f32>(946f, -1440f, -1000f, -1067f)), Struct_2(false, vec4<f32>(365f, -1224f, -1089f, 1268f)), Struct_1(vec3<f32>(591f, -1954f, 1099f), true, -127f), false), Struct_3(Struct_2(false, vec4<f32>(346f, 355f, 631f, -1536f)), Struct_2(true, vec4<f32>(419f, -229f, -490f, 1964f)), Struct_1(vec3<f32>(-1169f, 1230f, 573f), true, -385f), false), Struct_3(Struct_2(true, vec4<f32>(-176f, -421f, 636f, 1621f)), Struct_2(false, vec4<f32>(-398f, -823f, -1524f, -1293f)), Struct_1(vec3<f32>(-2534f, -1279f, 1076f), true, -967f), false), Struct_3(Struct_2(false, vec4<f32>(969f, -1669f, -669f, 625f)), Struct_2(true, vec4<f32>(-477f, -153f, 633f, 296f)), Struct_1(vec3<f32>(-573f, 929f, -2022f), false, -456f), true), Struct_3(Struct_2(false, vec4<f32>(-886f, -546f, 1033f, 607f)), Struct_2(false, vec4<f32>(1260f, 1000f, 147f, -1210f)), Struct_1(vec3<f32>(371f, -759f, -469f), true, -278f), true), Struct_3(Struct_2(false, vec4<f32>(1191f, -1000f, 392f, -300f)), Struct_2(true, vec4<f32>(1593f, 2113f, -1852f, 482f)), Struct_1(vec3<f32>(1232f, -1549f, -1433f), false, -189f), false), Struct_3(Struct_2(false, vec4<f32>(-2011f, -709f, -297f, 432f)), Struct_2(false, vec4<f32>(1000f, -2101f, -1000f, 354f)), Struct_1(vec3<f32>(1000f, -504f, -821f), true, 321f), true), Struct_3(Struct_2(false, vec4<f32>(1258f, -1000f, -571f, 234f)), Struct_2(false, vec4<f32>(473f, 1086f, 256f, 514f)), Struct_1(vec3<f32>(-1000f, 187f, 938f), false, -408f), true), Struct_3(Struct_2(false, vec4<f32>(1268f, -263f, -682f, -895f)), Struct_2(true, vec4<f32>(-479f, 1186f, -790f, -440f)), Struct_1(vec3<f32>(-675f, -1079f, -514f), true, -1000f), true), Struct_3(Struct_2(true, vec4<f32>(-257f, 2341f, -849f, 1000f)), Struct_2(false, vec4<f32>(835f, -593f, -477f, 124f)), Struct_1(vec3<f32>(-293f, 929f, -358f), false, 217f), false), Struct_3(Struct_2(true, vec4<f32>(866f, -789f, -473f, 1916f)), Struct_2(false, vec4<f32>(-717f, -818f, 282f, 225f)), Struct_1(vec3<f32>(1000f, -503f, 1182f), false, 1533f), false), Struct_3(Struct_2(true, vec4<f32>(-340f, -819f, -2003f, 148f)), Struct_2(true, vec4<f32>(517f, -249f, 1882f, -501f)), Struct_1(vec3<f32>(820f, -1000f, -1334f), false, -1000f), true), Struct_3(Struct_2(true, vec4<f32>(-107f, 229f, -919f, 1901f)), Struct_2(false, vec4<f32>(-240f, -2022f, -742f, -1185f)), Struct_1(vec3<f32>(-1613f, 790f, -404f), true, 1788f), true), Struct_3(Struct_2(true, vec4<f32>(926f, 1000f, -194f, 1011f)), Struct_2(false, vec4<f32>(-1000f, -2070f, 470f, 1037f)), Struct_1(vec3<f32>(541f, -812f, 464f), false, -543f), true), Struct_3(Struct_2(true, vec4<f32>(-1000f, -503f, -1328f, 582f)), Struct_2(false, vec4<f32>(-195f, -1151f, 482f, 1026f)), Struct_1(vec3<f32>(-920f, 475f, 467f), true, 240f), true), Struct_3(Struct_2(true, vec4<f32>(145f, -593f, 373f, 429f)), Struct_2(false, vec4<f32>(1484f, -1000f, -1420f, 1000f)), Struct_1(vec3<f32>(-1000f, -1000f, -906f), false, 1142f), false), Struct_3(Struct_2(true, vec4<f32>(-1258f, 533f, 299f, 317f)), Struct_2(false, vec4<f32>(841f, 2668f, -3171f, 664f)), Struct_1(vec3<f32>(-1941f, 111f, -423f), true, -858f), false), Struct_3(Struct_2(false, vec4<f32>(-509f, 820f, -784f, -1000f)), Struct_2(true, vec4<f32>(-1000f, 1632f, 143f, 569f)), Struct_1(vec3<f32>(-1000f, 438f, -1257f), true, -1230f), false), Struct_3(Struct_2(true, vec4<f32>(292f, 610f, -440f, 687f)), Struct_2(false, vec4<f32>(-1294f, -1071f, -100f, -242f)), Struct_1(vec3<f32>(2065f, -101f, 1294f), true, -1667f), true), Struct_3(Struct_2(false, vec4<f32>(-138f, -1824f, -671f, 696f)), Struct_2(false, vec4<f32>(-1757f, -1101f, -1000f, -1677f)), Struct_1(vec3<f32>(-761f, -335f, -1000f), false, 1558f), true), Struct_3(Struct_2(true, vec4<f32>(803f, 1079f, -892f, 486f)), Struct_2(true, vec4<f32>(748f, -228f, 1000f, -903f)), Struct_1(vec3<f32>(439f, -283f, 662f), false, 2122f), false), Struct_3(Struct_2(true, vec4<f32>(-1052f, 342f, 1979f, 322f)), Struct_2(false, vec4<f32>(-1000f, 1122f, 876f, 1000f)), Struct_1(vec3<f32>(258f, 549f, 116f), true, 981f), false), Struct_3(Struct_2(true, vec4<f32>(220f, -1506f, 345f, 762f)), Struct_2(false, vec4<f32>(926f, 1192f, 339f, -637f)), Struct_1(vec3<f32>(-1000f, -619f, 205f), true, -1750f), false), Struct_3(Struct_2(true, vec4<f32>(-865f, -102f, 1000f, -544f)), Struct_2(true, vec4<f32>(1906f, -1074f, 171f, -1000f)), Struct_1(vec3<f32>(1947f, 259f, -520f), true, 146f), false), Struct_3(Struct_2(true, vec4<f32>(-1238f, -659f, 1494f, -1000f)), Struct_2(true, vec4<f32>(1207f, -1235f, -1219f, 1180f)), Struct_1(vec3<f32>(513f, -1277f, -1271f), true, -1427f), false), Struct_3(Struct_2(true, vec4<f32>(-355f, -107f, -430f, -867f)), Struct_2(true, vec4<f32>(-560f, 1570f, -238f, -556f)), Struct_1(vec3<f32>(-1000f, 235f, 880f), true, 794f), true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> bool {
    let var_0 = false;
    let var_1 = vec4<u32>(1u, 0u, u_input.b, ~(~u_input.b)) & firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) << (vec4<u32>(1u, 12699u, 0u, u_input.b) % vec4<u32>(32u))) << (~vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u) % vec4<u32>(32u)));
    var var_2 = ~var_1.x;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1651f)));
    global0 = array<Struct_3, 31>();
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = !(!(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), func_3(119f, vec3<i32>(15333i, u_input.a.x, 1i)))));
    global0 = array<Struct_3, 31>();
    var var_1 = u_input.a.x & u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(788f, -444f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1559f, -464f)) + _wgslsmith_f_op_f32(1000f - 1012f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<Struct_3, 31>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -852f, 1041f))), vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -273f)), _wgslsmith_f_op_f32(trunc(var_2)), 1812f)))), all(!vec4<bool>(func_3(700f, u_input.a), true, any(var_0), any(var_0.xx))), _wgslsmith_f_op_f32(-var_2));
}

fn func_1() -> u32 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-467f + -670f), _wgslsmith_div_f32(-1090f, -276f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(957f)) * _wgslsmith_f_op_f32(1993f + -1023f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-377f, _wgslsmith_f_op_f32(1097f - -964f))));
    let var_1 = func_2();
    var var_2 = Struct_3(Struct_2(true, vec4<f32>(822f, var_1.a.x, var_1.c, _wgslsmith_f_op_f32(round(-624f)))), Struct_2(false, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x), -1533f, -1000f)))), var_1, func_2().b & var_1.b);
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec4<u32>(_wgslsmith_mult_u32(u_input.b >> (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u), (u_input.b & 0u) << (4153u % 32u)), u_input.b, u_input.b, 35565u), vec4<u32>(~max(4294967295u, 23251u) >> (u_input.b % 32u), u_input.b, func_1(), u_input.b));
    var var_1 = vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.a.x), u_input.a.x);
    var_1 = reverseBits(vec4<i32>(-1i) * -select(-vec4<i32>(var_1.x, var_1.x, -17070i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1.x, -25770i, 1i), vec4<i32>(-13498i, u_input.a.x, 2147483647i, var_1.x)), vec4<bool>(false, true, false, false)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, 2112f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-707f - 179f), -775f))));
    global0 = array<Struct_3, 31>();
    var var_3 = min(var_0.x, u_input.b);
    var_1 = select(vec4<i32>(-1i) * -vec4<i32>(1i, -2147483647i, max(var_1.x, var_1.x), firstLeadingBit(1i)), vec4<i32>(_wgslsmith_clamp_i32(~(-25592i), 8989i, -2147483647i), -54442i, u_input.a.x, _wgslsmith_add_i32(max(-1i, var_1.x), -var_1.x >> (select(0u, u_input.b, true) % 32u))), vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_0.x, max(_wgslsmith_div_u32(var_0.x, firstTrailingBit(~0u)), var_0.x), firstLeadingBit(var_1.x));
}

