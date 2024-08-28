struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<f32>(-1207f, 309f, -451f, -633f), -720f, 176f, 50130i, Struct_1(vec4<u32>(33966u, 35593u, 5372u, 20049u), vec2<u32>(1u, 48199u), -237f)), Struct_2(vec4<f32>(1239f, -457f, 424f, 1281f), -1799f, -856f, -69117i, Struct_1(vec4<u32>(6649u, 1u, 31458u, 4294967295u), vec2<u32>(5229u, 0u), -1986f)), Struct_2(vec4<f32>(-357f, -747f, 1348f, -1196f), -972f, -625f, -13629i, Struct_1(vec4<u32>(71470u, 7636u, 20441u, 63542u), vec2<u32>(39779u, 1u), -1451f)), Struct_2(vec4<f32>(-536f, -200f, 129f, 1011f), 315f, -718f, 1102i, Struct_1(vec4<u32>(0u, 0u, 48484u, 52359u), vec2<u32>(54274u, 13026u), -104f)), Struct_2(vec4<f32>(-659f, 1708f, 951f, -1611f), 546f, -432f, -1i, Struct_1(vec4<u32>(6576u, 4294967295u, 17326u, 111639u), vec2<u32>(89341u, 0u), -1793f)), Struct_2(vec4<f32>(1110f, -451f, 1000f, 288f), 125f, 1090f, 71521i, Struct_1(vec4<u32>(4294967295u, 0u, 53627u, 1u), vec2<u32>(15792u, 0u), 1310f)), Struct_2(vec4<f32>(1016f, 1426f, 224f, 706f), 2543f, 1126f, i32(-2147483648), Struct_1(vec4<u32>(14597u, 4294967295u, 81730u, 1u), vec2<u32>(0u, 1899u), 251f)), Struct_2(vec4<f32>(-427f, 1000f, 2056f, -344f), -2140f, -1722f, 0i, Struct_1(vec4<u32>(0u, 47640u, 9854u, 22032u), vec2<u32>(1u, 4294967295u), -719f)), Struct_2(vec4<f32>(1000f, -234f, 839f, 2856f), -212f, 1095f, i32(-2147483648), Struct_1(vec4<u32>(26182u, 4294967295u, 31121u, 10926u), vec2<u32>(1u, 1u), -1000f)), Struct_2(vec4<f32>(-492f, -433f, -1824f, -1857f), 523f, -1000f, -28777i, Struct_1(vec4<u32>(0u, 0u, 18004u, 1u), vec2<u32>(73131u, 1u), 789f)), Struct_2(vec4<f32>(1729f, -729f, 746f, -1000f), -1051f, 152f, 1i, Struct_1(vec4<u32>(1u, 54072u, 39453u, 0u), vec2<u32>(434u, 1u), -316f)), Struct_2(vec4<f32>(-140f, -786f, -189f, 216f), 466f, -1000f, i32(-2147483648), Struct_1(vec4<u32>(1u, 25501u, 4294967295u, 69361u), vec2<u32>(0u, 46940u), -1009f)), Struct_2(vec4<f32>(1032f, -726f, -1635f, -1000f), -1000f, 432f, 33773i, Struct_1(vec4<u32>(42602u, 43574u, 7202u, 17950u), vec2<u32>(31533u, 1u), 952f)), Struct_2(vec4<f32>(-1000f, 2845f, 109f, 1317f), 942f, -562f, 2147483647i, Struct_1(vec4<u32>(105141u, 43135u, 40847u, 4294967295u), vec2<u32>(7276u, 1u), 1324f)), Struct_2(vec4<f32>(-1219f, -1088f, -179f, 210f), 467f, 999f, -13695i, Struct_1(vec4<u32>(19923u, 84003u, 54151u, 41485u), vec2<u32>(13446u, 4294967295u), -1242f)), Struct_2(vec4<f32>(-736f, 704f, 1016f, -474f), 878f, 261f, 1i, Struct_1(vec4<u32>(8781u, 4294967295u, 10386u, 84098u), vec2<u32>(4294967295u, 60145u), 252f)), Struct_2(vec4<f32>(637f, 310f, 905f, 119f), -727f, -872f, 17727i, Struct_1(vec4<u32>(44348u, 1u, 0u, 23831u), vec2<u32>(4294967295u, 0u), 920f)), Struct_2(vec4<f32>(-266f, 978f, 656f, 136f), -657f, 370f, i32(-2147483648), Struct_1(vec4<u32>(28951u, 3420u, 0u, 4294967295u), vec2<u32>(80345u, 58320u), 2438f)), Struct_2(vec4<f32>(-1730f, 2215f, -746f, 626f), 174f, 1000f, -8305i, Struct_1(vec4<u32>(4294967295u, 8834u, 16556u, 4191u), vec2<u32>(0u, 4294967295u), 1249f)), Struct_2(vec4<f32>(1249f, -1474f, -704f, 640f), -1152f, -480f, 2147483647i, Struct_1(vec4<u32>(37187u, 56702u, 21832u, 0u), vec2<u32>(63186u, 4294967295u), 1586f)), Struct_2(vec4<f32>(361f, 272f, -972f, 1000f), 945f, 1150f, 0i, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 1u), vec2<u32>(4294967295u, 4294967295u), 1023f)), Struct_2(vec4<f32>(-2358f, 1687f, 616f, 727f), -932f, -232f, 2147483647i, Struct_1(vec4<u32>(1u, 17732u, 121983u, 1u), vec2<u32>(41562u, 18479u), 547f)), Struct_2(vec4<f32>(935f, -186f, 118f, 456f), 1000f, 646f, i32(-2147483648), Struct_1(vec4<u32>(4294967295u, 0u, 57214u, 0u), vec2<u32>(0u, 1u), 1000f)), Struct_2(vec4<f32>(-510f, 307f, -1685f, -469f), 465f, -1000f, 35534i, Struct_1(vec4<u32>(20740u, 3967u, 4294967295u, 0u), vec2<u32>(73892u, 0u), 428f)), Struct_2(vec4<f32>(-150f, -337f, -1932f, 801f), 1000f, 1001f, -1i, Struct_1(vec4<u32>(88423u, 41698u, 41915u, 32607u), vec2<u32>(12764u, 13318u), -977f)), Struct_2(vec4<f32>(-911f, -1360f, 865f, -1171f), 455f, -1097f, 48252i, Struct_1(vec4<u32>(4294967295u, 63961u, 0u, 12612u), vec2<u32>(42301u, 1u), -1440f)), Struct_2(vec4<f32>(913f, -962f, 1214f, 1197f), 1412f, -566f, -1i, Struct_1(vec4<u32>(52873u, 12035u, 1u, 4294967295u), vec2<u32>(0u, 4294967295u), -975f)), Struct_2(vec4<f32>(1189f, 628f, -489f, 144f), -218f, -763f, 18146i, Struct_1(vec4<u32>(59798u, 23271u, 1u, 4294967295u), vec2<u32>(454u, 1u), -1357f)), Struct_2(vec4<f32>(279f, 344f, 575f, -1050f), -578f, -935f, -24113i, Struct_1(vec4<u32>(35799u, 8509u, 34450u, 1u), vec2<u32>(0u, 4294967295u), -2223f)), Struct_2(vec4<f32>(-661f, 982f, -566f, -832f), 1577f, -294f, 0i, Struct_1(vec4<u32>(0u, 0u, 1u, 0u), vec2<u32>(0u, 21925u), 581f)), Struct_2(vec4<f32>(1000f, -602f, -1000f, -165f), -838f, 455f, -56220i, Struct_1(vec4<u32>(0u, 0u, 66539u, 67629u), vec2<u32>(0u, 0u), -2116f)));

var<private> global1: i32;

var<private> global2: vec2<f32> = vec2<f32>(-431f, -361f);

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<f32>(-1127f, 196f, 760f, 1000f), -617f, -1400f, 1i, Struct_1(vec4<u32>(38202u, 4294967295u, 32276u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), -621f)), Struct_2(vec4<f32>(349f, 1993f, -1767f, -286f), -233f, 577f, -33038i, Struct_1(vec4<u32>(17337u, 1u, 79018u, 40412u), vec2<u32>(1u, 0u), 696f)), Struct_2(vec4<f32>(-994f, 495f, -1000f, 1206f), 649f, 298f, -26822i, Struct_1(vec4<u32>(0u, 12189u, 23545u, 109464u), vec2<u32>(36901u, 1u), -1000f)), Struct_2(vec4<f32>(295f, 949f, 1687f, -867f), 445f, -213f, -1i, Struct_1(vec4<u32>(0u, 1u, 0u, 14532u), vec2<u32>(17135u, 30715u), 3340f)), Struct_2(vec4<f32>(1393f, 998f, -1030f, -682f), 421f, 431f, -16302i, Struct_1(vec4<u32>(1u, 0u, 11344u, 4294967295u), vec2<u32>(1u, 1u), 366f)), Struct_2(vec4<f32>(-205f, 397f, 1000f, 326f), -197f, 979f, 2147483647i, Struct_1(vec4<u32>(0u, 13102u, 4294967295u, 1u), vec2<u32>(46511u, 1u), 1018f)), Struct_2(vec4<f32>(598f, -1474f, -479f, -621f), -202f, 333f, -1i, Struct_1(vec4<u32>(0u, 7870u, 4294967295u, 12747u), vec2<u32>(59u, 24463u), -470f)), Struct_2(vec4<f32>(-872f, -359f, -164f, 1000f), -283f, 910f, -1i, Struct_1(vec4<u32>(4294967295u, 34309u, 31863u, 107923u), vec2<u32>(53791u, 51870u), -1650f)), Struct_2(vec4<f32>(-611f, -529f, 1627f, 106f), 755f, 393f, -40111i, Struct_1(vec4<u32>(1u, 4294967295u, 71873u, 3844u), vec2<u32>(1u, 25840u), 535f)), Struct_2(vec4<f32>(581f, -2390f, -145f, 972f), 1676f, 248f, 1i, Struct_1(vec4<u32>(4596u, 12660u, 1u, 4864u), vec2<u32>(4294967295u, 1u), 148f)), Struct_2(vec4<f32>(919f, 1125f, -1098f, 647f), 517f, -567f, 46764i, Struct_1(vec4<u32>(45738u, 94660u, 0u, 69789u), vec2<u32>(40969u, 0u), -639f)), Struct_2(vec4<f32>(-2587f, 1780f, -253f, -2257f), 801f, 776f, 2147483647i, Struct_1(vec4<u32>(35701u, 31139u, 0u, 41134u), vec2<u32>(16982u, 36632u), 1529f)), Struct_2(vec4<f32>(-210f, 1467f, 1000f, -1936f), 946f, -772f, 23751i, Struct_1(vec4<u32>(1099u, 1u, 33474u, 4294967295u), vec2<u32>(32991u, 72902u), -177f)), Struct_2(vec4<f32>(-788f, -950f, -1116f, -1280f), -232f, -385f, 24514i, Struct_1(vec4<u32>(72973u, 6307u, 4294967295u, 29184u), vec2<u32>(10396u, 0u), 1157f)), Struct_2(vec4<f32>(1000f, 820f, -713f, -1166f), -702f, -759f, 2147483647i, Struct_1(vec4<u32>(27541u, 4294967295u, 42647u, 4294967295u), vec2<u32>(4294967295u, 4899u), 1521f)), Struct_2(vec4<f32>(-408f, -2542f, -941f, 132f), -1000f, -371f, -1i, Struct_1(vec4<u32>(16943u, 0u, 0u, 15436u), vec2<u32>(0u, 4294967295u), -520f)), Struct_2(vec4<f32>(-712f, 416f, 1163f, 478f), 1134f, -1513f, -20220i, Struct_1(vec4<u32>(35860u, 34763u, 0u, 0u), vec2<u32>(0u, 47901u), -1737f)), Struct_2(vec4<f32>(-264f, 2190f, 832f, 323f), -193f, -313f, 1i, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 56358u), vec2<u32>(4294967295u, 17324u), 385f)), Struct_2(vec4<f32>(1041f, -397f, 737f, 570f), -1383f, 589f, 24877i, Struct_1(vec4<u32>(0u, 3421u, 0u, 20533u), vec2<u32>(55732u, 4294967295u), 234f)), Struct_2(vec4<f32>(-1464f, -757f, 1298f, 2435f), 159f, 1414f, -18594i, Struct_1(vec4<u32>(80456u, 42841u, 1u, 4294967295u), vec2<u32>(25153u, 4294967295u), 133f)), Struct_2(vec4<f32>(-296f, -785f, 428f, -1000f), 550f, 422f, 21153i, Struct_1(vec4<u32>(87319u, 4294967295u, 54964u, 46601u), vec2<u32>(0u, 84582u), 142f)), Struct_2(vec4<f32>(1229f, 1000f, -968f, -490f), -1174f, 1107f, -70366i, Struct_1(vec4<u32>(29642u, 4294967295u, 0u, 1u), vec2<u32>(55126u, 1u), -1000f)), Struct_2(vec4<f32>(-1000f, -2646f, 791f, 219f), -1687f, 683f, 26813i, Struct_1(vec4<u32>(14682u, 31945u, 7233u, 93483u), vec2<u32>(4294967295u, 68598u), 1000f)), Struct_2(vec4<f32>(708f, 106f, -1308f, -1345f), 430f, -1056f, 2147483647i, Struct_1(vec4<u32>(0u, 1u, 0u, 29980u), vec2<u32>(25903u, 1u), -555f)), Struct_2(vec4<f32>(-295f, 990f, -1184f, -700f), 246f, 376f, 18595i, Struct_1(vec4<u32>(51868u, 1596u, 22079u, 38771u), vec2<u32>(0u, 1u), 388f)), Struct_2(vec4<f32>(-2318f, 1604f, 1000f, -1324f), 188f, -1152f, -32185i, Struct_1(vec4<u32>(12130u, 0u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), 1000f)), Struct_2(vec4<f32>(-545f, 710f, 343f, -607f), -190f, -391f, 48698i, Struct_1(vec4<u32>(0u, 16483u, 15106u, 66633u), vec2<u32>(28414u, 0u), 939f)), Struct_2(vec4<f32>(-420f, -196f, -487f, -340f), -320f, 1521f, i32(-2147483648), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u), vec2<u32>(0u, 0u), 1000f)), Struct_2(vec4<f32>(-389f, 224f, -1700f, -1035f), 687f, -430f, 15527i, Struct_1(vec4<u32>(39884u, 1u, 45260u, 4294967295u), vec2<u32>(15118u, 54578u), -1450f)));

var<private> global4: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(-1425f)), ~_wgslsmith_sub_i32(reverseBits(-42594i), 18700i), Struct_1(~(~arg_0.e.a), firstTrailingBit((arg_1.e.b | arg_0.e.a.yz) ^ vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(abs(-1210f))));
    global3 = array<Struct_2, 29>();
    let var_1 = _wgslsmith_f_op_f32(max(global2.x, global2.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, arg_0.c, 704f, arg_0.e.c), vec4<f32>(550f, var_0.e.c, -1586f, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(251f)), -940f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-937f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1052f, 1206f, false))))), vec4<bool>(true, true, true, arg_0.e.b.x <= ~11206u))), _wgslsmith_f_op_f32(-arg_1.e.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c))), countOneBits(arg_0.d), arg_0.e);
    global2 = arg_0.a.yx;
    return ~_wgslsmith_mult_u32(var_0.e.b.x, arg_1.e.b.x);
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    let var_1 = Struct_1(~vec4<u32>(firstTrailingBit(0u), max(1u, countOneBits(22878u)), 27565u, ~4294967295u), ~(~vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global2.x)))))));
    var var_2 = _wgslsmith_add_i32(select(674i, -2147483647i, var_0), -26878i);
    var var_3 = Struct_3(_wgslsmith_mult_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.x, 0u, var_1.b.x), var_1.a.xyw) ^ vec3<u32>(4294967295u, 0u, 68218u), vec3<u32>(_wgslsmith_mod_u32(1u, 4294967295u), ~var_1.b.x, 35711u)), var_1.a.yxz), Struct_1(_wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 55889u, 4605u), var_1.a), ~vec4<u32>(1u, 1u, 1u, var_1.b.x), any(vec3<bool>(var_0, false, var_0))), vec4<u32>(_wgslsmith_sub_u32(var_1.b.x, var_1.a.x), var_1.a.x, ~4294967295u, 0u << (0u % 32u))), vec2<u32>(4467u, var_1.b.x), 496f), global0[_wgslsmith_index_u32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1855f, global2.x, -1783f, 555f), vec4<f32>(global2.x, var_1.c, 176f, 973f)))), -1592f, global2.x, -2147483647i, Struct_1(var_1.a, var_1.a.wx, _wgslsmith_f_op_f32(-208f - 1261f))), Struct_2(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(932f + global2.x)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -935f)), -select(u_input.c, u_input.d.x, false), var_1)), 31u)]);
    var var_4 = var_3.c;
    return Struct_3(_wgslsmith_mult_vec3_u32(var_1.a.yzx, _wgslsmith_mult_vec3_u32(vec3<u32>(abs(var_1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.b.x), var_3.b.b), 43128u), var_4.e.a.zww)), Struct_1(min(_wgslsmith_add_vec4_u32(var_4.e.a, vec4<u32>(var_4.e.b.x, var_3.c.e.a.x, var_4.e.a.x, var_3.b.b.x)), vec4<u32>(9978u, var_4.e.b.x, firstLeadingBit(1u), var_4.e.b.x)), max(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.c.e.a.x, var_4.e.b.x), vec2<u32>(76939u, 77458u)), _wgslsmith_div_vec2_u32(~var_4.e.b, var_3.c.e.a.yy)), 445f), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(336f + -1526f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, -2390f))), var_3.b.c, _wgslsmith_f_op_f32(sign(563f))), var_4.b, _wgslsmith_f_op_f32(floor(-160f)), 2147483647i, var_4.e));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~85619u, ~57720u, ~84914u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 17214u, 39897u), vec4<u32>(4294967295u, 2300u, 56360u, 4294967295u))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~firstTrailingBit(vec4<u32>(102570u, 33988u, 67668u, 4294967295u)))), vec2<u32>(~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(35324u, 1u, 0u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), min(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 64999u, 4439u))) % 32u), (_wgslsmith_mult_u32(2967u, 86249u) ^ select(59876u, 1u, true)) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(33755u, 80131u, 0u, 1u), vec4<u32>(38825u, 73008u, 1u, 4294967295u)) ^ 16326u)), 591f);
    var var_1 = func_2();
    let var_2 = ~(-1i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c.a.xww, vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(476f))), -223f)));
    var var_4 = Struct_3(max(vec3<u32>(~6302u, var_1.c.e.b.x, var_0.a.x), var_1.b.a.zwx), Struct_1(countOneBits(select(select(var_1.b.a, vec4<u32>(var_1.a.x, var_1.b.b.x, var_1.b.a.x, var_0.b.x), global4[_wgslsmith_index_u32(69899u, 30u)]), vec4<u32>(var_0.b.x, 3236u, var_1.b.b.x, 1u), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), global4[_wgslsmith_index_u32(41410u, 30u)]))), var_1.a.zy, var_3.x), global0[_wgslsmith_index_u32(0u, 31u)]);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_3.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-949f, global2.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), vec2<bool>(true, true)));
    global0 = array<Struct_2, 31>();
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1255f, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(267f, -862f, 1000f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 470f)), !global4[_wgslsmith_index_u32(29964u, 30u)])), all(vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -226f)))), global2.x, -48868i, Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), select(select(firstTrailingBit(vec2<u32>(1u, 53362u)), countOneBits(vec2<u32>(1u, 53944u)), vec2<bool>(true, true)), vec2<u32>(1u, 11288u), vec2<bool>(all(vec4<bool>(false, true, false, false)), true)), 1260f));
    let var_2 = vec2<bool>(!(!(_wgslsmith_f_op_f32(abs(310f)) < var_1.b)), !any(vec2<bool>(true, true)));
    let var_3 = vec2<bool>(!var_2.x && (var_2.x || (55406u == var_1.e.b.x)), var_2.x);
    var var_4 = var_1.a.yz;
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.e.b.x, 23023u), var_1.e.b), ~_wgslsmith_mult_u32(var_1.e.b.x, 4294967295u)) % 32u));
}

