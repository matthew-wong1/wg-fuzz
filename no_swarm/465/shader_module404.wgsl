struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(Struct_1(vec3<f32>(406f, 1421f, -615f), vec4<i32>(2147483647i, 14433i, 2147483647i, 50668i), vec3<u32>(44175u, 17876u, 4294967295u)), vec3<bool>(true, true, false), vec4<f32>(-171f, 671f, 426f, 1691f), Struct_1(vec3<f32>(1910f, 346f, 327f), vec4<i32>(-1i, -36489i, -56116i, i32(-2147483648)), vec3<u32>(1u, 38289u, 65003u))), Struct_1(vec3<f32>(2569f, 429f, 1000f), vec4<i32>(2339i, 0i, i32(-2147483648), i32(-2147483648)), vec3<u32>(63635u, 31747u, 1663u)), vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(429f, 1290f, -183f), vec4<i32>(16706i, 14376i, 2147483647i, 28913i), vec3<u32>(0u, 3396u, 0u)), -652f), Struct_3(Struct_2(Struct_1(vec3<f32>(4231f, -1833f, 1377f), vec4<i32>(-10721i, 1i, -46136i, -1i), vec3<u32>(7565u, 0u, 5004u)), vec3<bool>(false, true, true), vec4<f32>(-1376f, 232f, -1767f, -805f), Struct_1(vec3<f32>(1199f, -1000f, -233f), vec4<i32>(-39698i, 16762i, 59305i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 45448u))), Struct_1(vec3<f32>(-935f, 361f, 1333f), vec4<i32>(i32(-2147483648), 1i, 0i, 1i), vec3<u32>(1u, 4294967295u, 22461u)), vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(-484f, -881f, 829f), vec4<i32>(-18334i, i32(-2147483648), 15067i, -1i), vec3<u32>(0u, 59138u, 93475u)), 638f), Struct_3(Struct_2(Struct_1(vec3<f32>(-192f, 1237f, 1000f), vec4<i32>(2147483647i, 15733i, 0i, -1i), vec3<u32>(1u, 21729u, 21317u)), vec3<bool>(true, true, false), vec4<f32>(1039f, -158f, -846f, 1062f), Struct_1(vec3<f32>(1000f, 1082f, -891f), vec4<i32>(-59255i, i32(-2147483648), i32(-2147483648), -1i), vec3<u32>(4294967295u, 69045u, 93764u))), Struct_1(vec3<f32>(-329f, 1109f, 657f), vec4<i32>(-7111i, 0i, 2147483647i, 76328i), vec3<u32>(9194u, 1u, 0u)), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(-599f, 1000f, -817f), vec4<i32>(-51540i, -22305i, 36877i, i32(-2147483648)), vec3<u32>(54468u, 1u, 4294967295u)), 221f), Struct_3(Struct_2(Struct_1(vec3<f32>(1438f, -1204f, -1314f), vec4<i32>(0i, 2147483647i, 0i, -42293i), vec3<u32>(0u, 0u, 0u)), vec3<bool>(true, true, false), vec4<f32>(1422f, -1416f, 667f, -1000f), Struct_1(vec3<f32>(-701f, 1583f, -1137f), vec4<i32>(2147483647i, 1i, -1i, i32(-2147483648)), vec3<u32>(4294967295u, 6009u, 18800u))), Struct_1(vec3<f32>(-100f, -1356f, 343f), vec4<i32>(-1i, 2147483647i, 35086i, -1807i), vec3<u32>(7984u, 4217u, 50252u)), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(-242f, 188f, 142f), vec4<i32>(i32(-2147483648), 20733i, -22449i, -7030i), vec3<u32>(1u, 18465u, 0u)), 1275f), Struct_3(Struct_2(Struct_1(vec3<f32>(-2275f, -1000f, 132f), vec4<i32>(1i, 30342i, -1i, -40625i), vec3<u32>(11051u, 4294967295u, 0u)), vec3<bool>(false, true, true), vec4<f32>(-867f, -269f, 154f, 520f), Struct_1(vec3<f32>(-1000f, -1129f, 399f), vec4<i32>(-19238i, 23066i, i32(-2147483648), -5743i), vec3<u32>(34663u, 4294967295u, 11494u))), Struct_1(vec3<f32>(1000f, -158f, -1995f), vec4<i32>(i32(-2147483648), 0i, -25415i, -12245i), vec3<u32>(112973u, 0u, 0u)), vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(1000f, 1401f, 1000f), vec4<i32>(33764i, 64820i, -54399i, -24383i), vec3<u32>(2517u, 7295u, 25568u)), 444f), Struct_3(Struct_2(Struct_1(vec3<f32>(1970f, -2038f, -615f), vec4<i32>(4621i, 0i, -29062i, 2147483647i), vec3<u32>(44821u, 7872u, 0u)), vec3<bool>(false, false, false), vec4<f32>(-290f, 840f, -1688f, 448f), Struct_1(vec3<f32>(-377f, 233f, 1582f), vec4<i32>(-1i, 8091i, 37901i, -32394i), vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_1(vec3<f32>(-308f, 539f, -687f), vec4<i32>(-1i, -54611i, -1i, 93023i), vec3<u32>(2265u, 0u, 0u)), vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-1305f, -402f, 646f), vec4<i32>(i32(-2147483648), i32(-2147483648), -53675i, 0i), vec3<u32>(28551u, 1u, 1u)), 1275f), Struct_3(Struct_2(Struct_1(vec3<f32>(372f, 3084f, 1000f), vec4<i32>(-34250i, i32(-2147483648), 2147483647i, 1i), vec3<u32>(22033u, 21515u, 0u)), vec3<bool>(false, true, false), vec4<f32>(151f, -1603f, 884f, -993f), Struct_1(vec3<f32>(387f, -2168f, -2055f), vec4<i32>(-1i, 0i, 18716i, 0i), vec3<u32>(70802u, 1u, 8286u))), Struct_1(vec3<f32>(822f, 336f, -918f), vec4<i32>(1i, -19485i, -9619i, 2147483647i), vec3<u32>(1u, 1u, 45930u)), vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(1155f, -311f, 795f), vec4<i32>(1i, 13793i, i32(-2147483648), i32(-2147483648)), vec3<u32>(1u, 4294967295u, 90841u)), -689f), Struct_3(Struct_2(Struct_1(vec3<f32>(445f, 1152f, -431f), vec4<i32>(31840i, 1i, 0i, -1i), vec3<u32>(98412u, 1u, 1u)), vec3<bool>(false, false, true), vec4<f32>(214f, 591f, 760f, 332f), Struct_1(vec3<f32>(-391f, 1000f, -395f), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 37343i), vec3<u32>(51770u, 1u, 0u))), Struct_1(vec3<f32>(-173f, -172f, -654f), vec4<i32>(21249i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<u32>(25962u, 4294967295u, 7576u)), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(140f, -1419f, 1452f), vec4<i32>(2147483647i, -4136i, 1i, 0i), vec3<u32>(0u, 0u, 15958u)), 491f), Struct_3(Struct_2(Struct_1(vec3<f32>(-641f, -283f, -619f), vec4<i32>(-82000i, 10715i, -28975i, 2147483647i), vec3<u32>(80314u, 4294967295u, 48561u)), vec3<bool>(false, true, true), vec4<f32>(-398f, 937f, -246f, -310f), Struct_1(vec3<f32>(-930f, 113f, -603f), vec4<i32>(11155i, -38662i, 15631i, i32(-2147483648)), vec3<u32>(61678u, 4294967295u, 1u))), Struct_1(vec3<f32>(-1000f, -1637f, 1305f), vec4<i32>(-39586i, 1i, -1i, 6629i), vec3<u32>(1u, 4294967295u, 0u)), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(-603f, 1000f, 478f), vec4<i32>(i32(-2147483648), 4329i, -30348i, 23931i), vec3<u32>(32173u, 7561u, 4294967295u)), -654f), Struct_3(Struct_2(Struct_1(vec3<f32>(-732f, -628f, -798f), vec4<i32>(1i, 15211i, 15806i, -35456i), vec3<u32>(4294967295u, 4294967295u, 39039u)), vec3<bool>(true, true, false), vec4<f32>(-1000f, 269f, -1521f, -1368f), Struct_1(vec3<f32>(379f, -1351f, -1068f), vec4<i32>(7604i, -1i, -32457i, i32(-2147483648)), vec3<u32>(65885u, 121359u, 1u))), Struct_1(vec3<f32>(-401f, -1692f, -1000f), vec4<i32>(2112i, -1i, -33879i, 24956i), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(-872f, -937f, -193f), vec4<i32>(8069i, 0i, -4081i, 0i), vec3<u32>(13182u, 34346u, 34672u)), 1637f), Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, 227f, -2504f), vec4<i32>(-1i, i32(-2147483648), -51925i, i32(-2147483648)), vec3<u32>(1739u, 1u, 1u)), vec3<bool>(true, true, true), vec4<f32>(1350f, 774f, -1504f, 466f), Struct_1(vec3<f32>(-1410f, 358f, -1218f), vec4<i32>(-47771i, 2147483647i, -17261i, 1i), vec3<u32>(80339u, 1u, 1u))), Struct_1(vec3<f32>(175f, -399f, -818f), vec4<i32>(-27260i, -43407i, 22263i, 30402i), vec3<u32>(38334u, 4294967295u, 17828u)), vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(-293f, -308f, -1429f), vec4<i32>(-1i, 8838i, 1i, -48407i), vec3<u32>(17598u, 1u, 3908u)), -1445f), Struct_3(Struct_2(Struct_1(vec3<f32>(501f, -1258f, 1861f), vec4<i32>(1i, -1i, 28126i, -19834i), vec3<u32>(0u, 52043u, 1u)), vec3<bool>(true, true, false), vec4<f32>(-2529f, -111f, -1688f, -1220f), Struct_1(vec3<f32>(-104f, -362f, -523f), vec4<i32>(0i, -3999i, 1i, -6668i), vec3<u32>(33933u, 4294967295u, 0u))), Struct_1(vec3<f32>(818f, 403f, -588f), vec4<i32>(-15480i, 15970i, 9592i, -8295i), vec3<u32>(41262u, 1u, 25575u)), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(-2248f, 238f, -177f), vec4<i32>(2147483647i, -12752i, 2147483647i, 33987i), vec3<u32>(1u, 17311u, 27635u)), 635f), Struct_3(Struct_2(Struct_1(vec3<f32>(119f, 2112f, 672f), vec4<i32>(-16002i, -4500i, 22091i, 1i), vec3<u32>(38231u, 0u, 57393u)), vec3<bool>(false, true, false), vec4<f32>(338f, 1021f, -417f, 571f), Struct_1(vec3<f32>(592f, 1000f, -1237f), vec4<i32>(33277i, 0i, i32(-2147483648), -15322i), vec3<u32>(1u, 0u, 1u))), Struct_1(vec3<f32>(-216f, -516f, 318f), vec4<i32>(-20423i, i32(-2147483648), 2979i, 1981i), vec3<u32>(51747u, 1u, 37190u)), vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(-957f, -829f, 1000f), vec4<i32>(31304i, i32(-2147483648), 1i, -10736i), vec3<u32>(1u, 1u, 1u)), 1288f), Struct_3(Struct_2(Struct_1(vec3<f32>(-689f, 626f, -1582f), vec4<i32>(-1i, 1i, -1i, 1i), vec3<u32>(6820u, 18035u, 70479u)), vec3<bool>(true, false, true), vec4<f32>(-1594f, 592f, 833f, -1094f), Struct_1(vec3<f32>(1360f, 1000f, 1098f), vec4<i32>(i32(-2147483648), -4875i, -13505i, 31323i), vec3<u32>(29483u, 26268u, 1u))), Struct_1(vec3<f32>(-1579f, 1460f, 345f), vec4<i32>(-28017i, 3958i, -31075i, i32(-2147483648)), vec3<u32>(4294967295u, 94543u, 21537u)), vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(238f, -605f, 800f), vec4<i32>(2147483647i, 0i, -15176i, i32(-2147483648)), vec3<u32>(0u, 1u, 42889u)), -709f), Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, -513f, 969f), vec4<i32>(0i, 1i, 0i, 2147483647i), vec3<u32>(0u, 4294967295u, 69378u)), vec3<bool>(false, false, false), vec4<f32>(-759f, -1354f, 376f, 310f), Struct_1(vec3<f32>(440f, -516f, 218f), vec4<i32>(-47739i, 2147483647i, 2147483647i, i32(-2147483648)), vec3<u32>(4294967295u, 75219u, 31675u))), Struct_1(vec3<f32>(325f, -913f, -1283f), vec4<i32>(-11599i, 1i, 26949i, 36804i), vec3<u32>(81401u, 1u, 4294967295u)), vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(-163f, -284f, 985f), vec4<i32>(2147483647i, -1i, i32(-2147483648), 41846i), vec3<u32>(4294967295u, 52426u, 5194u)), -955f), Struct_3(Struct_2(Struct_1(vec3<f32>(-1522f, -560f, 1423f), vec4<i32>(-1i, 22106i, 6889i, 0i), vec3<u32>(47609u, 4294967295u, 4294967295u)), vec3<bool>(true, false, false), vec4<f32>(-518f, 553f, -323f, -398f), Struct_1(vec3<f32>(-667f, -730f, 1330f), vec4<i32>(1080i, -1i, 2147483647i, 34868i), vec3<u32>(0u, 52588u, 0u))), Struct_1(vec3<f32>(1240f, 450f, 577f), vec4<i32>(57597i, -1i, 2147483647i, 15709i), vec3<u32>(22864u, 52824u, 58223u)), vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(662f, -1000f, -532f), vec4<i32>(2147483647i, 1i, 1i, 2147483647i), vec3<u32>(1u, 0u, 21977u)), -329f), Struct_3(Struct_2(Struct_1(vec3<f32>(338f, 1000f, 415f), vec4<i32>(-1i, -12378i, 1i, 2147483647i), vec3<u32>(1u, 0u, 2363u)), vec3<bool>(true, true, true), vec4<f32>(216f, 180f, -1000f, 329f), Struct_1(vec3<f32>(231f, -1471f, -1292f), vec4<i32>(25056i, -18511i, 3326i, -1i), vec3<u32>(71394u, 7256u, 0u))), Struct_1(vec3<f32>(465f, -990f, 1133f), vec4<i32>(-33086i, -44381i, 12639i, 10290i), vec3<u32>(1u, 57747u, 14219u)), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(1069f, 1285f, 427f), vec4<i32>(0i, 0i, i32(-2147483648), 0i), vec3<u32>(1u, 4294967295u, 15797u)), 312f), Struct_3(Struct_2(Struct_1(vec3<f32>(-1332f, 417f, 1099f), vec4<i32>(-1i, -28557i, 13737i, 1i), vec3<u32>(3685u, 4294967295u, 0u)), vec3<bool>(true, true, true), vec4<f32>(-569f, 470f, 225f, -318f), Struct_1(vec3<f32>(-936f, 921f, -393f), vec4<i32>(39226i, 21737i, -17245i, -47790i), vec3<u32>(24358u, 73690u, 6233u))), Struct_1(vec3<f32>(-1081f, 1359f, 399f), vec4<i32>(i32(-2147483648), 3978i, 34320i, 1i), vec3<u32>(4294967295u, 48673u, 27063u)), vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(-572f, 1169f, 1000f), vec4<i32>(-36870i, 67732i, 0i, i32(-2147483648)), vec3<u32>(36608u, 4294967295u, 1u)), -1000f), Struct_3(Struct_2(Struct_1(vec3<f32>(958f, -1152f, 780f), vec4<i32>(i32(-2147483648), 12501i, 1i, 1i), vec3<u32>(4294967295u, 2920u, 0u)), vec3<bool>(true, false, false), vec4<f32>(-394f, -2021f, 451f, -831f), Struct_1(vec3<f32>(-1162f, 686f, 403f), vec4<i32>(41368i, 0i, -1i, 8132i), vec3<u32>(1u, 69717u, 1u))), Struct_1(vec3<f32>(-236f, 815f, -580f), vec4<i32>(-1i, -18339i, 0i, 1i), vec3<u32>(3537u, 11727u, 1u)), vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(-390f, 1246f, -524f), vec4<i32>(i32(-2147483648), -18265i, 0i, -1i), vec3<u32>(32272u, 0u, 1u)), 827f), Struct_3(Struct_2(Struct_1(vec3<f32>(1251f, 716f, 1000f), vec4<i32>(2147483647i, 0i, 1i, -6133i), vec3<u32>(22449u, 43945u, 78393u)), vec3<bool>(true, false, false), vec4<f32>(-326f, 607f, -130f, 413f), Struct_1(vec3<f32>(728f, -611f, 311f), vec4<i32>(-1i, 1i, 0i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_1(vec3<f32>(370f, 1619f, 128f), vec4<i32>(i32(-2147483648), i32(-2147483648), -20250i, 2667i), vec3<u32>(62981u, 1u, 0u)), vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(-1247f, 196f, 1234f), vec4<i32>(-29682i, -689i, -12417i, -2307i), vec3<u32>(4294967295u, 1u, 76433u)), 512f), Struct_3(Struct_2(Struct_1(vec3<f32>(-822f, 220f, 1447f), vec4<i32>(i32(-2147483648), 1i, 0i, 50054i), vec3<u32>(41796u, 28558u, 0u)), vec3<bool>(false, true, true), vec4<f32>(351f, 615f, -1177f, 1000f), Struct_1(vec3<f32>(-345f, -2700f, 548f), vec4<i32>(-63927i, 31905i, -20131i, 85602i), vec3<u32>(63362u, 4294967295u, 14847u))), Struct_1(vec3<f32>(-756f, 887f, 965f), vec4<i32>(-31262i, 18474i, 22581i, 19346i), vec3<u32>(7035u, 20625u, 1u)), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(-829f, 609f, 383f), vec4<i32>(-1i, i32(-2147483648), -27083i, 2147483647i), vec3<u32>(6233u, 0u, 0u)), 182f), Struct_3(Struct_2(Struct_1(vec3<f32>(-3301f, 2103f, 1990f), vec4<i32>(0i, 2147483647i, 29353i, 2147483647i), vec3<u32>(0u, 8573u, 1u)), vec3<bool>(true, false, true), vec4<f32>(207f, 1000f, 847f, 1062f), Struct_1(vec3<f32>(1153f, -782f, -357f), vec4<i32>(2147483647i, -27181i, 2147483647i, 1i), vec3<u32>(16307u, 57052u, 1u))), Struct_1(vec3<f32>(-436f, 1784f, -896f), vec4<i32>(-44568i, -14673i, -19168i, 2147483647i), vec3<u32>(49856u, 79069u, 5484u)), vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(337f, 1186f, 478f), vec4<i32>(-34670i, -1i, -27629i, 18913i), vec3<u32>(14272u, 6960u, 13678u)), 2722f), Struct_3(Struct_2(Struct_1(vec3<f32>(-1017f, 1597f, -584f), vec4<i32>(-48908i, 28226i, 3186i, -11823i), vec3<u32>(0u, 0u, 0u)), vec3<bool>(false, false, false), vec4<f32>(-299f, 284f, 1000f, 963f), Struct_1(vec3<f32>(2271f, 1997f, 112f), vec4<i32>(0i, 0i, 0i, -1119i), vec3<u32>(4294967295u, 1u, 69250u))), Struct_1(vec3<f32>(237f, 785f, 175f), vec4<i32>(0i, 2147483647i, 51844i, 1i), vec3<u32>(31865u, 17404u, 4294967295u)), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(1000f, -1000f, 3014f), vec4<i32>(-14155i, -1i, -98846i, 21030i), vec3<u32>(0u, 1u, 31286u)), 1000f), Struct_3(Struct_2(Struct_1(vec3<f32>(-883f, -2180f, 1294f), vec4<i32>(4198i, 0i, -51461i, 53559i), vec3<u32>(45421u, 24130u, 4294967295u)), vec3<bool>(false, false, true), vec4<f32>(2672f, 1151f, -1000f, 480f), Struct_1(vec3<f32>(642f, -324f, -213f), vec4<i32>(0i, 24118i, -21340i, 27522i), vec3<u32>(1u, 42789u, 5874u))), Struct_1(vec3<f32>(-1189f, 2533f, -1325f), vec4<i32>(i32(-2147483648), -1i, 15047i, 0i), vec3<u32>(4294967295u, 0u, 23121u)), vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(1161f, 125f, 810f), vec4<i32>(47465i, i32(-2147483648), 2147483647i, 1i), vec3<u32>(0u, 9834u, 20418u)), 789f), Struct_3(Struct_2(Struct_1(vec3<f32>(1812f, -391f, 113f), vec4<i32>(21735i, -17393i, 2147483647i, 9034i), vec3<u32>(1u, 56578u, 18114u)), vec3<bool>(false, false, false), vec4<f32>(120f, -893f, 1000f, 1217f), Struct_1(vec3<f32>(777f, -468f, -1000f), vec4<i32>(-17684i, -1i, 20649i, 80546i), vec3<u32>(1u, 4294967295u, 52039u))), Struct_1(vec3<f32>(848f, -200f, 1000f), vec4<i32>(i32(-2147483648), -3983i, 16151i, -26579i), vec3<u32>(1u, 1u, 4294967295u)), vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-249f, 127f, -661f), vec4<i32>(1i, -1i, -44893i, -17630i), vec3<u32>(0u, 30117u, 39535u)), 1000f));

var<private> global2: array<bool, 22> = array<bool, 22>(true, true, false, false, false, false, true, true, false, false, false, false, false, true, true, false, true, false, false, true, false, true);

var<private> global3: bool = false;

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2108f, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-583f, -1378f, arg_2.d.a.x), vec3<f32>(-1429f, arg_2.e, arg_0)), vec3<f32>(arg_2.d.a.x, arg_0, arg_2.b.a.x)))), countOneBits(vec4<i32>(global4.x, arg_2.d.b.x, 4028i, 2147483647i) << (vec4<u32>(0u, 21365u, arg_2.b.c.x, 1u) % vec4<u32>(32u))), arg_1.wwx), !vec3<bool>(all(!vec3<bool>(false, global2[_wgslsmith_index_u32(10712u, 22u)], arg_2.a.b.x)), true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(16471u << (1u % 32u), 44437u), 22u)]), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_div_f32(1319f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1858f)))), 1062f), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-209f, 716f, arg_0), vec3<f32>(-418f, 840f, arg_0), global2[_wgslsmith_index_u32(arg_1.x, 22u)]))))), ~arg_2.b.b, firstLeadingBit(reverseBits(_wgslsmith_clamp_vec3_u32(arg_2.d.c, vec3<u32>(0u, u_input.a.x, arg_2.a.a.c.x), vec3<u32>(0u, 48419u, 1u))))));
    var var_1 = Struct_2(arg_2.d, vec3<bool>(arg_2.a.b.x, global2[_wgslsmith_index_u32(arg_1.x, 22u)], global2[_wgslsmith_index_u32(52397u, 22u)]), arg_2.a.c, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.e, var_0.a.a.x), arg_0, var_0.d.a.x)), vec4<i32>(abs(-2147483647i), select(35914i, -8737i, false), -2147483647i, -_wgslsmith_dot_vec2_i32(arg_2.b.b.yz, arg_2.a.a.b.zw)), arg_2.b.c));
    global3 = !(!((var_0.a.c.x <= 4294967295u) | all(var_1.b.zz)) | (_wgslsmith_sub_u32(arg_2.b.c.x, select(arg_1.x, arg_1.x, var_1.b.x)) >= countOneBits(~u_input.a.x)));
    let var_2 = var_0;
    var var_3 = 16008i;
    return _wgslsmith_f_op_f32(abs(arg_2.e));
}

fn func_2() -> Struct_1 {
    global3 = true;
    global2 = array<bool, 22>();
    global2 = array<bool, 22>();
    let var_0 = vec3<u32>(u_input.b, u_input.a.x, ~u_input.b);
    let var_1 = -1733f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.b, 7u)], vec3<f32>(var_1, -999f, var_1)), vec3<f32>(1124f, -1528f, _wgslsmith_f_op_f32(func_3(1196f, vec4<u32>(31188u, var_0.x, 0u, 4294967295u), global1[_wgslsmith_index_u32(u_input.b, 25u)]))), !(!vec3<bool>(global2[_wgslsmith_index_u32(39868u, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)])))))), vec4<i32>(u_input.c.x & u_input.c.x, global4.x, firstTrailingBit(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, global4.x), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)))), 18741i), vec3<u32>(reverseBits(countOneBits(~u_input.b)), 49547u, 4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = u_input.c.yy;
    let var_1 = global1[_wgslsmith_index_u32(~0u, 25u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.a.x, 743f, 615f), vec3<f32>(arg_1.d.a.x, -1257f, 1857f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3.a, arg_3.a, arg_1.b)) - _wgslsmith_f_op_vec3_f32(select(arg_1.c.zxz, vec3<f32>(var_1.e, 529f, arg_3.a.x), false))))), vec4<i32>(-1i) * -vec4<i32>(select(-13782i, 23116i, true), select(2147483647i, arg_3.b.x, global2[_wgslsmith_index_u32(arg_1.d.c.x, 22u)]), func_2().b.x, -23630i), _wgslsmith_sub_vec3_u32(vec3<u32>(59854u, u_input.a.x, reverseBits(select(var_1.a.d.c.x, arg_1.a.c.x, var_1.c.x))), _wgslsmith_mult_vec3_u32(var_1.d.c, arg_0.d.c)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2986f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.b.a.x, _wgslsmith_f_op_f32(arg_0.d.a.x + 502f)))))), 974f);
    let var_4 = _wgslsmith_f_op_f32(min(arg_0.d.a.x, arg_1.d.a.x));
    return var_1.a.b.x & true;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1) -> Struct_2 {
    global3 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a - _wgslsmith_div_vec3_f32(arg_0.a.d.a, arg_1.a)), vec4<i32>(-arg_1.b.x, -global4.x, ~u_input.c.x, 1i), select(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(arg_1.c.x, 4294967295u, 4294967295u) << (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), arg_0.a.c.yxx)), select(!arg_0.a.c.wxz, !select(arg_0.a.a.b, arg_0.a.c.www, arg_0.a.a.b), any(select(arg_0.a.c, arg_0.a.c, arg_0.a.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.a.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.a.a.x, -782f, arg_1.a.x, arg_1.a.x)))), func_2()), Struct_2(func_2(), !arg_0.a.c.yyy, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, -745f, -351f, arg_0.a.a.c.x))))), Struct_1(arg_0.a.b.a, _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1.b.x, u_input.c.x, global4.x, -2147483647i), ~arg_0.a.b.b), ~vec3<u32>(arg_0.a.b.c.x, 1u, 4294967295u))), ~(func_2().b.x & global4.x), arg_1);
    let var_0 = arg_0.a.a.b.zz;
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.a.a.c);
    var var_2 = vec4<bool>(true, all(select(!arg_0.a.a.b, arg_0.a.a.b, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-160f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f))), any(var_0));
    var var_3 = !(!var_2.zw);
    return arg_0.a.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_3 {
    global1 = array<Struct_3, 25>();
    global4 = _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, ~(~(-arg_0.a.b.x)), i32(-1i) * -arg_0.a.b.x));
    var var_0 = func_4(Struct_2(func_1(Struct_5(Struct_3(Struct_2(arg_0.d, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true, global2[_wgslsmith_index_u32(96064u, 22u)]), vec4<f32>(-1019f, 1593f, 1053f, 1000f), Struct_1(arg_0.a.a, arg_0.a.b, vec3<u32>(488u, u_input.a.x, 74603u))), arg_0.a, vec4<bool>(global2[_wgslsmith_index_u32(arg_0.d.c.x, 22u)], false, global2[_wgslsmith_index_u32(32944u, 22u)], arg_0.b.x), Struct_1(arg_0.d.a, arg_0.a.b, vec3<u32>(arg_0.a.c.x, arg_0.d.c.x, u_input.b)), -1242f), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 43414i, 1i, arg_0.d.b.x), vec4<i32>(-13149i, u_input.c.x, arg_0.a.b.x, u_input.c.x)), abs(arg_1.zwy), true), func_2()).a, !select(!vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.b, vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.a.c.x, 22u)], true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(arg_0.c, arg_0.c)), _wgslsmith_f_op_vec4_f32(-arg_0.c)))), func_1(Struct_5(Struct_3(arg_0, Struct_1(vec3<f32>(arg_0.c.x, arg_0.a.a.x, arg_0.c.x), arg_0.a.b, vec3<u32>(arg_0.d.c.x, 47802u, arg_0.a.c.x)), vec4<bool>(global2[_wgslsmith_index_u32(33183u, 22u)], true, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(arg_1.x, 22u)]), Struct_1(vec3<f32>(-1433f, arg_0.c.x, 1185f), vec4<i32>(arg_0.d.b.x, global4.x, arg_0.a.b.x, u_input.c.x), arg_0.d.c), arg_0.a.a.x), 2147483647i, ~vec3<u32>(arg_0.d.c.x, u_input.a.x, arg_1.x), true), Struct_1(vec3<f32>(-446f, arg_0.a.a.x, 357f), arg_0.a.b, arg_1.www ^ vec3<u32>(1u, arg_0.a.c.x, 4294967295u))).a), Struct_2(func_2(), !vec3<bool>(!arg_0.b.x, select(global2[_wgslsmith_index_u32(21405u, 22u)], arg_0.b.x, true), true), arg_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_0.d.c.x, 7u)])), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.b.x, -1i, global4.x, 2147483647i), arg_0.a.b)), arg_1.xxz)), _wgslsmith_mod_i32(7497i, global4.x), arg_0.a);
    let var_1 = vec4<u32>(1u, _wgslsmith_dot_vec4_u32(((vec4<u32>(arg_0.a.c.x, u_input.b, arg_1.x, 1u) << (arg_1 % vec4<u32>(32u))) >> ((vec4<u32>(arg_1.x, 1u, 41753u, 1u) ^ vec4<u32>(arg_0.a.c.x, 17985u, u_input.b, arg_1.x)) % vec4<u32>(32u))) & firstTrailingBit(min(arg_1, arg_1)), arg_1), ~func_2().c.x, 0u);
    var_0 = true | any(select(select(select(vec4<bool>(false, arg_0.b.x, false, global2[_wgslsmith_index_u32(arg_1.x, 22u)]), vec4<bool>(false, arg_0.b.x, global2[_wgslsmith_index_u32(u_input.b, 22u)], false), true), !vec4<bool>(true, arg_0.b.x, false, global2[_wgslsmith_index_u32(4294967295u, 22u)]), false), select(vec4<bool>(false, arg_0.b.x, false, global2[_wgslsmith_index_u32(u_input.b, 22u)]), select(vec4<bool>(true, true, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 22u)], false, false), vec4<bool>(arg_0.b.x, global2[_wgslsmith_index_u32(arg_1.x, 22u)], arg_0.b.x, global2[_wgslsmith_index_u32(u_input.b, 22u)])), vec4<bool>(true, false, arg_0.b.x, arg_0.b.x)), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], false, arg_0.b.x, false), select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 22u)], arg_0.b.x, false, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.d.c.x, 22u)], arg_0.b.x, true, arg_0.b.x), false), vec4<bool>(true, false, false, false))));
    return global1[_wgslsmith_index_u32(123629u, 25u)];
}

fn func_6(arg_0: Struct_3) -> vec2<u32> {
    global2 = array<bool, 22>();
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(arg_0.b.c.x, arg_0.b.c.x)), 7u)], vec4<i32>(12082i, _wgslsmith_dot_vec2_i32(func_5(Struct_2(arg_0.b, vec3<bool>(arg_0.a.b.x, arg_0.c.x, true), arg_0.a.c, arg_0.a.d), vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u)).d.b.yw, vec2<i32>(arg_0.b.b.x & 0i, ~arg_0.d.b.x)), 39451i, abs(countOneBits(global4.x))), countOneBits(arg_0.a.a.c));
    global0 = array<vec3<f32>, 7>();
    var var_1 = -141f;
    var var_2 = -arg_0.a.d.b.x;
    return ~vec2<u32>(arg_0.d.c.x << (18150u % 32u), ~(arg_0.d.c.x >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -(u_input.c | u_input.c);
    let var_0 = _wgslsmith_sub_vec2_u32(~func_6(func_5(func_1(Struct_5(global1[_wgslsmith_index_u32(u_input.b, 25u)], -1i, vec3<u32>(u_input.b, u_input.b, u_input.b), global2[_wgslsmith_index_u32(u_input.b, 22u)]), Struct_1(vec3<f32>(-872f, -601f, -1293f), vec4<i32>(global4.x, global4.x, 6148i, global4.x), vec3<u32>(u_input.b, 0u, u_input.b))), ~vec4<u32>(20871u, 312u, u_input.a.x, u_input.b))), vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_div_u32(21926u, u_input.a.x), select(u_input.b, u_input.a.x, global2[_wgslsmith_index_u32(0u, 22u)])), ~u_input.b));
    global4 = select(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(global4.xx, global4.yx)), (1i >> (~u_input.a.x % 32u)) << (func_2().c.x % 32u), -3513i), vec3<i32>(16518i, -35415i, firstLeadingBit(reverseBits(-31044i))), func_1(Struct_5(global1[_wgslsmith_index_u32(~27909u, 25u)], firstTrailingBit(-10584i), func_2().c, any(func_5(Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 7u)], vec4<i32>(u_input.c.x, u_input.c.x, global4.x, -19162i), vec3<u32>(var_0.x, 0u, u_input.b)), vec3<bool>(global2[_wgslsmith_index_u32(65221u, 22u)], true, global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<f32>(1143f, 457f, 476f, 1301f), Struct_1(vec3<f32>(1691f, 2339f, 733f), vec4<i32>(global4.x, u_input.c.x, 4604i, u_input.c.x), vec3<u32>(13787u, u_input.b, u_input.b))), vec4<u32>(0u, 4400u, 1u, var_0.x)).c)), Struct_1(func_5(func_1(Struct_5(global1[_wgslsmith_index_u32(67976u, 25u)], 1i, vec3<u32>(u_input.b, 1u, var_0.x), true), Struct_1(vec3<f32>(-1383f, -1115f, -1219f), vec4<i32>(-1i, -31810i, 42618i, global4.x), vec3<u32>(u_input.b, 109585u, var_0.x))), ~vec4<u32>(1u, var_0.x, 34653u, 1u)).d.a, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, global4.x, -14924i, u_input.c.x)), vec4<i32>(-68255i, -1i, u_input.c.x, -2315i) ^ vec4<i32>(-27215i, 0i, global4.x, 2147483647i)), ~vec3<u32>(var_0.x, 1u, 5399u))).b);
    let var_1 = Struct_3(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-143f * 462f), _wgslsmith_f_op_f32(-245f + 591f), 275f), ~vec4<i32>(15481i, global4.x, global4.x, 14989i) << (~vec4<u32>(u_input.b, var_0.x, 1u, var_0.x) % vec4<u32>(32u)), countOneBits(~vec3<u32>(u_input.b, var_0.x, var_0.x))), func_5(Struct_2(Struct_1(vec3<f32>(-450f, 104f, 1732f), vec4<i32>(global4.x, global4.x, 1i, -2147483647i), vec3<u32>(var_0.x, 1144u, 29762u)), select(vec3<bool>(global2[_wgslsmith_index_u32(45863u, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true), vec3<bool>(global2[_wgslsmith_index_u32(55826u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], true), global2[_wgslsmith_index_u32(var_0.x, 22u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2197f, -1000f, -1103f, 1600f)), func_2()), vec4<u32>(0u, 21375u, 1u, 17702u) | firstLeadingBit(vec4<u32>(52108u, var_0.x, 41627u, 4294967295u))).c.zxz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-353f, 1634f, 374f, 296f))) - vec4<f32>(-1615f, _wgslsmith_f_op_f32(max(-1530f, -289f)), -618f, _wgslsmith_f_op_f32(-156f + -993f))), Struct_1(vec3<f32>(-1802f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1660f)), select(vec4<i32>(global4.x, 1i, global4.x, 11758i), reverseBits(vec4<i32>(global4.x, u_input.c.x, u_input.c.x, u_input.c.x)), true), vec3<u32>(func_1(Struct_5(Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(37168u, 7u)], vec4<i32>(3439i, global4.x, global4.x, 5204i), vec3<u32>(35371u, u_input.b, u_input.b)), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec4<f32>(-921f, -814f, -600f, 1196f), Struct_1(vec3<f32>(-1408f, 1795f, 552f), vec4<i32>(u_input.c.x, -2147483647i, 20949i, 1i), vec3<u32>(34568u, u_input.a.x, 25394u))), Struct_1(vec3<f32>(-439f, 683f, -1006f), vec4<i32>(-1i, u_input.c.x, u_input.c.x, global4.x), vec3<u32>(4294967295u, 9685u, u_input.b)), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(42357u, 22u)]), Struct_1(vec3<f32>(-160f, -1942f, -2528f), vec4<i32>(1i, -6685i, -1i, global4.x), vec3<u32>(1u, 4294967295u, 1u)), 406f), 12705i, vec3<u32>(var_0.x, 23572u, u_input.b), global2[_wgslsmith_index_u32(u_input.b, 22u)]), Struct_1(vec3<f32>(323f, -772f, -615f), vec4<i32>(2147483647i, 50567i, 3091i, 2147483647i), vec3<u32>(u_input.a.x, 50781u, u_input.a.x))).a.c.x, 39086u, var_0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(1u, 7u)], vec3<f32>(145f, 793f, -3068f))), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_0.x, 7u)] * vec3<f32>(1815f, -1738f, 1000f)), false))), ~(~(~vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, global4.x))), select(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(0u, 0u)), u_input.b, 1u), vec3<u32>(func_1(Struct_5(global1[_wgslsmith_index_u32(1u, 25u)], global4.x, vec3<u32>(u_input.a.x, 0u, 1u), global2[_wgslsmith_index_u32(93713u, 22u)]), Struct_1(vec3<f32>(300f, -2071f, -587f), vec4<i32>(global4.x, 2147483647i, -2147483647i, 16689i), vec3<u32>(u_input.b, var_0.x, u_input.a.x))).d.c.x, 4294967295u, ~var_0.x), select(func_5(Struct_2(Struct_1(global0[_wgslsmith_index_u32(23380u, 7u)], vec4<i32>(2147483647i, global4.x, -2147483647i, u_input.c.x), vec3<u32>(1u, u_input.a.x, 0u)), vec3<bool>(false, true, true), vec4<f32>(532f, -704f, -1353f, 469f), Struct_1(vec3<f32>(408f, -205f, 769f), vec4<i32>(u_input.c.x, 4394i, u_input.c.x, global4.x), vec3<u32>(u_input.b, u_input.b, var_0.x))), vec4<u32>(1u, var_0.x, 1u, 29944u)).c.wwy, !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(0u, 22u)]), func_5(Struct_2(Struct_1(vec3<f32>(-1283f, -881f, 515f), vec4<i32>(global4.x, 10688i, u_input.c.x, u_input.c.x), vec3<u32>(u_input.a.x, var_0.x, u_input.b)), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 22u)], true), vec4<f32>(-394f, -403f, -2813f, 1007f), Struct_1(vec3<f32>(-242f, -781f, -2659f), vec4<i32>(2147483647i, 37962i, -33678i, -10362i), vec3<u32>(0u, u_input.b, var_0.x))), vec4<u32>(1u, 4294967295u, 1u, 16153u)).a.b.x))), select(select(vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true, global2[_wgslsmith_index_u32(1u, 22u)])), global2[_wgslsmith_index_u32(7575u, 22u)], true, !global2[_wgslsmith_index_u32(1u, 22u)]), !vec4<bool>(global2[_wgslsmith_index_u32(20775u, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(var_0.x, 22u)]), vec4<bool>(func_4(Struct_2(Struct_1(vec3<f32>(493f, -239f, -927f), vec4<i32>(u_input.c.x, u_input.c.x, global4.x, -6380i), vec3<u32>(1u, var_0.x, var_0.x)), vec3<bool>(global2[_wgslsmith_index_u32(2306u, 22u)], global2[_wgslsmith_index_u32(var_0.x, 22u)], false), vec4<f32>(-1264f, 605f, -377f, 148f), Struct_1(vec3<f32>(-396f, 489f, -135f), vec4<i32>(-34432i, global4.x, -10049i, -36937i), vec3<u32>(0u, 4043u, u_input.b))), Struct_2(Struct_1(vec3<f32>(2026f, 1369f, 165f), vec4<i32>(-34658i, global4.x, global4.x, u_input.c.x), vec3<u32>(0u, u_input.a.x, 30333u)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 22u)], true, false), vec4<f32>(967f, 1070f, 1000f, -1548f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 7u)], vec4<i32>(2147483647i, u_input.c.x, 2147483647i, 1i), vec3<u32>(1u, 6673u, 1u))), 18257i, Struct_1(vec3<f32>(1457f, 843f, -193f), vec4<i32>(global4.x, 2147483647i, global4.x, 15852i), vec3<u32>(4294967295u, 0u, var_0.x))), true, global2[_wgslsmith_index_u32(u_input.a.x, 22u)] == global2[_wgslsmith_index_u32(var_0.x, 22u)], global2[_wgslsmith_index_u32(~var_0.x, 22u)])), vec4<bool>(true, func_1(Struct_5(Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 7u)], vec4<i32>(global4.x, global4.x, u_input.c.x, 5384i), vec3<u32>(var_0.x, u_input.b, var_0.x)), vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 22u)], global2[_wgslsmith_index_u32(var_0.x, 22u)]), vec4<f32>(1787f, -1000f, -539f, 746f), Struct_1(vec3<f32>(-694f, 508f, -711f), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, 22910i), vec3<u32>(1u, u_input.b, var_0.x))), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 7u)], vec4<i32>(-2147483647i, global4.x, global4.x, 13646i), vec3<u32>(389u, 1u, u_input.a.x)), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(980u, 22u)], true), Struct_1(vec3<f32>(2092f, 508f, -777f), vec4<i32>(u_input.c.x, 12577i, 2147483647i, global4.x), vec3<u32>(u_input.b, var_0.x, var_0.x)), 523f), u_input.c.x, vec3<u32>(0u, 52007u, var_0.x), global2[_wgslsmith_index_u32(57750u, 22u)]), func_2()).b.x, max(var_0.x, 4294967295u) <= _wgslsmith_div_u32(u_input.a.x, 73206u), false), true), Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(u_input.b, 4294967295u))), 7u)], -(~vec4<i32>(global4.x, global4.x, -14571i, 3336i)), ~((vec3<u32>(4294967295u, 4294967295u, 34488u) << (vec3<u32>(u_input.b, 75070u, u_input.b) % vec3<u32>(32u))) >> ((vec3<u32>(59233u, var_0.x, 12560u) ^ vec3<u32>(1705u, 4294967295u, u_input.b)) % vec3<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f - 361f)))));
    global0 = array<vec3<f32>, 7>();
    global2 = array<bool, 22>();
    let var_2 = vec2<i32>(-2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.c.x, 1u, u_input.a.x), var_1.b.c) % 32u), global4.x) & -(~(-(~vec2<i32>(u_input.c.x, -6130i))));
    global2 = array<bool, 22>();
    global3 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_5(var_1.a, firstLeadingBit(vec4<u32>(var_0.x, 36014u, 0u, u_input.a.x))).d.c.x, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~var_0.x)), global4.xz, _wgslsmith_clamp_i32(2147483647i, global4.x, -76389i));
}

