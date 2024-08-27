struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(3915u, 1u, 0u, 15568u);

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<u32>(0u, 4294967295u, 35838u), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(1i, 2147483647i, -95890i, -22129i), vec3<bool>(false, false, true), Struct_1(vec2<i32>(18122i, -1i), 725f, vec3<i32>(-16186i, -117408i, -5027i), 64963u, vec2<f32>(1104f, -1893f)), Struct_1(vec2<i32>(11305i, 2147483647i), -752f, vec3<i32>(-15947i, -12449i, -38713i), 1u, vec2<f32>(-496f, 600f))), Struct_2(vec4<bool>(true, true, false, false), vec4<i32>(i32(-2147483648), 55818i, -1i, -73262i), vec3<bool>(false, true, true), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 991f, vec3<i32>(0i, 26810i, 2147483647i), 4294967295u, vec2<f32>(1822f, -2118f)), Struct_1(vec2<i32>(-38376i, 0i), 416f, vec3<i32>(i32(-2147483648), 10162i, 32927i), 62637u, vec2<f32>(148f, 972f)))), Struct_3(vec3<u32>(0u, 1u, 29763u), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(-29726i, i32(-2147483648), 35326i, 1i), vec3<bool>(true, false, false), Struct_1(vec2<i32>(13457i, 62653i), -221f, vec3<i32>(-73024i, -9610i, -29110i), 0u, vec2<f32>(1017f, 1631f)), Struct_1(vec2<i32>(33376i, 2147483647i), -1000f, vec3<i32>(11408i, i32(-2147483648), 0i), 1u, vec2<f32>(1456f, 288f))), Struct_2(vec4<bool>(true, false, true, false), vec4<i32>(2147483647i, -1298i, 60688i, 2147483647i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(-38977i, -11683i), 1075f, vec3<i32>(-1i, -17485i, -19294i), 4294967295u, vec2<f32>(-698f, 1809f)), Struct_1(vec2<i32>(1i, 2147483647i), 649f, vec3<i32>(2147483647i, 2147483647i, 1i), 9620u, vec2<f32>(670f, -149f)))), Struct_3(vec3<u32>(21568u, 80741u, 4294967295u), Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(0i, 0i, i32(-2147483648), -38171i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(1i, 0i), -1000f, vec3<i32>(57940i, 1i, 48428i), 1u, vec2<f32>(-968f, 810f)), Struct_1(vec2<i32>(i32(-2147483648), -783i), 163f, vec3<i32>(1i, 12654i, -9459i), 51575u, vec2<f32>(707f, -738f))), Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(-30872i, -1i, 47259i, 1i), vec3<bool>(false, true, false), Struct_1(vec2<i32>(-57378i, 9838i), -549f, vec3<i32>(-1i, 0i, 55646i), 1u, vec2<f32>(-375f, 1923f)), Struct_1(vec2<i32>(i32(-2147483648), -32461i), 1471f, vec3<i32>(20380i, -44331i, -39361i), 4294967295u, vec2<f32>(408f, -338f)))), Struct_3(vec3<u32>(36068u, 1u, 4294967295u), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(-1i, 48835i, 2147483647i, 0i), vec3<bool>(false, true, true), Struct_1(vec2<i32>(-1864i, -25048i), -658f, vec3<i32>(20840i, i32(-2147483648), -16989i), 4294967295u, vec2<f32>(-797f, -1417f)), Struct_1(vec2<i32>(-29188i, 1i), -832f, vec3<i32>(-7677i, 101310i, -21916i), 13820u, vec2<f32>(-979f, -1000f))), Struct_2(vec4<bool>(false, false, true, false), vec4<i32>(0i, -1i, 1i, 0i), vec3<bool>(true, false, false), Struct_1(vec2<i32>(i32(-2147483648), 1i), -377f, vec3<i32>(5675i, i32(-2147483648), 8942i), 87829u, vec2<f32>(1602f, -1000f)), Struct_1(vec2<i32>(1i, -1i), -543f, vec3<i32>(i32(-2147483648), 32748i, 13596i), 7568u, vec2<f32>(1921f, 710f)))), Struct_3(vec3<u32>(1u, 9128u, 4294967295u), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(-1i, -28829i, 32949i, i32(-2147483648)), vec3<bool>(false, true, false), Struct_1(vec2<i32>(1i, 48358i), 1139f, vec3<i32>(11324i, 35238i, i32(-2147483648)), 15236u, vec2<f32>(402f, -215f)), Struct_1(vec2<i32>(-1i, 0i), 644f, vec3<i32>(-35009i, -19189i, 1i), 62813u, vec2<f32>(239f, 924f))), Struct_2(vec4<bool>(true, false, true, false), vec4<i32>(-11259i, 0i, 25295i, 17126i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(i32(-2147483648), -8152i), -787f, vec3<i32>(-1i, 44164i, -8467i), 0u, vec2<f32>(-1711f, 634f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 1212f, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 10854u, vec2<f32>(828f, -1237f)))), Struct_3(vec3<u32>(4294967295u, 1u, 79228u), Struct_2(vec4<bool>(true, true, false, false), vec4<i32>(53159i, i32(-2147483648), 20960i, 5784i), vec3<bool>(true, false, false), Struct_1(vec2<i32>(1i, 49045i), 341f, vec3<i32>(1i, 4353i, -30188i), 4294967295u, vec2<f32>(-1216f, 232f)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -188f, vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 6127u, vec2<f32>(398f, -1308f))), Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(-1i, -1i, 0i, -13608i), vec3<bool>(false, false, false), Struct_1(vec2<i32>(2744i, -1i), 194f, vec3<i32>(0i, -57405i, 2147483647i), 4294967295u, vec2<f32>(869f, 1224f)), Struct_1(vec2<i32>(i32(-2147483648), 0i), -568f, vec3<i32>(0i, i32(-2147483648), 1i), 34886u, vec2<f32>(-1204f, 1043f)))), Struct_3(vec3<u32>(115711u, 24442u, 20874u), Struct_2(vec4<bool>(false, true, false, false), vec4<i32>(-1i, -10241i, 0i, i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(vec2<i32>(36819i, 0i), 447f, vec3<i32>(20507i, -74307i, 2147483647i), 115091u, vec2<f32>(-982f, 1539f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), -1462f, vec3<i32>(-1i, 0i, -34014i), 64438u, vec2<f32>(445f, -842f))), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(-41233i, 20078i, 2147483647i, 2147483647i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(18408i, 33003i), 1954f, vec3<i32>(i32(-2147483648), 0i, 575i), 4294967295u, vec2<f32>(123f, -863f)), Struct_1(vec2<i32>(-1i, 0i), -753f, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), 49232u, vec2<f32>(-757f, 511f)))), Struct_3(vec3<u32>(1u, 1u, 5269u), Struct_2(vec4<bool>(false, true, true, false), vec4<i32>(-42630i, -18352i, -16183i, -33895i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(0i, 26206i), 979f, vec3<i32>(2147483647i, -16099i, -99436i), 35513u, vec2<f32>(401f, 1000f)), Struct_1(vec2<i32>(8718i, 1i), 1399f, vec3<i32>(-1i, -1i, -1i), 0u, vec2<f32>(1374f, 2269f))), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(0i, -1i, 15999i, -66347i), vec3<bool>(false, false, false), Struct_1(vec2<i32>(63355i, 6459i), 388f, vec3<i32>(0i, 0i, -100328i), 26070u, vec2<f32>(132f, -1213f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), 398f, vec3<i32>(-1352i, 2147483647i, 2147483647i), 90462u, vec2<f32>(1000f, 567f)))), Struct_3(vec3<u32>(1u, 13915u, 1u), Struct_2(vec4<bool>(true, false, false, false), vec4<i32>(-49751i, -1i, 27382i, -26320i), vec3<bool>(true, false, false), Struct_1(vec2<i32>(-25026i, i32(-2147483648)), 1090f, vec3<i32>(0i, i32(-2147483648), -1i), 37959u, vec2<f32>(692f, -1272f)), Struct_1(vec2<i32>(12987i, 5842i), 1822f, vec3<i32>(28802i, -64521i, 1i), 4294967295u, vec2<f32>(-539f, 403f))), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(i32(-2147483648), 23863i, -5495i, -47634i), vec3<bool>(true, false, false), Struct_1(vec2<i32>(23572i, 7520i), 1000f, vec3<i32>(-616i, -27309i, -12578i), 35301u, vec2<f32>(596f, -746f)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 737f, vec3<i32>(0i, 3774i, -10326i), 0u, vec2<f32>(1166f, 963f)))), Struct_3(vec3<u32>(4294967295u, 4294967295u, 10427u), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(2147483647i, -62722i, 2147483647i, 22894i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(45227i, -42584i), 236f, vec3<i32>(-32428i, 0i, 0i), 1u, vec2<f32>(-411f, 771f)), Struct_1(vec2<i32>(2147483647i, -1i), -1425f, vec3<i32>(1i, 29065i, i32(-2147483648)), 81241u, vec2<f32>(103f, -640f))), Struct_2(vec4<bool>(false, true, true, false), vec4<i32>(-32551i, 34892i, -7353i, -37213i), vec3<bool>(false, true, false), Struct_1(vec2<i32>(2147483647i, 1i), -440f, vec3<i32>(23515i, 0i, 2147483647i), 7214u, vec2<f32>(894f, 192f)), Struct_1(vec2<i32>(1i, -1i), -1000f, vec3<i32>(1i, 2147483647i, 7083i), 4294967295u, vec2<f32>(-1429f, 1468f)))), Struct_3(vec3<u32>(0u, 4294967295u, 77486u), Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(43937i, -3028i, 52733i, 50857i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(0i, 0i), 1000f, vec3<i32>(1i, -28621i, 29209i), 0u, vec2<f32>(1440f, 836f)), Struct_1(vec2<i32>(-70018i, 63059i), -365f, vec3<i32>(2147483647i, 2147483647i, -6480i), 1u, vec2<f32>(639f, 1389f))), Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(26404i, -457i, -24841i, -1i), vec3<bool>(false, true, true), Struct_1(vec2<i32>(1i, i32(-2147483648)), -1000f, vec3<i32>(49319i, -1i, 0i), 35510u, vec2<f32>(125f, 201f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 412f, vec3<i32>(14703i, 0i, -1i), 25485u, vec2<f32>(-588f, -1484f)))), Struct_3(vec3<u32>(11066u, 0u, 1u), Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(1i, 36589i, 15050i, 0i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(18875i, 1i), -577f, vec3<i32>(-1i, i32(-2147483648), 18179i), 0u, vec2<f32>(1000f, -211f)), Struct_1(vec2<i32>(1i, 1i), 166f, vec3<i32>(1i, 2147483647i, -4425i), 67080u, vec2<f32>(-1264f, -132f))), Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(30738i, i32(-2147483648), 1i, -8371i), vec3<bool>(true, true, false), Struct_1(vec2<i32>(-16848i, -33536i), -266f, vec3<i32>(2147483647i, i32(-2147483648), 68224i), 86054u, vec2<f32>(1000f, -493f)), Struct_1(vec2<i32>(62229i, 2147483647i), 1872f, vec3<i32>(2147483647i, 2367i, 1160i), 103843u, vec2<f32>(-183f, 787f)))), Struct_3(vec3<u32>(20342u, 4964u, 81u), Struct_2(vec4<bool>(true, true, false, false), vec4<i32>(-49901i, 0i, -22552i, 0i), vec3<bool>(false, false, true), Struct_1(vec2<i32>(18494i, -8837i), -600f, vec3<i32>(-1i, 2147483647i, 1i), 1u, vec2<f32>(-1000f, -1134f)), Struct_1(vec2<i32>(-1i, 30178i), 1304f, vec3<i32>(-28542i, 19606i, -4134i), 4294967295u, vec2<f32>(-1111f, 1168f))), Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(-28257i, -1120i, 1i, -16849i), vec3<bool>(false, false, true), Struct_1(vec2<i32>(2147483647i, 0i), 1305f, vec3<i32>(25836i, 2147483647i, i32(-2147483648)), 0u, vec2<f32>(-1000f, -325f)), Struct_1(vec2<i32>(0i, -2213i), -1000f, vec3<i32>(i32(-2147483648), 0i, -6460i), 25454u, vec2<f32>(1525f, -1364f)))), Struct_3(vec3<u32>(17973u, 4294967295u, 0u), Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(49131i, 1i, 3580i, -1i), vec3<bool>(false, false, true), Struct_1(vec2<i32>(-19014i, 10494i), 1371f, vec3<i32>(0i, -14320i, 27651i), 1u, vec2<f32>(-1000f, 974f)), Struct_1(vec2<i32>(21606i, 2147483647i), 1354f, vec3<i32>(2147483647i, i32(-2147483648), -1i), 27485u, vec2<f32>(505f, 2154f))), Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(1i, -42091i, 2147483647i, 10824i), vec3<bool>(false, true, false), Struct_1(vec2<i32>(2147483647i, 3266i), -182f, vec3<i32>(13437i, -1i, -25188i), 21473u, vec2<f32>(-353f, -679f)), Struct_1(vec2<i32>(17239i, 1i), 982f, vec3<i32>(i32(-2147483648), 56709i, -1i), 4294967295u, vec2<f32>(-1034f, 114f)))), Struct_3(vec3<u32>(4294967295u, 49901u, 4294967295u), Struct_2(vec4<bool>(false, true, false, false), vec4<i32>(1i, i32(-2147483648), -19339i, -30576i), vec3<bool>(false, true, true), Struct_1(vec2<i32>(2663i, -1i), 857f, vec3<i32>(1781i, -27428i, -34790i), 4294967295u, vec2<f32>(-845f, -286f)), Struct_1(vec2<i32>(-1i, -30115i), -1114f, vec3<i32>(2147483647i, 0i, i32(-2147483648)), 0u, vec2<f32>(-142f, 1414f))), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(2147483647i, -1i, 2147483647i, -13915i), vec3<bool>(true, false, true), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 939f, vec3<i32>(1i, 66644i, 18066i), 18629u, vec2<f32>(355f, -359f)), Struct_1(vec2<i32>(0i, -1i), 145f, vec3<i32>(2147483647i, -55853i, 1i), 40602u, vec2<f32>(-759f, 1062f)))), Struct_3(vec3<u32>(1u, 0u, 4294967295u), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(-35807i, 4391i, 19319i, i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(vec2<i32>(1i, -941i), -1844f, vec3<i32>(-64100i, 2147483647i, 12227i), 0u, vec2<f32>(1292f, -197f)), Struct_1(vec2<i32>(34572i, 39836i), -1000f, vec3<i32>(8583i, -1i, 7465i), 10429u, vec2<f32>(-1000f, 138f))), Struct_2(vec4<bool>(false, false, true, false), vec4<i32>(2147483647i, -26387i, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(vec2<i32>(25966i, 23353i), -1485f, vec3<i32>(2147483647i, -10522i, 2147483647i), 77530u, vec2<f32>(294f, 1280f)), Struct_1(vec2<i32>(2147483647i, 25814i), -1502f, vec3<i32>(-47500i, 1i, 8475i), 0u, vec2<f32>(-565f, 715f)))));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = !all(select(vec2<bool>(true, !arg_0.x), select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, true), select(arg_0, arg_0, true)), arg_0));
    let var_1 = ~(~_wgslsmith_add_vec2_u32(global0.yw | vec2<u32>(global0.x, u_input.b.x), ~vec2<u32>(u_input.a, u_input.a)));
    global0 = vec4<u32>(4294967295u, global0.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u & global0.x, u_input.a), _wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(15872u, global0.x)), u_input.b.x), global0.x | ~45113u), ~4294967295u);
    var var_2 = arg_0;
    global0 = ~(~countOneBits(abs(vec4<u32>(u_input.b.x, var_1.x, global0.x, u_input.b.x) << (vec4<u32>(0u, var_1.x, u_input.a, var_1.x) % vec4<u32>(32u)))));
    return abs(~vec4<u32>(var_1.x, 45038u, 1u, 12870u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_3(global0.zzx, Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_sub_vec4_i32(arg_0, ~max(arg_0, vec4<i32>(-5445i, 44635i, -12075i, -32186i))), vec3<bool>(true, true, true), Struct_1(-(~vec2<i32>(0i, -1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1303f))), arg_0.yzz, _wgslsmith_mod_u32(_wgslsmith_mod_u32(14929u, 34514u), select(18296u, global0.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(197f, 1000f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-565f, 1836f), vec2<f32>(1015f, 1000f), vec2<bool>(false, false))))), Struct_1(~u_input.d, 1f, _wgslsmith_sub_vec3_i32(arg_0.zwz, _wgslsmith_mod_vec3_i32(arg_0.zwx, vec3<i32>(-35479i, arg_2, arg_2))), 35887u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1215f, 149f), vec2<f32>(1000f, -613f), false))))), Struct_2(vec4<bool>(-1208f >= _wgslsmith_f_op_f32(trunc(1371f)), true, true, all(vec2<bool>(true, true))), vec4<i32>(~countOneBits(-1i), -_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_clamp_i32(arg_2, global1.x, ~u_input.c), global1.x), vec3<bool>(false, select(true, false, true) | true, any(vec2<bool>(true, true))), Struct_1(-abs(vec2<i32>(u_input.d.x, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2465f))), _wgslsmith_mult_vec3_i32(arg_0.yzz, _wgslsmith_mod_vec3_i32(arg_0.xyw, vec3<i32>(0i, -1i, -2147483647i))), ~min(arg_1.x, arg_1.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-193f, -347f), vec2<f32>(428f, 1181f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(574f, -428f))), all(vec2<bool>(false, false))))), Struct_1(vec2<i32>(-10893i, arg_2), 1f, ~(-vec3<i32>(-2147483647i, -1i, global1.x)), 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-516f, -1000f)))));
    return ~vec4<u32>(var_0.c.e.d, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4091u, 11214u), 38058u), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_0.b.e.d), reverseBits(0u)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global0.x), u_input.b)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -512f);
    global0 = func_3(-(-arg_1 << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, u_input.a, global0.x, 4294967295u), func_2(vec2<bool>(true, false))) % vec4<u32>(32u))), ~(~((vec4<u32>(global0.x, 25804u, 1u, u_input.a) & vec4<u32>(arg_0, arg_0, 110422u, 26963u)) & (vec4<u32>(u_input.a, arg_0, global0.x, 1u) << (vec4<u32>(0u, arg_0, 0u, u_input.a) % vec4<u32>(32u))))), ~(~global1.x));
    var var_1 = Struct_1(arg_1.xw, 1f, vec3<i32>(global1.x, 0i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(76760i, global1.x), global1.x, u_input.d.x), ~(~(-19428i)))), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 57646u, 25812u, global0.x) | vec4<u32>(4294967295u, global0.x, 60027u, arg_0), ~vec4<u32>(arg_0, 45855u, u_input.b.x, 1337u)), firstLeadingBit(vec4<u32>(u_input.a, 40706u, 4294967295u, u_input.b.x)) >> (~(vec4<u32>(global0.x, u_input.b.x, global0.x, 0u) | vec4<u32>(global0.x, 57064u, 1u, 0u)) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f)) + -543f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)))));
    var var_2 = !(!select(true, true, false));
    let var_3 = -289f;
    return abs(func_2(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(global0.x, _wgslsmith_clamp_u32(global0.x, countOneBits(4294967295u), u_input.a << (0u % 32u))) << (1u % 32u)), 16u)];
    var var_1 = var_0.c.d.d;
    global0 = func_1(4294967295u, vec4<i32>(~var_0.c.d.c.x << (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 64328u, u_input.a), u_input.b)) % 32u), ~(-16286i), global1.x, ~_wgslsmith_clamp_i32(-25551i, 1i, global1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(273f, var_0.c.d.e.x, var_0.b.d.b, 2138f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.d.b, -1022f, var_0.c.d.e.x, -205f)), _wgslsmith_div_vec4_f32(vec4<f32>(-747f, var_0.b.d.e.x, var_0.b.e.e.x, -299f), vec4<f32>(var_0.c.e.b, var_0.b.d.b, 167f, var_0.c.e.b)))))))));
    let var_3 = Struct_1(global1.zy, var_2.x, ~(~(-firstTrailingBit(var_0.c.e.c))), 11186u, var_0.b.e.e);
    let var_4 = var_0.b.e;
    var_0 = global2[_wgslsmith_index_u32(67111u, 16u)];
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.e.x - var_4.e.x), _wgslsmith_f_op_f32(f32(-1f) * -689f))), _wgslsmith_f_op_f32(round(var_4.e.x)))) * var_3.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(1166f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-2252f, _wgslsmith_f_op_f32(var_5 * -634f))))), 1f), var_3.d, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, -323f, -829f), var_2.zyz)));
}

