struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_3(Struct_1(vec3<i32>(12760i, 2147483647i, 1i), 1779f, 29817u)), -1492f, Struct_1(vec3<i32>(i32(-2147483648), -26619i, 1i), 1288f, 4294967295u), Struct_2(false, vec4<i32>(i32(-2147483648), -17342i, 28578i, i32(-2147483648)), vec4<f32>(655f, -1000f, -1000f, 626f)), Struct_1(vec3<i32>(2147483647i, -59178i, 37923i), 1000f, 29273u)), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 1i, 16292i), 2147f, 1u)), -291f, Struct_1(vec3<i32>(25796i, 5929i, -39426i), -215f, 0u), Struct_2(false, vec4<i32>(29459i, -1i, 26669i, -5163i), vec4<f32>(-517f, 307f, 1932f, 140f)), Struct_1(vec3<i32>(45213i, i32(-2147483648), -17958i), -357f, 62883u)), Struct_4(Struct_3(Struct_1(vec3<i32>(64747i, 7070i, 16270i), 113f, 3332u)), 102f, Struct_1(vec3<i32>(-8133i, 1i, i32(-2147483648)), 1000f, 0u), Struct_2(true, vec4<i32>(-1i, 28462i, -23860i, 19372i), vec4<f32>(-730f, -122f, -823f, -562f)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -15565i), 1876f, 23598u)), Struct_4(Struct_3(Struct_1(vec3<i32>(8308i, 2147483647i, 24131i), 484f, 0u)), 532f, Struct_1(vec3<i32>(0i, -1i, 1i), -882f, 4294967295u), Struct_2(true, vec4<i32>(-18711i, -13176i, 2147483647i, 0i), vec4<f32>(-465f, 383f, -1000f, 1552f)), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), -196f, 0u)), Struct_4(Struct_3(Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), -2391f, 29712u)), 661f, Struct_1(vec3<i32>(-8200i, 2147483647i, 2147483647i), -2491f, 4064u), Struct_2(false, vec4<i32>(-56870i, -15091i, 36146i, 11934i), vec4<f32>(890f, 268f, 871f, 324f)), Struct_1(vec3<i32>(-51923i, 24897i, 1i), 601f, 1u)), Struct_4(Struct_3(Struct_1(vec3<i32>(53302i, -13717i, 22989i), 1003f, 7974u)), 826f, Struct_1(vec3<i32>(-33809i, i32(-2147483648), 5885i), -452f, 26505u), Struct_2(false, vec4<i32>(1061i, -7417i, -3102i, 1i), vec4<f32>(747f, -978f, 364f, -900f)), Struct_1(vec3<i32>(i32(-2147483648), -28519i, -13191i), -458f, 31787u)), Struct_4(Struct_3(Struct_1(vec3<i32>(-8228i, 2147483647i, 13289i), -999f, 85328u)), -402f, Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), -1835f, 1u), Struct_2(true, vec4<i32>(-1i, -50586i, -19248i, 35631i), vec4<f32>(-375f, 982f, 1000f, 108f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), -314f, 1u)), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1i), 2372f, 0u)), 354f, Struct_1(vec3<i32>(1i, -1i, -12322i), -1456f, 24472u), Struct_2(false, vec4<i32>(-92167i, 2147483647i, -12888i, -19208i), vec4<f32>(-326f, 624f, 424f, 328f)), Struct_1(vec3<i32>(32647i, -1i, -1i), 131f, 1u)), Struct_4(Struct_3(Struct_1(vec3<i32>(5515i, -41239i, -1i), -457f, 0u)), -896f, Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), 117f, 1u), Struct_2(false, vec4<i32>(i32(-2147483648), -25297i, 1i, i32(-2147483648)), vec4<f32>(-662f, -587f, -458f, 443f)), Struct_1(vec3<i32>(22003i, 42479i, 0i), 527f, 22850u)), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 25613i, 19672i), -309f, 38423u)), -463f, Struct_1(vec3<i32>(-45339i, 1i, -5628i), -799f, 1u), Struct_2(false, vec4<i32>(-62347i, 1i, 2147483647i, -1i), vec4<f32>(227f, -371f, 127f, 148f)), Struct_1(vec3<i32>(-1i, 0i, -47045i), -392f, 4294967295u)), Struct_4(Struct_3(Struct_1(vec3<i32>(62701i, i32(-2147483648), 1i), -1932f, 0u)), -271f, Struct_1(vec3<i32>(2147483647i, -82140i, -10287i), 657f, 4294967295u), Struct_2(true, vec4<i32>(-17366i, -10136i, -42138i, 1i), vec4<f32>(290f, -527f, 1283f, -104f)), Struct_1(vec3<i32>(1i, 0i, 0i), -1235f, 56407u)), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, -3980i, 3093i), -441f, 19588u)), -1000f, Struct_1(vec3<i32>(-41985i, -13016i, 40954i), -936f, 21015u), Struct_2(true, vec4<i32>(-32696i, 45191i, 0i, 28955i), vec4<f32>(783f, 878f, 707f, -1501f)), Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 1441f, 0u)), Struct_4(Struct_3(Struct_1(vec3<i32>(0i, -2103i, 21342i), 1146f, 31164u)), -1489f, Struct_1(vec3<i32>(2147483647i, -42184i, 18822i), 364f, 1u), Struct_2(true, vec4<i32>(-1i, -34476i, -1761i, -1i), vec4<f32>(541f, -106f, 910f, 819f)), Struct_1(vec3<i32>(2147483647i, -1i, -3226i), -723f, 41231u)), Struct_4(Struct_3(Struct_1(vec3<i32>(6825i, -18195i, 2152i), -1780f, 1u)), -328f, Struct_1(vec3<i32>(56075i, 10201i, i32(-2147483648)), -766f, 4294967295u), Struct_2(false, vec4<i32>(27317i, -66546i, -1i, -15953i), vec4<f32>(1000f, -923f, -1000f, 456f)), Struct_1(vec3<i32>(-4719i, 1i, -28634i), 1259f, 39523u)), Struct_4(Struct_3(Struct_1(vec3<i32>(-1i, -1i, -1i), -413f, 0u)), -2602f, Struct_1(vec3<i32>(-840i, -10120i, -3369i), -517f, 0u), Struct_2(true, vec4<i32>(2147483647i, i32(-2147483648), 24650i, -1i), vec4<f32>(432f, 1094f, -344f, 768f)), Struct_1(vec3<i32>(26542i, 0i, i32(-2147483648)), -118f, 0u)), Struct_4(Struct_3(Struct_1(vec3<i32>(-1i, 1i, 2147483647i), 445f, 0u)), -620f, Struct_1(vec3<i32>(47048i, 0i, -41340i), 419f, 0u), Struct_2(true, vec4<i32>(-1i, 1i, 1i, 9324i), vec4<f32>(-295f, -1000f, -127f, 1155f)), Struct_1(vec3<i32>(0i, 0i, 7209i), -1233f, 43116u)), Struct_4(Struct_3(Struct_1(vec3<i32>(2147483647i, -43830i, 2147483647i), 258f, 0u)), 1112f, Struct_1(vec3<i32>(-5387i, -1i, 38946i), -1318f, 6527u), Struct_2(true, vec4<i32>(2147483647i, i32(-2147483648), 0i, -16353i), vec4<f32>(527f, 1248f, -482f, 1000f)), Struct_1(vec3<i32>(i32(-2147483648), -18765i, 33528i), -2537f, 0u)), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 8975i, i32(-2147483648)), -1099f, 0u)), -756f, Struct_1(vec3<i32>(1i, -8492i, i32(-2147483648)), 482f, 4294967295u), Struct_2(true, vec4<i32>(i32(-2147483648), 1i, 0i, -38745i), vec4<f32>(-1115f, -260f, 2536f, 640f)), Struct_1(vec3<i32>(49711i, 30067i, 2598i), 1000f, 25452u)), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, 1i, -7843i), -178f, 27799u)), 1000f, Struct_1(vec3<i32>(1i, 1i, -12375i), 152f, 48895u), Struct_2(true, vec4<i32>(-54906i, -430i, 1i, 8340i), vec4<f32>(-1553f, -207f, -525f, 844f)), Struct_1(vec3<i32>(-1i, 5703i, 2147483647i), -154f, 28754u)), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, 12443i, i32(-2147483648)), -1000f, 23398u)), -1186f, Struct_1(vec3<i32>(28478i, 59199i, 1i), -451f, 1u), Struct_2(false, vec4<i32>(1i, i32(-2147483648), -9639i, -50081i), vec4<f32>(507f, 1704f, 1000f, 536f)), Struct_1(vec3<i32>(i32(-2147483648), -11487i, 6946i), -1033f, 4294967295u)), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, 711i, 31730i), -297f, 4294967295u)), 705f, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), -629f, 1u), Struct_2(true, vec4<i32>(3242i, -40988i, i32(-2147483648), 28682i), vec4<f32>(-2004f, -1315f, -803f, 630f)), Struct_1(vec3<i32>(16027i, -20439i, 41058i), -3278f, 36545u)), Struct_4(Struct_3(Struct_1(vec3<i32>(-56703i, 2147483647i, 48684i), -773f, 4294967295u)), -776f, Struct_1(vec3<i32>(-1i, 0i, 2147483647i), -1300f, 1u), Struct_2(false, vec4<i32>(0i, -3473i, 19265i, -1i), vec4<f32>(-1261f, 743f, -317f, 2978f)), Struct_1(vec3<i32>(1i, 43596i, 1i), -1000f, 1u)), Struct_4(Struct_3(Struct_1(vec3<i32>(22257i, 2147483647i, 35951i), -289f, 21797u)), -1450f, Struct_1(vec3<i32>(29461i, 0i, -32692i), -285f, 19614u), Struct_2(true, vec4<i32>(2147483647i, -8633i, -6645i, -13210i), vec4<f32>(1276f, -1559f, -2391f, -2849f)), Struct_1(vec3<i32>(-27076i, 11993i, -15986i), 1063f, 41039u)), Struct_4(Struct_3(Struct_1(vec3<i32>(1i, i32(-2147483648), 10727i), -860f, 1u)), -347f, Struct_1(vec3<i32>(5883i, -20356i, 14385i), -761f, 1u), Struct_2(true, vec4<i32>(-1i, 4390i, i32(-2147483648), 1i), vec4<f32>(737f, 395f, 1255f, 1000f)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i), 1305f, 1u)), Struct_4(Struct_3(Struct_1(vec3<i32>(1860i, -1i, -18450i), 514f, 1u)), -406f, Struct_1(vec3<i32>(1i, 0i, 1i), 679f, 0u), Struct_2(false, vec4<i32>(1i, -7577i, -65823i, 20714i), vec4<f32>(253f, 262f, 1236f, 909f)), Struct_1(vec3<i32>(i32(-2147483648), -9009i, 0i), 537f, 0u)));

var<private> global1: array<vec3<bool>, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_2 {
    return Struct_2(true, select(-(~vec4<i32>(u_input.c, u_input.c, 34443i, -1i)), vec4<i32>(1i, u_input.c, u_input.c, u_input.c) << (vec4<u32>(~u_input.d, 4294967295u, 4294967295u, _wgslsmith_clamp_u32(u_input.e.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), true || any(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, -982f, 592f, 726f) - vec4<f32>(-588f, -1000f, -910f, -1136f)))))))));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, 2147483647i, 21260i), vec4<i32>(u_input.c, -67864i, u_input.c, u_input.c) | vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c)), -u_input.c, u_input.c), _wgslsmith_f_op_f32(ceil(409f)), abs(arg_0 | _wgslsmith_add_u32(arg_0, 22385u))));
    global1 = array<vec3<bool>, 29>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.b);
    let var_2 = select(!vec4<bool>(false, any(vec2<bool>(true, true)) & true, any(vec4<bool>(true, true, true, true)), false), vec4<bool>(4294967295u < var_0.a.c, ((777f <= var_1) == true) & true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), !((25581i | var_0.a.a.x) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 21743i), vec2<i32>(var_0.a.a.x, u_input.c)))), vec4<bool>(!(!(var_0.a.b != var_1)), true, all(vec2<bool>(true, select(false, false, true))), false));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1621f)));
    return true;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    let var_1 = func_2();
    var var_2 = !vec2<bool>(var_0.a, any(select(select(vec2<bool>(true, false), vec2<bool>(var_1.a, false), true), vec2<bool>(var_1.a, false), vec2<bool>(var_0.a, var_0.a))));
    var_2 = select(vec2<bool>(func_3(u_input.e.x), u_input.c <= var_0.b.x), !select(vec2<bool>(var_0.a, true), !vec2<bool>(false, var_1.a), !select(vec2<bool>(true, false), vec2<bool>(var_2.x, var_1.a), vec2<bool>(false, var_2.x))), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_0.a, false), var_2.x), !vec2<bool>(var_2.x, true), select(vec2<bool>(true, var_0.a), vec2<bool>(false, var_0.a), var_2.x)), !(!vec2<bool>(true, var_1.a))));
    global1 = array<vec3<bool>, 29>();
    return _wgslsmith_add_u32(u_input.b.x, u_input.d);
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = -(~vec2<i32>(_wgslsmith_add_i32(0i, u_input.c), u_input.c >> (49982u % 32u)) << (arg_0.xx % vec2<u32>(32u)));
    var var_1 = 1008f;
    var var_2 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 28879i), vec2<i32>(var_0.x, var_0.x)), firstLeadingBit(9889i), i32(-1i) * -23238i) | _wgslsmith_div_vec3_i32(func_2().b.xwx, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 0i, -38988i), vec3<i32>(38530i, -25410i, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f - -372f))), arg_0.x >> (countOneBits(_wgslsmith_mult_u32(arg_0.x, arg_0.x)) % 32u)));
    let var_3 = abs(1i);
    global0 = array<Struct_4, 25>();
    return Struct_3(Struct_1(-abs(var_2.a.a), _wgslsmith_f_op_f32(-var_2.a.b), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(vec3<i32>(2147483647i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-20545i, u_input.c))), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1162f - _wgslsmith_f_op_f32(ceil(1552f))) * 2082f), firstLeadingBit(u_input.d | u_input.d)));
    global0 = array<Struct_4, 25>();
    var_0 = func_4(vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_div_u32(~(~12406u), 26707u), reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(48371u, u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.c, var_0.a.c), vec2<u32>(var_0.a.c, 0u), vec2<u32>(4294967295u, var_0.a.c)))), u_input.b.x), any(vec3<bool>(false, true, true)) | false, vec2<bool>(true, !(func_1() != 55531u)));
    let var_1 = all(vec3<bool>(any(select(select(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(82518u, 29u)], vec3<bool>(false, false, true)), select(global1[_wgslsmith_index_u32(var_0.a.c, 29u)], vec3<bool>(false, true, false), true), true)), false, true));
    let var_2 = any(vec4<bool>(select(!(var_0.a.b != 275f), 213f == _wgslsmith_f_op_f32(1000f * var_0.a.b), true), true, any(vec4<bool>(462f <= var_0.a.b, func_2().a, false, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(reverseBits(0u & var_0.a.c), 1u), max(1u, 4294967295u & u_input.d));
}

