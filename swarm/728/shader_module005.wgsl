struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -20193i, -1i), i32(-2147483648), -1638f, -463f, 1i), vec2<f32>(-2546f, -163f), Struct_1(vec3<i32>(-36954i, -65232i, -1i), -33842i, -185f, 924f, 0i)), Struct_2(Struct_1(vec3<i32>(1i, -25500i, 36063i), -1i, -1586f, -1833f, 2147483647i), vec2<f32>(2385f, 1738f), Struct_1(vec3<i32>(1i, -79926i, i32(-2147483648)), 728i, -344f, 186f, 271i)), Struct_2(Struct_1(vec3<i32>(9807i, 1i, i32(-2147483648)), i32(-2147483648), -1242f, 1220f, 1i), vec2<f32>(1187f, 126f), Struct_1(vec3<i32>(-1i, 2936i, i32(-2147483648)), -1i, 327f, -778f, 22467i)), Struct_2(Struct_1(vec3<i32>(-1i, -14779i, -17010i), 1i, -651f, -1000f, 29850i), vec2<f32>(-1292f, 615f), Struct_1(vec3<i32>(-15114i, 2147483647i, 74504i), i32(-2147483648), 628f, 131f, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(-1i, -591i, -10828i), 1i, 152f, -623f, 1i), vec2<f32>(-142f, -994f), Struct_1(vec3<i32>(-18333i, 41785i, -25852i), 40447i, 824f, 384f, -44180i)), Struct_2(Struct_1(vec3<i32>(1i, -17052i, 23945i), 31524i, 729f, 507f, 14593i), vec2<f32>(-496f, 817f), Struct_1(vec3<i32>(-1i, 0i, 15102i), 0i, -1346f, -1000f, -1i)), Struct_2(Struct_1(vec3<i32>(-2172i, 0i, 2147483647i), 2147483647i, -2032f, -294f, -9584i), vec2<f32>(1000f, -1000f), Struct_1(vec3<i32>(-1i, -1i, -4273i), 0i, -1856f, -961f, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(1i, -67962i, 16452i), -1i, -1000f, 1226f, 0i), vec2<f32>(328f, 1134f), Struct_1(vec3<i32>(315i, 1i, -24244i), -35711i, 851f, 439f, 2147483647i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 14130i, i32(-2147483648)), -2917i, -169f, -1085f, i32(-2147483648)), vec2<f32>(-990f, 1000f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 19531i), -1144i, -676f, -1190f, -1i)), Struct_2(Struct_1(vec3<i32>(770i, -26263i, -59440i), 0i, -246f, -1000f, -7141i), vec2<f32>(-1006f, 640f), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -75732i), i32(-2147483648), -297f, -432f, 2541i)), Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), 1i, 1526f, -446f, 1i), vec2<f32>(1010f, -639f), Struct_1(vec3<i32>(10958i, 1i, 70314i), -35414i, 293f, -755f, 32008i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i), 0i, -1000f, -149f, 654i), vec2<f32>(-125f, 1309f), Struct_1(vec3<i32>(2147483647i, 0i, 23894i), -11951i, 115f, 154f, -12207i)), Struct_2(Struct_1(vec3<i32>(0i, 0i, 66418i), -4383i, -1186f, 1025f, -18319i), vec2<f32>(1201f, 1078f), Struct_1(vec3<i32>(-11001i, -38587i, -23820i), 0i, 143f, -1485f, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 12459i, -1i), 2760i, 408f, 1125f, 41035i), vec2<f32>(708f, 645f), Struct_1(vec3<i32>(2147483647i, 2147483647i, 5360i), 1i, 1000f, -1816f, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(2147483647i, -16908i, -1i), 48404i, 581f, -754f, -1067i), vec2<f32>(330f, -323f), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -18033i), i32(-2147483648), -203f, 157f, -31360i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 17951i, 2147483647i), 1i, 356f, 529f, -3812i), vec2<f32>(1128f, 655f), Struct_1(vec3<i32>(54552i, 0i, 34212i), -10904i, 592f, -288f, 742i)), Struct_2(Struct_1(vec3<i32>(-29175i, 51929i, i32(-2147483648)), -18634i, 290f, 1174f, -29584i), vec2<f32>(308f, 372f), Struct_1(vec3<i32>(14825i, -59465i, -65157i), -1i, 895f, 430f, 2147483647i)), Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 0i), 0i, -2420f, 624f, -1i), vec2<f32>(-271f, -839f), Struct_1(vec3<i32>(-1i, -1i, -27679i), -11254i, 199f, -1256f, 0i)), Struct_2(Struct_1(vec3<i32>(-1i, 1i, 0i), 33158i, 252f, 1000f, 6617i), vec2<f32>(848f, 352f), Struct_1(vec3<i32>(-10245i, -1i, -1i), -8235i, 236f, 113f, -1i)), Struct_2(Struct_1(vec3<i32>(0i, 0i, -1i), i32(-2147483648), -1000f, -914f, 2147483647i), vec2<f32>(-1000f, 1778f), Struct_1(vec3<i32>(i32(-2147483648), 1i, -8514i), 1i, -1131f, -763f, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(1i, 20757i, -44620i), i32(-2147483648), 1000f, 726f, -14723i), vec2<f32>(-194f, -405f), Struct_1(vec3<i32>(-1i, 1i, 30178i), -1i, 406f, -891f, 2147483647i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i), 29286i, 2457f, -690f, 0i), vec2<f32>(792f, 1534f), Struct_1(vec3<i32>(-5110i, i32(-2147483648), -1i), -1i, -895f, 1285f, 2147483647i)), Struct_2(Struct_1(vec3<i32>(17309i, 30169i, 78431i), -20508i, -976f, 801f, 6350i), vec2<f32>(934f, 1336f), Struct_1(vec3<i32>(-47706i, i32(-2147483648), 1i), 7307i, 1278f, 566f, 72925i)), Struct_2(Struct_1(vec3<i32>(1i, 18185i, i32(-2147483648)), -8305i, -292f, -319f, 1i), vec2<f32>(1000f, -1338f), Struct_1(vec3<i32>(331i, 1i, 1i), -7369i, -466f, 1705f, 54299i)), Struct_2(Struct_1(vec3<i32>(-1i, 24454i, 2147483647i), 52281i, 1063f, -674f, 39722i), vec2<f32>(1359f, -224f), Struct_1(vec3<i32>(-21040i, 2147483647i, 0i), 2147483647i, -895f, 762f, -21492i)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = arg_2.a ^ countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_2.a.x, u_input.c) & ~vec3<i32>(u_input.c, -2147483647i, 20923i), _wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, 0i), max(arg_2.a, vec3<i32>(arg_2.b, u_input.d, u_input.b)))));
    var var_1 = 8324i;
    var var_2 = _wgslsmith_f_op_f32(sign(arg_3.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1050f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f + _wgslsmith_f_op_f32(arg_2.c - -607f)))));
    global0 = array<Struct_2, 25>();
    return Struct_1(vec3<i32>(-(arg_2.e & 1i), u_input.d, -21775i), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(round(500f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), -1907i);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, -330f) * vec2<f32>(arg_2.c, arg_2.d)))))), Struct_1(-arg_0.c.a, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f - -599f) - _wgslsmith_f_op_f32(ceil(arg_0.a.d)))), _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_mult_i32(u_input.a.x, 8369i)));
    let var_1 = Struct_2(arg_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -160f)) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.b.x, arg_0.c.d)), _wgslsmith_f_op_f32(var_0.a.c * arg_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.c), arg_2.d, var_0.b.x)), max(vec3<u32>(9749u, ~15921u, ~1u), vec3<u32>(~0u, min(20289u, 1u), _wgslsmith_sub_u32(25626u, 0u))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1725f, arg_1, -563f)))), vec3<u32>(1u, 1u, 1u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, -1358f, -1394f)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 25091u), vec3<u32>(1886u, 1u, 7222u)), Struct_1(arg_0.c.a, 0i, arg_2.d, -145f, 47093i), vec3<f32>(arg_1, arg_1, -1050f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.d, var_0.b.x, 1115f) + vec3<f32>(arg_1, -459f, -413f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, -594f, var_0.a.d) + vec3<f32>(675f, 662f, -788f))))))));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> i32 {
    global0 = array<Struct_2, 25>();
    var var_0 = max(1i, ~arg_1);
    let var_1 = true;
    var_0 = select(u_input.c, 1i, var_1);
    var var_2 = arg_0.a.c;
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(~(~_wgslsmith_sub_u32(~0u, ~arg_1.x))), 25u)];
    var var_1 = Struct_1(vec3<i32>(((-27005i ^ var_0.c.a.x) ^ ~u_input.d) | ((arg_0 & var_0.c.b) ^ var_0.c.b), u_input.e.x, ~abs(-2147483647i)), u_input.b >> (arg_1.x % 32u), func_3(global0[_wgslsmith_index_u32(arg_1.x, 25u)], _wgslsmith_f_op_f32(exp2(var_0.c.c)), func_3(global0[_wgslsmith_index_u32(arg_1.x, 25u)], 1156f, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, arg_0), vec3<i32>(-28121i, -2147483647i, -61378i)), var_0.a.a.x, var_0.b.x, _wgslsmith_div_f32(-516f, var_0.b.x), _wgslsmith_div_i32(var_0.c.e, -2147483647i))).a).b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.d))), 1831f)), 1185i);
    global0 = array<Struct_2, 25>();
    var_0 = Struct_2(var_0.a, vec2<f32>(-563f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0.b.x) * 1000f), 836f, false))), func_3(func_3(Struct_2(Struct_1(vec3<i32>(48175i, arg_0, var_0.c.a.x), u_input.a.x, 281f, var_0.a.d, -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.d, var_0.a.c)), func_3(Struct_2(Struct_1(vec3<i32>(51671i, -1i, arg_0), -20183i, var_0.a.d, -499f, -1i), var_0.b, var_0.a), -1089f, Struct_1(var_0.c.a, u_input.d, -497f, -988f, -1i)).a), 2180f, func_3(Struct_2(var_0.a, var_0.b, Struct_1(vec3<i32>(var_0.a.b, -64796i, var_1.a.x), var_1.a.x, -1624f, 299f, u_input.c)), 249f, var_0.c).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * var_0.a.d)), Struct_1(-(vec3<i32>(-21598i, arg_0, -33565i) ^ var_0.c.a), 29854i, var_1.c, 862f, func_3(func_3(Struct_2(var_0.a, vec2<f32>(var_1.d, var_1.c), var_0.a), -1000f, var_0.c), -1219f, var_0.a).a.a.x)).c);
    var var_2 = 0u;
    return Struct_2(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-986f, _wgslsmith_f_op_f32(var_0.c.d * var_0.a.c), _wgslsmith_f_op_f32(step(255f, -673f))), vec3<f32>(_wgslsmith_f_op_f32(-438f * var_1.d), var_1.c, _wgslsmith_f_op_f32(select(var_1.d, 1009f, true)))), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(arg_1.x & 1u, 66060u, _wgslsmith_sub_u32(arg_1.x, 24928u)), arg_1.x), Struct_1(min(var_1.a, var_1.a) & abs(var_1.a), u_input.a.x >> (arg_1.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c - var_0.b.x)), _wgslsmith_f_op_f32(max(1f, 1f)), arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-902f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.c.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, -173f, var_0.a.c)), vec3<f32>(-1345f, 607f, -349f), all(vec4<bool>(true, false, true, true))))))), var_0.b, Struct_1(select(~vec3<i32>(u_input.a.x, 38785i, -52413i), func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-748f, var_0.b.x, var_1.c))), countOneBits(arg_1.wwy), func_3(global0[_wgslsmith_index_u32(arg_1.x, 25u)], var_0.c.c, var_0.a).c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1907f, var_0.b.x, 646f) * vec3<f32>(1251f, var_1.d, var_0.a.d))).a, all(vec2<bool>(true, true))), 2147483647i, _wgslsmith_div_f32(var_0.c.c, 2003f), var_0.b.x, max(~abs(var_1.b), 1i)));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = !(!any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), true)));
    global0 = array<Struct_2, 25>();
    let var_1 = func_5(func_4(func_3(Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1174f, 367f)), arg_0.a), arg_0.c.c, func_2(vec3<f32>(-799f, arg_0.c.d, -1629f), countOneBits(vec3<u32>(0u, 105517u, 35511u)), Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), -1063i, arg_0.a.d, 330f, arg_0.c.b), vec3<f32>(arg_0.c.d, -362f, arg_0.c.c))), _wgslsmith_dot_vec3_i32(arg_0.a.a, vec3<i32>(33087i, -2147483647i, u_input.d)) ^ -_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(arg_0.a.a.x, -2147483647i))), ~vec4<u32>(~(~4294967295u), ~4294967295u, _wgslsmith_div_u32(~27203u, 4294967295u), 25022u));
    let var_2 = _wgslsmith_div_i32(var_1.c.b >> (0u % 32u), -2147483647i);
    return vec3<i32>(u_input.b, -arg_0.a.b, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 25u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) - var_0.a.c));
    var var_2 = Struct_1(~select(vec3<i32>(0i, _wgslsmith_sub_i32(-1i, 1i), u_input.c), _wgslsmith_div_vec3_i32(func_1(Struct_2(Struct_1(vec3<i32>(-1i, 1i, 456i), -1i, var_1, var_1, -35642i), vec2<f32>(-477f, 1142f), Struct_1(vec3<i32>(u_input.b, -1i, u_input.b), 23684i, 786f, var_1, -2147483647i))), -vec3<i32>(-15275i, 4070i, u_input.c)), vec3<bool>(true, true, true)), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.d, _wgslsmith_f_op_f32(abs(-675f)))), func_5(23873i, vec4<u32>(1u, 1u, 1u, 1u)).c.c, ~func_1(func_3(func_3(global0[_wgslsmith_index_u32(0u, 25u)], var_0.b.x, Struct_1(vec3<i32>(1i, -24634i, 0i), -28263i, var_1, -1053f, u_input.b)), _wgslsmith_f_op_f32(select(var_1, var_0.c.c, true)), func_5(-2147483647i, vec4<u32>(1u, 4294967295u, 0u, 1u)).c)).x);
    var var_3 = func_5(firstTrailingBit(var_0.c.b), ~(~vec4<u32>(3517u, countOneBits(0u), 1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_div_u32(14267u, select(4294967295u, 64031u, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(40114u, abs(0u), countOneBits(1u)), min(~vec3<u32>(63192u, 24234u, 32378u), ~vec3<u32>(88136u, 0u, 4294967295u)))), -1i, abs(countOneBits(vec3<i32>(19755i, -44923i, u_input.b)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(63252u, 1u), vec2<u32>(59350u, 29585u), false), abs(vec2<u32>(6707u, 1u)))), vec2<u32>(1u, 1u) << (vec2<u32>(11357u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5399u, 4294967295u, 69575u), vec4<u32>(1u, 1u, 1u, 18671u))) % vec2<u32>(32u))));
}

