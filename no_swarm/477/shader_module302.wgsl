struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(true, vec4<f32>(-783f, 1000f, 1357f, 1136f), vec4<u32>(0u, 48497u, 25549u, 1u), 1u), 0u, vec3<f32>(-918f, 232f, -136f), vec3<u32>(1u, 4294967295u, 8804u)), Struct_3(Struct_2(true, vec4<f32>(-1898f, -1238f, -722f, -152f), vec4<u32>(32527u, 0u, 18340u, 4294967295u), 4294967295u), 1u, vec3<f32>(-1028f, -648f, 1336f), vec3<u32>(4294967295u, 1u, 26837u)), Struct_3(Struct_2(false, vec4<f32>(-1721f, 1154f, 902f, 521f), vec4<u32>(0u, 46771u, 1u, 54390u), 27757u), 35724u, vec3<f32>(-1363f, 761f, 422f), vec3<u32>(39652u, 16154u, 0u)), Struct_3(Struct_2(true, vec4<f32>(479f, -695f, 157f, 881f), vec4<u32>(4294967295u, 54424u, 47386u, 1u), 4294967295u), 4294967295u, vec3<f32>(-1432f, -2131f, -1000f), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_3(Struct_2(false, vec4<f32>(-141f, -1000f, 1357f, 760f), vec4<u32>(29005u, 26457u, 57014u, 9621u), 13324u), 4294967295u, vec3<f32>(-836f, 1233f, 1032f), vec3<u32>(34423u, 11438u, 0u)), Struct_3(Struct_2(true, vec4<f32>(1170f, 412f, -1271f, 450f), vec4<u32>(4294967295u, 1u, 78710u, 0u), 7027u), 6351u, vec3<f32>(-1000f, -2060f, 892f), vec3<u32>(12405u, 27428u, 1u)), Struct_3(Struct_2(false, vec4<f32>(-180f, -1968f, 1308f, -2124f), vec4<u32>(1u, 1u, 16212u, 4294967295u), 8259u), 0u, vec3<f32>(273f, -1162f, -593f), vec3<u32>(1u, 0u, 11607u)), Struct_3(Struct_2(false, vec4<f32>(-945f, 802f, -1016f, -1000f), vec4<u32>(8605u, 4940u, 116246u, 1u), 0u), 60765u, vec3<f32>(-770f, 1557f, 1095f), vec3<u32>(4294967295u, 1u, 0u)), Struct_3(Struct_2(true, vec4<f32>(-741f, -431f, -644f, -1900f), vec4<u32>(26673u, 59567u, 0u, 0u), 27770u), 31885u, vec3<f32>(780f, -865f, 225f), vec3<u32>(68082u, 1u, 1u)), Struct_3(Struct_2(true, vec4<f32>(-257f, 416f, 1000f, 316f), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 4294967295u), 45814u, vec3<f32>(-3325f, 349f, -827f), vec3<u32>(0u, 0u, 63899u)), Struct_3(Struct_2(false, vec4<f32>(-1170f, -1262f, -1127f, -1000f), vec4<u32>(1079u, 26270u, 1u, 40612u), 0u), 0u, vec3<f32>(1000f, -829f, -420f), vec3<u32>(4294967295u, 48584u, 4294967295u)), Struct_3(Struct_2(true, vec4<f32>(-117f, -2368f, -1296f, -237f), vec4<u32>(48961u, 15765u, 0u, 1u), 0u), 1u, vec3<f32>(-322f, 208f, 386f), vec3<u32>(1u, 4294967295u, 1u)), Struct_3(Struct_2(false, vec4<f32>(-987f, 1580f, 2213f, -357f), vec4<u32>(4294967295u, 15988u, 1u, 0u), 43420u), 19064u, vec3<f32>(-898f, 1125f, -340f), vec3<u32>(1u, 1u, 38728u)), Struct_3(Struct_2(true, vec4<f32>(486f, -810f, -1000f, 1245f), vec4<u32>(3383u, 129922u, 0u, 4294967295u), 0u), 11694u, vec3<f32>(-217f, -1464f, -816f), vec3<u32>(4294967295u, 19821u, 4294967295u)), Struct_3(Struct_2(true, vec4<f32>(862f, 509f, 1000f, -1188f), vec4<u32>(68297u, 28830u, 22092u, 15963u), 4294967295u), 0u, vec3<f32>(-874f, 153f, -653f), vec3<u32>(1u, 0u, 1u)), Struct_3(Struct_2(true, vec4<f32>(-579f, -286f, 164f, 855f), vec4<u32>(0u, 4294967295u, 70254u, 73156u), 32068u), 0u, vec3<f32>(2307f, -882f, -1622f), vec3<u32>(83213u, 4294967295u, 66679u)), Struct_3(Struct_2(false, vec4<f32>(971f, -1470f, 1000f, 518f), vec4<u32>(12187u, 23359u, 4294967295u, 0u), 1u), 4560u, vec3<f32>(-1255f, -136f, 533f), vec3<u32>(47377u, 0u, 4294967295u)), Struct_3(Struct_2(true, vec4<f32>(-1000f, -1197f, 377f, -216f), vec4<u32>(0u, 4294967295u, 48864u, 59055u), 59210u), 109544u, vec3<f32>(-824f, 159f, -1696f), vec3<u32>(4294967295u, 75713u, 25754u)), Struct_3(Struct_2(true, vec4<f32>(-1351f, 1910f, 1000f, 1635f), vec4<u32>(85762u, 63898u, 110603u, 4294967295u), 0u), 4294967295u, vec3<f32>(1074f, -1425f, 1293f), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_3(Struct_2(false, vec4<f32>(323f, -1083f, -445f, -1004f), vec4<u32>(31731u, 4294967295u, 0u, 0u), 22609u), 4294967295u, vec3<f32>(-327f, 787f, 1382f), vec3<u32>(93135u, 25737u, 0u)), Struct_3(Struct_2(false, vec4<f32>(-539f, -966f, 344f, 1586f), vec4<u32>(0u, 1u, 133511u, 1u), 55221u), 4294967295u, vec3<f32>(-2195f, 1360f, -139f), vec3<u32>(1u, 90165u, 1u)), Struct_3(Struct_2(true, vec4<f32>(1084f, -1089f, -1000f, 216f), vec4<u32>(64848u, 24766u, 1u, 82758u), 0u), 1u, vec3<f32>(697f, -1072f, 597f), vec3<u32>(52554u, 37816u, 117731u)), Struct_3(Struct_2(true, vec4<f32>(-1895f, -624f, 130f, 968f), vec4<u32>(4294967295u, 27912u, 22180u, 1372u), 1u), 0u, vec3<f32>(-1128f, -1195f, -1296f), vec3<u32>(1u, 4294967295u, 1u)), Struct_3(Struct_2(true, vec4<f32>(-1665f, 401f, 759f, 292f), vec4<u32>(103155u, 62544u, 0u, 0u), 38257u), 4294967295u, vec3<f32>(-1018f, 1196f, 600f), vec3<u32>(1u, 0u, 14504u)), Struct_3(Struct_2(true, vec4<f32>(1262f, -170f, 146f, -1051f), vec4<u32>(4294967295u, 6109u, 17345u, 0u), 1u), 63401u, vec3<f32>(-722f, 585f, -381f), vec3<u32>(15648u, 44669u, 4294967295u)), Struct_3(Struct_2(true, vec4<f32>(1968f, 1395f, 1349f, 451f), vec4<u32>(4294967295u, 39030u, 4294967295u, 1u), 0u), 4294967295u, vec3<f32>(786f, -1000f, 675f), vec3<u32>(0u, 4294967295u, 1u)), Struct_3(Struct_2(false, vec4<f32>(582f, -1482f, 2133f, 207f), vec4<u32>(48986u, 12112u, 0u, 23000u), 17800u), 34072u, vec3<f32>(-1000f, 1018f, 407f), vec3<u32>(42672u, 1u, 4294967295u)), Struct_3(Struct_2(false, vec4<f32>(-183f, 1000f, -484f, -646f), vec4<u32>(0u, 0u, 5091u, 4294967295u), 14571u), 0u, vec3<f32>(-2152f, 1000f, 389f), vec3<u32>(11071u, 32213u, 36378u)));

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(false, vec4<f32>(-418f, -956f, -356f, 306f), vec4<u32>(33394u, 0u, 1u, 4294967295u), 1u), Struct_2(false, vec4<f32>(-238f, 1000f, -788f, -1280f), vec4<u32>(11914u, 13104u, 5523u, 21667u), 1u), Struct_2(true, vec4<f32>(-834f, 734f, 1103f, 336f), vec4<u32>(0u, 8865u, 41418u, 0u), 4294967295u), Struct_2(true, vec4<f32>(-557f, 1334f, -1989f, -216f), vec4<u32>(0u, 0u, 68028u, 70342u), 13619u), Struct_2(false, vec4<f32>(1616f, 1116f, 664f, -892f), vec4<u32>(4294967295u, 70224u, 5465u, 1u), 1u), Struct_2(false, vec4<f32>(172f, 1000f, -370f, -1305f), vec4<u32>(4294967295u, 1131u, 27796u, 1u), 0u), Struct_2(false, vec4<f32>(1000f, -450f, -1103f, -600f), vec4<u32>(285u, 0u, 9784u, 67480u), 0u), Struct_2(false, vec4<f32>(-670f, -2503f, -535f, -609f), vec4<u32>(49855u, 0u, 4294967295u, 1u), 25023u), Struct_2(false, vec4<f32>(187f, -2072f, -1362f, -831f), vec4<u32>(30824u, 0u, 10670u, 0u), 18913u));

var<private> global3: Struct_1 = Struct_1(0u, i32(-2147483648));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global2 = array<Struct_2, 9>();
    var var_0 = countOneBits(~u_input.b);
    var var_1 = Struct_2(arg_0.a, arg_0.b, u_input.d, ~1u);
    var var_2 = Struct_1(arg_2.c.x, global3.b);
    return var_1.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>) -> bool {
    var var_0 = 38505u;
    let var_1 = _wgslsmith_f_op_f32(abs(arg_1.c.x));
    var var_2 = Struct_2(arg_1.a.a && !any(!vec2<bool>(true, arg_1.a.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_1.a.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, arg_0, 723f, var_1) * vec4<f32>(-1604f, -248f, 1066f, arg_1.c.x))), vec4<f32>(-1339f, 1685f, _wgslsmith_f_op_f32(step(-1182f, -179f)), _wgslsmith_f_op_f32(func_3(Struct_2(arg_1.a.a, arg_1.a.b, u_input.d, arg_1.b), Struct_2(arg_1.a.a, arg_1.a.b, u_input.d, 4294967295u), arg_1.a))), vec4<bool>(arg_1.a.a, true, arg_1.a.a, false))))), arg_2, _wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(firstLeadingBit(u_input.d.wz))), ~vec2<u32>(reverseBits(9913u), global3.a)));
    let var_3 = countOneBits(~_wgslsmith_add_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_2.c.x, arg_1.b), u_input.d.wzz), firstLeadingBit(var_2.c.yzy), vec3<bool>(false, true, arg_1.a.a)), ~_wgslsmith_div_vec3_u32(arg_1.a.c.www, var_2.c.xwx)));
    var var_4 = arg_1.a;
    return true;
}

fn func_1() -> f32 {
    let var_0 = Struct_2(true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1050f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 587f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-280f, 229f)))), vec4<f32>(-141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1267f))), 2142f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-382f * -259f) - 1333f)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(true, true, false)), vec4<bool>(func_2(-777f, Struct_3(Struct_2(true, vec4<f32>(-296f, -731f, 1998f, 248f), vec4<u32>(4249u, 66767u, 18054u, global3.a), u_input.b), u_input.c, vec3<f32>(-616f, 1000f, 770f), u_input.d.zwz), vec4<u32>(u_input.c, 0u, 18917u, 28879u)), true, true, true), vec4<bool>(true, false, true, any(vec3<bool>(false, true, true)))))), ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global3.a, u_input.d.x, 1u), vec4<u32>(56842u, global3.a, global3.a, 4294967295u))) ^ ~u_input.d, min(u_input.c, global3.a));
    global0 = array<Struct_1, 15>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(abs(61829u), 1u), ~vec2<u32>(global3.a, global3.a), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(~u_input.b, ~1131u), countOneBits(vec2<u32>(~global3.a, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_0.d, 12347u, global3.a, 94118u)))), ~(~(var_0.c.yz ^ vec2<u32>(36569u, global3.a))))), 9u)];
    global3 = global0[_wgslsmith_index_u32(~1u << (_wgslsmith_div_u32(96488u, global3.a) % 32u), 15u)];
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_sub_vec4_u32(countOneBits(u_input.d), var_1.c)), 9u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(step(var_0.b.x, var_2.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(321f, -1000f)), -774f)), 845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f))), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(73705u, global3.a, 0u, 45560u))), ~(~vec4<u32>(u_input.d.x, 49543u, u_input.c, 0u))), u_input.c);
    var var_1 = 0u;
    global1 = array<Struct_3, 28>();
    global1 = array<Struct_3, 28>();
    global2 = array<Struct_2, 9>();
    let var_2 = -1039f;
    var var_3 = -u_input.a.zx;
    var_0 = Struct_2(any(select(select(select(vec4<bool>(true, var_0.a, false, true), vec4<bool>(true, var_0.a, false, false), true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), !vec4<bool>(var_0.a, false, var_0.a, false)), vec4<bool>(any(vec2<bool>(var_0.a, false)), all(vec4<bool>(false, true, var_0.a, var_0.a)), true, var_0.a), _wgslsmith_f_op_f32(max(-701f, var_2)) != _wgslsmith_f_op_f32(f32(-1f) * -1988f))), vec4<f32>(-2404f, 673f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(995f))))), _wgslsmith_f_op_f32(trunc(-155f))), firstLeadingBit(abs(~var_0.c)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, -var_3.x), ~firstTrailingBit(vec2<i32>(1i, 14306i))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-global3.b, _wgslsmith_div_i32(2147483647i, var_3.x)), firstTrailingBit(-u_input.a.x))));
}

