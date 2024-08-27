struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(759f, -1000f, 861f, -1986f), vec4<f32>(900f, 1458f, 157f, -1020f), vec4<f32>(1461f, 299f, -234f, -324f), vec4<f32>(489f, 1429f, 1000f, -1000f), vec4<f32>(-487f, -1000f, -393f, -1000f), vec4<f32>(-1882f, 562f, 530f, -361f), vec4<f32>(610f, -170f, 1000f, -991f), vec4<f32>(550f, -1478f, 462f, -1125f), vec4<f32>(2386f, 615f, 881f, 675f), vec4<f32>(-690f, -1236f, 1961f, -513f));

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec4<bool>(true, true, true, false), false, true, Struct_4(-40273i, 199f, Struct_3(vec4<bool>(true, true, false, true), vec2<u32>(12021u, 51272u), 8266i, true, i32(-2147483648)), Struct_2(Struct_1(1531i, true, 0u, 0u, vec4<u32>(53036u, 1u, 75658u, 1u)), Struct_1(-1i, true, 6468u, 28012u, vec4<u32>(17382u, 32791u, 96341u, 1u)), vec3<f32>(489f, 387f, -255f), vec4<u32>(99403u, 1u, 4294967295u, 32035u), true), -516f)), Struct_5(vec4<bool>(true, false, true, false), true, true, Struct_4(-32564i, -1749f, Struct_3(vec4<bool>(false, true, true, true), vec2<u32>(1u, 7110u), -7911i, false, 1409i), Struct_2(Struct_1(15581i, true, 1u, 38074u, vec4<u32>(1u, 1u, 10436u, 4294967295u)), Struct_1(-72443i, false, 27077u, 0u, vec4<u32>(1u, 4294967295u, 0u, 66444u)), vec3<f32>(-174f, 101f, -420f), vec4<u32>(44211u, 27947u, 4294967295u, 4294967295u), true), 543f)), Struct_5(vec4<bool>(true, false, false, true), true, true, Struct_4(7133i, 166f, Struct_3(vec4<bool>(true, true, false, true), vec2<u32>(14467u, 4294967295u), 0i, true, -29543i), Struct_2(Struct_1(0i, true, 4294967295u, 4294967295u, vec4<u32>(114u, 79948u, 4294967295u, 65789u)), Struct_1(34776i, false, 29293u, 7675u, vec4<u32>(38879u, 0u, 42124u, 35053u)), vec3<f32>(-697f, 1981f, -349f), vec4<u32>(0u, 7164u, 101293u, 86771u), true), -508f)), Struct_5(vec4<bool>(true, true, false, true), false, true, Struct_4(2481i, -107f, Struct_3(vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 0u), i32(-2147483648), false, 27258i), Struct_2(Struct_1(16831i, false, 28655u, 69606u, vec4<u32>(1u, 1u, 0u, 11262u)), Struct_1(2147483647i, false, 19224u, 0u, vec4<u32>(19701u, 53832u, 60339u, 14515u)), vec3<f32>(385f, 949f, -389f), vec4<u32>(0u, 1u, 36340u, 1u), false), 248f)), Struct_5(vec4<bool>(false, true, false, false), false, true, Struct_4(44983i, -139f, Struct_3(vec4<bool>(true, false, true, false), vec2<u32>(70387u, 1u), i32(-2147483648), false, -1i), Struct_2(Struct_1(i32(-2147483648), true, 0u, 36724u, vec4<u32>(3499u, 54482u, 13050u, 52576u)), Struct_1(38170i, true, 4294967295u, 31767u, vec4<u32>(27563u, 17288u, 1u, 13460u)), vec3<f32>(358f, 382f, -372f), vec4<u32>(65330u, 1u, 25443u, 0u), false), -327f)), Struct_5(vec4<bool>(false, true, true, true), true, false, Struct_4(-16386i, -1906f, Struct_3(vec4<bool>(true, false, false, false), vec2<u32>(35791u, 64804u), i32(-2147483648), true, 1i), Struct_2(Struct_1(2147483647i, false, 48841u, 2775u, vec4<u32>(1u, 4294967295u, 100216u, 59801u)), Struct_1(-25740i, true, 606u, 1u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 55485u)), vec3<f32>(-635f, -1598f, -244f), vec4<u32>(1u, 32618u, 0u, 0u), true), -363f)), Struct_5(vec4<bool>(false, false, false, false), true, false, Struct_4(1i, 1000f, Struct_3(vec4<bool>(false, false, false, false), vec2<u32>(56520u, 47234u), 13869i, true, i32(-2147483648)), Struct_2(Struct_1(1i, true, 15098u, 35133u, vec4<u32>(4294967295u, 4056u, 57756u, 0u)), Struct_1(i32(-2147483648), true, 35492u, 49485u, vec4<u32>(4294967295u, 4294967295u, 57703u, 4294967295u)), vec3<f32>(628f, -2165f, -1349f), vec4<u32>(4294967295u, 7371u, 23646u, 31712u), true), -1544f)), Struct_5(vec4<bool>(true, false, true, false), false, true, Struct_4(1657i, 333f, Struct_3(vec4<bool>(true, false, false, true), vec2<u32>(18269u, 0u), -32645i, true, 833i), Struct_2(Struct_1(-4047i, false, 14163u, 46249u, vec4<u32>(13267u, 0u, 65292u, 16350u)), Struct_1(0i, true, 72162u, 4294967295u, vec4<u32>(30812u, 27624u, 4294967295u, 3631u)), vec3<f32>(-1000f, -252f, 2635f), vec4<u32>(0u, 35853u, 0u, 17306u), true), -1490f)), Struct_5(vec4<bool>(true, true, false, true), true, true, Struct_4(i32(-2147483648), 1012f, Struct_3(vec4<bool>(false, true, true, false), vec2<u32>(72425u, 15133u), 17970i, true, 33468i), Struct_2(Struct_1(2147483647i, false, 4294967295u, 35886u, vec4<u32>(1u, 12201u, 22059u, 0u)), Struct_1(-36102i, true, 24026u, 0u, vec4<u32>(38270u, 4294967295u, 20599u, 10014u)), vec3<f32>(203f, 1000f, 1108f), vec4<u32>(4294967295u, 64213u, 1u, 1u), true), 2011f)), Struct_5(vec4<bool>(false, false, true, false), false, false, Struct_4(0i, -911f, Struct_3(vec4<bool>(false, true, true, true), vec2<u32>(0u, 0u), i32(-2147483648), true, 2147483647i), Struct_2(Struct_1(17224i, true, 6920u, 4294967295u, vec4<u32>(1u, 0u, 4294967295u, 63199u)), Struct_1(i32(-2147483648), false, 0u, 0u, vec4<u32>(4294967295u, 4294967295u, 14584u, 1u)), vec3<f32>(-418f, 1275f, -122f), vec4<u32>(27366u, 1u, 0u, 0u), false), 790f)), Struct_5(vec4<bool>(false, false, true, true), false, false, Struct_4(39727i, 1000f, Struct_3(vec4<bool>(false, false, false, false), vec2<u32>(50677u, 55621u), -16165i, false, 1478i), Struct_2(Struct_1(-1i, false, 78476u, 0u, vec4<u32>(1u, 42146u, 4294967295u, 1u)), Struct_1(2147483647i, true, 4294967295u, 0u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), vec3<f32>(-1279f, -1025f, -1123f), vec4<u32>(41428u, 0u, 18966u, 5572u), false), -1326f)), Struct_5(vec4<bool>(true, false, true, true), false, true, Struct_4(16425i, 1357f, Struct_3(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 9885u), -22179i, false, -1i), Struct_2(Struct_1(-44092i, true, 56213u, 0u, vec4<u32>(1u, 20012u, 31936u, 1u)), Struct_1(1i, false, 1u, 4294967295u, vec4<u32>(14198u, 0u, 53598u, 34400u)), vec3<f32>(-1850f, -962f, 142f), vec4<u32>(109429u, 1u, 28907u, 4294967295u), true), 2088f)), Struct_5(vec4<bool>(false, true, true, true), true, false, Struct_4(2147483647i, 1000f, Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(53677u, 1u), 1i, false, -1i), Struct_2(Struct_1(0i, true, 4294967295u, 58975u, vec4<u32>(1u, 1u, 0u, 10932u)), Struct_1(i32(-2147483648), false, 13403u, 2778u, vec4<u32>(1u, 35421u, 47462u, 4294967295u)), vec3<f32>(-471f, -288f, 684f), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), false), 500f)), Struct_5(vec4<bool>(true, false, false, true), false, true, Struct_4(-44247i, -361f, Struct_3(vec4<bool>(false, true, true, false), vec2<u32>(30501u, 0u), 48350i, false, 52359i), Struct_2(Struct_1(-1i, false, 47004u, 1u, vec4<u32>(0u, 31058u, 3913u, 4u)), Struct_1(1i, false, 56576u, 4294967295u, vec4<u32>(1u, 79111u, 0u, 0u)), vec3<f32>(430f, 304f, -1000f), vec4<u32>(86333u, 1168u, 1u, 4294967295u), false), 766f)), Struct_5(vec4<bool>(true, true, true, true), true, false, Struct_4(i32(-2147483648), -759f, Struct_3(vec4<bool>(false, true, true, true), vec2<u32>(86510u, 105885u), -1i, true, 30242i), Struct_2(Struct_1(1i, false, 31533u, 4294967295u, vec4<u32>(60749u, 1u, 12666u, 43404u)), Struct_1(-7086i, true, 0u, 4294967295u, vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), vec3<f32>(2865f, -313f, 825f), vec4<u32>(540u, 7662u, 19148u, 38045u), true), 1992f)), Struct_5(vec4<bool>(true, false, true, false), true, false, Struct_4(0i, -560f, Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(24087u, 8135u), -25956i, true, 36291i), Struct_2(Struct_1(19962i, true, 1u, 4294967295u, vec4<u32>(1u, 19616u, 0u, 36792u)), Struct_1(-56446i, false, 34137u, 1u, vec4<u32>(52140u, 1u, 6934u, 32634u)), vec3<f32>(592f, -708f, -1342f), vec4<u32>(4294967295u, 1u, 1u, 5970u), true), -1000f)), Struct_5(vec4<bool>(true, false, true, true), false, true, Struct_4(-41089i, -1435f, Struct_3(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 1u), i32(-2147483648), false, -23109i), Struct_2(Struct_1(-1i, true, 4294967295u, 9043u, vec4<u32>(22135u, 5655u, 4294967295u, 4294967295u)), Struct_1(-1i, false, 4294967295u, 20468u, vec4<u32>(10880u, 38u, 1u, 64663u)), vec3<f32>(-2228f, 333f, 459f), vec4<u32>(76164u, 41850u, 0u, 7539u), true), -755f)), Struct_5(vec4<bool>(true, true, true, false), true, true, Struct_4(-1i, 1705f, Struct_3(vec4<bool>(true, false, true, false), vec2<u32>(0u, 19779u), -61860i, false, -2182i), Struct_2(Struct_1(19448i, false, 0u, 51192u, vec4<u32>(0u, 12560u, 4294967295u, 1u)), Struct_1(-27056i, true, 1u, 41517u, vec4<u32>(18566u, 15305u, 20879u, 4294967295u)), vec3<f32>(-709f, -950f, 309f), vec4<u32>(23478u, 0u, 82470u, 4294967295u), false), 1000f)), Struct_5(vec4<bool>(false, false, true, true), false, false, Struct_4(18967i, 164f, Struct_3(vec4<bool>(false, true, false, true), vec2<u32>(58944u, 43805u), 1i, true, -36879i), Struct_2(Struct_1(-12042i, false, 91070u, 4294967295u, vec4<u32>(1228u, 1u, 48070u, 4294967295u)), Struct_1(5173i, true, 16545u, 98732u, vec4<u32>(1u, 0u, 27099u, 0u)), vec3<f32>(-949f, 550f, -601f), vec4<u32>(1u, 12183u, 46767u, 4294967295u), false), 959f)), Struct_5(vec4<bool>(true, false, false, false), false, true, Struct_4(-15868i, -382f, Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(47249u, 34688u), 2147483647i, true, -56286i), Struct_2(Struct_1(2147483647i, true, 52448u, 26447u, vec4<u32>(0u, 1u, 51104u, 2784u)), Struct_1(16788i, true, 36243u, 1u, vec4<u32>(54115u, 1u, 4294967295u, 34029u)), vec3<f32>(-935f, 1474f, 439f), vec4<u32>(20234u, 1u, 0u, 1u), true), -107f)), Struct_5(vec4<bool>(false, false, false, true), true, false, Struct_4(2147483647i, 889f, Struct_3(vec4<bool>(true, false, true, true), vec2<u32>(0u, 0u), 8257i, false, 0i), Struct_2(Struct_1(0i, true, 0u, 36540u, vec4<u32>(0u, 1u, 0u, 0u)), Struct_1(-1i, true, 4294967295u, 73399u, vec4<u32>(1u, 8039u, 61745u, 4294967295u)), vec3<f32>(675f, -162f, 657f), vec4<u32>(102648u, 36463u, 10561u, 24439u), true), 1278f)), Struct_5(vec4<bool>(false, false, true, true), true, true, Struct_4(-28624i, 251f, Struct_3(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 1426u), -1i, true, 0i), Struct_2(Struct_1(2147483647i, false, 61322u, 28481u, vec4<u32>(21443u, 34116u, 49016u, 8857u)), Struct_1(1i, true, 6796u, 1u, vec4<u32>(4294967295u, 18145u, 17799u, 4294967295u)), vec3<f32>(-1030f, 1568f, -1568f), vec4<u32>(22080u, 4294967295u, 45587u, 6566u), false), -1326f)));

var<private> global2: u32 = 1u;

var<private> global3: array<bool, 27> = array<bool, 27>(false, true, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, true, true, false, true, true, true, true, true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    global0 = array<vec4<f32>, 10>();
    let var_0 = Struct_2(Struct_1(-2147483647i, ~(~u_input.b) == u_input.b, u_input.b, firstLeadingBit(~(u_input.b | u_input.b)), select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, 15380u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 115162u)), ~vec4<u32>(0u, u_input.b, u_input.b, 1u)), ~vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<bool>(arg_0.x || true, !arg_0.x, all(vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 27u)], false)), false))), Struct_1(_wgslsmith_div_i32(countOneBits(-49253i >> (u_input.b % 32u)), 1i & u_input.a.x), arg_0.x, 13512u, u_input.b, countOneBits(~(~vec4<u32>(1u, 4294967295u, u_input.b, u_input.b)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), min(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(39197u, u_input.b), vec2<u32>(u_input.b, 37976u) | vec2<u32>(4294967295u, u_input.b)), countOneBits(u_input.b) & countOneBits(35540u), max(21071u, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(50289u, u_input.b), vec2<u32>(1u, 0u))), reverseBits(_wgslsmith_sub_vec4_u32(min(vec4<u32>(33515u, u_input.b, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), vec4<u32>(25473u, 4294967295u, 97127u, 1u)))), true & !select(true, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(u_input.b, 27u)])), arg_0.x));
    global2 = ~_wgslsmith_div_u32(u_input.b << (_wgslsmith_dot_vec3_u32(select(var_0.a.e.wzy, vec3<u32>(14247u, 2977u, var_0.b.d), global3[_wgslsmith_index_u32(4294967295u, 27u)]), var_0.b.e.yyw & vec3<u32>(var_0.a.d, var_0.d.x, u_input.b)) % 32u), 16278u);
    var var_1 = vec3<u32>(1u, 4294967295u, 43050u);
    let var_2 = true;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.c.x))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_u32(select(~arg_1.zy, max(arg_1.yz, ~vec2<u32>(0u, arg_0)), !vec2<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(arg_2, 27u)], global3[_wgslsmith_index_u32(arg_2, 27u)], global3[_wgslsmith_index_u32(arg_2, 27u)])), global3[_wgslsmith_index_u32(1u, 27u)] | true)), ~arg_1.xz, ~arg_1.xx);
    global3 = array<bool, 27>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1559f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f + 270f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-764f)))));
    global0 = array<vec4<f32>, 10>();
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 27u)], true), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f * -259f))), true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(-1440f * 165f)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f - -1469f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(468f, 464f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1829f)))))));
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<i32>(u_input.a.x, ~firstTrailingBit(~2147483647i), -1i, _wgslsmith_div_i32(u_input.a.x, ~min(u_input.a.x, -35794i))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(23026u, 12543u ^ u_input.b, select(0u, u_input.b, arg_0), ~u_input.b), ~(vec4<u32>(62749u, 1u, u_input.b, 9377u) ^ vec4<u32>(25452u, u_input.b, u_input.b, 1u))) % vec4<u32>(32u));
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 22u)];
    let var_2 = u_input.a.yy;
    global2 = 7799u;
    var var_3 = global3[_wgslsmith_index_u32(u_input.b & ~(~(~var_1.d.c.b.x)), 27u)] & true;
    return Struct_1(countOneBits(-2147483647i), var_1.a.x, ~(~33663u), 15609u, countOneBits(vec4<u32>(_wgslsmith_clamp_u32(1u, var_1.d.c.b.x, u_input.b) ^ (var_1.d.d.d.x ^ 20076u), abs(u_input.b), 12480u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(9864u, u_input.b, 2548u), min(44560u, 0u)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    global2 = abs(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(13623u, 16682u)))));
    let var_0 = !global3[_wgslsmith_index_u32(u_input.b, 27u)];
    let var_1 = u_input.a.x;
    let var_2 = func_4(func_2(~(~abs(u_input.b)), vec3<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, 1u), u_input.b, 4294967295u), ~69694u));
    var var_3 = -2147483647i;
    return 1u;
}

fn func_5(arg_0: vec3<u32>) -> f32 {
    let var_0 = func_4(u_input.a.x > _wgslsmith_mod_i32(u_input.a.x, 0i));
    global3 = array<bool, 27>();
    global2 = arg_0.x;
    let var_1 = global1[_wgslsmith_index_u32(~4294967295u, 22u)];
    let var_2 = Struct_5(select(select(select(var_1.d.c.a, select(var_1.d.c.a, vec4<bool>(var_1.c, true, true, global3[_wgslsmith_index_u32(54142u, 27u)]), var_1.a), var_1.d.c.a), !var_1.d.c.a, all(vec4<bool>(var_0.b, false, false, true)) && !var_1.c), select(var_1.d.c.a, vec4<bool>(var_0.a < u_input.a.x, select(false, var_1.c, var_1.c), !var_1.a.x, any(var_1.a.xy)), _wgslsmith_div_f32(1509f, 1099f) <= _wgslsmith_f_op_f32(min(var_1.d.b, var_1.d.b))), vec4<bool>(var_1.b, var_0.a <= abs(var_0.a), global3[_wgslsmith_index_u32(u_input.b, 27u)], var_1.c)), all(vec3<bool>(!(false & var_0.b), false, 30088u < _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.d, 0u), var_0.e.zxw))), global3[_wgslsmith_index_u32(arg_0.x, 27u)], Struct_4(-1i, var_1.d.b, var_1.d.c, var_1.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d.e - var_1.d.b), _wgslsmith_f_op_f32(round(-663f)), true)))));
    return var_2.d.d.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_5(vec3<u32>(~(1u >> (u_input.b % 32u)), func_1(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(49236u, 27u)], global3[_wgslsmith_index_u32(97075u, 27u)]), -2649f) & ~4294967295u, u_input.b))), -1038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f - -2079f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-342f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-581f)), -569f, false)))));
    global3 = array<bool, 27>();
    global1 = array<Struct_5, 22>();
    var var_2 = -vec4<i32>(-24207i, _wgslsmith_add_i32(-2147483647i, 2147483647i), _wgslsmith_sub_i32(var_0, _wgslsmith_mult_i32(abs(var_0), -var_0)), u_input.a.x);
    let var_3 = Struct_3(vec4<bool>(!(!(var_1.x >= var_1.x)), !global3[_wgslsmith_index_u32(u_input.b, 27u)], true, -1i > -u_input.a.x), ~vec2<u32>(1u, u_input.b), firstLeadingBit(-((var_0 >> (86578u % 32u)) << (8684u % 32u))), global3[_wgslsmith_index_u32(4294967295u, 27u)], var_0 << (func_4(true).e.x % 32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(~var_3.b.x, 10u)])) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, -830f, 232f) * var_1.wzz))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 932f, var_1.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, var_4.x), var_1.xyw))))), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2093f, -209f, var_1.x, -2874f)) + _wgslsmith_f_op_vec4_f32(-var_1)) * vec4<f32>(_wgslsmith_f_op_f32(var_4.x - var_4.x), _wgslsmith_f_op_f32(-410f - -360f), 1152f, 109f))));
}

