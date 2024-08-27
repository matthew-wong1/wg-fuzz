struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(650f, 729f, vec4<f32>(-834f, -563f, 193f, 410f), Struct_1(vec4<f32>(428f, 686f, 954f, 1000f), vec2<f32>(-915f, -426f), vec3<i32>(1i, -59253i, 17652i), 702f), Struct_1(vec4<f32>(1000f, -691f, -281f, 549f), vec2<f32>(897f, -242f), vec3<i32>(-1i, i32(-2147483648), 1492i), 1342f)), Struct_2(369f, -386f, vec4<f32>(400f, 1432f, -358f, 1937f), Struct_1(vec4<f32>(-1409f, -629f, -1654f, -569f), vec2<f32>(967f, 923f), vec3<i32>(86166i, -21609i, 1i), -379f), Struct_1(vec4<f32>(-1117f, 1205f, 1156f, 318f), vec2<f32>(431f, 381f), vec3<i32>(2147483647i, 27474i, 1i), -1462f)), Struct_2(-335f, 1150f, vec4<f32>(-791f, 197f, -427f, -587f), Struct_1(vec4<f32>(-769f, -236f, 221f, 1000f), vec2<f32>(659f, -774f), vec3<i32>(2147483647i, 1i, 2147483647i), 1757f), Struct_1(vec4<f32>(-405f, -446f, -1472f, -205f), vec2<f32>(-1387f, 344f), vec3<i32>(26877i, 2147483647i, 1i), -986f)), Struct_2(1451f, 1000f, vec4<f32>(-1000f, 630f, 1661f, -1000f), Struct_1(vec4<f32>(959f, 787f, -1539f, -1475f), vec2<f32>(129f, 1000f), vec3<i32>(32416i, 2147483647i, -20254i), -191f), Struct_1(vec4<f32>(1612f, -1033f, -1000f, 126f), vec2<f32>(460f, 1974f), vec3<i32>(i32(-2147483648), 1i, -68060i), 214f)), Struct_2(866f, 1522f, vec4<f32>(703f, 518f, -943f, -216f), Struct_1(vec4<f32>(-310f, -668f, -314f, 939f), vec2<f32>(332f, 696f), vec3<i32>(0i, -1i, 93485i), -541f), Struct_1(vec4<f32>(173f, -2467f, 1043f, -1000f), vec2<f32>(-416f, 1000f), vec3<i32>(i32(-2147483648), -4439i, -1i), 277f)), Struct_2(-496f, 330f, vec4<f32>(640f, 2141f, 1503f, 1323f), Struct_1(vec4<f32>(637f, -2408f, -636f, 853f), vec2<f32>(-1094f, 1196f), vec3<i32>(0i, 33929i, -43664i), 661f), Struct_1(vec4<f32>(-613f, -1000f, 1154f, -777f), vec2<f32>(723f, 153f), vec3<i32>(45504i, -1i, -48668i), 619f)), Struct_2(-870f, 790f, vec4<f32>(1232f, 261f, 585f, -2859f), Struct_1(vec4<f32>(-1356f, 366f, -1000f, -1229f), vec2<f32>(-113f, 767f), vec3<i32>(-1i, -1i, i32(-2147483648)), 150f), Struct_1(vec4<f32>(1000f, 2528f, 1053f, 1743f), vec2<f32>(-513f, 651f), vec3<i32>(10598i, 31365i, -31743i), -1977f)), Struct_2(641f, -650f, vec4<f32>(-1054f, -531f, -153f, -1198f), Struct_1(vec4<f32>(1019f, 2577f, 269f, -1547f), vec2<f32>(-890f, 1077f), vec3<i32>(-1i, 2147483647i, -11356i), -707f), Struct_1(vec4<f32>(-1000f, 1033f, 101f, 409f), vec2<f32>(-118f, 1173f), vec3<i32>(19982i, 2147483647i, -55245i), 311f)), Struct_2(237f, 834f, vec4<f32>(-237f, 1385f, -311f, 560f), Struct_1(vec4<f32>(2229f, -526f, 1000f, -737f), vec2<f32>(-1606f, -352f), vec3<i32>(37701i, 21881i, -13275i), -690f), Struct_1(vec4<f32>(681f, 129f, -616f, -1754f), vec2<f32>(-2568f, 266f), vec3<i32>(1i, 2147483647i, 1i), -446f)), Struct_2(1009f, -425f, vec4<f32>(683f, 959f, -2619f, 338f), Struct_1(vec4<f32>(-1202f, -125f, 148f, 816f), vec2<f32>(-356f, 2036f), vec3<i32>(-34139i, 23119i, 0i), 203f), Struct_1(vec4<f32>(436f, 378f, 1058f, 598f), vec2<f32>(-189f, -270f), vec3<i32>(78598i, -1269i, -9588i), 888f)), Struct_2(-1632f, 806f, vec4<f32>(1932f, -729f, -1320f, -1130f), Struct_1(vec4<f32>(-1860f, 188f, 727f, -1103f), vec2<f32>(-1000f, 981f), vec3<i32>(20595i, i32(-2147483648), i32(-2147483648)), 269f), Struct_1(vec4<f32>(1822f, -1797f, -1421f, -543f), vec2<f32>(-485f, -162f), vec3<i32>(-27129i, -43886i, 0i), -445f)), Struct_2(573f, 2593f, vec4<f32>(583f, 401f, -185f, 1005f), Struct_1(vec4<f32>(199f, -368f, 1246f, -1000f), vec2<f32>(365f, -1405f), vec3<i32>(2147483647i, 6705i, 0i), 770f), Struct_1(vec4<f32>(230f, -1000f, -2786f, -1289f), vec2<f32>(-1000f, 770f), vec3<i32>(20563i, 2147483647i, 7709i), -835f)), Struct_2(-1000f, -222f, vec4<f32>(101f, -738f, 1398f, 1448f), Struct_1(vec4<f32>(1933f, -468f, -1000f, -155f), vec2<f32>(-1000f, -1295f), vec3<i32>(-769i, -47130i, -48394i), -277f), Struct_1(vec4<f32>(-314f, 1428f, 1000f, 568f), vec2<f32>(284f, 1636f), vec3<i32>(66792i, -11926i, 1i), -1347f)), Struct_2(1045f, -284f, vec4<f32>(-525f, -805f, -828f, 879f), Struct_1(vec4<f32>(-490f, 748f, -2356f, 203f), vec2<f32>(-1677f, -345f), vec3<i32>(1i, 17136i, -1i), -378f), Struct_1(vec4<f32>(-713f, 887f, -1683f, 680f), vec2<f32>(-327f, -283f), vec3<i32>(46296i, 5859i, 2147483647i), -2025f)), Struct_2(-707f, 165f, vec4<f32>(-863f, 2438f, -953f, -352f), Struct_1(vec4<f32>(1512f, -271f, 1000f, 454f), vec2<f32>(-1044f, 1864f), vec3<i32>(i32(-2147483648), -49645i, 2147483647i), -1000f), Struct_1(vec4<f32>(1521f, -164f, -331f, 1356f), vec2<f32>(-1087f, 358f), vec3<i32>(49810i, i32(-2147483648), 1i), -738f)), Struct_2(808f, 1000f, vec4<f32>(-1957f, -609f, 1000f, -730f), Struct_1(vec4<f32>(375f, -1787f, -1000f, -1231f), vec2<f32>(1879f, -920f), vec3<i32>(i32(-2147483648), -5227i, -49258i), -1848f), Struct_1(vec4<f32>(-1000f, 1428f, 217f, 1274f), vec2<f32>(-301f, 372f), vec3<i32>(63101i, -3352i, 26005i), -344f)), Struct_2(1693f, -1252f, vec4<f32>(-1174f, 1116f, 1255f, 418f), Struct_1(vec4<f32>(767f, 1243f, 1139f, 572f), vec2<f32>(-2751f, -134f), vec3<i32>(21005i, 28181i, 17173i), 383f), Struct_1(vec4<f32>(-360f, 1000f, -715f, 1685f), vec2<f32>(637f, 342f), vec3<i32>(18898i, -1i, -18953i), -637f)), Struct_2(590f, 1000f, vec4<f32>(364f, 1025f, 1050f, 1002f), Struct_1(vec4<f32>(848f, 1381f, 194f, -284f), vec2<f32>(-191f, -914f), vec3<i32>(i32(-2147483648), 43799i, -4520i), -1056f), Struct_1(vec4<f32>(-597f, 536f, -760f, 2199f), vec2<f32>(-112f, 991f), vec3<i32>(-1i, 0i, 2147483647i), 887f)), Struct_2(-955f, 1091f, vec4<f32>(-199f, -219f, 246f, 835f), Struct_1(vec4<f32>(238f, 467f, -100f, -623f), vec2<f32>(-427f, 509f), vec3<i32>(-68113i, 2147483647i, -38056i), 1822f), Struct_1(vec4<f32>(-130f, 1955f, -784f, -134f), vec2<f32>(1000f, 710f), vec3<i32>(-1492i, 2756i, 0i), 729f)));

var<private> global1: array<Struct_2, 1>;

var<private> global2: vec4<i32> = vec4<i32>(1i, 2147483647i, -16663i, 0i);

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    global3 = array<Struct_2, 22>();
    var var_0 = ~global2.xyw;
    let var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(arg_1.b + arg_1.b), global2.xyx, -611f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(var_1.a))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.x, var_1.d)))), vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), _wgslsmith_f_op_f32(min(arg_1.b.x, arg_1.a.x))))) * _wgslsmith_f_op_vec2_f32(step(var_1.a.xw, arg_1.a.yy))), vec3<i32>(15603i, arg_0, ~(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(arg_1.b.x * var_1.b.x));
    let var_3 = _wgslsmith_f_op_f32(trunc(var_2.b.x));
    return false;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~44331u ^ ~arg_1.x, select(min(arg_0, 63047u), ~(~4294967295u), false && func_3(global2.x, Struct_1(vec4<f32>(2522f, 1000f, 459f, -1149f), vec2<f32>(755f, -869f), global2.xxz, -916f))), firstTrailingBit(~min(4294967295u, u_input.a.x)), ~min(51296u, 3549u)), vec4<u32>((firstLeadingBit(arg_1.x) ^ (arg_0 | 4294967295u)) ^ 0u, u_input.a.x, arg_1.x, ~18237u));
    var var_1 = _wgslsmith_dot_vec2_i32(global2.ww, countOneBits(select(vec2<i32>(0i, 27949i), global2.zz, true))) > _wgslsmith_dot_vec2_i32(global2.xw, firstTrailingBit(vec2<i32>(global2.x ^ -6076i, -19907i)));
    var_0 = firstTrailingBit(~(~vec4<u32>(~0u, _wgslsmith_add_u32(arg_1.x, u_input.a.x), 0u & u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-308f)), _wgslsmith_f_op_f32(abs(1042f)), 956f, _wgslsmith_f_op_f32(-1551f * -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(min(-452f, -681f)), _wgslsmith_f_op_f32(select(-540f, -2776f, true)), _wgslsmith_f_op_f32(-2576f * 1256f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f + -236f)), 1f)), -620f), countOneBits(firstLeadingBit(vec3<i32>(1i, global2.x, _wgslsmith_add_i32(1310i, global2.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(2146f, _wgslsmith_div_f32(-1279f, _wgslsmith_div_f32(201f, 334f)), any(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-769f, 1104f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(trunc(704f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(var_2.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), ~_wgslsmith_sub_vec3_i32(select(-vec3<i32>(-36832i, global2.x, 1i), var_2.c, all(vec2<bool>(true, true))), var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1366f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.x))))));
    return global0[_wgslsmith_index_u32(1u, 19u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 19>();
    var var_0 = func_2(abs(_wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~(~4294967295u))), vec2<u32>(u_input.a.x, 0u));
    var var_1 = ~1i;
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.b.x, -1695f)), -1000f, -2021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(max(333f, -469f))))), _wgslsmith_f_op_vec2_f32(-arg_1.b), ~global2.yxy | global2.zyw, 399f);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    let var_0 = vec4<u32>(u_input.a.x, 1u << (~(~u_input.a.x) % 32u), _wgslsmith_sub_u32(~max(~u_input.a.x, ~u_input.a.x), 1u), ~(~u_input.a.x));
    let var_1 = func_2(~(~firstTrailingBit(~u_input.a.x)), vec2<u32>(20577u, _wgslsmith_add_u32(~1u, 1u) & ~u_input.a.x));
    global2 = -reverseBits(vec4<i32>(11998i, var_1.e.c.x, reverseBits(2147483647i), 1i | firstLeadingBit(arg_1.e.c.x)));
    var var_2 = ~_wgslsmith_div_u32(u_input.a.x, 26187u);
    let var_3 = Struct_2(1393f, var_1.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, var_1.e.b.x, 709f, arg_1.c.x)) * vec4<f32>(251f, -286f, arg_1.a, arg_1.e.b.x))))), Struct_1(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(sign(-493f)), arg_1.e.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, arg_1.e.d)) * func_1(var_1.e.a.xyz, Struct_1(var_1.c, var_1.e.b, vec3<i32>(global2.x, -1i, arg_0.x), 197f)).a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a.x, -1000f)), -_wgslsmith_add_vec3_i32(abs(var_1.d.c), var_1.d.c & var_1.d.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(func_2(1u, vec2<u32>(var_0.x, u_input.a.x)).e.b.x, 1000f))))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d.a.xzy - vec3<f32>(var_1.e.b.x, arg_1.b, var_1.b)))), var_1.d));
    return !(any(vec4<bool>(true, true, true, true)) & all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<i32>(_wgslsmith_mod_i32(~17136i << (_wgslsmith_mult_u32(0u, u_input.a.x) % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.x, -34193i), global2.wxy)), -61145i, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -38368i, 0i, global2.x) >> ((vec4<u32>(u_input.a.x, 12788u, u_input.a.x, u_input.a.x) | vec4<u32>(0u, 38779u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~firstLeadingBit(vec4<i32>(global2.x, 5354i, 0i, global2.x))), -2147483647i), vec4<i32>(global2.x, global2.x, ~(-2147483647i), -72i), vec4<bool>(func_4(vec4<i32>(global2.x, 44577i, ~40567i, ~2147483647i), Struct_2(_wgslsmith_div_f32(839f, 2389f), -224f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(120f, 313f, 1225f, 1711f)), func_1(vec3<f32>(-1439f, 324f, 131f), Struct_1(vec4<f32>(464f, -947f, -523f, -413f), vec2<f32>(1915f, -1726f), vec3<i32>(34514i, global2.x, 0i), 421f)), Struct_1(vec4<f32>(-512f, -231f, -877f, -305f), vec2<f32>(773f, -1112f), vec3<i32>(global2.x, global2.x, -1i), -651f))), true, false, func_3(-30509i, func_1(vec3<f32>(474f, -1000f, 766f), Struct_1(vec4<f32>(-956f, -1000f, 1000f, -438f), vec2<f32>(1318f, -2842f), global2.wxx, 523f))) && true));
    var var_1 = -1i;
    global2 = firstTrailingBit((abs(-vec4<i32>(var_0.x, global2.x, var_0.x, var_0.x)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(73281u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) ^ abs(vec4<u32>(17060u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))) << ((~(~vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 3655u), vec4<u32>(u_input.a.x, 16645u, u_input.a.x, 0u)), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    var var_2 = reverseBits(~vec2<i32>(-1i, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ select(vec3<u32>(countOneBits(0u), firstLeadingBit(0u), 1u), ~vec3<u32>(4294967295u, 27787u, u_input.a.x), all(vec4<bool>(true, true, true, true))), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~27017u, _wgslsmith_sub_u32(0u, u_input.a.x), 1u), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))), _wgslsmith_mod_u32(firstTrailingBit(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 0u), _wgslsmith_f_op_f32(f32(-1f) * -383f));
}

