struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(-2595i, true, vec2<bool>(true, true), true, vec3<f32>(746f, -1704f, -1877f)), Struct_1(-12280i, false, vec2<bool>(true, false), true, vec3<f32>(-2144f, -1015f, -841f)), vec3<f32>(536f, -544f, -1352f)), Struct_3(Struct_1(2147483647i, false, vec2<bool>(false, true), true, vec3<f32>(473f, -186f, 762f)), Struct_1(i32(-2147483648), true, vec2<bool>(true, false), true, vec3<f32>(1546f, -2191f, 1385f)), vec3<f32>(-198f, 1000f, -1019f)), Struct_3(Struct_1(1035i, true, vec2<bool>(true, false), true, vec3<f32>(694f, 1602f, -171f)), Struct_1(-6806i, true, vec2<bool>(false, false), false, vec3<f32>(655f, -271f, 960f)), vec3<f32>(769f, 110f, -223f)), Struct_3(Struct_1(6859i, true, vec2<bool>(true, true), true, vec3<f32>(146f, -2164f, 757f)), Struct_1(2147483647i, true, vec2<bool>(false, true), false, vec3<f32>(261f, -624f, 377f)), vec3<f32>(-894f, -1000f, -984f)), Struct_3(Struct_1(1i, true, vec2<bool>(true, false), true, vec3<f32>(-602f, 158f, 1392f)), Struct_1(0i, false, vec2<bool>(true, false), false, vec3<f32>(-2808f, 1123f, 342f)), vec3<f32>(1000f, -1072f, 1016f)), Struct_3(Struct_1(-8308i, false, vec2<bool>(true, true), false, vec3<f32>(-1000f, 1139f, -327f)), Struct_1(14750i, false, vec2<bool>(false, false), true, vec3<f32>(898f, 1072f, -1130f)), vec3<f32>(214f, 1256f, -270f)), Struct_3(Struct_1(-6419i, false, vec2<bool>(true, false), false, vec3<f32>(-458f, 394f, -1263f)), Struct_1(-65312i, true, vec2<bool>(true, false), true, vec3<f32>(-696f, 1000f, -647f)), vec3<f32>(471f, 376f, -1722f)), Struct_3(Struct_1(2147483647i, false, vec2<bool>(true, true), false, vec3<f32>(265f, 1341f, -112f)), Struct_1(-25515i, true, vec2<bool>(false, false), true, vec3<f32>(513f, 1098f, 136f)), vec3<f32>(1012f, -1583f, 1863f)), Struct_3(Struct_1(20645i, true, vec2<bool>(false, false), true, vec3<f32>(144f, 572f, 362f)), Struct_1(-1i, false, vec2<bool>(true, false), true, vec3<f32>(1242f, -1063f, 655f)), vec3<f32>(-1709f, -329f, -1472f)), Struct_3(Struct_1(-562i, false, vec2<bool>(true, false), false, vec3<f32>(-814f, 2498f, 2542f)), Struct_1(15525i, false, vec2<bool>(false, false), false, vec3<f32>(-336f, -588f, -1819f)), vec3<f32>(846f, 574f, 1467f)), Struct_3(Struct_1(-17053i, false, vec2<bool>(true, false), false, vec3<f32>(780f, -306f, 171f)), Struct_1(-1i, false, vec2<bool>(true, true), true, vec3<f32>(-1000f, -229f, 121f)), vec3<f32>(1000f, -1033f, 1596f)), Struct_3(Struct_1(i32(-2147483648), true, vec2<bool>(true, true), false, vec3<f32>(302f, 501f, -687f)), Struct_1(-9651i, true, vec2<bool>(false, true), false, vec3<f32>(-765f, -1000f, -589f)), vec3<f32>(-409f, 297f, -439f)), Struct_3(Struct_1(-1i, false, vec2<bool>(true, true), false, vec3<f32>(-1000f, 2175f, -2418f)), Struct_1(2147483647i, false, vec2<bool>(false, false), false, vec3<f32>(-2096f, 409f, -1502f)), vec3<f32>(-1116f, -891f, -1800f)), Struct_3(Struct_1(-1i, false, vec2<bool>(false, false), true, vec3<f32>(751f, -726f, 1451f)), Struct_1(2147483647i, false, vec2<bool>(true, false), true, vec3<f32>(431f, 1202f, 736f)), vec3<f32>(-1589f, 487f, -1153f)), Struct_3(Struct_1(-5428i, false, vec2<bool>(true, true), true, vec3<f32>(731f, -839f, -242f)), Struct_1(1i, false, vec2<bool>(false, true), false, vec3<f32>(-995f, 1600f, -392f)), vec3<f32>(-138f, -1785f, 1019f)), Struct_3(Struct_1(-31105i, false, vec2<bool>(false, false), false, vec3<f32>(141f, -223f, 958f)), Struct_1(-26742i, true, vec2<bool>(false, false), false, vec3<f32>(505f, 352f, -623f)), vec3<f32>(2224f, -110f, -1334f)), Struct_3(Struct_1(-19473i, false, vec2<bool>(true, true), false, vec3<f32>(-1800f, -697f, -366f)), Struct_1(38908i, true, vec2<bool>(true, false), true, vec3<f32>(-414f, 1121f, -517f)), vec3<f32>(468f, -1000f, 983f)), Struct_3(Struct_1(-7316i, false, vec2<bool>(true, true), true, vec3<f32>(-1396f, -233f, -842f)), Struct_1(-1i, true, vec2<bool>(true, false), false, vec3<f32>(-331f, -153f, 1000f)), vec3<f32>(580f, -691f, -581f)), Struct_3(Struct_1(2147483647i, false, vec2<bool>(false, true), false, vec3<f32>(-1126f, 351f, 594f)), Struct_1(29575i, true, vec2<bool>(false, false), false, vec3<f32>(1358f, -1286f, -773f)), vec3<f32>(-503f, -1784f, 1105f)), Struct_3(Struct_1(36158i, true, vec2<bool>(false, false), true, vec3<f32>(-3784f, -1000f, -765f)), Struct_1(-15151i, false, vec2<bool>(true, false), true, vec3<f32>(-270f, 778f, 939f)), vec3<f32>(120f, -825f, 1301f)), Struct_3(Struct_1(i32(-2147483648), true, vec2<bool>(false, false), true, vec3<f32>(281f, -182f, 1031f)), Struct_1(-3874i, true, vec2<bool>(false, true), true, vec3<f32>(-689f, -308f, 1394f)), vec3<f32>(-748f, -554f, -416f)), Struct_3(Struct_1(44549i, false, vec2<bool>(false, true), false, vec3<f32>(100f, -1856f, -1388f)), Struct_1(0i, true, vec2<bool>(true, false), true, vec3<f32>(1281f, -2774f, -799f)), vec3<f32>(955f, 1000f, -308f)), Struct_3(Struct_1(86698i, true, vec2<bool>(true, false), true, vec3<f32>(-2007f, -1337f, 831f)), Struct_1(-1i, false, vec2<bool>(true, true), true, vec3<f32>(974f, -555f, 641f)), vec3<f32>(-989f, -962f, 720f)), Struct_3(Struct_1(-32163i, false, vec2<bool>(true, true), true, vec3<f32>(-1000f, 742f, -285f)), Struct_1(0i, true, vec2<bool>(true, true), false, vec3<f32>(-832f, 1339f, -811f)), vec3<f32>(-134f, 691f, 439f)), Struct_3(Struct_1(1i, true, vec2<bool>(false, false), true, vec3<f32>(-1000f, -1528f, -1637f)), Struct_1(-15436i, true, vec2<bool>(true, true), false, vec3<f32>(1050f, 134f, -144f)), vec3<f32>(-895f, 1000f, 1105f)), Struct_3(Struct_1(26187i, false, vec2<bool>(true, false), false, vec3<f32>(797f, 1918f, -1000f)), Struct_1(0i, true, vec2<bool>(true, false), false, vec3<f32>(434f, 1721f, 393f)), vec3<f32>(2237f, 1400f, 1385f)), Struct_3(Struct_1(11425i, false, vec2<bool>(false, false), true, vec3<f32>(861f, -1556f, -1044f)), Struct_1(-1i, false, vec2<bool>(false, false), true, vec3<f32>(1806f, 1000f, -350f)), vec3<f32>(360f, -224f, 669f)), Struct_3(Struct_1(-6014i, true, vec2<bool>(true, false), true, vec3<f32>(-1231f, 788f, 804f)), Struct_1(2147483647i, false, vec2<bool>(false, true), false, vec3<f32>(-1293f, -130f, 792f)), vec3<f32>(901f, -1410f, -970f)), Struct_3(Struct_1(1i, true, vec2<bool>(false, false), true, vec3<f32>(-588f, -619f, -113f)), Struct_1(37418i, false, vec2<bool>(true, true), true, vec3<f32>(-842f, -914f, -720f)), vec3<f32>(-848f, -859f, 267f)));

var<private> global3: array<bool, 20> = array<bool, 20>(true, true, true, true, false, true, true, false, false, true, true, false, false, true, false, true, true, true, true, true);

var<private> global4: array<vec3<f32>, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec3<bool>) -> u32 {
    global4 = array<vec3<f32>, 26>();
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = ~_wgslsmith_sub_vec2_i32(~(vec2<i32>(global1.a, 0i) ^ vec2<i32>(21725i, 381i)) | _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(40007i, -46836i), vec2<i32>(1i, -1i)), -vec2<i32>(global1.a, 0i)), vec2<i32>(1i, _wgslsmith_mult_i32(~global1.a, global1.a | u_input.b)));
    global3 = array<bool, 20>();
    var var_1 = reverseBits(~vec4<u32>(func_3(u_input.a.x, abs(vec3<u32>(45877u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(1184i, global0.a.a), vec2<i32>(-56010i, u_input.b)), !vec3<bool>(global3[_wgslsmith_index_u32(98525u, 20u)], arg_1.a.c.x, true)), 0u, _wgslsmith_add_u32(u_input.a.x & u_input.c, 44238u), 1946u));
    var var_2 = Struct_1(u_input.b, any(!select(select(vec2<bool>(false, true), vec2<bool>(false, arg_1.a.d), arg_1.a.c), select(vec2<bool>(false, false), arg_1.a.c, false), select(arg_1.a.c, global0.a.c, false))), !select(!select(vec2<bool>(true, true), vec2<bool>(global0.a.b, true), arg_1.a.c), arg_1.a.c, !select(vec2<bool>(true, false), global1.c, global0.a.c)), any(vec2<bool>(true, !(4294967295u >= var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1036f, -354f, global0.a.e.x)))))));
    var var_3 = Struct_3(Struct_1(39751i, var_2.d, vec2<bool>(47837i < firstLeadingBit(global0.a.a), !all(vec2<bool>(arg_1.a.c.x, false))), true, vec3<f32>(381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-622f, 2408f)) + -2317f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f - var_2.e.x)))), Struct_1(~var_2.a, any(vec2<bool>(!var_2.b, any(vec2<bool>(var_2.c.x, true)))), arg_1.a.c, any(select(arg_1.a.c, vec2<bool>(false, true), all(vec3<bool>(false, false, false)))), global4[_wgslsmith_index_u32(var_1.x, 26u)]), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1068f, 731f, -563f), vec3<f32>(139f, 1000f, -579f), vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 20u)], true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.e.x, 150f, 197f), vec3<f32>(global0.a.e.x, arg_0, 739f)) - _wgslsmith_f_op_vec3_f32(trunc(global1.e))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, global1.c.x), global0.a.d)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !any(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 20u)])))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = (~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global1.a), vec2<i32>(-1i, 2147483647i)), abs(vec2<i32>(31491i, global0.a.a))) | vec2<i32>(-1i, abs(max(2147483647i, -1353i)))) & ~(-abs(~vec2<i32>(-1i, global1.a)));
    var var_1 = select(select(!(!vec4<bool>(global0.a.c.x, false, true, false)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, arg_2.b, false, true), vec4<bool>(global1.b, true, false, true)), select(vec4<bool>(arg_2.b, global0.a.b, global0.a.d, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<bool>(global0.a.d, true, true, arg_2.d), vec4<bool>(arg_2.d, global0.a.d, false, false)), select(vec4<bool>(false, arg_2.c.x, false, global0.a.b), vec4<bool>(true, arg_2.c.x, global0.a.c.x, true), false)), false), select(vec4<bool>(!arg_2.b, false, true, any(vec4<bool>(global3[_wgslsmith_index_u32(20276u, 20u)], global0.a.c.x, false, global0.a.c.x))), !vec4<bool>(!global3[_wgslsmith_index_u32(u_input.c, 20u)], true, false, any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false))), all(!select(vec3<bool>(false, true, global1.b), vec3<bool>(true, arg_2.d, arg_2.c.x), vec3<bool>(true, arg_2.c.x, true)))), select(vec4<bool>(false || (global1.d == global0.a.b), arg_2.a != _wgslsmith_mult_i32(global1.a, 18678i), arg_2.d, global1.d), select(vec4<bool>(true | global1.b, arg_2.b, false, global3[_wgslsmith_index_u32(abs(u_input.c), 20u)]), select(!vec4<bool>(true, global0.a.b, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false), vec4<bool>(true, global0.a.d, global1.c.x, global1.b), vec4<bool>(false, false, false, false)), true), vec4<bool>(!(!global3[_wgslsmith_index_u32(79227u, 20u)]), all(!vec2<bool>(arg_2.c.x, true)), !all(vec4<bool>(false, global0.a.c.x, global1.b, global1.b)), true)));
    let var_2 = global0.a.e.x;
    var_1 = select(vec4<bool>(false, all(vec2<bool>(global1.b, arg_3.x <= -396f)), global1.d, all(vec2<bool>(true, true))), !select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], true, false, global1.c.x), select(vec4<bool>(global0.a.c.x, true, true, global1.d), vec4<bool>(global0.a.c.x, false, false, var_1.x), true), select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(false, global0.a.d, true, var_1.x), global0.a.c.x)), !(!vec4<bool>(arg_2.b, var_1.x, true, false)), !(!vec4<bool>(var_1.x, true, false, global1.b))), !(!vec4<bool>(!global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.b, !var_1.x, any(vec3<bool>(false, global0.a.b, global1.d)))));
    global2 = array<Struct_3, 29>();
    return Struct_3(Struct_1(arg_2.a, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global1.c.x, global0.a.d))) == arg_2.d, arg_2.c, false, global0.a.e), global0.a, arg_2.e);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(global1.e));
    let var_1 = Struct_2(global0.a);
    var var_2 = func_4(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_vec3_f32(global0.a.e * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.a.e.x, 3326f), _wgslsmith_f_op_f32(func_2(var_0.x, Struct_2(global0.a))), var_0.x))), Struct_1(countOneBits(abs(-1534i)) & global1.a, !all(select(vec4<bool>(true, var_1.a.b, true, false), vec4<bool>(false, arg_1.x, false, var_1.a.d), vec4<bool>(arg_1.x, global3[_wgslsmith_index_u32(u_input.c, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], false))), !select(vec2<bool>(arg_1.x, true), global0.a.c, select(vec2<bool>(var_1.a.c.x, true), vec2<bool>(true, arg_1.x), vec2<bool>(true, false))), all(!select(vec4<bool>(false, false, arg_1.x, global3[_wgslsmith_index_u32(7548u, 20u)]), vec4<bool>(global0.a.d, global3[_wgslsmith_index_u32(60867u, 20u)], global3[_wgslsmith_index_u32(u_input.c, 20u)], true), vec4<bool>(true, global1.c.x, var_1.a.d, true))), _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(~(~33301u), 26u)])), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2389f)), var_1.a.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) + _wgslsmith_f_op_f32(round(global0.a.e.x))))), var_1.a.e.x));
    global2 = array<Struct_3, 29>();
    var var_3 = select(firstTrailingBit((vec4<u32>(54356u, 23513u, u_input.c, u_input.c) | vec4<u32>(1u, 1u, 1u, 1u)) >> ((~vec4<u32>(34288u, u_input.a.x, u_input.a.x, u_input.c) | (vec4<u32>(u_input.c, u_input.a.x, 30758u, 1u) << (vec4<u32>(u_input.c, 29389u, u_input.c, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(24448u, u_input.a.x, 4294967295u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.a.x, u_input.a.x), arg_1.x), ~max(vec4<u32>(18567u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 36068u, u_input.a.x, u_input.c))), global1.c.x);
    return ~_wgslsmith_mod_i32(-abs(var_2.b.a ^ 35139i), var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-firstLeadingBit(-17078i), firstTrailingBit(~func_1(-vec3<i32>(u_input.b, u_input.b, u_input.b), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false), vec2<bool>(global1.d, false), true))), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1114f)) - _wgslsmith_f_op_f32(f32(-1f) * -452f))));
    var var_2 = vec2<bool>(true, global1.e.x <= _wgslsmith_f_op_f32(-global0.a.e.x));
    var var_3 = Struct_3(global0.a, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.e.x * _wgslsmith_div_f32(-529f, global1.e.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(global0.a.e.x + -494f), _wgslsmith_f_op_f32(global1.e.x + -345f))), global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, -1000f, global1.e.x, -623f)) + vec4<f32>(global1.e.x, 404f, global0.a.e.x, -1185f)))).a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, 766f, global1.e.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global4[_wgslsmith_index_u32(10593u, 26u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(29572u, 26u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1171f, global1.e.x, 2037f)))))));
    global2 = array<Struct_3, 29>();
    let var_4 = Struct_2(Struct_1(1i, all(select(vec4<bool>(var_3.b.b, true, true, false), vec4<bool>(global0.a.b, false, var_2.x, global1.d), true)) == false, vec2<bool>(~1426u <= u_input.c, global0.a.b), false, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c.x, global0.a.e.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_3.b.e.x)), -746f)), -142f)));
    var var_5 = any(vec2<bool>(all(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 20u)], global1.b)), true));
    var var_6 = Struct_3(func_4(_wgslsmith_f_op_f32(-105f - -1248f), _wgslsmith_f_op_vec3_f32(select(global0.a.e, _wgslsmith_f_op_vec3_f32(-global1.e), true | !global3[_wgslsmith_index_u32(4294967295u, 20u)])), func_4(1026f, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c, 90105u, u_input.a.x, 4294967295u), vec4<u32>(15933u, u_input.c, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.c, u_input.a.x, 2862u, 97898u)), 26u)], var_4.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1460f, -1018f, 510f, 1020f)))).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1038f, global1.e.x, -341f, var_3.a.e.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.e.x, 818f, global1.e.x, 1378f)))))).b, global0.a, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(163f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f + -2068f)), _wgslsmith_div_f32(var_3.a.e.x, global0.a.e.x), _wgslsmith_f_op_f32(round(792f))), Struct_1(2147483647i, global3[_wgslsmith_index_u32(u_input.c, 20u)], var_4.a.c, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, var_4.a.e.x, global0.a.e.x) - _wgslsmith_div_vec3_f32(vec3<f32>(136f, var_3.c.x, var_3.b.e.x), global0.a.e))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1565f * var_4.a.e.x), 328f, _wgslsmith_f_op_f32(-915f - -1059f), var_4.a.e.x)))).b.e);
    let var_7 = func_4(_wgslsmith_f_op_f32(var_4.a.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.e.x)))) + var_4.a.e.x)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.e.x + -3062f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.e.x)))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.c), 20u)])), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.a.e.x)), Struct_2(global0.a))), -896f), Struct_1(global1.a, !var_6.b.c.x, vec2<bool>(!(var_3.a.a == -1i), any(!vec3<bool>(true, var_3.b.d, var_2.x))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~20607u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 53207u), ~u_input.c)), 20u)], vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.e.x), var_4.a.e.x), 724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.e.x - global0.a.e.x)))), vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(var_3.a.e.x)), var_4)), global0.a.e.x, global0.a.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1074f, _wgslsmith_f_op_f32(f32(-1f) * -1321f), var_3.b.c.x)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(abs(~0u), u_input.c, _wgslsmith_mult_u32(0u, u_input.a.x | u_input.c)) & 11239u, vec2<u32>(min(~u_input.c & _wgslsmith_mult_u32(u_input.c, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, ~4892u)), ~1u));
}

