struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(-1220f, -363f, -740f)), Struct_1(vec3<f32>(325f, -227f, 1616f)), Struct_1(vec3<f32>(-607f, -348f, -509f)), Struct_1(vec3<f32>(911f, -518f, 1138f)), Struct_1(vec3<f32>(-386f, 1173f, 602f)));

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 20701u, 39923u), vec3<u32>(1u, 6233u, 41212u), vec3<u32>(28782u, 4294967295u, 32096u), vec3<u32>(1u, 1u, 0u), vec3<u32>(61574u, 63760u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 3881u, 0u), vec3<u32>(54315u, 59933u, 4294967295u), vec3<u32>(80986u, 49434u, 4294967295u), vec3<u32>(4294967295u, 28394u, 17342u), vec3<u32>(1u, 15318u, 0u), vec3<u32>(97095u, 0u, 9128u), vec3<u32>(4294967295u, 25968u, 1497u), vec3<u32>(0u, 1u, 88732u), vec3<u32>(1u, 0u, 45460u), vec3<u32>(67873u, 4294967295u, 4294967295u), vec3<u32>(70391u, 0u, 0u), vec3<u32>(0u, 35195u, 1399u), vec3<u32>(4294967295u, 13939u, 18083u), vec3<u32>(27894u, 0u, 1u), vec3<u32>(62462u, 36891u, 55034u));

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec3<f32>(-1445f, 2696f, 1067f)), vec3<u32>(7951u, 2809u, 40718u), Struct_1(vec3<f32>(1954f, -439f, -2406f)), vec3<i32>(1i, 36564i, 2147483647i)), Struct_2(Struct_1(vec3<f32>(-1577f, 259f, 591f)), vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec3<f32>(-1138f, -801f, 1204f)), vec3<i32>(-1i, -3106i, 12372i)), Struct_2(Struct_1(vec3<f32>(1554f, -986f, 722f)), vec3<u32>(12990u, 1u, 0u), Struct_1(vec3<f32>(2335f, 1483f, -102f)), vec3<i32>(36766i, 3969i, 1i)), Struct_2(Struct_1(vec3<f32>(195f, -1304f, -1335f)), vec3<u32>(1u, 0u, 1u), Struct_1(vec3<f32>(-825f, 881f, -529f)), vec3<i32>(0i, 19070i, -79499i)), Struct_2(Struct_1(vec3<f32>(-1000f, -213f, 371f)), vec3<u32>(29393u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(-741f, -633f, -280f)), vec3<i32>(-39780i, -19372i, 5955i)), Struct_2(Struct_1(vec3<f32>(1192f, -798f, -1000f)), vec3<u32>(0u, 45378u, 4294967295u), Struct_1(vec3<f32>(206f, 1291f, -1028f)), vec3<i32>(2147483647i, 1i, -20195i)), Struct_2(Struct_1(vec3<f32>(-1552f, 480f, 1092f)), vec3<u32>(4294967295u, 3406u, 61986u), Struct_1(vec3<f32>(768f, 902f, 199f)), vec3<i32>(-51552i, -1i, -1i)), Struct_2(Struct_1(vec3<f32>(-773f, -956f, 462f)), vec3<u32>(63257u, 13249u, 0u), Struct_1(vec3<f32>(-568f, 2033f, -668f)), vec3<i32>(i32(-2147483648), 34767i, 4302i)), Struct_2(Struct_1(vec3<f32>(530f, 363f, 269f)), vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec3<f32>(-338f, -1018f, 1540f)), vec3<i32>(3177i, 2147483647i, 1i)), Struct_2(Struct_1(vec3<f32>(167f, -1239f, -953f)), vec3<u32>(4294967295u, 26382u, 1u), Struct_1(vec3<f32>(300f, -559f, 629f)), vec3<i32>(-16060i, -30463i, 1i)), Struct_2(Struct_1(vec3<f32>(1451f, 816f, -944f)), vec3<u32>(65121u, 8636u, 4294967295u), Struct_1(vec3<f32>(-346f, -457f, -1486f)), vec3<i32>(-14179i, 1i, 0i)), Struct_2(Struct_1(vec3<f32>(387f, 1762f, 888f)), vec3<u32>(81939u, 4294967295u, 0u), Struct_1(vec3<f32>(353f, -153f, 1567f)), vec3<i32>(0i, 14451i, i32(-2147483648))), Struct_2(Struct_1(vec3<f32>(-1376f, 373f, 1081f)), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec3<f32>(250f, -2039f, -1435f)), vec3<i32>(2147483647i, 1i, 0i)), Struct_2(Struct_1(vec3<f32>(1644f, 473f, 301f)), vec3<u32>(1u, 76914u, 56080u), Struct_1(vec3<f32>(-595f, 492f, 2370f)), vec3<i32>(39681i, i32(-2147483648), 5676i)), Struct_2(Struct_1(vec3<f32>(-1000f, -805f, 850f)), vec3<u32>(7285u, 4294967295u, 25696u), Struct_1(vec3<f32>(326f, 1478f, 428f)), vec3<i32>(-40055i, 18349i, i32(-2147483648))), Struct_2(Struct_1(vec3<f32>(-1000f, -1000f, -1000f)), vec3<u32>(51555u, 4294967295u, 56838u), Struct_1(vec3<f32>(117f, 603f, 687f)), vec3<i32>(-1971i, 40060i, 0i)), Struct_2(Struct_1(vec3<f32>(-1421f, 1430f, 1609f)), vec3<u32>(21212u, 52899u, 14320u), Struct_1(vec3<f32>(1890f, 634f, -507f)), vec3<i32>(-49080i, 2621i, -1i)), Struct_2(Struct_1(vec3<f32>(1335f, -1926f, 1042f)), vec3<u32>(0u, 62937u, 1444u), Struct_1(vec3<f32>(272f, 830f, -949f)), vec3<i32>(-65503i, -10218i, 2147483647i)), Struct_2(Struct_1(vec3<f32>(-525f, -263f, -238f)), vec3<u32>(4294967295u, 65324u, 51977u), Struct_1(vec3<f32>(-423f, 1777f, -814f)), vec3<i32>(2147483647i, 1i, -14097i)), Struct_2(Struct_1(vec3<f32>(-240f, 292f, -770f)), vec3<u32>(59230u, 35314u, 49245u), Struct_1(vec3<f32>(-146f, -127f, 575f)), vec3<i32>(9357i, 12700i, 5882i)), Struct_2(Struct_1(vec3<f32>(-1184f, -605f, 205f)), vec3<u32>(0u, 1u, 25880u), Struct_1(vec3<f32>(2175f, 188f, -162f)), vec3<i32>(-1i, 25846i, 2147483647i)), Struct_2(Struct_1(vec3<f32>(119f, 1000f, -1133f)), vec3<u32>(3388u, 44002u, 1u), Struct_1(vec3<f32>(1790f, -468f, -100f)), vec3<i32>(-1i, -13641i, -1i)), Struct_2(Struct_1(vec3<f32>(1000f, 639f, 963f)), vec3<u32>(23336u, 0u, 0u), Struct_1(vec3<f32>(265f, -350f, 209f)), vec3<i32>(-35436i, 0i, 1i)), Struct_2(Struct_1(vec3<f32>(959f, -1400f, -1990f)), vec3<u32>(4294967295u, 41523u, 84264u), Struct_1(vec3<f32>(-457f, 194f, -1257f)), vec3<i32>(2147483647i, -34298i, 31653i)), Struct_2(Struct_1(vec3<f32>(434f, 324f, -894f)), vec3<u32>(17070u, 1u, 1u), Struct_1(vec3<f32>(1339f, -1032f, 469f)), vec3<i32>(-31232i, 0i, -15352i)), Struct_2(Struct_1(vec3<f32>(614f, -1890f, -1000f)), vec3<u32>(23261u, 9343u, 0u), Struct_1(vec3<f32>(-1607f, 653f, 1651f)), vec3<i32>(-1i, 7178i, 92518i)), Struct_2(Struct_1(vec3<f32>(-935f, -1095f, -1445f)), vec3<u32>(31202u, 46985u, 0u), Struct_1(vec3<f32>(1350f, 479f, -1447f)), vec3<i32>(-1i, 2147483647i, -36624i)), Struct_2(Struct_1(vec3<f32>(778f, 333f, -855f)), vec3<u32>(55025u, 0u, 13040u), Struct_1(vec3<f32>(339f, -826f, 269f)), vec3<i32>(0i, 1i, 2147483647i)), Struct_2(Struct_1(vec3<f32>(511f, -252f, -1000f)), vec3<u32>(16601u, 4294967295u, 1u), Struct_1(vec3<f32>(1195f, -341f, 1365f)), vec3<i32>(i32(-2147483648), 40082i, -1046i)), Struct_2(Struct_1(vec3<f32>(-233f, -735f, 1379f)), vec3<u32>(4294967295u, 6388u, 121254u), Struct_1(vec3<f32>(-1000f, 404f, -348f)), vec3<i32>(0i, 2147483647i, -53138i)), Struct_2(Struct_1(vec3<f32>(1290f, 805f, 501f)), vec3<u32>(4294967295u, 1u, 70000u), Struct_1(vec3<f32>(1000f, 436f, 587f)), vec3<i32>(0i, -24193i, 94777i)), Struct_2(Struct_1(vec3<f32>(501f, 815f, -1344f)), vec3<u32>(45983u, 40110u, 1u), Struct_1(vec3<f32>(170f, 333f, 146f)), vec3<i32>(0i, -28174i, -4920i)));

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    global1 = vec4<u32>(arg_1.b.x, ~5127u, min(arg_1.b.x, arg_1.b.x | ~43095u), _wgslsmith_mult_u32(~(u_input.b.x << (1u % 32u)), global1.x));
    global3 = array<Struct_2, 32>();
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x) + _wgslsmith_f_op_f32(555f - arg_1.a.a.x)) + arg_1.a.a.x), -1212f, arg_1.c.a.x));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = ~abs(min(firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), vec4<u32>(global1.x, ~global1.x, 1u, 1u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.c.a.x, -480f, _wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_f_op_f32(-arg_1.a.a.x)), vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, _wgslsmith_f_op_f32(min(arg_1.a.a.x, -1968f)), func_2(vec3<bool>(false, arg_0, arg_0), global3[_wgslsmith_index_u32(53403u, 32u)], global2[_wgslsmith_index_u32(47026u, 21u)], vec2<bool>(arg_0, arg_0)).a.x))))));
    return _wgslsmith_sub_vec3_u32(~(~max(abs(global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), abs(global2[_wgslsmith_index_u32(35598u, 21u)]))), var_0.wxy);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec3<u32>, 21>();
    let var_0 = func_2(vec3<bool>(true, true, ~u_input.a != -u_input.a), global3[_wgslsmith_index_u32(~u_input.b.x, 32u)], ~global1.yzw, vec2<bool>(true, true));
    global0 = array<Struct_1, 5>();
    global4 = array<Struct_1, 6>();
    let var_1 = arg_2;
    return Struct_1(arg_3.a);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_2, 32>();
    let var_0 = global3[_wgslsmith_index_u32(global1.x, 32u)];
    var var_1 = !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) && any(vec2<bool>(true, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.a);
    global2 = array<vec3<u32>, 21>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(-625f))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(265f, func_4(func_2(vec3<bool>(true, true, true), Struct_2(Struct_1(vec3<f32>(764f, 919f, 494f)), u_input.b.yzx, Struct_1(vec3<f32>(-1153f, 1000f, -387f)), arg_0), ~global1.wzz, select(vec2<bool>(false, true), vec2<bool>(true, true), true)), u_input.b.x | ~u_input.b.x, func_2(vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(global1.x | global1.x, 32u)], func_3(true, Struct_2(Struct_1(vec3<f32>(-645f, -1207f, 1780f)), global1.ywy, global4[_wgslsmith_index_u32(u_input.b.x, 6u)], arg_0)), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), func_2(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), global3[_wgslsmith_index_u32(4294967295u, 32u)], vec3<u32>(global1.x, 0u, 0u) ^ global2[_wgslsmith_index_u32(25756u, 21u)], vec2<bool>(true, true))))));
    var var_1 = u_input.b.x;
    var var_2 = vec4<i32>(~(i32(-1i) * -27224i), 2147483647i, ~_wgslsmith_add_i32(1i, arg_0.x << (u_input.b.x % 32u)), -5582i);
    let var_3 = _wgslsmith_dot_vec2_i32(-var_2.zz, -_wgslsmith_add_vec2_i32(~vec2<i32>(arg_0.x, -2147483647i), select(max(var_2.zw, var_2.ww), vec2<i32>(54836i, arg_0.x), true)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, _wgslsmith_f_op_f32(floor(-1300f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(546f, -270f, -658f) * func_2(vec3<bool>(false, false, false), Struct_2(Struct_1(vec3<f32>(1000f, var_0, 1274f)), vec3<u32>(18759u, global1.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], var_2.yxy), vec3<u32>(global1.x, u_input.b.x, 1u), vec2<bool>(true, false)).a))));
    return ~vec4<i32>(_wgslsmith_div_i32(-(var_2.x << (13661u % 32u)), ~(~u_input.a)), abs(var_3), i32(-1i) * -u_input.a, _wgslsmith_mod_i32(~(~(-24955i)), -var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global1 = vec4<u32>(_wgslsmith_sub_u32(~global1.x, ~(1u >> (global1.x % 32u))) ^ 0u, var_0, ~firstLeadingBit(min(var_0, ~4294967295u)), 1u);
    let var_1 = ~func_1(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, 2147483647i));
    global1 = ~(~vec4<u32>(_wgslsmith_mult_u32(4294967295u, global1.x), ~global1.x, ~39812u, 1u)) << (vec4<u32>(4294967295u, 4294967295u, 41096u, u_input.b.x) % vec4<u32>(32u));
    let var_2 = global3[_wgslsmith_index_u32(~var_0, 32u)];
    global1 = _wgslsmith_mod_vec4_u32(~u_input.b, vec4<u32>(22997u, global1.x, _wgslsmith_mod_u32(49609u, u_input.b.x) & 30531u, 31306u | _wgslsmith_mult_u32(var_0, var_0)) | (vec4<u32>(29223u & global1.x, reverseBits(17691u), ~50095u, 41413u) << (vec4<u32>(var_0, 1u, global1.x, _wgslsmith_add_u32(25627u, var_0)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b >> (u_input.b % vec4<u32>(32u)), var_1.x, vec2<u32>(u_input.b.x & ~_wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(10194u, var_2.b.x)), _wgslsmith_div_u32(var_2.b.x, global1.x)), 4294967295u, _wgslsmith_div_f32(430f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-711f, _wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.a.x)))));
}

