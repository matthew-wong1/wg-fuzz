struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(2740f, Struct_2(Struct_1(1315f, 16758u), vec2<u32>(1u, 4294967295u), Struct_1(-403f, 91459u), -484f, -52333i), 24409u, Struct_2(Struct_1(223f, 49859u), vec2<u32>(1u, 25254u), Struct_1(-762f, 14062u), -215f, 0i)), Struct_4(-493f, Struct_2(Struct_1(-1789f, 73759u), vec2<u32>(38654u, 0u), Struct_1(-316f, 45034u), 1000f, -1i), 4480u, Struct_2(Struct_1(534f, 9706u), vec2<u32>(0u, 4294967295u), Struct_1(-288f, 8574u), -1474f, -42751i)), Struct_4(-532f, Struct_2(Struct_1(1819f, 47886u), vec2<u32>(24367u, 15799u), Struct_1(732f, 1u), 1174f, 2147483647i), 4294967295u, Struct_2(Struct_1(1000f, 1u), vec2<u32>(59453u, 18180u), Struct_1(-163f, 1u), -729f, 1i)), Struct_4(-686f, Struct_2(Struct_1(-1087f, 1u), vec2<u32>(0u, 6241u), Struct_1(837f, 14749u), 119f, 22429i), 4294967295u, Struct_2(Struct_1(-1368f, 57152u), vec2<u32>(15230u, 1u), Struct_1(938f, 5878u), 894f, i32(-2147483648))), Struct_4(1073f, Struct_2(Struct_1(-565f, 46859u), vec2<u32>(0u, 56987u), Struct_1(1381f, 1u), -1394f, 27447i), 4294967295u, Struct_2(Struct_1(-1237f, 1u), vec2<u32>(44518u, 6693u), Struct_1(-1963f, 4294967295u), 1356f, 2819i)), Struct_4(-1125f, Struct_2(Struct_1(-926f, 41904u), vec2<u32>(1u, 39530u), Struct_1(1009f, 12016u), 325f, 2147483647i), 65239u, Struct_2(Struct_1(994f, 30002u), vec2<u32>(4294967295u, 4411u), Struct_1(-747f, 28399u), 474f, -2229i)), Struct_4(-2469f, Struct_2(Struct_1(1274f, 37671u), vec2<u32>(93424u, 4294967295u), Struct_1(-411f, 40411u), -1000f, 0i), 63122u, Struct_2(Struct_1(345f, 0u), vec2<u32>(0u, 4294967295u), Struct_1(136f, 0u), 120f, -53568i)), Struct_4(-1000f, Struct_2(Struct_1(-1372f, 0u), vec2<u32>(0u, 35514u), Struct_1(665f, 16225u), 428f, -1i), 4294967295u, Struct_2(Struct_1(-454f, 1u), vec2<u32>(1u, 1u), Struct_1(1181f, 1u), 1959f, 7195i)), Struct_4(-1000f, Struct_2(Struct_1(-651f, 43755u), vec2<u32>(0u, 21388u), Struct_1(-1228f, 470u), 935f, 1i), 38409u, Struct_2(Struct_1(973f, 83373u), vec2<u32>(0u, 4294967295u), Struct_1(799f, 8544u), 2517f, 33854i)), Struct_4(209f, Struct_2(Struct_1(1120f, 20132u), vec2<u32>(4294967295u, 0u), Struct_1(-406f, 41443u), 278f, 9565i), 41434u, Struct_2(Struct_1(1211f, 51702u), vec2<u32>(1u, 15676u), Struct_1(-1000f, 0u), 122f, 28050i)), Struct_4(-773f, Struct_2(Struct_1(1008f, 22959u), vec2<u32>(25662u, 1u), Struct_1(-1039f, 1u), -647f, 2147483647i), 30013u, Struct_2(Struct_1(-385f, 0u), vec2<u32>(4294967295u, 116409u), Struct_1(-753f, 4294967295u), 1775f, i32(-2147483648))), Struct_4(832f, Struct_2(Struct_1(389f, 4217u), vec2<u32>(0u, 85241u), Struct_1(-1086f, 1u), 305f, 2147483647i), 0u, Struct_2(Struct_1(-293f, 4294967295u), vec2<u32>(81156u, 18841u), Struct_1(-2422f, 0u), -627f, 2147483647i)), Struct_4(-805f, Struct_2(Struct_1(-2415f, 0u), vec2<u32>(61299u, 9920u), Struct_1(-115f, 12812u), 313f, 16204i), 1u, Struct_2(Struct_1(-1475f, 4711u), vec2<u32>(4294967295u, 23279u), Struct_1(642f, 4294967295u), -347f, 2147483647i)), Struct_4(744f, Struct_2(Struct_1(2830f, 4294967295u), vec2<u32>(4294967295u, 1u), Struct_1(1000f, 0u), -142f, 26252i), 1u, Struct_2(Struct_1(-632f, 17700u), vec2<u32>(17046u, 1u), Struct_1(-542f, 51551u), 757f, 24784i)), Struct_4(2060f, Struct_2(Struct_1(-959f, 31055u), vec2<u32>(2421u, 1u), Struct_1(-616f, 4294967295u), -1022f, i32(-2147483648)), 3132u, Struct_2(Struct_1(2006f, 4294967295u), vec2<u32>(110998u, 0u), Struct_1(-1000f, 0u), 809f, 55322i)), Struct_4(-806f, Struct_2(Struct_1(2241f, 38913u), vec2<u32>(14057u, 1u), Struct_1(784f, 66514u), -586f, 27734i), 4294967295u, Struct_2(Struct_1(108f, 0u), vec2<u32>(29303u, 14985u), Struct_1(224f, 31733u), 1220f, -1i)), Struct_4(517f, Struct_2(Struct_1(-749f, 32661u), vec2<u32>(33784u, 0u), Struct_1(-836f, 1u), 590f, 2147483647i), 43582u, Struct_2(Struct_1(-1819f, 0u), vec2<u32>(6796u, 0u), Struct_1(-493f, 1u), 748f, 3553i)), Struct_4(-465f, Struct_2(Struct_1(-929f, 109986u), vec2<u32>(3343u, 2976u), Struct_1(1745f, 4294967295u), -2261f, 2147483647i), 0u, Struct_2(Struct_1(1861f, 0u), vec2<u32>(1u, 14488u), Struct_1(-206f, 5813u), -272f, -1i)), Struct_4(-1733f, Struct_2(Struct_1(-1000f, 0u), vec2<u32>(20750u, 18870u), Struct_1(820f, 749u), 124f, i32(-2147483648)), 4294967295u, Struct_2(Struct_1(728f, 0u), vec2<u32>(4294967295u, 57965u), Struct_1(-936f, 5326u), 2425f, 0i)), Struct_4(-938f, Struct_2(Struct_1(-1000f, 25922u), vec2<u32>(62078u, 41283u), Struct_1(1039f, 1u), -1588f, 11365i), 8400u, Struct_2(Struct_1(-479f, 0u), vec2<u32>(1u, 1u), Struct_1(1000f, 4523u), 370f, -28643i)), Struct_4(-800f, Struct_2(Struct_1(-675f, 23895u), vec2<u32>(96017u, 17u), Struct_1(-657f, 63821u), -245f, 1i), 1u, Struct_2(Struct_1(1079f, 56331u), vec2<u32>(0u, 4294967295u), Struct_1(748f, 88128u), -585f, -9451i)), Struct_4(824f, Struct_2(Struct_1(-994f, 0u), vec2<u32>(0u, 40832u), Struct_1(854f, 0u), -735f, i32(-2147483648)), 4294967295u, Struct_2(Struct_1(-805f, 25165u), vec2<u32>(1u, 21949u), Struct_1(551f, 48037u), -1668f, 17713i)), Struct_4(1150f, Struct_2(Struct_1(-2383f, 83909u), vec2<u32>(71803u, 0u), Struct_1(546f, 11263u), -245f, 1i), 0u, Struct_2(Struct_1(-718f, 4294967295u), vec2<u32>(4294967295u, 6942u), Struct_1(943f, 21352u), 2383f, 6029i)), Struct_4(-347f, Struct_2(Struct_1(-376f, 37033u), vec2<u32>(33730u, 8308u), Struct_1(-1000f, 1u), -143f, 54425i), 0u, Struct_2(Struct_1(-242f, 4294967295u), vec2<u32>(6327u, 3333u), Struct_1(-562f, 32980u), -251f, 0i)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = firstTrailingBit(firstLeadingBit(_wgslsmith_mod_u32(~41027u, 57820u))) & 1u;
    var var_1 = u_input.a.x;
    global0 = array<Struct_4, 24>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1116f), -103f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-244f, 962f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-956f, _wgslsmith_f_op_f32(f32(-1f) * -532f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-331f, 2181f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(982f, 2821f, true)))))));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(475f, 200f), _wgslsmith_f_op_f32(trunc(-455f))) * _wgslsmith_f_op_f32(f32(-1f) * -740f)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1108f, _wgslsmith_f_op_f32(f32(-1f) * -572f))), -404f))), 276f, -301f);
    let var_3 = ~select(firstLeadingBit(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 61094u), true);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_3.x, var_3.x), 36097u) >> (var_3.x % 32u)), vec2<u32>(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(18727u, var_3.x, var_3.x, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, 14790u)), reverseBits(1u), var_2.x == -628f), 0u), Struct_1(885f, 0u), var_2.x, min(~abs(_wgslsmith_sub_i32(var_0, var_0)), u_input.a.x));
    return Struct_3(_wgslsmith_f_op_f32(floor(var_2.x)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_3) -> bool {
    global0 = array<Struct_4, 24>();
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> Struct_3 {
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    var var_0 = abs(select(vec2<u32>(arg_0, ~arg_1.b.a.b), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.b.b, arg_1.b.b), arg_1.d.b), func_4(1i >> (arg_0 % 32u), _wgslsmith_f_op_f32(-arg_1.a), vec4<i32>(-26389i, arg_1.b.e, u_input.a.x, u_input.a.x) | vec4<i32>(0i, -1i, 1i, u_input.a.x), func_2())) >> (vec2<u32>(~arg_0, 24231u) % vec2<u32>(32u)));
    let var_1 = arg_1.d;
    let var_2 = !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, false)), func_4(-1i, -1624f, vec4<i32>(-47971i, 42267i, -2147483647i, u_input.a.x), Struct_3(1025f))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(any(vec2<bool>(false, true)), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), any(vec4<bool>(false, true, select(true, true, false), var_1.c.b != 68089u)));
    return func_2();
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()), arg_0.x);
    let var_1 = var_0.b;
    let var_2 = Struct_2(var_0, vec2<u32>(4294967295u, _wgslsmith_mod_u32(var_1, _wgslsmith_add_u32(var_1 ^ arg_0.x, ~0u))), var_0, _wgslsmith_f_op_f32(func_3()), _wgslsmith_mod_i32(0i, i32(-1i) * -u_input.a.x));
    let var_3 = global0[_wgslsmith_index_u32(var_2.b.x, 24u)];
    var var_4 = Struct_2(Struct_1(1f, abs(select(~var_1, _wgslsmith_add_u32(arg_0.x, 20025u), true))), _wgslsmith_clamp_vec2_u32(var_3.b.b, _wgslsmith_sub_vec2_u32(vec2<u32>(16471u, 8417u) << (vec2<u32>(1u, arg_0.x) % vec2<u32>(32u)), ~vec2<u32>(1u, 0u)) >> (var_2.b % vec2<u32>(32u)), vec2<u32>(reverseBits(arg_0.x & 1u), 47085u)), var_3.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -_wgslsmith_mod_i32(1i, var_3.b.e));
    return ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~var_3.c, ~(~1u), ~_wgslsmith_sub_u32(var_3.b.a.b, 22587u), ~(~26856u)), ~reverseBits(vec4<u32>(49126u, 0u, var_3.c, 43761u)), vec4<u32>(4294967295u, ~0u, ~(~var_0.b), ~var_4.c.b ^ 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 24>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 61301u, 4294967295u, 29556u)), func_5(vec4<u32>(1u, 1u, 1u, 1u), 65587i, func_1(0u, global0[_wgslsmith_index_u32(39808u, 24u)]))) ^ 4294967295u, abs(max(19750u, 661u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_add_u32(0u, 139481u)), ~min(2637u, 0u)), vec2<u32>(_wgslsmith_div_u32(~4294967295u, firstLeadingBit(1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 97315u, 27268u), vec4<u32>(1u, 1u, 33402u, 1u)))));
    let var_1 = true;
    var var_2 = !(!(true & var_1));
    var var_3 = vec2<bool>(false, var_1);
    var_0 = ~func_5(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x, 1255u, 0u), vec4<u32>(1u, var_0.x, 35398u, 1u)), firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u) | vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x))), ~2297i, Struct_3(_wgslsmith_div_f32(-1168f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).zzy;
    let var_4 = global0[_wgslsmith_index_u32(var_0.x, 24u)];
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(621f)), 1000f)));
}

