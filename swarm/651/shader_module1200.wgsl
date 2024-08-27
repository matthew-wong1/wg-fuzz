struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<f32>(864f, 2428f, 622f, -1400f), -613f, vec2<bool>(false, true)), true, Struct_1(vec4<f32>(-594f, 520f, -135f, 3092f), -701f, vec2<bool>(true, true)), true), Struct_2(Struct_1(vec4<f32>(-806f, -568f, 1000f, 431f), -1312f, vec2<bool>(true, true)), false, Struct_1(vec4<f32>(-1867f, -353f, 1753f, -1546f), -1227f, vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(553f, -414f, 825f, 516f), -594f, vec2<bool>(true, true)), false, Struct_1(vec4<f32>(994f, -402f, -2112f, -1000f), -2369f, vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<f32>(395f, 361f, -1169f, 2284f), 486f, vec2<bool>(false, false)), false, Struct_1(vec4<f32>(144f, 803f, -452f, -1598f), 1370f, vec2<bool>(true, true)), true), Struct_2(Struct_1(vec4<f32>(-1000f, 1143f, 1111f, 386f), 670f, vec2<bool>(true, true)), false, Struct_1(vec4<f32>(-467f, 2272f, 153f, 613f), 1496f, vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<f32>(624f, 2301f, -1397f, 619f), 1860f, vec2<bool>(false, false)), false, Struct_1(vec4<f32>(-532f, -1000f, 1000f, -926f), 964f, vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<f32>(-425f, -552f, 448f, -716f), 1691f, vec2<bool>(true, false)), false, Struct_1(vec4<f32>(-1243f, -845f, -341f, 583f), 373f, vec2<bool>(false, false)), false), Struct_2(Struct_1(vec4<f32>(-135f, -266f, -803f, -153f), 885f, vec2<bool>(false, true)), true, Struct_1(vec4<f32>(-1000f, 418f, 1000f, 1910f), 391f, vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(-1338f, -1296f, -799f, 621f), 1919f, vec2<bool>(false, true)), false, Struct_1(vec4<f32>(1739f, -1152f, 1219f, 1265f), 585f, vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(-1000f, -2362f, -1406f, 533f), 1499f, vec2<bool>(true, false)), false, Struct_1(vec4<f32>(-1959f, -1962f, 517f, -1684f), -435f, vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<f32>(-1073f, -699f, -251f, 908f), -901f, vec2<bool>(false, false)), true, Struct_1(vec4<f32>(-1624f, -1789f, 496f, -1000f), -1542f, vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(273f, -677f, -1559f, 101f), 909f, vec2<bool>(true, false)), true, Struct_1(vec4<f32>(-1273f, 528f, -569f, 2407f), -1375f, vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<f32>(2580f, 337f, 328f, -937f), 1768f, vec2<bool>(true, true)), true, Struct_1(vec4<f32>(-169f, -1017f, 140f, -364f), 754f, vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(736f, -976f, -770f, -1953f), -1189f, vec2<bool>(false, true)), false, Struct_1(vec4<f32>(327f, 116f, 1000f, 140f), -2749f, vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<f32>(636f, 979f, -2098f, -229f), -1350f, vec2<bool>(true, false)), false, Struct_1(vec4<f32>(-365f, -987f, -1000f, 1233f), -1526f, vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(205f, -460f, 648f, -1000f), -591f, vec2<bool>(false, true)), false, Struct_1(vec4<f32>(455f, 1000f, 886f, -174f), -347f, vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<f32>(1605f, 145f, -327f, 814f), 466f, vec2<bool>(true, true)), true, Struct_1(vec4<f32>(1203f, 1730f, -338f, 634f), -1252f, vec2<bool>(false, false)), true), Struct_2(Struct_1(vec4<f32>(638f, 1044f, -266f, -1273f), 484f, vec2<bool>(false, false)), true, Struct_1(vec4<f32>(-250f, -938f, -111f, -1004f), -1000f, vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(-712f, -1000f, 280f, 261f), 637f, vec2<bool>(false, true)), false, Struct_1(vec4<f32>(563f, -405f, 2324f, -539f), -119f, vec2<bool>(false, false)), false), Struct_2(Struct_1(vec4<f32>(1093f, -1725f, -1000f, -389f), -961f, vec2<bool>(true, false)), false, Struct_1(vec4<f32>(119f, -596f, -246f, 123f), 113f, vec2<bool>(false, false)), false), Struct_2(Struct_1(vec4<f32>(194f, -827f, -1230f, 969f), 419f, vec2<bool>(true, true)), false, Struct_1(vec4<f32>(-379f, 921f, -1483f, 238f), -356f, vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<f32>(-593f, 1202f, 1588f, -506f), 776f, vec2<bool>(false, true)), false, Struct_1(vec4<f32>(1137f, 175f, 1040f, -1000f), -1000f, vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(-657f, -1328f, -455f, 907f), 1917f, vec2<bool>(true, false)), false, Struct_1(vec4<f32>(-513f, 148f, 710f, -1000f), -228f, vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(338f, 1384f, 904f, 2078f), 1143f, vec2<bool>(true, true)), true, Struct_1(vec4<f32>(-448f, 837f, 836f, 285f), 3591f, vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(683f, -1000f, -278f, 435f), -498f, vec2<bool>(false, false)), false, Struct_1(vec4<f32>(-917f, -421f, 354f, 369f), 196f, vec2<bool>(true, true)), true), Struct_2(Struct_1(vec4<f32>(1187f, -1306f, 1424f, -1509f), -177f, vec2<bool>(false, true)), true, Struct_1(vec4<f32>(-895f, 1393f, -321f, 225f), 160f, vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<f32>(461f, 1485f, -302f, 861f), -230f, vec2<bool>(false, false)), false, Struct_1(vec4<f32>(283f, -1166f, 861f, 961f), 1083f, vec2<bool>(true, false)), true));

var<private> global1: vec4<i32> = vec4<i32>(0i, 71983i, -1i, i32(-2147483648));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> vec3<bool> {
    var var_0 = select(!select(arg_1.a.zxz, arg_0.a.xyz, select(select(arg_1.a.yxw, vec3<bool>(true, arg_1.a.x, false), arg_0.a.x), vec3<bool>(false, false, true), !arg_0.a.x)), vec3<bool>(true, !((2705i >> (1u % 32u)) == firstLeadingBit(u_input.a)), !all(arg_0.a.xyy)), true);
    var var_1 = select(!var_0.zy, select(arg_1.a.xy, select(vec2<bool>(arg_1.a.x, !var_0.x), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), all(arg_1.a)), select(vec2<bool>(arg_0.a.x, false), var_0.xx, !var_0.x)), arg_1.a.yz), true);
    global0 = array<Struct_2, 27>();
    var_1 = select(select(vec2<bool>(arg_1.a.x, true), !arg_1.a.yy, vec2<bool>(!any(arg_1.a), all(vec3<bool>(var_1.x, true, var_1.x)))), arg_0.a.wx, false);
    var var_2 = arg_0;
    return vec3<bool>(any(!var_2.a.zw), !(!(_wgslsmith_f_op_f32(709f - arg_0.b) >= var_2.b)), !(arg_0.d.x >= 21732i));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec3<bool> {
    return !select(!(!func_3(Struct_4(vec4<bool>(true, false, true, false), 874f, vec2<u32>(1u, u_input.c), vec3<i32>(29399i, global1.x, global1.x)), Struct_4(vec4<bool>(false, true, true, true), -1937f, arg_1, arg_0.yzx), -699f)), vec3<bool>(17960i != -arg_0.x, ~55251u >= (u_input.b & 1u), true), vec3<bool>(true, true, true));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    var var_0 = arg_0;
    let var_1 = 1266f;
    let var_2 = !func_2(vec4<i32>(~_wgslsmith_mod_i32(-1i, 17941i), -_wgslsmith_add_i32(u_input.a, 18906i), _wgslsmith_add_i32(reverseBits(u_input.a), 1i), ~0i & ~u_input.a), countOneBits(firstLeadingBit(arg_0.xz) | vec2<u32>(0u, u_input.c)));
    global0 = array<Struct_2, 27>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(-691f))), 195f, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f - -617f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-938f, var_1), _wgslsmith_div_f32(var_1, -1321f), 240f, _wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1, var_1, 1480f) - vec4<f32>(var_1, -614f, 399f, var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, var_1, 269f, 1283f)), vec4<bool>(var_2.x, var_2.x, var_2.x, false))))), _wgslsmith_f_op_f32(-var_1), !select(!var_2.zx, var_2.yx, select(var_2.x, true, true) & var_2.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, arg_1.b, arg_2.a.x, 477f))), -306f, arg_2.c));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.a.x + arg_2.a.x), arg_1.b));
    global1 = min(vec4<i32>(arg_1.d.x, 2147483647i, -(~arg_1.d.x) & _wgslsmith_mod_i32(i32(-1i) * -1i, countOneBits(-2147483647i)), ~(22556i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, u_input.c, u_input.b), vec3<u32>(23520u, u_input.c, 4294967295u)) % 32u))), -countOneBits(reverseBits(vec4<i32>(u_input.a, arg_1.d.x, -24618i, global1.x))));
    global1 = abs(~max(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, 0i, -15086i), vec4<i32>(-61757i, arg_1.d.x, u_input.a, 36141i))), vec4<i32>(u_input.a, select(arg_1.d.x, -2147483647i, arg_1.a.x), -64227i, -1i)));
    let var_2 = func_1(vec3<u32>(~min(arg_1.c.x, max(21156u, 59093u)), 18209u, ~arg_1.c.x)).c.x;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(673f, _wgslsmith_div_vec2_i32((max(vec2<i32>(0i, u_input.a), global1.xy) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(515u, 0u) % vec2<u32>(32u)), vec2<i32>(abs(i32(-1i) * -2147483647i), _wgslsmith_div_i32(~global1.x, global1.x << (u_input.c % 32u)))), vec3<f32>(549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1080f * _wgslsmith_f_op_f32(f32(-1f) * -1329f))), _wgslsmith_f_op_f32(func_4(func_1(vec3<u32>(87764u, 1u, 55884u)), Struct_4(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(-238f - 1000f), ~vec2<u32>(6011u, u_input.c), -vec3<i32>(-47241i, -34396i, u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(970f, 830f, -664f, 1000f) - vec4<f32>(544f, 2370f, -1781f, 205f)), -1000f, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))))), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(2042f, -930f) - vec2<f32>(1113f, 580f))))));
}

