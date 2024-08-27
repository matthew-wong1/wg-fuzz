struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec2<bool>(true, false), true, vec2<f32>(1645f, 454f), vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(true, false), true, vec2<f32>(-1520f, 124f), vec4<bool>(false, false, false, true)), Struct_2(4294967295u, vec4<u32>(1u, 1u, 1u, 4294967295u), -40895i, Struct_1(vec2<bool>(true, false), false, vec2<f32>(-901f, 337f), vec4<bool>(true, false, false, false)), vec4<i32>(13478i, 48676i, 0i, -1i)), vec4<u32>(4899u, 54304u, 12264u, 49065u), Struct_2(34551u, vec4<u32>(84744u, 59302u, 11284u, 1u), 0i, Struct_1(vec2<bool>(true, false), false, vec2<f32>(773f, -1000f), vec4<bool>(false, false, true, false)), vec4<i32>(-1i, 27077i, -1i, -1i))), Struct_3(Struct_1(vec2<bool>(true, true), true, vec2<f32>(473f, 387f), vec4<bool>(false, false, true, true)), Struct_1(vec2<bool>(true, true), true, vec2<f32>(-1000f, -1000f), vec4<bool>(false, false, true, false)), Struct_2(1u, vec4<u32>(26138u, 4294967295u, 1u, 1u), 243i, Struct_1(vec2<bool>(true, true), true, vec2<f32>(-703f, -799f), vec4<bool>(false, true, true, true)), vec4<i32>(2147483647i, -43028i, i32(-2147483648), 2147483647i)), vec4<u32>(31356u, 29182u, 61906u, 6750u), Struct_2(57602u, vec4<u32>(16946u, 1u, 4294967295u, 29815u), 1i, Struct_1(vec2<bool>(false, true), true, vec2<f32>(-262f, 676f), vec4<bool>(false, true, true, true)), vec4<i32>(2147483647i, 1i, 0i, -1i))), Struct_3(Struct_1(vec2<bool>(true, true), false, vec2<f32>(1000f, 1000f), vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(false, false), false, vec2<f32>(116f, 1778f), vec4<bool>(false, false, true, true)), Struct_2(4294967295u, vec4<u32>(11156u, 98010u, 3866u, 22653u), 2147483647i, Struct_1(vec2<bool>(true, false), true, vec2<f32>(-807f, 1342f), vec4<bool>(true, false, false, false)), vec4<i32>(1i, -54566i, 0i, -23329i)), vec4<u32>(1087u, 4294967295u, 4294967295u, 5032u), Struct_2(0u, vec4<u32>(4294967295u, 5767u, 8337u, 1u), 18769i, Struct_1(vec2<bool>(false, false), false, vec2<f32>(1635f, 326f), vec4<bool>(false, true, false, true)), vec4<i32>(-63759i, 27010i, 0i, 76912i))), Struct_3(Struct_1(vec2<bool>(false, false), false, vec2<f32>(431f, 221f), vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(false, false), true, vec2<f32>(449f, -1348f), vec4<bool>(false, false, true, true)), Struct_2(18948u, vec4<u32>(1u, 1u, 71455u, 40148u), 1i, Struct_1(vec2<bool>(true, false), true, vec2<f32>(972f, 1113f), vec4<bool>(false, false, false, false)), vec4<i32>(-44982i, -1i, -66473i, 2147483647i)), vec4<u32>(0u, 0u, 55106u, 1u), Struct_2(1415u, vec4<u32>(4294967295u, 6896u, 1u, 48595u), -33864i, Struct_1(vec2<bool>(true, false), true, vec2<f32>(-522f, -1721f), vec4<bool>(true, false, false, true)), vec4<i32>(-11933i, 2147483647i, -1i, -14044i))), Struct_3(Struct_1(vec2<bool>(false, false), false, vec2<f32>(1587f, -1225f), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(false, true), false, vec2<f32>(-1052f, 1461f), vec4<bool>(false, true, false, false)), Struct_2(44251u, vec4<u32>(67962u, 4294967295u, 87453u, 4294967295u), 1i, Struct_1(vec2<bool>(true, false), false, vec2<f32>(2044f, -1624f), vec4<bool>(true, false, false, true)), vec4<i32>(-7346i, i32(-2147483648), -889i, i32(-2147483648))), vec4<u32>(1u, 1u, 118873u, 56985u), Struct_2(1u, vec4<u32>(0u, 16121u, 1u, 3330u), i32(-2147483648), Struct_1(vec2<bool>(false, false), false, vec2<f32>(1000f, -144f), vec4<bool>(true, true, false, false)), vec4<i32>(1i, 1i, 0i, -1i))), Struct_3(Struct_1(vec2<bool>(true, true), true, vec2<f32>(762f, -478f), vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(true, false), false, vec2<f32>(-1158f, 1982f), vec4<bool>(false, true, true, false)), Struct_2(1u, vec4<u32>(39877u, 4294967295u, 4294967295u, 7309u), -53018i, Struct_1(vec2<bool>(true, true), false, vec2<f32>(-102f, 270f), vec4<bool>(false, true, true, false)), vec4<i32>(15325i, -47450i, 6025i, 34487i)), vec4<u32>(0u, 1u, 0u, 44412u), Struct_2(1u, vec4<u32>(4294967295u, 0u, 1u, 31453u), 2147483647i, Struct_1(vec2<bool>(true, true), true, vec2<f32>(-128f, -1000f), vec4<bool>(false, false, true, false)), vec4<i32>(75203i, 45408i, 20049i, 1i))), Struct_3(Struct_1(vec2<bool>(false, true), false, vec2<f32>(-769f, 1010f), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), false, vec2<f32>(-592f, -588f), vec4<bool>(true, true, true, true)), Struct_2(1u, vec4<u32>(45471u, 7704u, 0u, 0u), -19505i, Struct_1(vec2<bool>(true, false), true, vec2<f32>(-867f, 814f), vec4<bool>(false, false, true, true)), vec4<i32>(-66881i, 0i, 2147483647i, 21262i)), vec4<u32>(103129u, 4294967295u, 4351u, 4294967295u), Struct_2(79696u, vec4<u32>(1u, 0u, 101605u, 1u), 0i, Struct_1(vec2<bool>(false, true), true, vec2<f32>(690f, -1000f), vec4<bool>(false, false, true, false)), vec4<i32>(30444i, -34536i, 39283i, 1i))), Struct_3(Struct_1(vec2<bool>(true, true), false, vec2<f32>(-393f, -504f), vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(true, false), false, vec2<f32>(324f, -1000f), vec4<bool>(true, false, false, true)), Struct_2(32562u, vec4<u32>(119943u, 1u, 1u, 1u), 33404i, Struct_1(vec2<bool>(false, true), true, vec2<f32>(253f, -638f), vec4<bool>(false, true, true, false)), vec4<i32>(-49335i, i32(-2147483648), 732i, 62430i)), vec4<u32>(0u, 63858u, 776u, 0u), Struct_2(5090u, vec4<u32>(24745u, 2707u, 4294967295u, 6482u), 2147483647i, Struct_1(vec2<bool>(false, true), false, vec2<f32>(1000f, -261f), vec4<bool>(true, false, true, false)), vec4<i32>(28184i, -1i, 2147483647i, 9734i))), Struct_3(Struct_1(vec2<bool>(false, false), false, vec2<f32>(-1603f, -863f), vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(false, true), false, vec2<f32>(499f, -1000f), vec4<bool>(false, false, false, true)), Struct_2(1u, vec4<u32>(0u, 0u, 16764u, 4294967295u), 0i, Struct_1(vec2<bool>(true, false), false, vec2<f32>(2163f, -1960f), vec4<bool>(false, false, true, false)), vec4<i32>(0i, -12546i, 22471i, 25924i)), vec4<u32>(4294967295u, 72113u, 95654u, 50938u), Struct_2(0u, vec4<u32>(58057u, 11667u, 17097u, 4294967295u), 2147483647i, Struct_1(vec2<bool>(false, true), false, vec2<f32>(-441f, -2304f), vec4<bool>(false, true, false, false)), vec4<i32>(-1i, 9469i, -5041i, i32(-2147483648)))), Struct_3(Struct_1(vec2<bool>(false, true), true, vec2<f32>(894f, -265f), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, false), true, vec2<f32>(-434f, 567f), vec4<bool>(false, true, false, true)), Struct_2(4294967295u, vec4<u32>(0u, 1u, 0u, 57803u), -16933i, Struct_1(vec2<bool>(true, false), true, vec2<f32>(1837f, -2196f), vec4<bool>(true, false, false, false)), vec4<i32>(20489i, 2147483647i, 1i, 42759i)), vec4<u32>(1u, 22935u, 27832u, 25404u), Struct_2(1u, vec4<u32>(1u, 4294967295u, 0u, 47972u), -1i, Struct_1(vec2<bool>(false, true), true, vec2<f32>(670f, 1355f), vec4<bool>(true, true, true, false)), vec4<i32>(-1i, 16631i, -20550i, 3039i))), Struct_3(Struct_1(vec2<bool>(false, true), false, vec2<f32>(522f, 1963f), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(true, true), true, vec2<f32>(990f, -1698f), vec4<bool>(false, false, true, false)), Struct_2(0u, vec4<u32>(77480u, 36220u, 7437u, 24879u), 4285i, Struct_1(vec2<bool>(true, true), false, vec2<f32>(-1000f, 1000f), vec4<bool>(true, true, false, true)), vec4<i32>(-21333i, -59449i, -14070i, 2147483647i)), vec4<u32>(1u, 30742u, 0u, 1u), Struct_2(33309u, vec4<u32>(13693u, 41609u, 0u, 72457u), -32723i, Struct_1(vec2<bool>(false, true), false, vec2<f32>(-1231f, 708f), vec4<bool>(false, false, false, false)), vec4<i32>(29872i, 2147483647i, 1i, -88041i))), Struct_3(Struct_1(vec2<bool>(true, false), true, vec2<f32>(-1548f, 909f), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(false, false), true, vec2<f32>(218f, 956f), vec4<bool>(true, false, true, true)), Struct_2(51456u, vec4<u32>(88387u, 4294967295u, 6014u, 39205u), i32(-2147483648), Struct_1(vec2<bool>(true, false), true, vec2<f32>(-1237f, 2003f), vec4<bool>(false, true, true, false)), vec4<i32>(-8204i, -1i, 2147483647i, i32(-2147483648))), vec4<u32>(0u, 24649u, 1u, 4294967295u), Struct_2(34097u, vec4<u32>(4294967295u, 86361u, 119308u, 4294967295u), i32(-2147483648), Struct_1(vec2<bool>(true, true), false, vec2<f32>(-565f, 926f), vec4<bool>(false, true, false, false)), vec4<i32>(1i, 42443i, -1i, 0i))), Struct_3(Struct_1(vec2<bool>(true, false), true, vec2<f32>(-811f, -1154f), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), false, vec2<f32>(270f, -653f), vec4<bool>(false, false, false, false)), Struct_2(9093u, vec4<u32>(0u, 14685u, 12711u, 14578u), -56636i, Struct_1(vec2<bool>(false, false), false, vec2<f32>(-668f, -1000f), vec4<bool>(true, false, false, true)), vec4<i32>(-6091i, -31164i, 17834i, i32(-2147483648))), vec4<u32>(1u, 0u, 57809u, 4294967295u), Struct_2(1u, vec4<u32>(68659u, 46295u, 4294967295u, 0u), -30683i, Struct_1(vec2<bool>(true, true), true, vec2<f32>(-224f, -1000f), vec4<bool>(false, false, true, true)), vec4<i32>(15219i, 0i, i32(-2147483648), -8992i))), Struct_3(Struct_1(vec2<bool>(true, true), true, vec2<f32>(-1047f, 349f), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(true, false), true, vec2<f32>(399f, 341f), vec4<bool>(false, false, false, true)), Struct_2(81865u, vec4<u32>(10697u, 83475u, 74003u, 52181u), 6055i, Struct_1(vec2<bool>(true, true), true, vec2<f32>(579f, -343f), vec4<bool>(true, false, true, false)), vec4<i32>(15675i, 2147483647i, 2147483647i, -11236i)), vec4<u32>(11845u, 0u, 86405u, 4294967295u), Struct_2(47211u, vec4<u32>(1u, 0u, 1u, 9692u), 0i, Struct_1(vec2<bool>(true, true), true, vec2<f32>(1703f, 735f), vec4<bool>(false, false, true, true)), vec4<i32>(0i, -30610i, 2147483647i, -15731i))), Struct_3(Struct_1(vec2<bool>(true, true), false, vec2<f32>(-1595f, -578f), vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(true, false), false, vec2<f32>(155f, -416f), vec4<bool>(true, true, false, true)), Struct_2(0u, vec4<u32>(70151u, 0u, 4294967295u, 42090u), 2397i, Struct_1(vec2<bool>(true, true), false, vec2<f32>(-595f, -736f), vec4<bool>(true, true, false, false)), vec4<i32>(-22293i, 0i, -49857i, 2147483647i)), vec4<u32>(4294967295u, 0u, 1u, 1658u), Struct_2(49525u, vec4<u32>(88219u, 4294967295u, 68728u, 58851u), -31830i, Struct_1(vec2<bool>(true, false), false, vec2<f32>(-1000f, -615f), vec4<bool>(false, false, false, false)), vec4<i32>(1i, 34853i, 9468i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(false, true), true, vec2<f32>(779f, 1000f), vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(false, true), false, vec2<f32>(844f, -584f), vec4<bool>(false, true, true, false)), Struct_2(14158u, vec4<u32>(15206u, 1u, 21300u, 1u), i32(-2147483648), Struct_1(vec2<bool>(false, true), true, vec2<f32>(856f, -1540f), vec4<bool>(true, false, false, false)), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 54284i)), vec4<u32>(21213u, 3644u, 101766u, 1u), Struct_2(1u, vec4<u32>(4294967295u, 13798u, 9093u, 57640u), -1i, Struct_1(vec2<bool>(false, true), true, vec2<f32>(1021f, -175f), vec4<bool>(false, false, true, true)), vec4<i32>(16114i, 46927i, -1i, 9628i))), Struct_3(Struct_1(vec2<bool>(false, false), true, vec2<f32>(-545f, 263f), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), true, vec2<f32>(246f, -327f), vec4<bool>(false, false, false, true)), Struct_2(41013u, vec4<u32>(63648u, 0u, 1u, 60762u), -40909i, Struct_1(vec2<bool>(true, true), true, vec2<f32>(-1000f, -566f), vec4<bool>(true, false, false, false)), vec4<i32>(-47245i, -47315i, 38252i, 2147483647i)), vec4<u32>(39025u, 34589u, 4294967295u, 1u), Struct_2(23505u, vec4<u32>(0u, 2793u, 5179u, 26792u), i32(-2147483648), Struct_1(vec2<bool>(false, false), true, vec2<f32>(-1360f, -425f), vec4<bool>(false, true, false, true)), vec4<i32>(-8539i, 12739i, -1i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(true, false), true, vec2<f32>(1000f, 1089f), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(false, true), true, vec2<f32>(263f, -896f), vec4<bool>(false, false, true, false)), Struct_2(1u, vec4<u32>(0u, 24623u, 1u, 34276u), -56739i, Struct_1(vec2<bool>(false, true), true, vec2<f32>(-605f, -1000f), vec4<bool>(false, true, true, true)), vec4<i32>(25728i, 1i, 1i, 2147483647i)), vec4<u32>(41957u, 46697u, 1u, 1u), Struct_2(26033u, vec4<u32>(52892u, 4294967295u, 1u, 59637u), -53681i, Struct_1(vec2<bool>(true, false), false, vec2<f32>(-311f, 1179f), vec4<bool>(false, true, true, true)), vec4<i32>(31045i, 44535i, -2004i, -24273i))), Struct_3(Struct_1(vec2<bool>(false, true), true, vec2<f32>(-482f, 914f), vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(false, true), false, vec2<f32>(-1005f, 417f), vec4<bool>(false, false, true, false)), Struct_2(1u, vec4<u32>(35370u, 0u, 37115u, 0u), -5565i, Struct_1(vec2<bool>(true, true), false, vec2<f32>(1494f, -893f), vec4<bool>(true, false, true, true)), vec4<i32>(18790i, -51268i, 2147483647i, -1i)), vec4<u32>(5423u, 31981u, 0u, 0u), Struct_2(70265u, vec4<u32>(1u, 1443u, 25498u, 24543u), i32(-2147483648), Struct_1(vec2<bool>(true, true), false, vec2<f32>(-776f, 1000f), vec4<bool>(true, true, false, true)), vec4<i32>(28202i, 2147483647i, 1i, -21139i))), Struct_3(Struct_1(vec2<bool>(false, true), false, vec2<f32>(1159f, 1575f), vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(true, false), false, vec2<f32>(-1059f, -1000f), vec4<bool>(true, false, true, true)), Struct_2(48733u, vec4<u32>(23954u, 18823u, 35931u, 4294967295u), -1413i, Struct_1(vec2<bool>(false, false), true, vec2<f32>(-364f, 1000f), vec4<bool>(true, false, false, true)), vec4<i32>(1i, -1i, 29370i, -1i)), vec4<u32>(0u, 1u, 1u, 1u), Struct_2(0u, vec4<u32>(1u, 48176u, 1u, 4095u), 2147483647i, Struct_1(vec2<bool>(true, true), false, vec2<f32>(-319f, 166f), vec4<bool>(true, true, false, true)), vec4<i32>(-39140i, -17021i, 2147483647i, 63452i))), Struct_3(Struct_1(vec2<bool>(true, true), true, vec2<f32>(802f, -796f), vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(false, true), true, vec2<f32>(-690f, 254f), vec4<bool>(true, true, true, false)), Struct_2(1u, vec4<u32>(1u, 102187u, 4294967295u, 1282u), 18036i, Struct_1(vec2<bool>(false, false), true, vec2<f32>(-701f, 1350f), vec4<bool>(true, true, true, false)), vec4<i32>(-30364i, -16952i, -1i, 39950i)), vec4<u32>(0u, 37144u, 4294967295u, 3078u), Struct_2(35426u, vec4<u32>(4294967295u, 0u, 5772u, 1068u), -56914i, Struct_1(vec2<bool>(true, true), true, vec2<f32>(-1000f, 695f), vec4<bool>(false, true, false, true)), vec4<i32>(15460i, 14630i, -4621i, -8197i))));

var<private> global2: vec2<u32>;

var<private> global3: Struct_4 = Struct_4(false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global3 = Struct_4(!global0.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, 1145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1356f)))));
    var var_1 = -571f;
    let var_2 = global1[_wgslsmith_index_u32(~10733u, 21u)];
    var var_3 = var_2.e.b.wz >> ((~vec2<u32>(1u, var_2.d.x >> (14807u % 32u)) & var_2.c.b.xw) % vec2<u32>(32u));
    return false;
}

fn func_2() -> Struct_3 {
    var var_0 = ~_wgslsmith_add_i32(u_input.a.x, 12175i | _wgslsmith_clamp_i32(2147483647i, 2147483647i, -34696i)) >> (~(~_wgslsmith_mult_u32(1u, 4294967295u)) % 32u);
    var var_1 = Struct_2(_wgslsmith_div_u32(~countOneBits(~global2.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global2.x, 38915u, global2.x)), vec3<u32>(14850u, 102523u, global2.x) ^ vec3<u32>(0u, 4294967295u, global2.x)), firstLeadingBit(vec3<u32>(global2.x, 62622u, global2.x)))), vec4<u32>(global2.x, global2.x & (global2.x << (4294967295u % 32u)), countOneBits(global2.x), _wgslsmith_div_u32(~global2.x, ~global2.x)) | min(vec4<u32>(1207u, global2.x, 1u, ~0u), vec4<u32>(max(global2.x, global2.x), global2.x, 24629u, ~4294967295u)), _wgslsmith_div_i32(-1i, -u_input.b) << (0u % 32u), Struct_1(!global0.ww, global0.x, vec2<f32>(_wgslsmith_f_op_f32(-1499f * -697f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f * -1075f))), vec4<bool>(firstTrailingBit(u_input.b) < -u_input.a.x, true, global0.x, true)), ~abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x)), reverseBits(vec4<i32>(u_input.a.x, 0i, u_input.b, -13910i)))));
    global1 = array<Struct_3, 21>();
    let var_2 = select(!var_1.d.d, select(vec4<bool>(all(!var_1.d.d), var_1.d.a.x, var_1.d.d.x, func_3()), select(!vec4<bool>(true, var_1.d.d.x, true, global3.a), vec4<bool>(!global3.a, true, true, true), false), !vec4<bool>(global0.x | true, true, global0.x, all(var_1.d.d.zwy))), any(vec2<bool>(true, false)));
    var var_3 = Struct_3(var_1.d, Struct_1(vec2<bool>(true, var_2.x == var_2.x), false, var_1.d.c, select(!(!vec4<bool>(var_2.x, true, false, var_2.x)), var_2, select(false, var_2.x, true))), Struct_2(global2.x, vec4<u32>(16272u, 5144u, global2.x, 1u << (_wgslsmith_mod_u32(var_1.b.x, 4294967295u) % 32u)), ~abs(var_1.e.x), Struct_1(!global0.xz, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1081f, 993f)))), vec4<bool>(!global0.x, true, false, 52254u != var_1.a)), var_1.e), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_sub_u32(1u, global2.x), 0u, ~1u, global2.x)), vec4<u32>(71241u, ~26972u, global2.x, 4294967295u)), Struct_2(_wgslsmith_div_u32(global2.x, ~1u), min(~_wgslsmith_sub_vec4_u32(var_1.b, var_1.b), firstLeadingBit(var_1.b)), var_1.e.x, Struct_1(global0.yz, global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d.c * vec2<f32>(var_1.d.c.x, var_1.d.c.x))), !vec4<bool>(var_1.d.a.x, false, true, var_1.d.b)), _wgslsmith_add_vec4_i32(var_1.e, var_1.e)));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 0u, 28347u), vec3<u32>(var_3.e.a, var_3.c.b.x, global2.x))) ^ var_3.e.a), reverseBits(min(var_1.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(var_3.d.x, 1666u), vec2<u32>(var_1.b.x, 4294967295u)))))), 21u)];
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = -(-2147483647i | u_input.b);
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c.x, -2030f, var_1.b.c.x) + vec3<f32>(var_1.a.c.x, 1052f, -1571f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c.d.c.x, 116f, 1397f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.c.x, 709f, var_1.a.c.x))))), !(!(global2.x >= var_1.d.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, 1033f, 1228f)));
    let var_3 = var_1.e.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.d.c.x + var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -397f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(999f, _wgslsmith_f_op_f32(max(1000f, 1643f)), _wgslsmith_f_op_f32(func_1(Struct_4(global0.x))), -410f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(250f, 358f), _wgslsmith_f_op_f32(step(-1699f, 1000f))), -628f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1296f)))), 458f)));
    var var_1 = Struct_5(2147483647i, _wgslsmith_mod_vec2_i32(u_input.a, u_input.a), vec4<i32>((-1i >> ((global2.x ^ 11351u) % 32u)) << (_wgslsmith_clamp_u32(global2.x, 1u, ~21876u) % 32u), (reverseBits(7100i) << (~global2.x % 32u)) << (_wgslsmith_clamp_u32(reverseBits(global2.x), 26718u, ~49314u) % 32u), -u_input.a.x, u_input.a.x));
    let var_2 = ~max(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(global2.x, global2.x, global2.x)), global2.x), global2.x);
    global2 = ~(~vec2<u32>(global2.x, global2.x));
    global2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(global2.x) << (~76919u % 32u), ~(~47308u)), min(vec2<u32>(0u, 4294967295u) << ((vec2<u32>(11151u, 41802u) >> (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u))) % vec2<u32>(32u)), select(vec2<u32>(7695u, var_2) >> (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), vec2<u32>(global2.x, var_2) & vec2<u32>(0u, 1u), global3.a)));
    let var_3 = Struct_4(true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(90000u, var_2, 0u), vec3<u32>(33414u, 1u, 4294967295u)), ~min(global2.x, global2.x)), global2.x), var_0.x, abs(~firstTrailingBit(min(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(global2.x, global2.x, global2.x)))));
}

