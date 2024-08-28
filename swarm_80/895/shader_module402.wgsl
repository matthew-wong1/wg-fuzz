struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec3<f32>(1000f, -1815f, 669f)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec3<f32>(145f, -1350f, -580f)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), vec2<bool>(false, true), vec3<f32>(-717f, -485f, -188f)), vec3<u32>(38106u, 84501u, 0u), 1715f), 9651i, vec4<f32>(-648f, -595f, 1000f, 665f), vec4<u32>(66804u, 0u, 37562u, 40618u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec3<f32>(962f, 1000f, -1005f)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec3<f32>(-116f, 293f, -1271f)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec3<f32>(-498f, -457f, 447f)), vec3<u32>(1u, 0u, 25251u), -505f), 2147483647i, vec4<f32>(-1050f, -138f, 1704f, 1252f), vec4<u32>(22689u, 1u, 1u, 17163u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec3<f32>(-512f, 1000f, 1179f)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec3<f32>(381f, -327f, -338f)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec3<f32>(-1000f, -1434f, 1947f)), vec3<u32>(32839u, 6205u, 20985u), 1253f), 0i, vec4<f32>(-1186f, -171f, -987f, 183f), vec4<u32>(0u, 17193u, 23269u, 141034u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec3<f32>(793f, -900f, 1288f)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, true, true), vec2<bool>(false, true), vec3<f32>(693f, 498f, 1363f)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec3<f32>(663f, -456f, 471f)), vec3<u32>(0u, 64226u, 1u), 738f), -41375i, vec4<f32>(1000f, 872f, 1105f, -712f), vec4<u32>(41510u, 1u, 39401u, 13105u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec2<bool>(false, false), vec3<f32>(-1000f, 632f, 502f)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec3<f32>(-1153f, 1763f, 1814f)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, false, true), vec2<bool>(false, true), vec3<f32>(1051f, -1078f, 1000f)), vec3<u32>(0u, 50290u, 4294967295u), -443f), -1i, vec4<f32>(441f, 370f, -2353f, -743f), vec4<u32>(32162u, 77568u, 34812u, 1u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, true), vec2<bool>(true, true), vec3<f32>(857f, -571f, 1445f)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec3<f32>(-1282f, -481f, -1000f)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec3<f32>(691f, 1000f, 1104f)), vec3<u32>(4294967295u, 1u, 140196u), 862f), -31980i, vec4<f32>(298f, -892f, -1043f, 1948f), vec4<u32>(0u, 17906u, 0u, 33285u)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec3<f32>(1144f, 517f, -799f)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec3<f32>(-1022f, -495f, -910f)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, true, true), vec2<bool>(true, false), vec3<f32>(598f, 656f, 1000f)), vec3<u32>(4294967295u, 0u, 0u), 294f), i32(-2147483648), vec4<f32>(1398f, 450f, -1590f, -586f), vec4<u32>(1u, 25064u, 59163u, 0u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec3<f32>(798f, 429f, 904f)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec3<f32>(2066f, 730f, -1107f)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec3<f32>(1200f, -1810f, -1179f)), vec3<u32>(15665u, 1u, 4294967295u), 1494f), -3063i, vec4<f32>(784f, -1407f, 549f, -885f), vec4<u32>(24850u, 66914u, 38203u, 1u)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec3<f32>(1000f, -714f, 501f)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec3<f32>(-165f, -594f, -1504f)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec3<f32>(-2187f, -373f, 1090f)), vec3<u32>(1935u, 4294967295u, 0u), 1228f), 1i, vec4<f32>(-639f, -1044f, -255f, -580f), vec4<u32>(0u, 4294967295u, 1u, 54833u)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec3<f32>(-1293f, 1099f, -421f)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec3<f32>(-568f, 918f, -684f)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec3<f32>(-839f, -891f, 214f)), vec3<u32>(60602u, 1u, 1u), 1134f), 31262i, vec4<f32>(-1454f, 944f, 551f, 124f), vec4<u32>(4294967295u, 4294967295u, 59421u, 14266u)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec3<f32>(968f, 1178f, -1736f)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec3<f32>(-707f, -1378f, 1000f)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec3<f32>(-266f, 367f, 260f)), vec3<u32>(60405u, 30183u, 0u), -218f), 1i, vec4<f32>(-591f, 1134f, -112f, -182f), vec4<u32>(0u, 8842u, 4294967295u, 0u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec3<f32>(1167f, -1075f, -1807f)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec3<f32>(244f, 140f, -1880f)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec3<f32>(-518f, 1000f, 286f)), vec3<u32>(0u, 40609u, 6863u), -409f), 20409i, vec4<f32>(-639f, 926f, 159f, 624f), vec4<u32>(1u, 19685u, 4294967295u, 3823u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec3<f32>(-1410f, -1426f, 500f)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec3<f32>(-556f, 153f, -101f)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec3<f32>(809f, 656f, -242f)), vec3<u32>(42374u, 1u, 33684u), 779f), -1i, vec4<f32>(247f, 710f, -1000f, 344f), vec4<u32>(40951u, 40546u, 0u, 1u)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec3<f32>(-117f, -461f, 534f)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec3<f32>(-1165f, -947f, -1235f)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec3<f32>(1000f, 368f, -396f)), vec3<u32>(4294967295u, 1u, 14151u), 886f), 0i, vec4<f32>(-591f, -142f, 897f, 3166f), vec4<u32>(4294967295u, 1u, 91436u, 4294967295u)));

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec3<f32>(291f, -130f, -241f)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec3<f32>(-267f, -359f, 1498f)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec3<f32>(667f, -709f, 676f)), vec3<u32>(29269u, 0u, 24427u), -759f), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec3<f32>(1243f, 615f, 240f)), vec3<f32>(1031f, 225f, -463f), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec3<f32>(-417f, -686f, 1000f)), false);

var<private> global2: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = vec2<i32>(-1i, 1283i);
    let var_1 = ~_wgslsmith_add_i32(-25702i, var_0.x);
    var var_2 = true;
    global2 = vec2<bool>(true, arg_0);
    let var_3 = Struct_4(global1.a, var_0.x | select(~(-62206i), ~var_1, any(global1.a.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.d.d.x), global1.c.x, 1231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.d.x * 384f) + global1.b.d.x)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(985f, -1000f, -817f, 298f) - vec4<f32>(-500f, global1.c.x, global1.a.c.d.x, global1.b.d.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(427f, 780f, -611f, 434f))))))), vec4<u32>(~abs(33501u), 72181u, global1.a.d.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~global1.a.d.x, global1.a.d.x), global1.a.d.x >> (_wgslsmith_sub_u32(4294967295u, global1.a.d.x) % 32u))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(731f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f * var_3.c.x))))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: i32) -> vec2<bool> {
    let var_0 = 831f;
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    var var_1 = abs(_wgslsmith_mod_vec2_i32(-(~(-u_input.a)), reverseBits(u_input.a)));
    var var_2 = ~_wgslsmith_add_i32(~arg_3, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 3953i), vec2<i32>(var_1.x, u_input.c)), _wgslsmith_div_i32(-2147483647i, u_input.c)) << (~_wgslsmith_mod_u32(0u, arg_1.a.d.x) % 32u));
    return select(vec2<bool>(!all(global1.b.b.yxw), false), select(select(vec2<bool>(all(arg_1.d.b.xz), all(global1.b.a)), vec2<bool>(global1.d.b.x, arg_1.b.a.x), true), arg_1.a.b.b.zy, arg_1.d.c.x), global1.b.b.ww);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    global0 = array<Struct_4, 14>();
    let var_0 = Struct_1(global1.b.b.zyy, global1.a.a.b, func_4(select(reverseBits(-1i), ~u_input.b, any(vec3<bool>(arg_0, arg_0, true))), Struct_3(global1.a, Struct_1(select(vec3<bool>(global2.x, true, true), vec3<bool>(global1.d.b.x, false, arg_0), global1.e), global1.b.b, global1.b.a.yy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.e, 457f, 1434f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(global1.e)))), Struct_1(global1.d.a, !vec4<bool>(global1.b.b.x, arg_0, true, true), select(global1.a.c.c, vec2<bool>(arg_0, arg_0), false), global1.c), !arg_0), vec4<f32>(-369f, -799f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d.d.x))), _wgslsmith_div_f32(global1.a.b.d.x, _wgslsmith_f_op_f32(sign(global1.a.b.d.x)))), u_input.a.x >> (41129u % 32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global1.d.d, _wgslsmith_f_op_vec3_f32(-global1.c))))));
    global0 = array<Struct_4, 14>();
    let var_1 = select(!global1.b.b.xw, !(!vec2<bool>(!arg_0, global2.x & var_0.c.x)), vec2<bool>(false, all(select(global1.b.b, !global1.d.b, true))));
    global2 = global1.d.c;
    return func_4(0i, Struct_3(Struct_2(global1.d, Struct_1(vec3<bool>(var_1.x, false, false), vec4<bool>(var_1.x, true, true, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(global1.d.b.x, var_0.c.x), true), _wgslsmith_div_vec3_f32(vec3<f32>(global1.d.d.x, global1.b.d.x, 294f), global1.b.d)), Struct_1(global1.d.a, global1.a.a.b, !vec2<bool>(true, arg_0), global1.a.c.d), select(global1.a.d, vec3<u32>(global1.a.d.x, 1u, 146033u), global2.x) | global1.a.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-469f))))), Struct_1(global1.d.b.ywy, select(!vec4<bool>(global2.x, var_1.x, true, true), select(vec4<bool>(global2.x, global1.a.b.c.x, arg_0, false), vec4<bool>(true, true, true, true), true), true), var_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.d, global1.d.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -1000f, global1.b.d.x) * vec3<f32>(var_0.d.x, 1000f, var_0.d.x)), !vec3<bool>(false, global1.b.b.x, false)))), _wgslsmith_f_op_vec3_f32(global1.b.d - vec3<f32>(_wgslsmith_f_op_f32(global1.d.d.x * -1854f), _wgslsmith_div_f32(var_0.d.x, var_0.d.x), global1.c.x)), global1.d, func_4(u_input.b, Struct_3(Struct_2(Struct_1(global1.a.a.a, var_0.b, global1.d.b.xw, vec3<f32>(global1.c.x, -2537f, global1.a.c.d.x)), global1.b, var_0, global1.a.d, 1032f), global1.a.c, var_0.d, Struct_1(vec3<bool>(true, var_1.x, true), var_0.b, var_0.b.zw, vec3<f32>(global1.a.e, global1.a.b.d.x, 940f)), !var_0.b.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, global1.a.c.d.x, -1174f, global1.b.d.x) * vec4<f32>(-1501f, -386f, global1.b.d.x, -196f)))), u_input.c).x), vec4<f32>(_wgslsmith_f_op_f32(-799f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.d.d.x)), _wgslsmith_f_op_f32(-533f + global1.d.d.x))), _wgslsmith_f_op_f32(abs(global1.a.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(step(-713f, -1487f)))) + _wgslsmith_f_op_vec3_f32(func_3(select(true, var_1.x, var_0.c.x))).x), _wgslsmith_f_op_vec3_f32(func_3(arg_0)).x), 9459i);
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_4, 14>();
    let var_0 = global1.a.b.d.yx;
    var var_1 = global1.a.a;
    global2 = select(vec2<bool>(-_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) <= 23654i, any(vec4<bool>(global2.x, true, any(var_1.a), true))), !func_2(any(vec3<bool>(global2.x, false, var_1.b.x))), var_1.c);
    let var_2 = -1000f;
    return StorageBuffer(u_input.c, global1.b.d, vec3<i32>(_wgslsmith_mult_i32(43603i, abs(i32(-1i) * -10195i)), _wgslsmith_add_i32(abs(u_input.b) | 1i, 53641i), max(-abs(u_input.c), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 14>();
    var var_0 = vec3<i32>(0i, _wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(-2147483647i)), u_input.c >> (4294967295u % 32u));
    var var_1 = all(global1.d.a);
    let var_2 = !(!(any(global1.a.a.b) | all(vec3<bool>(global1.b.a.x, global1.b.b.x, false)))) || true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(436f)), -674f) * global1.c.x) - _wgslsmith_f_op_f32(sign(global1.a.e))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(519f)) + global1.d.d.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, -440f, global1.b.d.x, global1.b.d.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(-676f, -2302f, global1.b.d.x, global1.d.d.x), vec4<f32>(617f, 403f, global1.b.d.x, global1.a.c.d.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.d.d.x, -1000f, -460f, 110f), vec4<f32>(1172f, 637f, global1.b.d.x, global1.a.e))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, global1.b.d.x, 222f, global1.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(486f, global1.c.x, 1112f, global1.c.x))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, 1096f, global1.d.d.x, global1.a.a.d.x) + vec4<f32>(global1.a.b.d.x, global1.b.d.x, global1.a.c.d.x, global1.b.d.x)))))));
    var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-(vec2<i32>(36224i, u_input.a.x) << (vec2<u32>(63998u, global1.a.d.x) % vec2<u32>(32u))), ~(-var_0.zy)), firstLeadingBit(u_input.c)), abs(20834i), 48169i);
    var_1 = false;
    let x = u_input.a;
    s_output = func_1();
}

