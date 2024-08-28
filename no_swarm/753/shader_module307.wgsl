struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_3(-587f, vec3<u32>(0u, 36795u, 0u)), Struct_1(vec4<u32>(70300u, 1u, 1u, 13244u), 1u, 1i, 4813u), 32237u, Struct_2(true), Struct_3(1295f, vec3<u32>(0u, 0u, 30818u))), Struct_4(Struct_3(636f, vec3<u32>(35471u, 77143u, 4294967295u)), Struct_1(vec4<u32>(9054u, 58823u, 25581u, 56774u), 61759u, 28224i, 1u), 1u, Struct_2(true), Struct_3(710f, vec3<u32>(11310u, 1u, 59696u))), Struct_4(Struct_3(-678f, vec3<u32>(19159u, 10782u, 0u)), Struct_1(vec4<u32>(4294967295u, 67049u, 6135u, 1u), 34383u, 0i, 4294967295u), 0u, Struct_2(true), Struct_3(507f, vec3<u32>(0u, 33332u, 4294967295u))), Struct_4(Struct_3(165f, vec3<u32>(2659u, 38911u, 1u)), Struct_1(vec4<u32>(58594u, 0u, 1u, 1u), 83036u, 18300i, 39948u), 9192u, Struct_2(false), Struct_3(662f, vec3<u32>(53726u, 0u, 4294967295u))), Struct_4(Struct_3(880f, vec3<u32>(0u, 0u, 23223u)), Struct_1(vec4<u32>(14808u, 40900u, 46178u, 69541u), 37424u, 0i, 4294967295u), 14244u, Struct_2(false), Struct_3(-198f, vec3<u32>(29177u, 1u, 0u))), Struct_4(Struct_3(111f, vec3<u32>(53449u, 16841u, 0u)), Struct_1(vec4<u32>(4306u, 4294967295u, 26954u, 4294967295u), 51009u, 1i, 63193u), 4294967295u, Struct_2(false), Struct_3(-323f, vec3<u32>(4294967295u, 0u, 0u))), Struct_4(Struct_3(-2419f, vec3<u32>(0u, 0u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 17536u, 1u), 101178u, 2147483647i, 103769u), 7232u, Struct_2(true), Struct_3(650f, vec3<u32>(28858u, 4294967295u, 4294967295u))), Struct_4(Struct_3(-1322f, vec3<u32>(1u, 20195u, 0u)), Struct_1(vec4<u32>(45290u, 38397u, 10263u, 9184u), 6163u, 0i, 48886u), 22297u, Struct_2(true), Struct_3(-126f, vec3<u32>(0u, 0u, 62121u))), Struct_4(Struct_3(1012f, vec3<u32>(53121u, 58985u, 46200u)), Struct_1(vec4<u32>(40292u, 0u, 4294967295u, 35148u), 0u, 1i, 0u), 1u, Struct_2(true), Struct_3(-1000f, vec3<u32>(4294967295u, 1u, 1u))), Struct_4(Struct_3(-1635f, vec3<u32>(17513u, 1u, 30735u)), Struct_1(vec4<u32>(49381u, 49293u, 7267u, 4294967295u), 12637u, 24840i, 4294967295u), 4294967295u, Struct_2(false), Struct_3(645f, vec3<u32>(1u, 95484u, 4294967295u))), Struct_4(Struct_3(-1083f, vec3<u32>(47462u, 52510u, 4294967295u)), Struct_1(vec4<u32>(34668u, 1u, 0u, 57511u), 18226u, -24117i, 48842u), 99183u, Struct_2(false), Struct_3(1387f, vec3<u32>(12541u, 0u, 10375u))), Struct_4(Struct_3(-492f, vec3<u32>(1u, 41497u, 0u)), Struct_1(vec4<u32>(0u, 54392u, 4294967295u, 26093u), 4294967295u, 38839i, 39200u), 42118u, Struct_2(true), Struct_3(157f, vec3<u32>(4294967295u, 18550u, 0u))), Struct_4(Struct_3(-998f, vec3<u32>(4294967295u, 10177u, 0u)), Struct_1(vec4<u32>(0u, 1826u, 36064u, 23664u), 4294967295u, 0i, 0u), 1u, Struct_2(true), Struct_3(1000f, vec3<u32>(0u, 15937u, 4294967295u))), Struct_4(Struct_3(-1196f, vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec4<u32>(19591u, 1u, 23327u, 77399u), 1u, -111419i, 0u), 0u, Struct_2(true), Struct_3(-832f, vec3<u32>(1u, 4294967295u, 0u))), Struct_4(Struct_3(920f, vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec4<u32>(3609u, 70493u, 1u, 4294967295u), 4294967295u, i32(-2147483648), 0u), 39272u, Struct_2(false), Struct_3(1196f, vec3<u32>(0u, 35353u, 0u))), Struct_4(Struct_3(-495f, vec3<u32>(20796u, 1u, 0u)), Struct_1(vec4<u32>(26928u, 0u, 4294967295u, 0u), 0u, 0i, 5965u), 0u, Struct_2(false), Struct_3(-1010f, vec3<u32>(4294967295u, 79295u, 38603u))), Struct_4(Struct_3(582f, vec3<u32>(4294967295u, 1u, 61656u)), Struct_1(vec4<u32>(108945u, 28879u, 14597u, 1u), 50368u, 2147483647i, 0u), 6423u, Struct_2(true), Struct_3(954f, vec3<u32>(1u, 4294967295u, 1u))), Struct_4(Struct_3(-186f, vec3<u32>(1u, 0u, 18546u)), Struct_1(vec4<u32>(1u, 74696u, 4294967295u, 1u), 31907u, 0i, 4294967295u), 90917u, Struct_2(false), Struct_3(-124f, vec3<u32>(4294967295u, 0u, 1u))), Struct_4(Struct_3(-234f, vec3<u32>(83429u, 1u, 1u)), Struct_1(vec4<u32>(0u, 4294967295u, 10274u, 1u), 11204u, -45974i, 4294967295u), 76156u, Struct_2(false), Struct_3(394f, vec3<u32>(0u, 0u, 0u))), Struct_4(Struct_3(498f, vec3<u32>(0u, 2670u, 0u)), Struct_1(vec4<u32>(26335u, 69257u, 0u, 1u), 1u, i32(-2147483648), 4294967295u), 4294967295u, Struct_2(true), Struct_3(1000f, vec3<u32>(0u, 4294967295u, 3518u))), Struct_4(Struct_3(-1399f, vec3<u32>(0u, 32995u, 4294967295u)), Struct_1(vec4<u32>(34225u, 0u, 4294967295u, 2686u), 4294967295u, -62996i, 0u), 0u, Struct_2(false), Struct_3(-694f, vec3<u32>(22545u, 1u, 1u))), Struct_4(Struct_3(-691f, vec3<u32>(22618u, 1u, 10629u)), Struct_1(vec4<u32>(56891u, 4294967295u, 8093u, 0u), 983u, -1i, 50611u), 67937u, Struct_2(false), Struct_3(2681f, vec3<u32>(22943u, 0u, 22943u))), Struct_4(Struct_3(1367f, vec3<u32>(1u, 1u, 10050u)), Struct_1(vec4<u32>(12507u, 98601u, 66675u, 4294967295u), 0u, 0i, 7092u), 34284u, Struct_2(true), Struct_3(1805f, vec3<u32>(0u, 4294967295u, 1u))), Struct_4(Struct_3(649f, vec3<u32>(4294967295u, 17925u, 4294967295u)), Struct_1(vec4<u32>(0u, 1842u, 16212u, 54897u), 4294967295u, 0i, 57275u), 0u, Struct_2(true), Struct_3(-1000f, vec3<u32>(31803u, 1u, 82664u))), Struct_4(Struct_3(1000f, vec3<u32>(55541u, 4294967295u, 0u)), Struct_1(vec4<u32>(86190u, 18470u, 1339u, 3830u), 1u, 48826i, 4294967295u), 0u, Struct_2(false), Struct_3(751f, vec3<u32>(4294967295u, 16386u, 1u))), Struct_4(Struct_3(-1016f, vec3<u32>(18914u, 1u, 20747u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 15393u), 33207u, 44989i, 16107u), 1u, Struct_2(true), Struct_3(-1232f, vec3<u32>(5383u, 1u, 1u))), Struct_4(Struct_3(-309f, vec3<u32>(7362u, 4294967295u, 20283u)), Struct_1(vec4<u32>(61254u, 25411u, 4294967295u, 12507u), 4294967295u, -1i, 1u), 33284u, Struct_2(true), Struct_3(-1247f, vec3<u32>(28478u, 32829u, 1u))), Struct_4(Struct_3(1731f, vec3<u32>(72139u, 0u, 42394u)), Struct_1(vec4<u32>(4294967295u, 0u, 78579u, 96403u), 32938u, -8295i, 60924u), 98329u, Struct_2(true), Struct_3(-859f, vec3<u32>(3770u, 4294967295u, 71151u))), Struct_4(Struct_3(1020f, vec3<u32>(38377u, 4294967295u, 57956u)), Struct_1(vec4<u32>(6584u, 61177u, 0u, 49715u), 71552u, -23310i, 1u), 1u, Struct_2(true), Struct_3(-183f, vec3<u32>(79314u, 121638u, 508u))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    global0 = array<i32, 20>();
    global1 = array<Struct_4, 29>();
    global1 = array<Struct_4, 29>();
    let var_0 = u_input.c.zz;
    let var_1 = arg_0.a.a;
    return ~reverseBits(-1i);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = ~u_input.d;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -326f))) - _wgslsmith_f_op_f32(select(-1279f, _wgslsmith_div_f32(-1263f, 1775f), all(vec2<bool>(false, true)))))), vec3<u32>(~(~u_input.b << (arg_0.x % 32u)), 27572u, 20358u));
    var var_2 = ~(-abs(global0[_wgslsmith_index_u32(abs(4294967295u), 20u)]));
    var_2 = abs(func_3(global1[_wgslsmith_index_u32(var_1.b.x, 29u)], vec3<bool>(false, (var_1.a <= 179f) & true, false), Struct_2(var_1.a != -537f)));
    let var_3 = Struct_1(~((arg_0 >> (arg_0 % vec4<u32>(32u))) << (arg_0 % vec4<u32>(32u))), u_input.b, 1784i, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(~arg_0, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_1.b.x, 4294967295u, var_1.b.x), vec4<u32>(0u, u_input.b, arg_0.x, 1u))), vec4<u32>(~26116u, ~u_input.b, 1u, 88918u)), u_input.b));
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_f32(var_1.a - -534f))), vec3<u32>(4294967295u, 1u, ~8749u));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<u32> {
    var var_0 = func_2(firstTrailingBit(~(~(~vec4<u32>(arg_0, 1u, arg_0, 1u)))));
    global0 = array<i32, 20>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_1 + -1787f), _wgslsmith_f_op_f32(-445f - arg_1), _wgslsmith_div_f32(2222f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), 1000f);
    let var_2 = Struct_4(Struct_3(var_0.a, var_0.b), Struct_1(vec4<u32>(0u, ~63198u, 1u, u_input.b) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, var_0.b.x, arg_0, arg_0), vec4<u32>(1u, arg_0, arg_0, 0u)), u_input.b, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 49333i, 0i, u_input.c.x), vec4<i32>(global0[_wgslsmith_index_u32(0u, 20u)], u_input.a, u_input.a, global0[_wgslsmith_index_u32(arg_0, 20u)]))), 51649u), 1u, Struct_2(any(vec4<bool>(true, false, any(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, false, false))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, arg_1))), countOneBits(_wgslsmith_mult_vec3_u32(var_0.b, vec3<u32>(u_input.b, u_input.b, 45430u)) << (reverseBits(vec3<u32>(arg_0, arg_0, 4294967295u)) % vec3<u32>(32u)))));
    let var_3 = var_2.d;
    return reverseBits(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(18235u, var_2.e.b.x))) & _wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(0u, arg_0)), firstTrailingBit(~vec2<u32>(1u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_f32(-1f);
    global0 = array<i32, 20>();
    var var_1 = max(u_input.c, u_input.c);
    var var_2 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, select(24796u, u_input.b, false)), _wgslsmith_mod_u32(u_input.b, u_input.b << (u_input.b % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(51044u, u_input.b), func_1(u_input.b, 1f)), abs(~(~_wgslsmith_clamp_u32(u_input.b, 5929u, 42267u))));
    var var_3 = _wgslsmith_f_op_f32(413f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-915f, -1436f)), -1723f))));
    let var_4 = _wgslsmith_div_f32(-1221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)), -1839f)) * -1571f));
    let var_5 = !vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !(~42677u <= (var_2.x ^ u_input.b)), all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec4<u32>(var_2.x, u_input.b, u_input.b, u_input.b)).a * -179f))));
}

