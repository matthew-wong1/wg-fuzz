struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<vec4<f32>, 11>;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1057f, -1189f, -501f, 1657f), vec4<f32>(-1559f, -330f, 418f, -1226f), vec4<f32>(-356f, -1000f, 1000f, 1367f), vec4<f32>(1000f, 365f, 1000f, 458f), vec4<f32>(513f, -2271f, -531f, 258f), vec4<f32>(-1608f, 711f, 464f, -666f), vec4<f32>(109f, 1298f, 856f, 195f), vec4<f32>(-176f, -133f, -724f, 446f), vec4<f32>(985f, 403f, -385f, -416f), vec4<f32>(-1325f, 487f, -1553f, -232f), vec4<f32>(737f, 1123f, 967f, -1000f), vec4<f32>(154f, -1000f, -1431f, -2664f), vec4<f32>(1794f, 855f, 802f, 650f), vec4<f32>(1013f, -2307f, -124f, 1458f), vec4<f32>(-780f, 169f, 1195f, 114f), vec4<f32>(-1673f, 760f, 1073f, 609f), vec4<f32>(-592f, -2191f, 653f, 182f), vec4<f32>(656f, 656f, 903f, 897f), vec4<f32>(-940f, -1110f, -3011f, -798f), vec4<f32>(-1809f, 201f, -454f, -1391f), vec4<f32>(1082f, 1698f, 603f, -746f), vec4<f32>(1816f, -200f, -168f, 1223f), vec4<f32>(-2523f, -1000f, -2220f, 1000f), vec4<f32>(1252f, 559f, -301f, 100f), vec4<f32>(-1228f, -407f, -1548f, 645f));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(6137u, 959f, vec2<f32>(-279f, -1380f), vec4<u32>(28949u, 63428u, 110519u, 19144u), 38527u), Struct_1(4294967295u, -1000f, vec2<f32>(-1978f, -1288f), vec4<u32>(4294967295u, 39542u, 41198u, 36547u), 4294967295u), Struct_1(39897u, 1064f, vec2<f32>(514f, 1088f), vec4<u32>(1u, 0u, 1u, 0u), 1863u), vec2<u32>(60036u, 48945u)), Struct_2(Struct_1(43520u, -1469f, vec2<f32>(-241f, -2247f), vec4<u32>(16830u, 1u, 17784u, 36492u), 29589u), Struct_1(29844u, 1443f, vec2<f32>(-609f, 582f), vec4<u32>(1u, 4294967295u, 0u, 13663u), 0u), Struct_1(4294967295u, 681f, vec2<f32>(-406f, 303f), vec4<u32>(110763u, 4294967295u, 1u, 1u), 9581u), vec2<u32>(0u, 0u)), Struct_2(Struct_1(0u, -114f, vec2<f32>(581f, 1091f), vec4<u32>(1u, 7002u, 42433u, 1u), 0u), Struct_1(19375u, -268f, vec2<f32>(-1068f, -2315f), vec4<u32>(4294967295u, 1u, 1u, 0u), 4294967295u), Struct_1(4294967295u, -129f, vec2<f32>(841f, 159f), vec4<u32>(23396u, 95877u, 6083u, 0u), 97540u), vec2<u32>(69359u, 4294967295u)), Struct_2(Struct_1(47805u, -163f, vec2<f32>(954f, -860f), vec4<u32>(4294967295u, 1u, 4294967295u, 54003u), 66683u), Struct_1(4294967295u, -1154f, vec2<f32>(-993f, -202f), vec4<u32>(81934u, 64597u, 8853u, 4294967295u), 71303u), Struct_1(6741u, 737f, vec2<f32>(1266f, 249f), vec4<u32>(9168u, 1u, 4294967295u, 1u), 0u), vec2<u32>(50774u, 1720u)), Struct_2(Struct_1(16009u, 1248f, vec2<f32>(-1245f, -299f), vec4<u32>(21546u, 4294967295u, 27827u, 24183u), 30369u), Struct_1(0u, 1000f, vec2<f32>(1831f, -358f), vec4<u32>(95043u, 0u, 0u, 25136u), 1u), Struct_1(53730u, 229f, vec2<f32>(1430f, -383f), vec4<u32>(37280u, 1u, 4294967295u, 13460u), 64313u), vec2<u32>(25559u, 1u)), Struct_2(Struct_1(31250u, -1184f, vec2<f32>(337f, 2488f), vec4<u32>(43773u, 1u, 0u, 57245u), 1u), Struct_1(1u, 418f, vec2<f32>(1009f, 464f), vec4<u32>(4294967295u, 8922u, 56183u, 76263u), 1u), Struct_1(4294967295u, -395f, vec2<f32>(328f, -1100f), vec4<u32>(65059u, 12682u, 26897u, 18021u), 0u), vec2<u32>(4294967295u, 52663u)), Struct_2(Struct_1(30841u, -362f, vec2<f32>(-758f, -1755f), vec4<u32>(4294967295u, 28479u, 29290u, 0u), 50672u), Struct_1(68358u, -244f, vec2<f32>(1564f, 967f), vec4<u32>(0u, 0u, 7555u, 1u), 0u), Struct_1(7674u, -802f, vec2<f32>(459f, -1865f), vec4<u32>(24408u, 41891u, 4294967295u, 0u), 4294967295u), vec2<u32>(54015u, 5995u)), Struct_2(Struct_1(1u, -144f, vec2<f32>(-1000f, 702f), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), 1u), Struct_1(4294967295u, 595f, vec2<f32>(419f, 512f), vec4<u32>(70292u, 15130u, 0u, 0u), 60572u), Struct_1(1u, -207f, vec2<f32>(-339f, -1640f), vec4<u32>(0u, 4294967295u, 9764u, 4294967295u), 56369u), vec2<u32>(13841u, 45165u)), Struct_2(Struct_1(37170u, -594f, vec2<f32>(-418f, 317f), vec4<u32>(59588u, 0u, 4294967295u, 16732u), 4294967295u), Struct_1(48066u, 2178f, vec2<f32>(-677f, 1766f), vec4<u32>(27487u, 3971u, 1u, 1u), 1u), Struct_1(47050u, -1002f, vec2<f32>(810f, -336f), vec4<u32>(0u, 47247u, 0u, 13038u), 41092u), vec2<u32>(33817u, 4294967295u)), Struct_2(Struct_1(1u, 2242f, vec2<f32>(-1000f, 1000f), vec4<u32>(1u, 1u, 33007u, 41196u), 44774u), Struct_1(0u, -1135f, vec2<f32>(677f, 670f), vec4<u32>(15795u, 36419u, 4294967295u, 69213u), 77170u), Struct_1(0u, 953f, vec2<f32>(461f, -661f), vec4<u32>(4294967295u, 1u, 61123u, 16835u), 1u), vec2<u32>(18920u, 4294967295u)), Struct_2(Struct_1(0u, -336f, vec2<f32>(863f, 441f), vec4<u32>(40602u, 29109u, 1u, 36034u), 24493u), Struct_1(1u, 726f, vec2<f32>(470f, -439f), vec4<u32>(20421u, 146965u, 27519u, 101158u), 0u), Struct_1(0u, 221f, vec2<f32>(848f, -623f), vec4<u32>(45691u, 0u, 53131u, 17048u), 0u), vec2<u32>(0u, 12972u)), Struct_2(Struct_1(17382u, -1000f, vec2<f32>(560f, 666f), vec4<u32>(21921u, 4294967295u, 1u, 4294967295u), 1u), Struct_1(0u, 901f, vec2<f32>(-2556f, -1154f), vec4<u32>(7011u, 0u, 53465u, 4294967295u), 4294967295u), Struct_1(4294967295u, 2749f, vec2<f32>(1938f, 660f), vec4<u32>(0u, 40613u, 0u, 57884u), 4294967295u), vec2<u32>(21104u, 20949u)), Struct_2(Struct_1(23732u, 1822f, vec2<f32>(216f, 1185f), vec4<u32>(21262u, 28035u, 0u, 1415u), 43839u), Struct_1(4294967295u, -345f, vec2<f32>(1867f, 137f), vec4<u32>(76183u, 4294967295u, 4294967295u, 1092u), 1u), Struct_1(0u, -404f, vec2<f32>(300f, -731f), vec4<u32>(4294967295u, 50490u, 86143u, 52894u), 41301u), vec2<u32>(44324u, 2333u)), Struct_2(Struct_1(27222u, -1387f, vec2<f32>(1000f, -954f), vec4<u32>(46392u, 44853u, 67230u, 1097u), 37545u), Struct_1(0u, -195f, vec2<f32>(398f, -1302f), vec4<u32>(0u, 0u, 1u, 103240u), 10432u), Struct_1(4039u, 480f, vec2<f32>(-392f, -285f), vec4<u32>(1u, 24564u, 75885u, 163474u), 1u), vec2<u32>(0u, 1u)), Struct_2(Struct_1(0u, -215f, vec2<f32>(204f, 983f), vec4<u32>(0u, 0u, 0u, 1u), 0u), Struct_1(1u, -384f, vec2<f32>(-573f, 376f), vec4<u32>(4294967295u, 49651u, 0u, 90896u), 38040u), Struct_1(33438u, 1277f, vec2<f32>(-404f, 450f), vec4<u32>(0u, 1u, 1u, 104438u), 9631u), vec2<u32>(5352u, 29862u)), Struct_2(Struct_1(1u, -1905f, vec2<f32>(-1916f, -756f), vec4<u32>(3986u, 60382u, 8718u, 0u), 101501u), Struct_1(1u, 502f, vec2<f32>(448f, 1000f), vec4<u32>(1u, 25843u, 24431u, 65969u), 20963u), Struct_1(142842u, 462f, vec2<f32>(-1000f, 242f), vec4<u32>(0u, 4294967295u, 4294967295u, 35835u), 1u), vec2<u32>(4294967295u, 52127u)), Struct_2(Struct_1(708u, -1735f, vec2<f32>(-555f, 119f), vec4<u32>(1u, 17110u, 11626u, 11887u), 0u), Struct_1(4294967295u, -482f, vec2<f32>(-1299f, 366f), vec4<u32>(1u, 0u, 0u, 6928u), 1u), Struct_1(23699u, -201f, vec2<f32>(818f, -1191f), vec4<u32>(4294967295u, 70801u, 15366u, 59298u), 100437u), vec2<u32>(0u, 57368u)), Struct_2(Struct_1(9853u, 506f, vec2<f32>(-601f, 1188f), vec4<u32>(0u, 4294967295u, 1u, 55576u), 16381u), Struct_1(4294967295u, -339f, vec2<f32>(-1410f, -546f), vec4<u32>(0u, 0u, 29651u, 32961u), 23308u), Struct_1(0u, -631f, vec2<f32>(-143f, -718f), vec4<u32>(22217u, 4294967295u, 4294967295u, 1u), 53159u), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(10592u, 2039f, vec2<f32>(2751f, -194f), vec4<u32>(4294967295u, 46498u, 76701u, 1u), 4667u), Struct_1(4294967295u, 897f, vec2<f32>(-1802f, -741f), vec4<u32>(0u, 1u, 1u, 44462u), 1225u), Struct_1(21953u, 1510f, vec2<f32>(596f, -251f), vec4<u32>(127168u, 1u, 47212u, 0u), 1494u), vec2<u32>(4294967295u, 4898u)), Struct_2(Struct_1(1u, -770f, vec2<f32>(-456f, -992f), vec4<u32>(26199u, 35000u, 17047u, 58214u), 62373u), Struct_1(13813u, -521f, vec2<f32>(962f, -2976f), vec4<u32>(22904u, 20908u, 0u, 59521u), 26356u), Struct_1(52367u, 133f, vec2<f32>(161f, -2376f), vec4<u32>(1u, 57997u, 6513u, 27000u), 11272u), vec2<u32>(19783u, 9041u)), Struct_2(Struct_1(24526u, 1154f, vec2<f32>(414f, 1698f), vec4<u32>(1u, 1u, 1u, 0u), 4294967295u), Struct_1(40155u, 113f, vec2<f32>(-484f, -1745f), vec4<u32>(4294967295u, 4294967295u, 1u, 2832u), 85054u), Struct_1(1u, -324f, vec2<f32>(230f, -733f), vec4<u32>(1u, 32929u, 23415u, 0u), 4294967295u), vec2<u32>(1u, 57307u)), Struct_2(Struct_1(40224u, 1000f, vec2<f32>(-367f, -590f), vec4<u32>(4294967295u, 7703u, 4294967295u, 0u), 0u), Struct_1(50712u, -1000f, vec2<f32>(-247f, 1346f), vec4<u32>(0u, 1u, 0u, 0u), 1u), Struct_1(0u, 211f, vec2<f32>(-1981f, 1827f), vec4<u32>(4294967295u, 4294967295u, 63862u, 6504u), 69505u), vec2<u32>(36998u, 68935u)), Struct_2(Struct_1(1u, 176f, vec2<f32>(-410f, -658f), vec4<u32>(1069u, 1u, 4294967295u, 0u), 1u), Struct_1(55201u, 637f, vec2<f32>(-533f, -1000f), vec4<u32>(3485u, 0u, 36548u, 46169u), 0u), Struct_1(0u, 1117f, vec2<f32>(135f, -737f), vec4<u32>(0u, 25658u, 29386u, 4294967295u), 4294967295u), vec2<u32>(39984u, 1u)), Struct_2(Struct_1(1u, 1142f, vec2<f32>(-116f, -613f), vec4<u32>(1u, 1u, 1u, 1u), 4294967295u), Struct_1(50398u, 173f, vec2<f32>(-279f, -244f), vec4<u32>(786u, 12712u, 0u, 1u), 4671u), Struct_1(1u, 1209f, vec2<f32>(-618f, -646f), vec4<u32>(70826u, 41564u, 88992u, 60657u), 43858u), vec2<u32>(3159u, 27071u)), Struct_2(Struct_1(1u, 266f, vec2<f32>(-217f, 1845f), vec4<u32>(21746u, 145711u, 0u, 4294967295u), 4294967295u), Struct_1(1u, 1000f, vec2<f32>(254f, -209f), vec4<u32>(54264u, 19241u, 0u, 1u), 69922u), Struct_1(3637u, -668f, vec2<f32>(401f, 1039f), vec4<u32>(43903u, 0u, 3677u, 67608u), 4294967295u), vec2<u32>(40204u, 28197u)), Struct_2(Struct_1(1u, 1178f, vec2<f32>(1000f, 461f), vec4<u32>(2606u, 4294967295u, 7403u, 1u), 1u), Struct_1(1350u, -1835f, vec2<f32>(882f, 1335f), vec4<u32>(41941u, 9191u, 43114u, 17906u), 37739u), Struct_1(4294967295u, -253f, vec2<f32>(864f, -334f), vec4<u32>(30494u, 0u, 4294967295u, 4294967295u), 4294967295u), vec2<u32>(1u, 0u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<u32> {
    return ~(vec4<u32>(~max(1790u, 35178u), ~(global0[_wgslsmith_index_u32(24297u, 23u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3510u, 23u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], _wgslsmith_mult_u32(12229u, global0[_wgslsmith_index_u32(11168u, 23u)] & 0u)) | _wgslsmith_div_vec4_u32(abs(abs(vec4<u32>(1u, 49502u, 17490u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70840u, 23u)], 23u)]))), ~(vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], 22951u) << (vec4<u32>(46153u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]) % vec4<u32>(32u)))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<u32>(~(~1u), 1u);
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(0u, 18776u, 0u, 0u))), func_3()), vec4<u32>(60823u, ~(~(~var_0.x)), 1u, global0[_wgslsmith_index_u32(reverseBits(31303u) | _wgslsmith_clamp_u32(13156u, var_0.x, 1u), 23u)] & func_3().x));
    var var_2 = abs(_wgslsmith_sub_u32(~0u, func_3().x));
    let var_3 = firstLeadingBit(var_1.yxz);
    var_2 = 73563u;
    return Struct_2(Struct_1(func_3().x << (43097u % 32u), -1387f, vec2<f32>(-1808f, -203f), var_1, func_3().x), Struct_1(~0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(208f))) * 1280f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, 485f)), -609f), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), any(vec4<bool>(true, true, true, true))))), vec4<u32>(42943u, ~var_0.x, 1981u, ~1u), 1957u), Struct_1(select(~(~var_3.x), min(_wgslsmith_sub_u32(35606u, var_1.x), 23923u), select(true, false, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -239f))), vec2<f32>(_wgslsmith_f_op_f32(393f - -346f), 1490f), ~var_1, 30004u), ~(~(var_1.zx | select(vec2<u32>(4294967295u, var_3.x), vec2<u32>(var_1.x, 15825u), false))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global3 = arg_2.b.d.x & _wgslsmith_div_u32(arg_0.d.x, 47074u);
    let var_0 = arg_1.c.x;
    var var_1 = func_2();
    global3 = _wgslsmith_sub_u32(arg_0.d.x, 25535u);
    let var_2 = ~(~(arg_1.d ^ countOneBits(vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.b.a, 0u))));
    return 12305u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    global4 = array<Struct_2, 26>();
    global0 = array<u32, 23>();
    var var_0 = abs(arg_0.d.zw);
    let var_1 = Struct_2(arg_0, func_2().b, func_2().a, abs(vec2<u32>(0u, ~(arg_0.e | arg_2.c.e))));
    global0 = array<u32, 23>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 26>();
    var var_0 = -47615i;
    var var_1 = !select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(false, true, true));
    let var_2 = func_4(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(func_1(Struct_2(Struct_1(1u, -929f, vec2<f32>(1137f, 709f), vec4<u32>(global0[_wgslsmith_index_u32(7191u, 23u)], 4294967295u, global0[_wgslsmith_index_u32(26481u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29701u, 23u)], 23u)], 23u)], 23u)], 23u)]), global0[_wgslsmith_index_u32(38633u, 23u)]), Struct_1(84229u, 1335f, vec2<f32>(-1000f, 840f), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47401u, 23u)], 23u)], 0u, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), global0[_wgslsmith_index_u32(7536u, 23u)]), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 1525f, vec2<f32>(1645f, -1333f), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42860u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38740u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90854u, 23u)], 23u)], 23u)]), 0u), vec2<u32>(global0[_wgslsmith_index_u32(67360u, 23u)], 2986u)), Struct_1(41148u, 749f, vec2<f32>(-147f, 1219f), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68750u, 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 2975u, global0[_wgslsmith_index_u32(1u, 23u)]), global0[_wgslsmith_index_u32(32370u, 23u)]), global4[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)]), abs(4294967295u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)] & 855u, 23u)], 23u)]), 23u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1763f + -2239f) * -1465f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -227f), vec2<f32>(314f, 630f)) - vec2<f32>(337f, 659f))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(23932u, 119804u, global0[_wgslsmith_index_u32(62776u, 23u)], 90262u), vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40646u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8259u, 23u)], 23u)], 23u)]), true), countOneBits(vec4<u32>(10013u, 0u, 1u, global0[_wgslsmith_index_u32(0u, 23u)]))), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], 34056u)), firstLeadingBit(~(global0[_wgslsmith_index_u32(50017u, 23u)] & 4294967295u))), vec2<i32>(u_input.c.x, u_input.b), func_2());
    let var_3 = Struct_1(var_2.d.x, -1489f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.x, var_2.c.x), var_2.c))), var_2.c))), var_2.d, 4294967295u);
    var var_4 = Struct_2(func_2().b, Struct_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 2553u, firstLeadingBit(64906u)), 0u), 385f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_2.c, var_3.c, vec2<bool>(var_1.x, var_1.x))), vec2<f32>(var_3.c.x, 720f))) * var_3.c), countOneBits(var_2.d), var_2.e), func_2().c, firstTrailingBit(vec2<u32>(~global0[_wgslsmith_index_u32(~var_3.a, 23u)], var_2.d.x)));
    var var_5 = var_4.c;
    var var_6 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(func_4(var_4.a, u_input.a.zz ^ u_input.a.yy, global4[_wgslsmith_index_u32(func_1(global4[_wgslsmith_index_u32(86297u, 26u)], Struct_1(10346u, var_6.c.x, vec2<f32>(795f, var_3.c.x), vec4<u32>(10385u, 22753u, 95214u, global0[_wgslsmith_index_u32(0u, 23u)]), 4294967295u), Struct_2(var_2, var_2, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 23u)], var_5.c.x, vec2<f32>(var_6.b, -771f), vec4<u32>(10843u, var_5.e, var_6.e, var_4.a.a), var_4.a.a), var_4.d)), 26u)]), u_input.c.yz, Struct_2(func_4(var_2, vec2<i32>(6713i, 21030i), Struct_2(Struct_1(var_2.a, -341f, var_5.c, vec4<u32>(4656u, var_3.d.x, 37997u, var_6.d.x), var_5.e), var_4.c, Struct_1(var_5.e, 1000f, var_6.c, var_6.d, var_5.e), vec2<u32>(4294967295u, var_2.e))), func_2().c, var_3, vec2<u32>(var_5.d.x, 49720u))).d.yxw, -abs(vec4<i32>(u_input.b, ~1i, u_input.b, ~1i)));
}

