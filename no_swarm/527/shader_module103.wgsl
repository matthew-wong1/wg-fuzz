struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<u32>(1u, 4294967295u, 632u), vec4<bool>(false, true, true, false), vec3<u32>(1u, 17827u, 71157u), vec4<u32>(10907u, 1u, 0u, 1u), 351f), Struct_1(vec3<u32>(32697u, 0u, 17424u), vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 38056u, 54595u), vec4<u32>(0u, 50000u, 0u, 4294967295u), 571f), vec3<f32>(282f, -1870f, -1809f), vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(3553u, 4294967295u, 1u), vec4<bool>(true, true, false, true), vec3<u32>(0u, 4294967295u, 15140u), vec4<u32>(4294967295u, 1u, 14448u, 77798u), -1375f), Struct_1(vec3<u32>(18440u, 30047u, 1u), vec4<bool>(true, true, true, true), vec3<u32>(60452u, 1u, 4294967295u), vec4<u32>(27272u, 1u, 4294967295u, 1u), 1182f), vec3<f32>(-1000f, 165f, 1212f), vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(1u, 0u, 0u), vec4<bool>(true, true, false, true), vec3<u32>(0u, 4294967295u, 29414u), vec4<u32>(1u, 4294967295u, 1u, 35386u), 872f), Struct_1(vec3<u32>(30927u, 9821u, 55535u), vec4<bool>(true, true, true, true), vec3<u32>(116680u, 13149u, 1u), vec4<u32>(4294967295u, 1u, 25135u, 4294967295u), 659f), vec3<f32>(375f, 256f, -2560f), vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(0u, 0u, 76429u), vec4<bool>(false, false, false, true), vec3<u32>(25320u, 10913u, 1u), vec4<u32>(0u, 10430u, 32042u, 32183u), -361f), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec4<bool>(false, false, false, false), vec3<u32>(1u, 4294967295u, 9854u), vec4<u32>(19756u, 0u, 4294967295u, 109852u), 709f), vec3<f32>(-233f, 1643f, 546f), vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 74741u, 24326u), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 112714u), -1488f), Struct_1(vec3<u32>(0u, 0u, 1u), vec4<bool>(true, true, false, false), vec3<u32>(29843u, 1u, 55597u), vec4<u32>(14250u, 4294967295u, 72235u, 26782u), 1461f), vec3<f32>(325f, 336f, 879f), vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(4294967295u, 21365u, 19255u), vec4<bool>(false, false, false, true), vec3<u32>(1u, 0u, 56623u), vec4<u32>(39515u, 4294967295u, 0u, 51313u), 129f), Struct_1(vec3<u32>(0u, 66107u, 0u), vec4<bool>(true, true, false, false), vec3<u32>(12907u, 1u, 1u), vec4<u32>(1u, 1u, 64403u, 1u), 734f), vec3<f32>(-357f, -518f, 1195f), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(19985u, 70256u, 38728u), vec4<bool>(true, true, false, false), vec3<u32>(1u, 4294967295u, 0u), vec4<u32>(28054u, 3927u, 17006u, 17820u), 1269f), Struct_1(vec3<u32>(0u, 1u, 0u), vec4<bool>(true, true, true, true), vec3<u32>(348u, 4294967295u, 56724u), vec4<u32>(42262u, 45951u, 36828u, 1u), 1065f), vec3<f32>(-489f, -1000f, 623f), vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<bool>(true, false, false, false), vec3<u32>(1u, 4294967295u, 8309u), vec4<u32>(48921u, 0u, 15580u, 27566u), 820f), Struct_1(vec3<u32>(1u, 1u, 41579u), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 1u, 56705u), vec4<u32>(104658u, 43184u, 86627u, 27062u), -421f), vec3<f32>(-105f, -666f, -1040f), vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(1u, 1u, 0u), vec4<bool>(true, false, false, false), vec3<u32>(0u, 0u, 0u), vec4<u32>(1u, 7017u, 3952u, 0u), -866f), Struct_1(vec3<u32>(0u, 1u, 26066u), vec4<bool>(true, true, false, true), vec3<u32>(0u, 1u, 0u), vec4<u32>(1u, 46825u, 52507u, 0u), -762f), vec3<f32>(-892f, 656f, -1000f), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(4294967295u, 58998u, 101442u), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 1u, 65796u), vec4<u32>(45844u, 51771u, 0u, 4294967295u), -691f), Struct_1(vec3<u32>(115677u, 43942u, 7758u), vec4<bool>(false, false, true, false), vec3<u32>(1u, 1u, 0u), vec4<u32>(0u, 4510u, 4294967295u, 4294967295u), -245f), vec3<f32>(933f, 184f, 1444f), vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(1u, 36971u, 15080u), vec4<bool>(true, false, true, false), vec3<u32>(17978u, 1789u, 1u), vec4<u32>(30527u, 8803u, 92398u, 1734u), 288f), Struct_1(vec3<u32>(18075u, 4294967295u, 0u), vec4<bool>(false, false, true, false), vec3<u32>(349u, 16629u, 40810u), vec4<u32>(27518u, 0u, 1600u, 1u), -2543f), vec3<f32>(1000f, -1344f, -614f), vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(38664u, 1u, 0u), vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 30377u, 1u), vec4<u32>(1u, 1u, 1u, 0u), -1678f), Struct_1(vec3<u32>(4294967295u, 0u, 11536u), vec4<bool>(false, true, true, false), vec3<u32>(0u, 4982u, 14040u), vec4<u32>(39114u, 4294967295u, 0u, 27549u), 945f), vec3<f32>(-190f, -528f, 508f), vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 48752u, 1u), vec4<u32>(1u, 34982u, 37511u, 1u), 1418f), Struct_1(vec3<u32>(49741u, 4294967295u, 0u), vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 52717u, 1u), vec4<u32>(52313u, 1u, 1u, 27557u), -317f), vec3<f32>(1870f, 618f, 756f), vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(293u, 2209u, 1u), vec4<bool>(false, true, true, false), vec3<u32>(1u, 1u, 22291u), vec4<u32>(85121u, 8385u, 4294967295u, 0u), 1009f), Struct_1(vec3<u32>(9201u, 4294967295u, 52723u), vec4<bool>(false, false, false, true), vec3<u32>(68081u, 63826u, 34535u), vec4<u32>(0u, 90165u, 4294967295u, 4294967295u), -743f), vec3<f32>(720f, 1000f, 2307f), vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(1u, 88859u, 19776u), vec4<bool>(false, true, true, false), vec3<u32>(0u, 1u, 52161u), vec4<u32>(39041u, 0u, 66095u, 0u), 117f), Struct_1(vec3<u32>(4294967295u, 8375u, 45654u), vec4<bool>(true, true, false, false), vec3<u32>(388u, 0u, 0u), vec4<u32>(17751u, 5324u, 4294967295u, 36944u), 1026f), vec3<f32>(1443f, 771f, -127f), vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(86981u, 64613u, 1u), vec4<bool>(true, true, true, false), vec3<u32>(11460u, 36974u, 1u), vec4<u32>(4294967295u, 0u, 71005u, 28486u), 521f), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(true, false, true, false), vec3<u32>(14154u, 19652u, 0u), vec4<u32>(56538u, 38091u, 4294967295u, 4294967295u), -2016f), vec3<f32>(-1786f, 204f, -1000f), vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(39708u, 46784u, 4294967295u), vec4<bool>(true, true, false, false), vec3<u32>(57835u, 0u, 1u), vec4<u32>(63806u, 14125u, 3931u, 78765u), 951f), Struct_1(vec3<u32>(1u, 2812u, 1u), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 4294967295u, 0u), vec4<u32>(0u, 0u, 0u, 4294967295u), 841f), vec3<f32>(626f, 342f, -889f), vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(1u, 36491u, 1u), vec4<bool>(true, false, true, true), vec3<u32>(0u, 20095u, 81096u), vec4<u32>(1u, 82678u, 19257u, 24704u), 853f), Struct_1(vec3<u32>(38483u, 17547u, 58544u), vec4<bool>(false, false, false, false), vec3<u32>(14200u, 32406u, 4294967295u), vec4<u32>(65211u, 1u, 38996u, 0u), 156f), vec3<f32>(1642f, -481f, 2300f), vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(925u, 29473u, 35557u), vec4<bool>(false, false, true, true), vec3<u32>(0u, 32514u, 72921u), vec4<u32>(42687u, 4294967295u, 1u, 50353u), -532f), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 29024u, 90856u), vec4<u32>(0u, 17282u, 1u, 1u), 487f), vec3<f32>(-460f, -485f, 140f), vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(30074u, 1u, 0u), vec4<bool>(true, true, false, false), vec3<u32>(59619u, 0u, 33808u), vec4<u32>(40392u, 4294967295u, 45294u, 5356u), -340f), Struct_1(vec3<u32>(58776u, 63295u, 0u), vec4<bool>(false, true, false, true), vec3<u32>(1u, 0u, 1u), vec4<u32>(39409u, 17793u, 1u, 92716u), -709f), vec3<f32>(-131f, 369f, -350f), vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(4589u, 293u, 4294967295u), vec4<bool>(true, false, false, true), vec3<u32>(40966u, 93790u, 0u), vec4<u32>(38794u, 1869u, 15226u, 4528u), 1070f), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec4<bool>(false, true, false, true), vec3<u32>(1u, 72950u, 33093u), vec4<u32>(17408u, 918u, 8265u, 1u), -529f), vec3<f32>(236f, -1434f, -1000f), vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(74654u, 0u, 48399u), vec4<bool>(false, true, false, false), vec3<u32>(9519u, 10659u, 17735u), vec4<u32>(4033u, 87258u, 4294967295u, 20971u), 1000f), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 42125u, 46707u), vec4<u32>(4294967295u, 13373u, 7926u, 4294967295u), -261f), vec3<f32>(-1084f, -1000f, -896f), vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(0u, 0u, 41314u), vec4<bool>(true, true, true, false), vec3<u32>(55782u, 18193u, 39666u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 900f), Struct_1(vec3<u32>(4294967295u, 0u, 107622u), vec4<bool>(true, false, true, true), vec3<u32>(14435u, 1u, 57408u), vec4<u32>(4442u, 75671u, 11958u, 57746u), -573f), vec3<f32>(587f, -1800f, 637f), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(18839u, 38400u, 6521u), vec4<bool>(false, true, false, true), vec3<u32>(0u, 1u, 0u), vec4<u32>(112033u, 4294967295u, 115070u, 108851u), 914f), Struct_1(vec3<u32>(4294967295u, 0u, 25977u), vec4<bool>(false, true, false, false), vec3<u32>(0u, 3196u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), -653f), vec3<f32>(1000f, -1496f, -506f), vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(0u, 0u, 0u), vec4<bool>(false, true, false, true), vec3<u32>(39402u, 4294967295u, 2559u), vec4<u32>(4294967295u, 0u, 30759u, 4294967295u), 616f), Struct_1(vec3<u32>(33745u, 34915u, 1u), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 0u, 0u), vec4<u32>(4294967295u, 19586u, 4294967295u, 14939u), -560f), vec3<f32>(146f, -458f, 111f), vec3<bool>(true, false, true)));

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(66101u, 53879u, 54621u, 15661u), vec4<u32>(4294967295u, 0u, 1u, 11373u), vec4<u32>(12514u, 45285u, 1u, 29632u));

var<private> global2: vec2<i32> = vec2<i32>(22168i, 2147483647i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = select(arg_2.a.b.xw, arg_1.a.a.b.yx, arg_2.a.b.xz);
    global2 = ~abs(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(u_input.a, -1i)), vec2<i32>(-2147483647i, ~u_input.a)));
    var_0 = vec2<bool>(all(select(select(arg_1.a.a.b, arg_1.a.a.b, true), arg_1.a.a.b, select(select(vec4<bool>(false, arg_2.a.b.x, arg_1.b, arg_2.a.b.x), vec4<bool>(false, var_0.x, true, arg_1.b), var_0.x), arg_2.a.b, any(arg_2.a.b.yyx)))), !var_0.x);
    let var_1 = !any(!arg_1.a.a.b.wyw);
    return ~vec2<i32>(u_input.a, abs(min(1i, max(2147483647i, 2147483647i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_4 {
    global2 = _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -2147483647i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(global2.x, u_input.a), vec2<i32>(global2.x, -51618i)), vec2<i32>(-1i) * -vec2<i32>(u_input.a, 13471i)), max(vec2<i32>(u_input.a, -24192i), func_3(u_input.b.yy, Struct_4(Struct_3(Struct_1(u_input.b, vec4<bool>(false, false, false, true), u_input.c.www, vec4<u32>(1u, 45099u, 4294967295u, 0u), -478f), -1286f, 4294967295u), true), Struct_3(Struct_1(vec3<u32>(u_input.b.x, arg_1.x, u_input.b.x), vec4<bool>(true, true, true, false), vec3<u32>(arg_0.x, u_input.b.x, 4294967295u), arg_1, -821f), _wgslsmith_div_f32(-805f, -1120f), 61089u))));
    global2 = max(vec2<i32>(u_input.a, reverseBits(i32(-1i) * -2147483647i)), -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, 10052i), vec2<i32>(global2.x, global2.x), vec2<i32>(15378i, global2.x)), vec2<i32>(0i, global2.x) & vec2<i32>(-9320i, global2.x))) & ~(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, global2.x), -vec2<i32>(13707i, u_input.a)) >> (vec2<u32>(0u, _wgslsmith_clamp_u32(u_input.c.x, 1u, arg_1.x)) % vec2<u32>(32u)));
    let var_0 = select(vec4<bool>(any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), all(vec3<bool>(true, true, true)), false, !any(vec4<bool>(false, true, false, true))), !select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), false, any(vec2<bool>(false, true))), any(vec3<bool>(true, true, true))), !vec4<bool>(any(vec2<bool>(true, true)), true != any(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), !any(vec4<bool>(false, true, true, true))));
    global2 = vec2<i32>(min(-global2.x, u_input.a), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.x, _wgslsmith_div_i32(-1i, u_input.a), u_input.a, global2.x), abs(max(vec4<i32>(-2147483647i, 0i, 8019i, global2.x), vec4<i32>(u_input.a, 58991i, u_input.a, 2840i) >> (arg_0 % vec4<u32>(32u))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1195f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(483f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-308f, -159f))), -377f)))));
    return Struct_4(Struct_3(Struct_1(_wgslsmith_add_vec3_u32(~arg_1.zww, select(vec3<u32>(0u, u_input.b.x, 27320u), vec3<u32>(arg_1.x, u_input.c.x, 0u), vec3<bool>(var_0.x, var_0.x, false))), select(var_0, var_0, var_0), vec3<u32>(30483u, _wgslsmith_mult_u32(1u, 27545u), 42895u), _wgslsmith_mod_vec4_u32(vec4<u32>(41165u, u_input.c.x, arg_0.x, u_input.b.x), u_input.c | vec4<u32>(arg_0.x, 1u, arg_0.x, 531u)), -423f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2035f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(325f, var_1.x))))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1.x, arg_0.x), global1[_wgslsmith_index_u32(4153u, 4u)]))), all(var_0));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = -(vec4<i32>(global2.x, -u_input.a, -27477i, ~(-u_input.a)) & vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, 62036i), -29904i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, 0i), vec3<i32>(global2.x, global2.x, global2.x))), _wgslsmith_mod_i32(countOneBits(-2147483647i), 78844i), _wgslsmith_add_i32(global2.x, -global2.x), firstTrailingBit(_wgslsmith_mod_i32(-85673i, 1i))));
    global0 = array<Struct_2, 25>();
    var var_1 = func_2(arg_1.a.d, arg_1.a.d).a.a;
    let var_2 = -820f;
    let var_3 = arg_1.a.b.x;
    return !var_1.b.zyy;
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = select(func_4(func_2(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.c.zz), _wgslsmith_dot_vec4_u32(vec4<u32>(29211u, 26592u, 37141u, 4294967295u), global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), 79397u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, 66618u, 1u) >> (global1[_wgslsmith_index_u32(1u, 4u)] % vec4<u32>(32u)), vec4<u32>(0u, u_input.c.x, u_input.b.x, 16556u))), Struct_3(Struct_1(u_input.b ^ u_input.b, vec4<bool>(true, true, true, true), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(0u, u_input.c.x, u_input.b.x)), firstLeadingBit(global1[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_div_f32(743f, 394f)), arg_0.x, func_2(~u_input.c, global1[_wgslsmith_index_u32(1u, 4u)]).a.a.c.x)), func_4(func_2(_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], vec4<u32>(4294967295u, 7675u, 25031u, 22047u)) | u_input.c, (vec4<u32>(21361u, 15318u, u_input.c.x, u_input.b.x) | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 70238u)) | _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.c.x), vec4<u32>(3551u, u_input.c.x, u_input.c.x, 1u))), func_2(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 14985u, 4294967295u, u_input.c.x), u_input.c), _wgslsmith_add_u32(u_input.b.x, 0u), ~4294967295u), ~countOneBits(vec4<u32>(u_input.c.x, 1u, 0u, 26120u))).a), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(false, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, false, false, false))), u_input.b.x == firstTrailingBit(3018u)), vec3<bool>(select(select(false, true, true), true, true), u_input.b.x == ~39856u, true)));
    global0 = array<Struct_2, 25>();
    let var_1 = _wgslsmith_sub_i32(~(-firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 6938i), vec3<i32>(-7248i, u_input.a, -49809i)))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2689i, u_input.a, -1i, global2.x), vec4<i32>(-61594i, u_input.a, -61045i, -5288i)), -vec4<i32>(-12497i, 2147483647i, u_input.a, global2.x)) >> (74652u % 32u));
    var var_2 = func_2(vec4<u32>(6574u, 9473u, countOneBits(min(~0u, max(u_input.b.x, 42938u))), reverseBits(u_input.c.x)), reverseBits(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(0u, 67227u)), 125310u, u_input.b.x, u_input.c.x)));
    let var_3 = 22508i;
    return func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_2.a.a.c.x, ~(~var_2.a.a.a.x)), 4u)], ~_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(firstLeadingBit(0u), 1u, _wgslsmith_div_u32(var_2.a.a.d.x, 1u), ~55466u)));
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    let var_0 = firstLeadingBit(~countOneBits(~vec2<u32>(53328u, 0u)));
    var var_1 = arg_0.a.a;
    var_1 = arg_0.a.a;
    var var_2 = var_1.e;
    var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, arg_0.a.b, -1399f, arg_0.a.b) + vec4<f32>(788f, -1214f, -1294f, 1476f)), vec4<f32>(arg_0.a.b, var_1.e, -1912f, var_1.e)))))).a.a;
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = vec3<u32>(~(17536u | (u_input.c.x >> (0u % 32u))) ^ u_input.c.x, ~(~u_input.c.x), u_input.c.x);
    global1 = array<vec4<u32>, 4>();
    let var_2 = Struct_4(Struct_3(func_5(func_1(vec4<f32>(1f, 1f, 1f, 1f)), firstTrailingBit(~global2.x)), 1f, ~(~(~u_input.c.x))), _wgslsmith_mod_i32(u_input.a, global2.x) >= min(_wgslsmith_add_i32(u_input.a, 10194i), countOneBits(u_input.a)));
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.b), global2.x);
}

