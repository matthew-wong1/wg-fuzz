struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(-1i, -1i, -189f, vec2<f32>(1502f, -1657f)), vec4<f32>(1237f, -1145f, -2050f, 541f), Struct_1(i32(-2147483648), 94546i, 1156f, vec2<f32>(1036f, -1061f))), Struct_2(Struct_1(0i, 46081i, -368f, vec2<f32>(494f, 278f)), vec4<f32>(-730f, -303f, 232f, -349f), Struct_1(46350i, i32(-2147483648), -950f, vec2<f32>(482f, -227f))), Struct_2(Struct_1(-1i, 2147483647i, -898f, vec2<f32>(-477f, -1000f)), vec4<f32>(-1535f, -478f, 1296f, -1696f), Struct_1(-1i, 51116i, -2637f, vec2<f32>(233f, 2130f))), Struct_2(Struct_1(14698i, 2147483647i, 1318f, vec2<f32>(754f, 270f)), vec4<f32>(-1139f, 365f, 2025f, 1028f), Struct_1(-68229i, 2147483647i, -882f, vec2<f32>(537f, -472f))), Struct_2(Struct_1(-7557i, i32(-2147483648), 165f, vec2<f32>(-618f, 2092f)), vec4<f32>(1036f, 1011f, -1000f, -387f), Struct_1(-1i, -22640i, 757f, vec2<f32>(706f, 178f))), Struct_2(Struct_1(-27016i, 20563i, -539f, vec2<f32>(-426f, 933f)), vec4<f32>(258f, 2576f, 1285f, -233f), Struct_1(-71883i, 25087i, -1018f, vec2<f32>(742f, -363f))), Struct_2(Struct_1(-20652i, 1i, -1343f, vec2<f32>(430f, 3250f)), vec4<f32>(-531f, 742f, 635f, 485f), Struct_1(-1i, 5217i, 725f, vec2<f32>(-758f, 734f))), Struct_2(Struct_1(48753i, 0i, 230f, vec2<f32>(-267f, 1213f)), vec4<f32>(-937f, 951f, 1036f, -499f), Struct_1(-17874i, -40664i, 817f, vec2<f32>(-2706f, -474f))), Struct_2(Struct_1(-1i, 0i, 423f, vec2<f32>(991f, -866f)), vec4<f32>(-331f, -1160f, 226f, 420f), Struct_1(1i, 0i, 2083f, vec2<f32>(958f, -268f))), Struct_2(Struct_1(0i, 2147483647i, 1306f, vec2<f32>(198f, 633f)), vec4<f32>(-511f, 412f, -1535f, -1171f), Struct_1(32248i, 1i, -1000f, vec2<f32>(1179f, -793f))), Struct_2(Struct_1(-8282i, 6604i, 339f, vec2<f32>(-780f, 938f)), vec4<f32>(1803f, 1078f, 386f, 548f), Struct_1(-1i, 0i, -1000f, vec2<f32>(282f, -193f))), Struct_2(Struct_1(1i, 1i, 517f, vec2<f32>(3119f, 1000f)), vec4<f32>(-353f, 622f, -623f, 601f), Struct_1(0i, 0i, -374f, vec2<f32>(-611f, 258f))), Struct_2(Struct_1(-15861i, 0i, -515f, vec2<f32>(357f, -1000f)), vec4<f32>(784f, -990f, -1057f, 2277f), Struct_1(i32(-2147483648), 1i, -1607f, vec2<f32>(-1968f, -709f))), Struct_2(Struct_1(-26499i, -32091i, 673f, vec2<f32>(-517f, 722f)), vec4<f32>(1195f, 1000f, -703f, -686f), Struct_1(-43090i, 2147483647i, -190f, vec2<f32>(-738f, 919f))), Struct_2(Struct_1(2147483647i, 1i, 1580f, vec2<f32>(1975f, -196f)), vec4<f32>(-132f, 1278f, 1699f, -546f), Struct_1(20694i, -21232i, -846f, vec2<f32>(-849f, -1623f))), Struct_2(Struct_1(-36544i, 0i, -526f, vec2<f32>(259f, -1000f)), vec4<f32>(-1013f, 1000f, -701f, 1146f), Struct_1(i32(-2147483648), -24630i, 1375f, vec2<f32>(1138f, -1282f))), Struct_2(Struct_1(-1i, -17435i, -1325f, vec2<f32>(778f, 127f)), vec4<f32>(536f, -231f, 932f, -1006f), Struct_1(-1i, 93310i, 919f, vec2<f32>(-100f, -480f))), Struct_2(Struct_1(i32(-2147483648), -27447i, -2799f, vec2<f32>(1000f, 150f)), vec4<f32>(236f, 338f, -263f, -1660f), Struct_1(1i, -6362i, -331f, vec2<f32>(331f, -810f))), Struct_2(Struct_1(2147483647i, -28259i, -476f, vec2<f32>(201f, 1000f)), vec4<f32>(1048f, 1475f, -1668f, 987f), Struct_1(53357i, i32(-2147483648), -1853f, vec2<f32>(-1000f, -116f))), Struct_2(Struct_1(-1i, 39936i, -479f, vec2<f32>(1482f, 1049f)), vec4<f32>(1245f, -1000f, 600f, 830f), Struct_1(2147483647i, 1i, -478f, vec2<f32>(1749f, -545f))), Struct_2(Struct_1(52840i, 1i, -1000f, vec2<f32>(137f, 1527f)), vec4<f32>(-1005f, -188f, 1201f, -1258f), Struct_1(2147483647i, 2147483647i, 521f, vec2<f32>(-204f, -1568f))), Struct_2(Struct_1(1i, i32(-2147483648), -356f, vec2<f32>(-1956f, 1000f)), vec4<f32>(440f, -1552f, -328f, 639f), Struct_1(16236i, 0i, -1177f, vec2<f32>(830f, 1604f))), Struct_2(Struct_1(i32(-2147483648), -2946i, -100f, vec2<f32>(-2101f, 398f)), vec4<f32>(151f, -623f, -385f, -1539f), Struct_1(2147483647i, i32(-2147483648), -381f, vec2<f32>(2148f, 607f))), Struct_2(Struct_1(2147483647i, 22622i, 246f, vec2<f32>(875f, -268f)), vec4<f32>(720f, 1469f, 1000f, -463f), Struct_1(-1i, i32(-2147483648), -103f, vec2<f32>(197f, -549f))), Struct_2(Struct_1(i32(-2147483648), -1i, -897f, vec2<f32>(-1000f, -942f)), vec4<f32>(-1061f, -1000f, 832f, -568f), Struct_1(13808i, 101i, -607f, vec2<f32>(951f, 1228f))), Struct_2(Struct_1(0i, 40520i, -512f, vec2<f32>(-1230f, 142f)), vec4<f32>(594f, -1491f, -621f, 664f), Struct_1(1i, 51687i, -1880f, vec2<f32>(298f, -285f))));

var<private> global1: Struct_2 = Struct_2(Struct_1(0i, -1i, -825f, vec2<f32>(-246f, -914f)), vec4<f32>(-846f, 1107f, 342f, 1000f), Struct_1(19956i, 4983i, 526f, vec2<f32>(293f, 1127f)));

var<private> global2: vec2<f32>;

var<private> global3: vec3<f32> = vec3<f32>(1279f, -1718f, 1223f);

var<private> global4: array<vec4<f32>, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    var var_0 = false;
    global2 = _wgslsmith_f_op_vec2_f32(arg_0.d + vec2<f32>(global1.a.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f))))))));
    let var_1 = -(_wgslsmith_div_vec3_i32(u_input.b.wxy, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b.x, global1.c.a), ~vec3<i32>(arg_0.b, u_input.a, 20004i))) >> (firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1.x, 5866u, 39412u), _wgslsmith_mod_vec3_u32(arg_1, arg_1))) % vec3<u32>(32u)));
    let var_2 = global1.a;
    return -2147483647i;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> i32 {
    var var_0 = global1.c;
    return arg_2;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    let var_0 = ~_wgslsmith_div_vec2_u32(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(30266u, 1u), vec2<u32>(41975u, 53612u)), _wgslsmith_div_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 15531u), vec2<bool>(true, false)), _wgslsmith_div_vec2_u32(vec2<u32>(84727u, 76050u), vec2<u32>(21699u, 4294967295u))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), global3.x >= -222f)), ~_wgslsmith_add_vec2_u32(vec2<u32>(31983u, 17680u), vec2<u32>(17021u, 15097u)));
    let var_1 = Struct_1(33603i, arg_1, -426f, global3.xx);
    var var_2 = global0[_wgslsmith_index_u32(25477u, 26u)];
    global1 = Struct_2(Struct_1(-34344i, select(countOneBits(6951i), func_3(false, Struct_1(u_input.a, 1i, global1.c.d.x, vec2<f32>(-763f, -1621f)), var_1.a, vec2<bool>(true, true)), !(-1633f <= global3.x)), _wgslsmith_f_op_f32(-1285f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f * 585f))), vec2<f32>(_wgslsmith_f_op_f32(var_2.c.c * _wgslsmith_f_op_f32(var_1.d.x - -615f)), 484f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b * global1.b) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, global2.x, -500f, -235f), vec4<f32>(var_2.a.c, arg_0.x, arg_0.x, -409f), vec4<bool>(true, true, false, false)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(global1.b.x, -440f, 768f, 136f), false)), global1.b))))), Struct_1(abs(~(-10805i)), global1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_1.d.x * -1155f)), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(984f, var_2.b.x)))))));
    global0 = array<Struct_2, 26>();
    return -(i32(-1i) * -21856i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(448f * global3.x), -1880f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1176f * global2.x)) + _wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(-452f + global3.x)))), global3.x);
    let var_0 = ~(-2147483647i);
    var var_1 = max(vec3<i32>(-1i) * -u_input.b.xwy, vec3<i32>(func_1(global1.a, abs(vec3<u32>(1u, 1u, 1u)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), 2147483647i, ~(-_wgslsmith_sub_i32(u_input.b.x, var_0))));
    let var_2 = ~4294967295u;
    let var_3 = _wgslsmith_add_i32(~_wgslsmith_add_i32(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, 1168f, global1.b.x))), var_1.x), u_input.a), -1i);
    global1 = Struct_2(Struct_1(-10259i, _wgslsmith_mult_i32(~(1i << (var_2 % 32u)), var_3), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x * -289f)))), _wgslsmith_f_op_vec2_f32(-global3.zy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global1.b))) - _wgslsmith_f_op_vec4_f32(-global1.b)), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2 << (~min(_wgslsmith_mod_u32(var_2, var_2), _wgslsmith_sub_u32(var_2, var_2)) % 32u), vec2<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(var_3, u_input.b.x)), 1i) << (~max(vec2<u32>(1u, var_2), ~vec2<u32>(var_2, var_2)) % vec2<u32>(32u)), -13627i, ~var_3, _wgslsmith_sub_vec2_u32(~select(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2, 30707u), vec2<u32>(0u, 1u)), true), _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(14613u, 1u)), max(~vec2<u32>(4294967295u, var_2), ~vec2<u32>(68730u, 21578u)), firstLeadingBit(~vec2<u32>(1u, 8189u)))));
}

