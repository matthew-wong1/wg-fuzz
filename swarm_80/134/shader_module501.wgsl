struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(vec3<bool>(true, false, true), Struct_1(-1154f), 1i, Struct_2(vec4<bool>(true, false, true, false), 20618u, 0u, vec2<f32>(-293f, 150f), 375f), vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec3<bool>(false, true, true), Struct_1(1178f), 0i, Struct_2(vec4<bool>(true, true, false, true), 4294967295u, 11243u, vec2<f32>(167f, 948f), 1345f), vec2<u32>(0u, 4294967295u)), Struct_4(vec3<bool>(true, false, false), Struct_1(-847f), 13615i, Struct_2(vec4<bool>(false, false, true, true), 84550u, 4294967295u, vec2<f32>(1167f, -1763f), 355f), vec2<u32>(0u, 4294967295u)), Struct_4(vec3<bool>(false, true, true), Struct_1(785f), -53229i, Struct_2(vec4<bool>(false, false, true, true), 53353u, 4294967295u, vec2<f32>(-611f, -142f), 162f), vec2<u32>(4294967295u, 83307u)), Struct_4(vec3<bool>(false, true, false), Struct_1(157f), -12073i, Struct_2(vec4<bool>(true, false, false, false), 1u, 23480u, vec2<f32>(-1075f, 146f), 952f), vec2<u32>(4294967295u, 45977u)), Struct_4(vec3<bool>(true, true, true), Struct_1(-2701f), -1i, Struct_2(vec4<bool>(true, false, true, false), 11306u, 15880u, vec2<f32>(-622f, 422f), -1052f), vec2<u32>(4294967295u, 13317u)), Struct_4(vec3<bool>(false, true, true), Struct_1(-343f), 2147483647i, Struct_2(vec4<bool>(true, false, false, true), 1u, 1u, vec2<f32>(908f, -1901f), -1172f), vec2<u32>(0u, 4294967295u)), Struct_4(vec3<bool>(true, true, false), Struct_1(-999f), -24948i, Struct_2(vec4<bool>(true, false, false, true), 3411u, 21024u, vec2<f32>(-629f, -215f), -798f), vec2<u32>(0u, 1u)), Struct_4(vec3<bool>(false, true, false), Struct_1(-1342f), -46143i, Struct_2(vec4<bool>(false, false, true, true), 16962u, 19693u, vec2<f32>(-639f, -321f), -151f), vec2<u32>(5541u, 0u)), Struct_4(vec3<bool>(false, false, true), Struct_1(134f), -13788i, Struct_2(vec4<bool>(true, true, false, true), 15654u, 27794u, vec2<f32>(-988f, -1000f), -1000f), vec2<u32>(1u, 0u)), Struct_4(vec3<bool>(false, true, true), Struct_1(-2073f), 1i, Struct_2(vec4<bool>(true, true, true, false), 4294967295u, 4294967295u, vec2<f32>(1211f, 866f), 498f), vec2<u32>(1u, 1u)), Struct_4(vec3<bool>(true, false, true), Struct_1(1907f), -46898i, Struct_2(vec4<bool>(false, false, true, false), 1u, 31327u, vec2<f32>(1000f, -2277f), 1777f), vec2<u32>(1u, 26706u)), Struct_4(vec3<bool>(false, true, false), Struct_1(321f), 33590i, Struct_2(vec4<bool>(true, false, true, true), 51634u, 0u, vec2<f32>(2381f, -626f), -714f), vec2<u32>(0u, 4294967295u)), Struct_4(vec3<bool>(false, false, false), Struct_1(547f), 19140i, Struct_2(vec4<bool>(false, false, false, false), 22109u, 0u, vec2<f32>(-843f, -575f), 608f), vec2<u32>(79421u, 10074u)), Struct_4(vec3<bool>(true, false, false), Struct_1(1082f), 0i, Struct_2(vec4<bool>(true, false, true, true), 30334u, 4294967295u, vec2<f32>(648f, -1322f), -1707f), vec2<u32>(4294967295u, 1u)), Struct_4(vec3<bool>(true, true, false), Struct_1(2123f), 1i, Struct_2(vec4<bool>(false, false, true, true), 7740u, 13587u, vec2<f32>(-577f, 953f), 2619f), vec2<u32>(23360u, 4294967295u)), Struct_4(vec3<bool>(false, true, true), Struct_1(838f), 889i, Struct_2(vec4<bool>(true, false, false, true), 4294967295u, 21045u, vec2<f32>(-316f, 558f), 1000f), vec2<u32>(2704u, 4294967295u)), Struct_4(vec3<bool>(true, true, true), Struct_1(-587f), -1i, Struct_2(vec4<bool>(true, false, true, false), 0u, 0u, vec2<f32>(307f, -1038f), 229f), vec2<u32>(0u, 51570u)), Struct_4(vec3<bool>(false, true, false), Struct_1(-1661f), i32(-2147483648), Struct_2(vec4<bool>(true, true, true, false), 0u, 14153u, vec2<f32>(-1093f, 424f), -2045f), vec2<u32>(4294967295u, 0u)), Struct_4(vec3<bool>(true, false, true), Struct_1(187f), 16187i, Struct_2(vec4<bool>(false, false, true, false), 3672u, 80236u, vec2<f32>(-467f, 1000f), -779f), vec2<u32>(9275u, 12500u)), Struct_4(vec3<bool>(false, true, true), Struct_1(-1237f), i32(-2147483648), Struct_2(vec4<bool>(false, true, false, false), 4294967295u, 4294967295u, vec2<f32>(1235f, 754f), -352f), vec2<u32>(48606u, 2804u)), Struct_4(vec3<bool>(true, true, true), Struct_1(-218f), 2147483647i, Struct_2(vec4<bool>(true, true, true, false), 11589u, 68353u, vec2<f32>(887f, 2334f), 1943f), vec2<u32>(4294967295u, 0u)));

var<private> global1: i32;

var<private> global2: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec3<bool>(false, true, false), Struct_1(-897f), 2147483647i, Struct_2(vec4<bool>(false, false, true, true), 65222u, 2687u, vec2<f32>(-1000f, -181f), 1157f), vec2<u32>(4294967295u, 84548u)), Struct_4(vec3<bool>(true, false, true), Struct_1(-262f), -1i, Struct_2(vec4<bool>(false, true, false, true), 45399u, 0u, vec2<f32>(620f, 635f), 983f), vec2<u32>(98110u, 4873u)), Struct_4(vec3<bool>(false, false, false), Struct_1(532f), -38648i, Struct_2(vec4<bool>(false, false, true, true), 68801u, 4294967295u, vec2<f32>(-1305f, -258f), 875f), vec2<u32>(26859u, 0u)), Struct_4(vec3<bool>(true, false, true), Struct_1(323f), -1i, Struct_2(vec4<bool>(false, false, true, false), 47990u, 38435u, vec2<f32>(-930f, -485f), -1546f), vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec3<bool>(true, false, true), Struct_1(439f), 2147483647i, Struct_2(vec4<bool>(false, false, true, true), 50637u, 84682u, vec2<f32>(625f, 504f), 244f), vec2<u32>(13626u, 4294967295u)), Struct_4(vec3<bool>(false, false, false), Struct_1(582f), 15108i, Struct_2(vec4<bool>(false, true, false, true), 18228u, 4294967295u, vec2<f32>(1769f, 145f), -348f), vec2<u32>(68753u, 21907u)), Struct_4(vec3<bool>(false, true, true), Struct_1(-847f), 2147483647i, Struct_2(vec4<bool>(true, false, true, true), 40046u, 37113u, vec2<f32>(-834f, -587f), 1000f), vec2<u32>(50675u, 4294967295u)), Struct_4(vec3<bool>(false, false, true), Struct_1(1000f), 30332i, Struct_2(vec4<bool>(true, false, true, true), 0u, 29191u, vec2<f32>(-679f, 964f), 639f), vec2<u32>(67722u, 10276u)), Struct_4(vec3<bool>(false, false, true), Struct_1(-2263f), -17184i, Struct_2(vec4<bool>(true, false, true, false), 65495u, 0u, vec2<f32>(-3095f, 697f), 1207f), vec2<u32>(0u, 1u)), Struct_4(vec3<bool>(false, true, false), Struct_1(-235f), 34519i, Struct_2(vec4<bool>(true, true, false, false), 95416u, 1u, vec2<f32>(468f, -346f), 1309f), vec2<u32>(48119u, 4294967295u)), Struct_4(vec3<bool>(false, true, true), Struct_1(-1608f), -6251i, Struct_2(vec4<bool>(false, false, false, false), 37421u, 0u, vec2<f32>(-680f, -1000f), 1000f), vec2<u32>(6555u, 32722u)), Struct_4(vec3<bool>(true, false, true), Struct_1(-197f), -30947i, Struct_2(vec4<bool>(false, false, true, true), 1u, 4294967295u, vec2<f32>(1018f, 2024f), -1132f), vec2<u32>(1u, 0u)), Struct_4(vec3<bool>(true, true, false), Struct_1(-1160f), 1i, Struct_2(vec4<bool>(false, false, true, true), 0u, 15464u, vec2<f32>(607f, 1000f), -1266f), vec2<u32>(4294967295u, 1u)), Struct_4(vec3<bool>(true, false, false), Struct_1(1826f), 2147483647i, Struct_2(vec4<bool>(false, true, true, true), 0u, 1u, vec2<f32>(-1077f, -229f), 1249f), vec2<u32>(1u, 4294967295u)), Struct_4(vec3<bool>(false, true, true), Struct_1(-1409f), -17987i, Struct_2(vec4<bool>(false, true, true, false), 1543u, 1u, vec2<f32>(1008f, -333f), 490f), vec2<u32>(5687u, 1u)), Struct_4(vec3<bool>(true, false, true), Struct_1(912f), 1i, Struct_2(vec4<bool>(true, false, true, false), 1u, 58810u, vec2<f32>(-550f, -125f), 1144f), vec2<u32>(52312u, 0u)), Struct_4(vec3<bool>(true, true, true), Struct_1(-1409f), 1i, Struct_2(vec4<bool>(true, false, true, false), 4294967295u, 37220u, vec2<f32>(265f, 612f), 892f), vec2<u32>(0u, 0u)), Struct_4(vec3<bool>(true, false, true), Struct_1(600f), 0i, Struct_2(vec4<bool>(true, false, false, false), 0u, 21407u, vec2<f32>(1312f, -147f), 198f), vec2<u32>(4294967295u, 1u)), Struct_4(vec3<bool>(false, true, false), Struct_1(-458f), -32060i, Struct_2(vec4<bool>(true, true, true, true), 5816u, 38896u, vec2<f32>(786f, -2477f), -178f), vec2<u32>(1u, 41192u)), Struct_4(vec3<bool>(false, true, false), Struct_1(-1754f), 0i, Struct_2(vec4<bool>(true, true, true, true), 4294967295u, 105048u, vec2<f32>(1652f, 1066f), 311f), vec2<u32>(29390u, 0u)), Struct_4(vec3<bool>(true, false, true), Struct_1(1956f), -18358i, Struct_2(vec4<bool>(true, false, false, true), 0u, 4294967295u, vec2<f32>(-190f, 1000f), -290f), vec2<u32>(71655u, 4294967295u)));

var<private> global3: array<i32, 12> = array<i32, 12>(35125i, 39183i, 60280i, -1i, -1i, -15281i, 1i, i32(-2147483648), i32(-2147483648), 1i, -1i, -43264i);

var<private> global4: array<i32, 5>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-337f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 22u)];
    global3 = array<i32, 12>();
    global4 = array<i32, 5>();
    var var_1 = ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(var_0.e.x, 0u, var_0.d.b, 13036u)), vec4<u32>(~u_input.d.x, 20993u, _wgslsmith_mult_u32(var_0.e.x, 0u), countOneBits(var_0.d.c)));
    var var_2 = ~_wgslsmith_dot_vec3_i32(abs(-u_input.b.yyy), -(~u_input.b.xyw)) | countOneBits(firstTrailingBit(~2147483647i));
    return 1u >> (1u % 32u);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(!(!vec4<bool>(select(true, false, false), true, all(vec2<bool>(true, false)), true)), _wgslsmith_mult_u32(min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.d.x), func_3(arg_0)), u_input.d.x), u_input.d.x), u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-278f, -328f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), arg_0.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(389f)), -183f)) + -1334f));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.d.x, arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-379f, arg_0.a, var_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -562f)), -613f, var_0.e))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 22>();
    global3 = array<i32, 12>();
    global4 = array<i32, 5>();
    var var_0 = Struct_1(265f);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~(~58175u), abs(~vec2<u32>(u_input.d.x, u_input.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_1(2031f)))))), 926f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-312f - var_0.a))), 416f, true)) - var_0.a));
    let var_2 = -vec2<i32>(_wgslsmith_clamp_i32(21484i, u_input.a, _wgslsmith_dot_vec4_i32(~u_input.b, -u_input.b)), _wgslsmith_dot_vec2_i32(max(u_input.c.xy, vec2<i32>(-1i, global4[_wgslsmith_index_u32(u_input.d.x, 5u)])), _wgslsmith_mod_vec2_i32(u_input.c.zz, -u_input.b.zx)));
    global2 = array<Struct_4, 21>();
    var var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(abs(26408u)), 0u, u_input.d.x) | vec3<u32>(4294967295u, ~countOneBits(u_input.d.x), ~0u), max(~((vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) << (u_input.d % vec3<u32>(32u))) >> (vec3<u32>(39509u, u_input.d.x, 92239u) % vec3<u32>(32u))), vec3<u32>(~72029u, 7772u, 65573u)), firstLeadingBit(~firstTrailingBit(~u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, u_input.d.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(745f))))));
}

