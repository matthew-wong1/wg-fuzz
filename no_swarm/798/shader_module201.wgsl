struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 18>;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec4<i32>(-10569i, i32(-2147483648), 41823i, 66649i), 1u, vec4<f32>(-634f, -664f, -977f, -521f)), Struct_1(vec4<i32>(28373i, i32(-2147483648), 0i, 21537i), 0u, vec4<f32>(131f, 556f, 1443f, 861f)), -214f, Struct_1(vec4<i32>(20452i, 0i, 18794i, 23928i), 28329u, vec4<f32>(-1334f, -306f, 1003f, 1000f))), Struct_2(Struct_1(vec4<i32>(1i, 24366i, 2147483647i, 2147483647i), 1u, vec4<f32>(524f, -1081f, 146f, -1338f)), Struct_1(vec4<i32>(-1i, -2463i, 2147483647i, 29910i), 57183u, vec4<f32>(-198f, -814f, -145f, 1816f)), -1000f, Struct_1(vec4<i32>(-29806i, -1002i, -1i, -1i), 4294967295u, vec4<f32>(862f, 1089f, -1097f, -733f))), Struct_2(Struct_1(vec4<i32>(-22548i, 0i, 0i, -1i), 42249u, vec4<f32>(159f, 685f, 228f, 778f)), Struct_1(vec4<i32>(3336i, -31809i, i32(-2147483648), 584i), 459u, vec4<f32>(1178f, -616f, 454f, -1131f)), 824f, Struct_1(vec4<i32>(-45244i, 37269i, 7085i, 2147483647i), 6765u, vec4<f32>(-1000f, 332f, -196f, 862f))), Struct_2(Struct_1(vec4<i32>(11431i, 2147483647i, -61156i, -38294i), 1u, vec4<f32>(-2074f, 1000f, 1266f, 468f)), Struct_1(vec4<i32>(0i, 0i, -19616i, 12205i), 0u, vec4<f32>(216f, 2042f, 573f, 303f)), 1455f, Struct_1(vec4<i32>(i32(-2147483648), 15089i, 1i, -53094i), 96656u, vec4<f32>(-1959f, 823f, 1486f, -213f))), Struct_2(Struct_1(vec4<i32>(1i, -1i, 1158i, 15242i), 1u, vec4<f32>(-1531f, -659f, 2098f, 148f)), Struct_1(vec4<i32>(2147483647i, 28737i, i32(-2147483648), 1i), 4294967295u, vec4<f32>(-1141f, 145f, -781f, -1094f)), 1486f, Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, -43958i), 72648u, vec4<f32>(-1485f, -834f, -631f, 1696f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -27254i, 1i, -1i), 1u, vec4<f32>(-947f, -1451f, 1000f, -1883f)), Struct_1(vec4<i32>(-1i, -455i, 2641i, i32(-2147483648)), 33228u, vec4<f32>(1796f, 2667f, 662f, 888f)), 778f, Struct_1(vec4<i32>(-18297i, -79091i, -1i, -1i), 4294967295u, vec4<f32>(-1485f, -280f, -385f, 158f))), Struct_2(Struct_1(vec4<i32>(-13067i, -16464i, 1i, 2147483647i), 0u, vec4<f32>(-1000f, -102f, -1050f, -1252f)), Struct_1(vec4<i32>(9441i, 1i, 28366i, 0i), 4294967295u, vec4<f32>(-800f, 266f, 1506f, -637f)), 996f, Struct_1(vec4<i32>(52784i, 49977i, 2147483647i, 0i), 98862u, vec4<f32>(-1130f, 1821f, 1067f, 246f))), Struct_2(Struct_1(vec4<i32>(1i, -56868i, 39111i, 18671i), 0u, vec4<f32>(-601f, 457f, 1572f, -313f)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, 1899i), 4294967295u, vec4<f32>(-700f, 624f, -1685f, -491f)), -590f, Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), -30938i), 4294967295u, vec4<f32>(142f, -811f, 1538f, 2026f))), Struct_2(Struct_1(vec4<i32>(11992i, 88470i, -1i, 39507i), 22467u, vec4<f32>(-289f, 1995f, -758f, 180f)), Struct_1(vec4<i32>(i32(-2147483648), 45389i, 27478i, 1i), 4294967295u, vec4<f32>(-1780f, 270f, 752f, -379f)), 389f, Struct_1(vec4<i32>(-24336i, 0i, 0i, -1i), 21909u, vec4<f32>(1314f, 1483f, -633f, -499f))), Struct_2(Struct_1(vec4<i32>(-84240i, -4101i, 13801i, -42666i), 1u, vec4<f32>(1425f, -1000f, -236f, 858f)), Struct_1(vec4<i32>(8032i, 0i, -6592i, 2147483647i), 36742u, vec4<f32>(-134f, -1000f, -699f, -2132f)), -149f, Struct_1(vec4<i32>(0i, i32(-2147483648), 1i, -7700i), 0u, vec4<f32>(747f, -1289f, -2129f, 593f))), Struct_2(Struct_1(vec4<i32>(-7976i, 2147483647i, i32(-2147483648), -49821i), 0u, vec4<f32>(-1000f, 2153f, 481f, -1271f)), Struct_1(vec4<i32>(13372i, 4552i, 22668i, 1i), 0u, vec4<f32>(682f, -487f, -439f, -1582f)), 260f, Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, 9486i), 1u, vec4<f32>(159f, -1891f, 656f, 1305f))), Struct_2(Struct_1(vec4<i32>(1i, -36512i, 2147483647i, -13527i), 41811u, vec4<f32>(-140f, 1709f, 1114f, 1237f)), Struct_1(vec4<i32>(29722i, 19008i, 0i, 2147483647i), 43486u, vec4<f32>(592f, -223f, -1000f, -874f)), 174f, Struct_1(vec4<i32>(39853i, -1i, 0i, -1i), 1u, vec4<f32>(-1955f, -1434f, 1529f, 1118f))), Struct_2(Struct_1(vec4<i32>(-29285i, -1i, -11930i, -33795i), 28309u, vec4<f32>(-1108f, -299f, -515f, -1741f)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -25325i), 4294967295u, vec4<f32>(-342f, -1483f, 983f, 1000f)), -203f, Struct_1(vec4<i32>(1i, 11863i, -35333i, 1i), 1u, vec4<f32>(-1325f, -1000f, -476f, 1144f))), Struct_2(Struct_1(vec4<i32>(2147483647i, -70610i, 0i, 0i), 38242u, vec4<f32>(-1174f, 1265f, 470f, -1098f)), Struct_1(vec4<i32>(2147483647i, -6085i, 18858i, -52600i), 0u, vec4<f32>(-1000f, -664f, -1843f, 278f)), 1021f, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -1i), 1u, vec4<f32>(-495f, -1850f, -425f, 298f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -15958i, -1i, i32(-2147483648)), 4294967295u, vec4<f32>(419f, -1350f, -1081f, 437f)), Struct_1(vec4<i32>(35264i, 1238i, 0i, -20090i), 1u, vec4<f32>(-685f, 1000f, 316f, -2152f)), 2231f, Struct_1(vec4<i32>(6618i, -1i, 5720i, -1i), 26663u, vec4<f32>(124f, 1611f, 496f, -1661f))), Struct_2(Struct_1(vec4<i32>(-45863i, -62980i, -24487i, 1i), 12991u, vec4<f32>(-312f, -1000f, 1204f, -1116f)), Struct_1(vec4<i32>(0i, 2147483647i, -1i, 22165i), 0u, vec4<f32>(916f, 450f, -260f, 1102f)), 1245f, Struct_1(vec4<i32>(-1i, 8670i, 21247i, -3125i), 32966u, vec4<f32>(-1000f, -1021f, -260f, 728f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 16993i, i32(-2147483648), -4093i), 88473u, vec4<f32>(1007f, 399f, -1928f, -415f)), Struct_1(vec4<i32>(-1i, -40929i, -1i, 12403i), 1u, vec4<f32>(1145f, 1303f, 285f, 1585f)), -1394f, Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 27445i), 0u, vec4<f32>(933f, -1282f, 1287f, -626f))), Struct_2(Struct_1(vec4<i32>(18185i, 17833i, -40533i, 0i), 28285u, vec4<f32>(-1461f, 805f, -2035f, -1000f)), Struct_1(vec4<i32>(0i, -9416i, -45148i, 1i), 1u, vec4<f32>(-1537f, -123f, 421f, 2219f)), 2186f, Struct_1(vec4<i32>(-1i, 0i, 64223i, -4852i), 1u, vec4<f32>(-248f, -128f, -1645f, -158f))), Struct_2(Struct_1(vec4<i32>(-35671i, 1i, -1i, -1i), 137358u, vec4<f32>(178f, -1000f, 257f, 657f)), Struct_1(vec4<i32>(-1i, 1i, 17243i, -14735i), 1u, vec4<f32>(1000f, -1198f, -108f, -1000f)), 1349f, Struct_1(vec4<i32>(7277i, 0i, i32(-2147483648), 25666i), 286u, vec4<f32>(1000f, -408f, 2017f, 340f))), Struct_2(Struct_1(vec4<i32>(11027i, -1i, 13955i, -35899i), 1u, vec4<f32>(280f, 195f, -462f, -1065f)), Struct_1(vec4<i32>(1i, -14766i, -33289i, 2147483647i), 87017u, vec4<f32>(-920f, -938f, -1365f, -533f)), 328f, Struct_1(vec4<i32>(-1i, 20200i, -42346i, 12264i), 88634u, vec4<f32>(-884f, 1101f, -1463f, -1310f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 11009i, 91613i, 2147483647i), 4294967295u, vec4<f32>(1000f, 591f, 1000f, -437f)), Struct_1(vec4<i32>(15930i, -1i, -1i, 1i), 0u, vec4<f32>(875f, -1559f, -1000f, 1091f)), 571f, Struct_1(vec4<i32>(31950i, -55661i, -19393i, -13856i), 60843u, vec4<f32>(-1311f, -1000f, -1000f, 891f))), Struct_2(Struct_1(vec4<i32>(52311i, 11732i, 0i, i32(-2147483648)), 1u, vec4<f32>(1000f, -999f, -1118f, -608f)), Struct_1(vec4<i32>(-34857i, -52060i, 4570i, 0i), 4294967295u, vec4<f32>(-467f, -976f, -1404f, 273f)), 235f, Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 51110i), 98325u, vec4<f32>(770f, 989f, -1392f, -1854f))), Struct_2(Struct_1(vec4<i32>(0i, 36290i, i32(-2147483648), 1i), 27110u, vec4<f32>(-847f, 738f, 981f, -673f)), Struct_1(vec4<i32>(-13682i, 2147483647i, 33213i, 11454i), 1u, vec4<f32>(1000f, -1393f, -688f, -830f)), 416f, Struct_1(vec4<i32>(i32(-2147483648), 31682i, -1i, 2147483647i), 0u, vec4<f32>(588f, 789f, -1007f, 600f))), Struct_2(Struct_1(vec4<i32>(-4274i, 2147483647i, 1i, 0i), 4294967295u, vec4<f32>(-442f, 186f, -476f, 349f)), Struct_1(vec4<i32>(0i, 39379i, 2147483647i, 349i), 1u, vec4<f32>(709f, -1004f, -185f, 1000f)), 105f, Struct_1(vec4<i32>(1i, 29910i, 0i, 7411i), 1u, vec4<f32>(-1395f, 502f, 780f, 234f))), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -1i, -6259i), 44087u, vec4<f32>(-295f, -1000f, -182f, -910f)), Struct_1(vec4<i32>(-25795i, 2147483647i, 7737i, i32(-2147483648)), 1u, vec4<f32>(256f, -371f, -185f, 299f)), -193f, Struct_1(vec4<i32>(0i, -12247i, i32(-2147483648), 0i), 1u, vec4<f32>(-879f, -1181f, -1000f, -435f))), Struct_2(Struct_1(vec4<i32>(1i, -1i, 2147483647i, 0i), 11356u, vec4<f32>(-319f, 997f, -537f, -1311f)), Struct_1(vec4<i32>(1i, -25561i, -48963i, -12079i), 0u, vec4<f32>(269f, 1000f, -1053f, 879f)), -140f, Struct_1(vec4<i32>(-19571i, 3418i, -19198i, i32(-2147483648)), 30342u, vec4<f32>(100f, 954f, 1000f, -127f))), Struct_2(Struct_1(vec4<i32>(2147483647i, -34004i, i32(-2147483648), 4101i), 1u, vec4<f32>(1254f, -1176f, -692f, -374f)), Struct_1(vec4<i32>(i32(-2147483648), 13709i, 1i, i32(-2147483648)), 83723u, vec4<f32>(198f, -200f, 555f, 341f)), 1225f, Struct_1(vec4<i32>(-8244i, -34601i, i32(-2147483648), -7234i), 1u, vec4<f32>(-1747f, 604f, 1457f, -208f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 54107i, 1i, -15951i), 0u, vec4<f32>(565f, 288f, -1952f, -524f)), Struct_1(vec4<i32>(1i, -12735i, 12673i, -18576i), 104227u, vec4<f32>(-1000f, 1000f, 792f, 1338f)), 2384f, Struct_1(vec4<i32>(905i, 33985i, 2108i, 12678i), 10123u, vec4<f32>(-691f, 598f, 691f, -323f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    return !vec2<bool>(!any(vec4<bool>(false, false, false, true)), false);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(45259u), 28u)];
    let var_1 = !any(select(!(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, true, false, var_0.a.b < 1u)));
    global1 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(47252u, var_0.b.b, 0u)) & (vec3<u32>(4294967295u, 1u, var_0.d.b) << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u)))), abs(max(vec3<u32>(0u, var_0.b.b, var_0.b.b), ~vec3<u32>(global0[_wgslsmith_index_u32(18483u, 26u)], var_0.a.b, 36825u))));
    var var_2 = var_0.d.b;
    let var_3 = select(any(!(!(!vec4<bool>(false, false, arg_0.x, false)))), true, arg_0.x | (!var_1 | (false & !arg_0.x)));
    return global0[_wgslsmith_index_u32(~max(0u, 9227u), 26u)];
}

fn func_1() -> u32 {
    let var_0 = func_3(!select(func_2(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 28u)]), vec2<bool>(true, true), !any(vec4<bool>(true, false, true, false))));
    global3 = array<Struct_2, 28>();
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(var_0, 26u)], _wgslsmith_sub_u32(var_0, var_0), 4294967295u)), firstLeadingBit(~25920u)), max(~vec2<u32>(~1u, _wgslsmith_div_u32(4294967295u, 22175u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 9946u), ~vec2<u32>(var_0, var_0), ~vec2<u32>(var_0, var_0))));
    let var_1 = -640f;
    var var_2 = Struct_1(min(reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, u_input.a, 24786i), vec4<i32>(-2147483647i, 0i, 21499i, -37566i))), vec4<i32>(-u_input.a | -27503i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(26727i, -2147483647i), firstTrailingBit(-35271i)), -17604i & abs(u_input.a), -2147483647i)), 1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -938f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(417f * 727f))), 1f, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1018f * var_1))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, false))))));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<u32>(0u, max(~33786u, global0[_wgslsmith_index_u32(1u, 26u)] >> (~global0[_wgslsmith_index_u32(4294967295u, 26u)] % 32u))));
    var var_1 = ~u_input.a >> (func_1() % 32u);
    let var_2 = ~_wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_clamp_u32(var_0.x, _wgslsmith_add_u32(abs(var_0.x), func_3(vec2<bool>(true, false))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(38782u, var_0.x), 26u)]));
    var var_3 = false;
    let var_4 = ~max(_wgslsmith_mod_u32(18817u ^ var_2, var_0.x) << (abs(18404u) % 32u), max(_wgslsmith_div_u32(var_0.x << (global0[_wgslsmith_index_u32(var_2, 26u)] % 32u), 0u), var_0.x));
    let var_5 = Struct_2(Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 16949i), _wgslsmith_mod_vec4_i32(vec4<i32>(59388i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, -10709i, -50533i, 39143i))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, ~4294967295u, 0u), 14892u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1186f, -242f, -1015f, -1000f), vec4<f32>(1000f, 1000f, -787f, 1450f))))))), Struct_1(reverseBits(vec4<i32>(-1i) * -vec4<i32>(0i, 2147483647i, -2147483647i, 29553i)), ~(~var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(762f, 451f, 328f, -1000f)))))), -1499f, Struct_1(_wgslsmith_add_vec4_i32(firstTrailingBit(abs(vec4<i32>(0i, -2529i, -10948i, 23098i))), vec4<i32>(max(-1i, u_input.a), ~2147483647i, u_input.a, ~(-2147483647i))), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-270f + -694f), _wgslsmith_f_op_f32(abs(-1547f)), _wgslsmith_f_op_f32(f32(-1f) * -1578f), -890f) * vec4<f32>(_wgslsmith_f_op_f32(floor(-1647f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -690f, -1000f))));
    var var_6 = vec4<u32>(~global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~6951u, 26u)], max(var_0.x, var_2))), 26u)], _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, select(var_5.a.b, var_0.x, true), var_0.x, global0[_wgslsmith_index_u32(var_5.d.b, 26u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.x, 26u)], _wgslsmith_mult_u32(80814u, var_5.a.b)), 18u)]), 1u), 1u, reverseBits(~func_3(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), u_input.a, var_5.d.a.x & 1i, _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 26u)], 18u)], abs(vec4<u32>(global0[_wgslsmith_index_u32(var_4, 26u)], 4294967295u, ~var_6.x, ~var_2))));
}

