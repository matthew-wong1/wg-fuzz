struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<i32>(20910i, -1088i, 1i), vec4<u32>(45673u, 7965u, 78724u, 33380u), 1052f, vec2<bool>(true, false)), Struct_1(vec3<i32>(-59396i, 2147483647i, -57925i), vec4<u32>(1u, 0u, 33068u, 0u), 1007f, vec2<bool>(true, true)), Struct_1(vec3<i32>(2147483647i, -6902i, -14668i), vec4<u32>(0u, 74942u, 16270u, 0u), 2532f, vec2<bool>(true, false)), Struct_1(vec3<i32>(26847i, 0i, 20939i), vec4<u32>(37473u, 1u, 49697u, 40624u), 1000f, vec2<bool>(true, true)), Struct_1(vec3<i32>(2147483647i, 51158i, -43178i), vec4<u32>(54502u, 1u, 36926u, 104259u), 562f, vec2<bool>(true, false)), Struct_1(vec3<i32>(-48209i, 2147483647i, 1i), vec4<u32>(5297u, 4294967295u, 4294967295u, 22294u), 946f, vec2<bool>(false, false)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 54251i), vec4<u32>(20782u, 0u, 6405u, 1u), 1048f, vec2<bool>(true, true)), Struct_1(vec3<i32>(2147483647i, -18681i, 0i), vec4<u32>(27841u, 0u, 4294967295u, 26260u), 636f, vec2<bool>(false, true)), Struct_1(vec3<i32>(-1i, 44445i, 2147483647i), vec4<u32>(60662u, 14588u, 21888u, 0u), -1000f, vec2<bool>(true, true)), Struct_1(vec3<i32>(-13885i, 0i, -1i), vec4<u32>(4294967295u, 3787u, 53060u, 1u), 130f, vec2<bool>(false, false)), Struct_1(vec3<i32>(2147483647i, 16114i, i32(-2147483648)), vec4<u32>(49932u, 13449u, 37881u, 47483u), -1770f, vec2<bool>(false, true)), Struct_1(vec3<i32>(-1i, -1i, -37894i), vec4<u32>(23397u, 27988u, 64656u, 4294967295u), 440f, vec2<bool>(false, true)), Struct_1(vec3<i32>(33013i, 2383i, -24476i), vec4<u32>(0u, 12695u, 0u, 65646u), 124f, vec2<bool>(true, false)), Struct_1(vec3<i32>(68950i, 43974i, 1i), vec4<u32>(4294967295u, 0u, 4294967295u, 37391u), 873f, vec2<bool>(false, false)), Struct_1(vec3<i32>(-37591i, i32(-2147483648), -1i), vec4<u32>(4294967295u, 32378u, 1u, 65867u), -133f, vec2<bool>(true, false)), Struct_1(vec3<i32>(-14896i, -1i, 2147483647i), vec4<u32>(68013u, 0u, 4294967295u, 1u), 1276f, vec2<bool>(false, false)), Struct_1(vec3<i32>(-22142i, 2147483647i, -33531i), vec4<u32>(56449u, 25078u, 1464u, 13716u), -1535f, vec2<bool>(false, true)), Struct_1(vec3<i32>(15359i, i32(-2147483648), i32(-2147483648)), vec4<u32>(1u, 4294967295u, 1u, 0u), 629f, vec2<bool>(true, true)), Struct_1(vec3<i32>(-35281i, -43608i, 14366i), vec4<u32>(1u, 32464u, 4294967295u, 22545u), -1654f, vec2<bool>(false, true)), Struct_1(vec3<i32>(-1i, 0i, 37039i), vec4<u32>(75008u, 4294967295u, 19093u, 1u), 675f, vec2<bool>(false, false)), Struct_1(vec3<i32>(40019i, i32(-2147483648), 1i), vec4<u32>(40602u, 24708u, 56841u, 108640u), 1494f, vec2<bool>(true, false)), Struct_1(vec3<i32>(0i, -9897i, i32(-2147483648)), vec4<u32>(4294967295u, 4294967295u, 22917u, 20308u), -1190f, vec2<bool>(true, false)), Struct_1(vec3<i32>(0i, -1i, 1i), vec4<u32>(0u, 58316u, 31961u, 4294967295u), 175f, vec2<bool>(false, false)), Struct_1(vec3<i32>(2147483647i, 12925i, -18728i), vec4<u32>(54483u, 15774u, 4294967295u, 1u), 2041f, vec2<bool>(false, true)), Struct_1(vec3<i32>(-1i, 2147483647i, 11513i), vec4<u32>(26174u, 0u, 0u, 44575u), 1398f, vec2<bool>(true, false)), Struct_1(vec3<i32>(1i, 13348i, -1i), vec4<u32>(4294967295u, 26009u, 4294967295u, 17072u), 838f, vec2<bool>(true, false)), Struct_1(vec3<i32>(-13636i, 2478i, -1i), vec4<u32>(4294967295u, 4294967295u, 102680u, 105507u), -349f, vec2<bool>(false, false)), Struct_1(vec3<i32>(2147483647i, -70369i, 48104i), vec4<u32>(0u, 43171u, 15751u, 46986u), 1000f, vec2<bool>(false, false)), Struct_1(vec3<i32>(1i, 2147483647i, -2141i), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), 917f, vec2<bool>(true, false)), Struct_1(vec3<i32>(1i, -6626i, -61235i), vec4<u32>(12547u, 27226u, 21146u, 31849u), 1154f, vec2<bool>(true, true)));

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<u32>(33589u, 1u, 0u, 64644u), vec3<i32>(i32(-2147483648), 24224i, 60776i), Struct_1(vec3<i32>(-25941i, 1i, 0i), vec4<u32>(3008u, 58459u, 32318u, 10563u), 863f, vec2<bool>(true, true)), 0i, vec4<i32>(23065i, -1i, i32(-2147483648), 3266i)), Struct_2(vec4<u32>(12119u, 9505u, 0u, 0u), vec3<i32>(2147483647i, -29138i, 1i), Struct_1(vec3<i32>(2147483647i, 20229i, -37307i), vec4<u32>(1u, 5362u, 1u, 0u), -645f, vec2<bool>(false, true)), 2147483647i, vec4<i32>(1i, 34989i, 7559i, -49568i)), Struct_2(vec4<u32>(1u, 31855u, 11833u, 1u), vec3<i32>(26739i, 10050i, -38428i), Struct_1(vec3<i32>(-16875i, 1i, 544i), vec4<u32>(97680u, 1u, 4294967295u, 17124u), -1000f, vec2<bool>(true, false)), 19014i, vec4<i32>(1i, -13513i, 22116i, 1i)), Struct_2(vec4<u32>(13640u, 424u, 42191u, 1u), vec3<i32>(-1i, -1i, 2147483647i), Struct_1(vec3<i32>(-25510i, 38964i, 30139i), vec4<u32>(0u, 4294967295u, 0u, 36053u), -618f, vec2<bool>(false, true)), 29132i, vec4<i32>(2147483647i, 1i, -44460i, 0i)), Struct_2(vec4<u32>(91078u, 1u, 0u, 1u), vec3<i32>(-7365i, 5817i, -22872i), Struct_1(vec3<i32>(1i, -8153i, 2147483647i), vec4<u32>(0u, 66580u, 4294967295u, 0u), 678f, vec2<bool>(false, false)), 1i, vec4<i32>(-85i, -47391i, -22201i, 1i)), Struct_2(vec4<u32>(39038u, 42531u, 86768u, 57763u), vec3<i32>(-24551i, -7547i, -1i), Struct_1(vec3<i32>(-1i, 41890i, 10359i), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), 1303f, vec2<bool>(false, true)), -1i, vec4<i32>(-31234i, -1i, -19734i, 80981i)), Struct_2(vec4<u32>(7661u, 4294967295u, 4294967295u, 0u), vec3<i32>(-29491i, 41281i, 2147483647i), Struct_1(vec3<i32>(1668i, 5056i, -28813i), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 752f, vec2<bool>(true, false)), 0i, vec4<i32>(1i, -1i, 2147483647i, 2147483647i)), Struct_2(vec4<u32>(1u, 0u, 24144u, 0u), vec3<i32>(2147483647i, -1i, i32(-2147483648)), Struct_1(vec3<i32>(0i, 7290i, 55009i), vec4<u32>(4294967295u, 41643u, 1u, 21715u), 1000f, vec2<bool>(true, false)), 0i, vec4<i32>(40205i, 2147483647i, -1i, 0i)), Struct_2(vec4<u32>(0u, 115686u, 1u, 0u), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), Struct_1(vec3<i32>(i32(-2147483648), 1i, -31922i), vec4<u32>(1u, 1u, 4294967295u, 28525u), 1000f, vec2<bool>(true, false)), i32(-2147483648), vec4<i32>(-10456i, i32(-2147483648), 0i, -1i)), Struct_2(vec4<u32>(4294967295u, 1u, 49641u, 50508u), vec3<i32>(1i, -36040i, 2147483647i), Struct_1(vec3<i32>(20375i, 0i, 2147483647i), vec4<u32>(24416u, 1810u, 8258u, 45813u), -493f, vec2<bool>(true, true)), 4327i, vec4<i32>(52873i, 63376i, 0i, 5166i)), Struct_2(vec4<u32>(4294967295u, 1u, 72690u, 1u), vec3<i32>(i32(-2147483648), -80016i, 23399i), Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 69046u, 1003u, 51472u), 1146f, vec2<bool>(true, false)), 1i, vec4<i32>(-19607i, 0i, 84478i, -2016i)), Struct_2(vec4<u32>(1u, 49889u, 4294967295u, 17520u), vec3<i32>(-18596i, -8393i, -1i), Struct_1(vec3<i32>(0i, -8269i, -22i), vec4<u32>(4294967295u, 0u, 20363u, 51843u), -1000f, vec2<bool>(false, true)), 2147483647i, vec4<i32>(0i, 2975i, 1i, 2147483647i)), Struct_2(vec4<u32>(0u, 1u, 26565u, 1u), vec3<i32>(-1i, 1i, 0i), Struct_1(vec3<i32>(-19975i, 10105i, 2147483647i), vec4<u32>(60354u, 20867u, 23715u, 1u), -812f, vec2<bool>(false, false)), i32(-2147483648), vec4<i32>(21537i, i32(-2147483648), 1i, i32(-2147483648))), Struct_2(vec4<u32>(0u, 24491u, 0u, 1825u), vec3<i32>(-39148i, 44578i, 77193i), Struct_1(vec3<i32>(-25567i, -46294i, -13306i), vec4<u32>(10610u, 1u, 0u, 0u), 1519f, vec2<bool>(true, false)), 1864i, vec4<i32>(1i, -50528i, 2147483647i, -27186i)), Struct_2(vec4<u32>(30024u, 23352u, 11142u, 4294967295u), vec3<i32>(18702i, 44537i, -14455i), Struct_1(vec3<i32>(64067i, -48326i, -9748i), vec4<u32>(46092u, 1u, 47306u, 24626u), -1000f, vec2<bool>(false, false)), -36121i, vec4<i32>(51288i, 29763i, 1i, 2147483647i)), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 0u), vec3<i32>(0i, -1i, 1i), Struct_1(vec3<i32>(12750i, 2147483647i, i32(-2147483648)), vec4<u32>(61257u, 4294967295u, 20244u, 117144u), 373f, vec2<bool>(true, true)), 2147483647i, vec4<i32>(1538i, -1i, -15681i, 0i)), Struct_2(vec4<u32>(16439u, 4294967295u, 1u, 16808u), vec3<i32>(i32(-2147483648), 38911i, -28024i), Struct_1(vec3<i32>(1i, -1i, -28845i), vec4<u32>(1u, 1145u, 23936u, 1u), -746f, vec2<bool>(true, true)), 9684i, vec4<i32>(12255i, 2147483647i, 2147483647i, 0i)), Struct_2(vec4<u32>(13719u, 84275u, 4294967295u, 0u), vec3<i32>(32064i, 2147483647i, i32(-2147483648)), Struct_1(vec3<i32>(3159i, 0i, 0i), vec4<u32>(62017u, 1u, 1u, 4294967295u), -1409f, vec2<bool>(true, false)), -1i, vec4<i32>(i32(-2147483648), 11697i, 0i, i32(-2147483648))), Struct_2(vec4<u32>(19794u, 4294967295u, 4294967295u, 1u), vec3<i32>(-1i, i32(-2147483648), -6037i), Struct_1(vec3<i32>(2147483647i, -1i, 1i), vec4<u32>(48627u, 41452u, 0u, 0u), -714f, vec2<bool>(false, false)), i32(-2147483648), vec4<i32>(16472i, -1i, 1i, -955i)), Struct_2(vec4<u32>(19791u, 14583u, 34377u, 29066u), vec3<i32>(2147483647i, 24081i, -25523i), Struct_1(vec3<i32>(-31676i, 1i, 2147483647i), vec4<u32>(1u, 4294967295u, 56683u, 1u), -1000f, vec2<bool>(false, false)), -3673i, vec4<i32>(0i, i32(-2147483648), 2147483647i, -3978i)), Struct_2(vec4<u32>(36614u, 59119u, 4294967295u, 1u), vec3<i32>(-20332i, -17633i, -21190i), Struct_1(vec3<i32>(24074i, 2147483647i, -1i), vec4<u32>(8874u, 0u, 0u, 4294967295u), -702f, vec2<bool>(false, false)), -10082i, vec4<i32>(-7531i, 0i, 1i, 1i)), Struct_2(vec4<u32>(779u, 40848u, 1u, 6003u), vec3<i32>(i32(-2147483648), 0i, 1i), Struct_1(vec3<i32>(16345i, 0i, 22141i), vec4<u32>(4294967295u, 59467u, 63562u, 0u), 722f, vec2<bool>(false, true)), i32(-2147483648), vec4<i32>(-1i, -4140i, -13487i, -12560i)), Struct_2(vec4<u32>(0u, 1360u, 0u, 48154u), vec3<i32>(-29404i, 2147483647i, -1i), Struct_1(vec3<i32>(i32(-2147483648), -44211i, 0i), vec4<u32>(17368u, 42416u, 0u, 4294967295u), 718f, vec2<bool>(false, true)), 0i, vec4<i32>(38474i, i32(-2147483648), i32(-2147483648), 26930i)), Struct_2(vec4<u32>(55583u, 1u, 1u, 29384u), vec3<i32>(-43101i, 23976i, -34542i), Struct_1(vec3<i32>(-17621i, 28332i, 40833i), vec4<u32>(0u, 97075u, 1u, 30955u), -1360f, vec2<bool>(false, true)), 2147483647i, vec4<i32>(6068i, 8037i, i32(-2147483648), -27168i)), Struct_2(vec4<u32>(4294967295u, 1699u, 4294967295u, 4294967295u), vec3<i32>(16511i, 0i, 64560i), Struct_1(vec3<i32>(0i, i32(-2147483648), -1i), vec4<u32>(4294967295u, 0u, 1u, 0u), -574f, vec2<bool>(true, false)), 2147483647i, vec4<i32>(2147483647i, 74968i, 30585i, i32(-2147483648))), Struct_2(vec4<u32>(1u, 4294967295u, 1u, 15587u), vec3<i32>(0i, 21455i, 2147483647i), Struct_1(vec3<i32>(-1i, 0i, -54555i), vec4<u32>(93505u, 0u, 4294967295u, 8717u), -927f, vec2<bool>(true, true)), 18355i, vec4<i32>(-1i, 15146i, -1i, 1i)), Struct_2(vec4<u32>(38999u, 50965u, 1u, 70048u), vec3<i32>(1i, 42562i, 2147483647i), Struct_1(vec3<i32>(34742i, -1i, 31352i), vec4<u32>(36678u, 19108u, 38976u, 24097u), 858f, vec2<bool>(true, true)), 1i, vec4<i32>(-37493i, 6785i, -41432i, -4992i)), Struct_2(vec4<u32>(0u, 42037u, 60564u, 1u), vec3<i32>(1i, 2147483647i, -12852i), Struct_1(vec3<i32>(-1i, -7422i, 0i), vec4<u32>(38439u, 106751u, 0u, 0u), -886f, vec2<bool>(true, true)), i32(-2147483648), vec4<i32>(-47811i, 31556i, 2147483647i, 1i)), Struct_2(vec4<u32>(55309u, 1u, 43635u, 10854u), vec3<i32>(10253i, 18219i, 2147483647i), Struct_1(vec3<i32>(1860i, 0i, 1i), vec4<u32>(29570u, 7588u, 4294967295u, 27799u), -456f, vec2<bool>(true, true)), -7964i, vec4<i32>(i32(-2147483648), 1i, 0i, 2147483647i)));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<i32>(-1i, 9441i, 40665i), vec4<u32>(1u, 1u, 1u, 0u), -2170f, vec2<bool>(true, false)), Struct_1(vec3<i32>(1i, -11966i, 3498i), vec4<u32>(35089u, 29066u, 34901u, 27759u), -388f, vec2<bool>(false, false)), Struct_1(vec3<i32>(3404i, -8856i, 18259i), vec4<u32>(4294967295u, 1u, 4294967295u, 27379u), 1141f, vec2<bool>(true, true)), Struct_1(vec3<i32>(9301i, 62396i, 2147483647i), vec4<u32>(11556u, 4294967295u, 1u, 27108u), -881f, vec2<bool>(false, false)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -12851i), vec4<u32>(36184u, 60419u, 4294967295u, 49484u), 834f, vec2<bool>(true, true)), Struct_1(vec3<i32>(i32(-2147483648), -1439i, 14306i), vec4<u32>(21507u, 1u, 4294967295u, 48218u), -406f, vec2<bool>(false, false)), Struct_1(vec3<i32>(2147483647i, 10495i, -34499i), vec4<u32>(56760u, 8782u, 0u, 384u), -784f, vec2<bool>(false, true)), Struct_1(vec3<i32>(2147483647i, 4116i, 2147483647i), vec4<u32>(4294967295u, 19478u, 45802u, 1u), 118f, vec2<bool>(true, true)), Struct_1(vec3<i32>(45751i, -1i, 1061i), vec4<u32>(4294967295u, 66679u, 1u, 69580u), 1000f, vec2<bool>(false, false)), Struct_1(vec3<i32>(-12270i, -2699i, 1i), vec4<u32>(0u, 45133u, 0u, 4294967295u), 444f, vec2<bool>(false, true)), Struct_1(vec3<i32>(23295i, 2147483647i, -3589i), vec4<u32>(60685u, 4294967295u, 4294967295u, 4294967295u), -1110f, vec2<bool>(true, true)), Struct_1(vec3<i32>(-17621i, -2364i, 0i), vec4<u32>(9234u, 135080u, 4294967295u, 18319u), -747f, vec2<bool>(true, true)), Struct_1(vec3<i32>(40706i, i32(-2147483648), 40561i), vec4<u32>(0u, 4294967295u, 47130u, 5410u), -306f, vec2<bool>(false, true)), Struct_1(vec3<i32>(1i, 2147483647i, 36503i), vec4<u32>(25601u, 2741u, 4294967295u, 30722u), 891f, vec2<bool>(false, true)), Struct_1(vec3<i32>(2147483647i, -1i, -15778i), vec4<u32>(65568u, 55986u, 0u, 5642u), 1186f, vec2<bool>(false, true)), Struct_1(vec3<i32>(-253i, -1i, 20223i), vec4<u32>(82404u, 24517u, 2051u, 11860u), -861f, vec2<bool>(true, false)), Struct_1(vec3<i32>(i32(-2147483648), 32654i, 6680i), vec4<u32>(1u, 71922u, 0u, 77100u), 156f, vec2<bool>(false, true)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -6312i), vec4<u32>(4294967295u, 32323u, 46635u, 16803u), -693f, vec2<bool>(true, false)), Struct_1(vec3<i32>(2147483647i, 0i, -1i), vec4<u32>(240u, 1u, 4294967295u, 4294967295u), -451f, vec2<bool>(false, false)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), vec4<u32>(1u, 54757u, 6479u, 25278u), 488f, vec2<bool>(true, false)), Struct_1(vec3<i32>(0i, -21155i, 54103i), vec4<u32>(4294967295u, 33811u, 1u, 1u), -193f, vec2<bool>(true, false)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec4<u32>(47053u, 7391u, 45411u, 17489u), 2306f, vec2<bool>(true, false)), Struct_1(vec3<i32>(-1i, -3826i, i32(-2147483648)), vec4<u32>(35051u, 52322u, 4294967295u, 67619u), 1017f, vec2<bool>(false, false)), Struct_1(vec3<i32>(2147483647i, -5887i, 8552i), vec4<u32>(1u, 0u, 67609u, 10472u), 476f, vec2<bool>(false, false)), Struct_1(vec3<i32>(12961i, -1i, 16526i), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), 1060f, vec2<bool>(true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.c, u_input.c), firstLeadingBit(-arg_2.a)), vec3<i32>((i32(-1i) * -2147483647i) | -arg_2.a.x, _wgslsmith_mod_i32(i32(-1i) * -1i, 13073i), i32(-1i) * -8037i)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2.b >> (vec4<u32>(arg_2.b.x, 13195u, u_input.b.x, arg_2.b.x) % vec4<u32>(32u)), select(arg_2.b, arg_2.b, 954f >= arg_2.c)), abs(select(arg_2.b, arg_2.b, vec4<bool>(true, arg_0.x, true, false)))), _wgslsmith_f_op_f32(abs(arg_2.c)), vec2<bool>(true, arg_0.x));
    var var_1 = _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(1161f - arg_1.x));
    let var_2 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, var_0.b.x), 4294967295u, ~47936u, 1u), reverseBits(vec4<u32>(arg_2.b.x, arg_2.b.x, u_input.b.x, 76618u) | var_0.b), vec4<u32>(firstTrailingBit(88654u), ~79269u, ~38257u, ~74848u) >> (firstLeadingBit(vec4<u32>(u_input.b.x, arg_2.b.x, 28929u, u_input.b.x)) % vec4<u32>(32u))), abs(select(_wgslsmith_mod_vec3_i32(var_0.a, u_input.c) << (vec3<u32>(arg_2.b.x, 0u, 5443u) % vec3<u32>(32u)), firstLeadingBit(-var_0.a), all(vec4<bool>(false, var_0.d.x, true, arg_0.x)))), Struct_1(-reverseBits(u_input.c >> (var_0.b.ywx % vec3<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, ~var_0.b.x, ~38227u, ~var_0.b.x), ~vec4<u32>(54981u, u_input.b.x, 1u, 11408u)), 330f, !vec2<bool>(true, arg_2.d.x)), ~22897i, vec4<i32>(arg_2.a.x, abs(arg_2.a.x | var_0.a.x) ^ (var_0.a.x | _wgslsmith_div_i32(44901i, u_input.c.x)), _wgslsmith_add_i32(_wgslsmith_sub_i32(abs(var_0.a.x), -4947i), -45462i), ~reverseBits(var_0.a.x)));
    global2 = array<Struct_1, 25>();
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(~(i32(-1i) * -55647i), countOneBits(var_2.d)), firstTrailingBit(~(-17638i >> (var_0.b.x % 32u))), -20458i), firstTrailingBit(~var_2.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.c.c, -1000f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f + arg_1.x)), -222f, (var_0.d.x & false) || true))), vec2<bool>(arg_2.d.x, -firstTrailingBit(13366i) < _wgslsmith_sub_i32(abs(u_input.c.x), 0i)));
    return _wgslsmith_add_vec2_i32(-vec2<i32>(37407i, var_2.d), -vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.a.zz, vec2<i32>(u_input.a.x, 30545i)), -u_input.a.x)) & min(vec2<i32>(arg_2.a.x, ~var_0.a.x), u_input.c.xz);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    global0 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_sub_vec2_i32(func_3(vec4<bool>(all(vec4<bool>(arg_1.c.d.x, false, false, arg_1.c.d.x)), arg_1.c.d.x, firstLeadingBit(10819i) >= -arg_0.x, !arg_1.c.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.c, arg_1.c.c, arg_1.c.c, 158f))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.c), -499f, _wgslsmith_f_op_f32(f32(-1f) * -1390f), arg_1.c.c)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.e.x, 1i, 47289i), vec3<i32>(arg_1.e.x, u_input.c.x, 0i)), vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(arg_2, 0u), ~arg_2, u_input.b.x), _wgslsmith_f_op_f32(arg_1.c.c * _wgslsmith_f_op_f32(-arg_1.c.c)), arg_1.c.d)), countOneBits(~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.x, arg_0.x), u_input.a, vec2<i32>(arg_1.c.a.x, u_input.c.x)), arg_1.e.xw)));
    var var_1 = select(arg_1.c.d, arg_1.c.d, arg_1.c.d.x);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~37769u, 4294967295u, arg_2), _wgslsmith_add_vec3_u32(u_input.b, ~vec3<u32>(arg_1.a.x, 41153u, u_input.b.x))), 29u)];
    let var_3 = ~vec4<u32>(~_wgslsmith_sub_u32(arg_2, ~0u), countOneBits(abs(u_input.b.x)), ~(~arg_2 ^ u_input.b.x), var_2.a.x);
    return ~arg_1.c.b;
}

fn func_1() -> vec3<i32> {
    var var_0 = u_input.b.x;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, ~(~0u)), 30u)];
    var_0 = 60224u;
    let var_2 = abs(u_input.c);
    var var_3 = ~(~_wgslsmith_dot_vec4_u32(~(~var_1.b), firstLeadingBit(func_2(vec4<i32>(u_input.a.x, 2147483647i, -47294i, var_1.a.x), Struct_2(var_1.b, vec3<i32>(var_1.a.x, var_1.a.x, 2147483647i), Struct_1(vec3<i32>(-27395i, 2147483647i, 1i), var_1.b, -1708f, var_1.d), var_1.a.x, vec4<i32>(1i, var_2.x, 0i, var_1.a.x)), u_input.b.x))));
    return -u_input.c >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, ~var_1.b.x, max(0u, 12915u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4875u, 65444u, 18152u), vec3<u32>(19920u, var_1.b.x, 75348u), abs(u_input.b))) & (vec3<u32>(u_input.b.x, u_input.b.x, 1u >> (1u % 32u)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, var_1.b.x, 1u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) ^ vec3<u32>(2636u, var_1.b.x, 8659u)))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.c.d.x;
    var var_1 = select((arg_1.b | ((arg_0.a | vec3<i32>(arg_0.a.x, arg_0.a.x, arg_1.c.a.x)) | (arg_0.a << (arg_1.c.b.wwy % vec3<u32>(32u))))) ^ ~(vec3<i32>(-1i) * -u_input.c), vec3<i32>(-arg_1.c.a.x, firstTrailingBit(max(firstTrailingBit(1i), _wgslsmith_mult_i32(1i, -1i))), -(~(-2147483647i >> (arg_0.b.x % 32u)))), select(arg_1.c.d.x, true, !(!(!var_0))));
    var_1 = vec3<i32>(-38020i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-14268i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.x, arg_0.a.x), vec2<i32>(arg_1.e.x, 2147483647i))), max(max(var_1.zz, vec2<i32>(arg_0.a.x, arg_1.e.x)), var_1.zy)), min(~(i32(-1i) * -u_input.c.x), 0i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x), _wgslsmith_sub_vec3_i32(-(u_input.c >> (vec3<u32>(u_input.b.x, 28212u, 4294967295u) % vec3<u32>(32u))), u_input.c), func_4(global2[_wgslsmith_index_u32(~u_input.b.x & ~min(15791u, 18774u), 25u)], Struct_2(vec4<u32>(reverseBits(u_input.b.x), 4294967295u, abs(u_input.b.x), 0u), func_1(), Struct_1(-u_input.c, firstLeadingBit(vec4<u32>(97125u, 14034u, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(605f + -883f), vec2<bool>(true, true)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -26191i), vec4<i32>(27863i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, ~u_input.a.x, -2147483647i, -u_input.a.x))), u_input.c.x, ~select(firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -1i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 13828i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, -2147483647i)), abs(select(vec4<i32>(2147483647i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(41114i, -61262i, u_input.a.x, 33444i), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), 1030f, -409f, var_0.c.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1197f, var_0.c.c, var_0.c.c, -1635f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.c, var_0.c.c, var_0.c.c, -1000f) - vec4<f32>(var_0.c.c, -1112f, 266f, -187f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.c, var_0.c.c, -289f, var_0.c.c))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.c, -1148f, var_0.c.c, var_0.c.c), vec4<f32>(var_0.c.c, var_0.c.c, -1928f, -1000f))))))), func_4(func_4(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x), 30u)], var_0), var_0).d.x && all(select(vec4<bool>(var_0.c.d.x, var_0.c.d.x, var_0.c.d.x, var_0.c.d.x), vec4<bool>(true, false, var_0.c.d.x, true), vec4<bool>(var_0.c.d.x, var_0.c.d.x, false, var_0.c.d.x)))));
    let var_2 = ~(~0u);
    let var_3 = global1[_wgslsmith_index_u32(var_2, 29u)];
    var var_4 = _wgslsmith_mod_u32(reverseBits(0u), _wgslsmith_mult_u32(abs(var_0.a.x), ~var_3.a.x));
    var var_5 = !select(var_0.c.d, select(vec2<bool>(var_3.c.d.x, var_3.c.d.x), vec2<bool>(var_1.x >= 610f, any(vec3<bool>(false, true, false))), !all(vec3<bool>(var_0.c.d.x, var_0.c.d.x, false))), var_3.c.d.x);
    var var_6 = Struct_2(~(vec4<u32>(u_input.b.x, 0u, 60473u, var_2) >> (var_0.a % vec4<u32>(32u))) ^ select(var_0.a, var_3.c.b & var_3.c.b, var_5.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.c), func_4(var_0.c, var_0), func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, ~var_0.a.x), 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 29u)]).a.x, select(vec4<i32>(_wgslsmith_sub_i32(-3592i, func_4(global0[_wgslsmith_index_u32(1u, 30u)], var_0).a.x), 1i, u_input.a.x, -reverseBits(-1i)), vec4<i32>(_wgslsmith_clamp_i32(-18147i ^ var_3.c.a.x, -2147483647i, _wgslsmith_mult_i32(-12586i, var_0.e.x)), u_input.c.x | _wgslsmith_sub_i32(-137i, -37952i), var_0.e.x, _wgslsmith_mult_i32(i32(-1i) * -9421i, reverseBits(var_3.c.a.x))), _wgslsmith_f_op_f32(ceil(var_0.c.c)) < -265f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e << (_wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.b.x, 25480u, 12139u, 1u), var_3.c.b, any(vec4<bool>(var_0.c.d.x, true, var_6.c.d.x, true))), ~(~vec4<u32>(4294967295u, 4294967295u, 64450u, var_3.c.b.x))) % vec4<u32>(32u)));
}

