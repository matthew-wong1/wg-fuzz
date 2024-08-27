struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(3129i, -1i, vec4<f32>(2106f, -1000f, -820f, 309f), -5546i), true, 41960u, Struct_1(0i, -33474i, vec4<f32>(-969f, 1387f, -773f, 1000f), i32(-2147483648))), Struct_2(Struct_1(18552i, -1054i, vec4<f32>(-863f, 1341f, -308f, 452f), 3263i), false, 53086u, Struct_1(2147483647i, 18666i, vec4<f32>(-372f, -1000f, 2108f, -1000f), 30622i)), Struct_2(Struct_1(i32(-2147483648), 0i, vec4<f32>(-325f, 1576f, 666f, 148f), -6238i), false, 4294967295u, Struct_1(1i, 51965i, vec4<f32>(811f, -1176f, 229f, -643f), 24476i)), Struct_2(Struct_1(-5992i, -15870i, vec4<f32>(478f, 860f, 435f, -1264f), 751i), true, 1u, Struct_1(2147483647i, 0i, vec4<f32>(-836f, 1000f, 404f, 193f), -1i)), Struct_2(Struct_1(2147483647i, -56876i, vec4<f32>(934f, -546f, -1037f, 702f), 1i), false, 4294967295u, Struct_1(-2419i, 49888i, vec4<f32>(-167f, -309f, -365f, -385f), 0i)), Struct_2(Struct_1(i32(-2147483648), i32(-2147483648), vec4<f32>(1000f, 745f, 116f, -939f), 3253i), false, 42819u, Struct_1(22441i, -11951i, vec4<f32>(655f, -195f, -356f, 2156f), 27868i)), Struct_2(Struct_1(-25825i, -9935i, vec4<f32>(503f, -1497f, -177f, 930f), -1i), true, 0u, Struct_1(-1i, 0i, vec4<f32>(2565f, -1220f, -1466f, -1046f), 1i)), Struct_2(Struct_1(2147483647i, 2147483647i, vec4<f32>(-1342f, -235f, 247f, 935f), 0i), false, 12417u, Struct_1(4659i, -8296i, vec4<f32>(514f, 696f, -2027f, -1216f), 45708i)), Struct_2(Struct_1(-1i, 1i, vec4<f32>(-845f, -637f, -1831f, 298f), 3741i), false, 59333u, Struct_1(2147483647i, -1i, vec4<f32>(-1178f, -206f, -1093f, 194f), -43649i)), Struct_2(Struct_1(-1i, -6101i, vec4<f32>(140f, 812f, -320f, -1173f), 1i), false, 31315u, Struct_1(12143i, 25834i, vec4<f32>(244f, 1051f, 602f, 2170f), -51293i)), Struct_2(Struct_1(15756i, 1i, vec4<f32>(610f, -1590f, -432f, -288f), -1i), true, 4294967295u, Struct_1(67574i, -1i, vec4<f32>(-638f, 1255f, 704f, -1000f), -56409i)), Struct_2(Struct_1(35710i, 1i, vec4<f32>(-1355f, -574f, 163f, -1000f), -1i), true, 50954u, Struct_1(-1i, -13823i, vec4<f32>(-925f, 306f, -167f, -1000f), -1i)));

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<vec4<f32>, 26>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-1i, -19236i, vec4<f32>(2195f, 1001f, 448f, -738f), -931i), Struct_1(-1i, 0i, vec4<f32>(594f, -658f, -1000f, 288f), 16396i), Struct_1(-28982i, 1i, vec4<f32>(-520f, 378f, -123f, -353f), 25972i), Struct_1(1i, i32(-2147483648), vec4<f32>(310f, 305f, -524f, -313f), 4947i), Struct_1(i32(-2147483648), 1i, vec4<f32>(1333f, 556f, 912f, -103f), 32192i), Struct_1(1i, 12530i, vec4<f32>(-2689f, -1033f, -340f, 4027f), -29110i), Struct_1(22934i, 1i, vec4<f32>(1188f, 935f, -690f, 1342f), 78379i), Struct_1(2147483647i, i32(-2147483648), vec4<f32>(392f, 414f, 408f, 773f), 33041i), Struct_1(6557i, 9425i, vec4<f32>(458f, 883f, 1528f, 1351f), 1i), Struct_1(-24846i, 0i, vec4<f32>(922f, -765f, -443f, 429f), 2147483647i), Struct_1(-4572i, 50170i, vec4<f32>(-1201f, -1000f, 1202f, 707f), 1i), Struct_1(14613i, 65570i, vec4<f32>(1121f, -749f, 965f, 689f), i32(-2147483648)), Struct_1(-1i, 2147483647i, vec4<f32>(-685f, -579f, -1000f, -1000f), 1i), Struct_1(1i, 1i, vec4<f32>(-288f, -1045f, 868f, 1581f), -1i), Struct_1(1i, 9312i, vec4<f32>(342f, -642f, -121f, 291f), -1i), Struct_1(6209i, 2147483647i, vec4<f32>(409f, -689f, 554f, -625f), -1i), Struct_1(-32733i, 5046i, vec4<f32>(-1975f, 2423f, 261f, -1000f), -1i), Struct_1(16461i, -22043i, vec4<f32>(-283f, 322f, -599f, 249f), 14907i), Struct_1(0i, 2147483647i, vec4<f32>(1839f, 423f, -1000f, 1128f), 18857i), Struct_1(14804i, -1i, vec4<f32>(1337f, -1202f, -805f, 1143f), -9071i), Struct_1(i32(-2147483648), i32(-2147483648), vec4<f32>(-1544f, 1000f, 466f, -1000f), 0i), Struct_1(-36434i, i32(-2147483648), vec4<f32>(334f, 1423f, 593f, 448f), -65792i), Struct_1(38170i, 2147483647i, vec4<f32>(536f, 1147f, 168f, 644f), -1i), Struct_1(-29457i, i32(-2147483648), vec4<f32>(-916f, 2183f, -442f, -380f), -28556i), Struct_1(-4793i, -1i, vec4<f32>(-142f, 1238f, 1579f, -386f), 1i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(846f == _wgslsmith_f_op_f32(ceil(-614f)), true, true);
    global0 = array<Struct_2, 12>();
    global1 = array<Struct_1, 16>();
    global2 = array<vec4<f32>, 26>();
    var var_1 = min(~43000u, 43026u);
    return Struct_1(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b | _wgslsmith_div_i32(u_input.c.x, -1i), -10799i, u_input.c.x, _wgslsmith_add_i32(0i, 29570i) ^ ~u_input.c.x), u_input.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 26u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, -314f, -329f, -809f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1946f, 1289f, 1698f, 912f))))), ~u_input.d.x);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec4<f32>, 26>();
    let var_0 = abs(vec3<i32>(~(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c) & abs(1i)), arg_0.b, ~(_wgslsmith_clamp_i32(20379i, u_input.c.x, arg_0.d) ^ _wgslsmith_div_i32(arg_0.d, u_input.d.x))));
    var var_1 = !select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(arg_0.c.x >= 719f, true, true), false), !vec3<bool>(all(vec4<bool>(true, true, false, true)), true, true), vec3<bool>(true != (-52908i > arg_0.a), true, !all(vec4<bool>(true, true, true, false))));
    global3 = array<Struct_1, 25>();
    global2 = array<vec4<f32>, 26>();
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(1u), 12u)];
    global0 = array<Struct_2, 12>();
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * arg_2.c.x) - _wgslsmith_f_op_f32(round(arg_3.x)))), func_3(Struct_1(_wgslsmith_mult_i32(var_1.b, arg_1), arg_1, var_0.d.c, ~u_input.c.x)).c.x)) * -1000f);
    var var_3 = arg_2;
    return Struct_1(var_0.d.b ^ max(~(-2147483647i), func_2().d), var_3.d, vec4<f32>(var_1.c.x, -2329f, _wgslsmith_f_op_f32(abs(1000f)), -1000f), _wgslsmith_dot_vec4_i32(u_input.c, ~firstTrailingBit(-vec4<i32>(-2147483647i, arg_2.a, arg_2.a, arg_2.d))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> i32 {
    global0 = array<Struct_2, 12>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 26u)];
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_i32(arg_1.a.d, 44824i), firstTrailingBit(_wgslsmith_div_i32(35538i, -1i)), global2[_wgslsmith_index_u32(13609u, 26u)], arg_1.d.d), -604f == _wgslsmith_f_op_f32(-var_0.x), 1u, func_4(u_input.a, (reverseBits(arg_1.d.b) ^ _wgslsmith_div_i32(1i, 2147483647i)) | 0i, func_3(func_2()), global2[_wgslsmith_index_u32(83995u, 26u)]));
    var var_2 = 18804u;
    var_1 = arg_1;
    return max(~u_input.b, firstLeadingBit(_wgslsmith_div_i32(countOneBits(var_1.d.b), ~func_4(u_input.a, 2147483647i, Struct_1(u_input.d.x, 1i, global2[_wgslsmith_index_u32(0u, 26u)], -1i), var_1.d.c).d)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    let var_0 = Struct_2(Struct_1(-(~firstLeadingBit(u_input.d.x)), arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 284f, _wgslsmith_f_op_f32(arg_2.c.x + arg_1), _wgslsmith_f_op_f32(f32(-1f) * -719f))), 30713i), select(false, true, false), u_input.e & ~_wgslsmith_sub_u32(abs(u_input.a.x), max(15751u, u_input.a.x)), func_3(Struct_1(u_input.b, select(-36031i, select(arg_0.b, arg_0.a, true), false), func_2().c, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.d, 2147483647i), func_3(Struct_1(20315i, u_input.b, vec4<f32>(-963f, 1317f, 596f, -795f), arg_0.a)).d))));
    var var_1 = global1[_wgslsmith_index_u32(35988u, 16u)];
    global0 = array<Struct_2, 12>();
    return Struct_2(Struct_1(11079i, 1i, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x - var_0.a.c.x), -430f, -819f, func_4(u_input.a, -26331i, arg_0, arg_0.c).c.x), _wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_3, 0u, var_0.c), 26u)])))), arg_2.a), true, ~1u, Struct_1(1i, -countOneBits(-2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), var_1.c.x, func_3(var_0.d).c.x, _wgslsmith_f_op_f32(round(var_0.d.c.x)))), ~arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec3<bool>(u_input.e >= 16556u, false, true));
    let var_1 = func_5(Struct_1(u_input.c.x, func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(550f, -910f) * -137f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.a, u_input.a), 12u)], true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u << (reverseBits(u_input.e) % 32u), 4122u), 26u)], u_input.d.x), _wgslsmith_div_f32(-819f, _wgslsmith_f_op_f32(-313f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(305f + 818f), _wgslsmith_f_op_f32(sign(-289f))))), Struct_1(-(~(-u_input.c.x)), func_2().a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.e, 26u)]))), _wgslsmith_div_i32(2147483647i, ~_wgslsmith_mult_i32(u_input.c.x, -29835i))), u_input.a.x);
    var var_2 = true;
    var_0 = !func_5(Struct_1(29688i, -2147483647i << (~4294967295u % 32u), vec4<f32>(381f, var_1.d.c.x, -601f, -490f), func_3(global3[_wgslsmith_index_u32(u_input.e, 25u)]).d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1285f), -2430f)) * -542f), global3[_wgslsmith_index_u32(var_1.c, 25u)], _wgslsmith_sub_u32(firstLeadingBit(var_1.c), ~var_1.c & ~var_1.c)).b;
    global3 = array<Struct_1, 25>();
    let var_3 = _wgslsmith_div_f32(var_1.d.c.x, 802f);
    var var_4 = Struct_1(u_input.c.x, var_1.a.d, func_2().c, 18577i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(var_4.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3)) * var_4.c.x))), ~(-u_input.d.xz));
}

