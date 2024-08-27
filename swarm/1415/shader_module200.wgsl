struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
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

var<private> global0: array<Struct_4, 31>;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec3<u32>(25860u, 43660u, 1u), vec3<u32>(1u, 45969u, 16387u)), true, Struct_1(vec3<u32>(0u, 1u, 55868u), vec3<u32>(54061u, 36450u, 66072u)), -16235i);

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(0i, Struct_2(false, Struct_1(vec3<u32>(27819u, 77662u, 22851u), vec3<u32>(4294967295u, 30531u, 102366u)), true, Struct_1(vec3<u32>(13723u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 0u)), -40797i), Struct_1(vec3<u32>(4294967295u, 1493u, 0u), vec3<u32>(4294967295u, 1u, 0u))), Struct_3(0i, Struct_2(false, Struct_1(vec3<u32>(14437u, 1u, 0u), vec3<u32>(4294967295u, 53120u, 0u)), true, Struct_1(vec3<u32>(13442u, 1u, 46363u), vec3<u32>(4294967295u, 0u, 4294967295u)), 1i), Struct_1(vec3<u32>(40331u, 4294967295u, 30513u), vec3<u32>(4908u, 55735u, 12067u))), Struct_3(30111i, Struct_2(false, Struct_1(vec3<u32>(1u, 0u, 66030u), vec3<u32>(2392u, 50892u, 6486u)), false, Struct_1(vec3<u32>(70804u, 51386u, 4294967295u), vec3<u32>(0u, 32026u, 1u)), 13625i), Struct_1(vec3<u32>(1u, 43186u, 4294967295u), vec3<u32>(32242u, 1u, 962u))), Struct_3(-20118i, Struct_2(true, Struct_1(vec3<u32>(10473u, 83991u, 1u), vec3<u32>(4294967295u, 17766u, 1u)), false, Struct_1(vec3<u32>(38531u, 18683u, 43971u), vec3<u32>(0u, 4294967295u, 1u)), 44310i), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1130u, 15238u, 64542u))), Struct_3(-31860i, Struct_2(false, Struct_1(vec3<u32>(1u, 4294967295u, 35343u), vec3<u32>(17724u, 22704u, 0u)), false, Struct_1(vec3<u32>(15244u, 1u, 54487u), vec3<u32>(53764u, 5089u, 15061u)), -38602i), Struct_1(vec3<u32>(16551u, 122854u, 0u), vec3<u32>(1u, 10081u, 4294967295u))), Struct_3(2147483647i, Struct_2(true, Struct_1(vec3<u32>(1u, 49825u, 0u), vec3<u32>(1u, 4294967295u, 17028u)), true, Struct_1(vec3<u32>(4294967295u, 50305u, 41402u), vec3<u32>(5802u, 4294967295u, 28773u)), -30741i), Struct_1(vec3<u32>(48466u, 14798u, 61511u), vec3<u32>(1u, 0u, 4294967295u))), Struct_3(34567i, Struct_2(true, Struct_1(vec3<u32>(4294967295u, 52719u, 10790u), vec3<u32>(42848u, 1u, 76681u)), true, Struct_1(vec3<u32>(23995u, 1330u, 2281u), vec3<u32>(4294967295u, 4294967295u, 179u)), -1i), Struct_1(vec3<u32>(3104u, 25585u, 97455u), vec3<u32>(0u, 41034u, 1u))), Struct_3(-1i, Struct_2(true, Struct_1(vec3<u32>(44082u, 44985u, 84443u), vec3<u32>(1u, 0u, 1u)), false, Struct_1(vec3<u32>(4294967295u, 94208u, 31667u), vec3<u32>(0u, 1u, 4294967295u)), -30498i), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u))), Struct_3(-38214i, Struct_2(false, Struct_1(vec3<u32>(7708u, 5377u, 83169u), vec3<u32>(1u, 37340u, 8293u)), false, Struct_1(vec3<u32>(1u, 18541u, 1u), vec3<u32>(61926u, 1u, 2447u)), 2147483647i), Struct_1(vec3<u32>(61734u, 1u, 4294967295u), vec3<u32>(14745u, 57231u, 53736u))), Struct_3(1i, Struct_2(true, Struct_1(vec3<u32>(1u, 1u, 72682u), vec3<u32>(29385u, 1u, 28818u)), true, Struct_1(vec3<u32>(17930u, 31559u, 0u), vec3<u32>(0u, 1u, 61358u)), i32(-2147483648)), Struct_1(vec3<u32>(33504u, 4294967295u, 0u), vec3<u32>(0u, 1u, 37446u))), Struct_3(i32(-2147483648), Struct_2(true, Struct_1(vec3<u32>(0u, 4294967295u, 54180u), vec3<u32>(4294967295u, 31643u, 0u)), true, Struct_1(vec3<u32>(37617u, 0u, 126338u), vec3<u32>(94372u, 4294967295u, 4294967295u)), 0i), Struct_1(vec3<u32>(0u, 60615u, 1u), vec3<u32>(0u, 13418u, 0u))), Struct_3(0i, Struct_2(false, Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 19879u, 1276u)), true, Struct_1(vec3<u32>(15431u, 48826u, 9768u), vec3<u32>(63543u, 4294967295u, 31099u)), 0i), Struct_1(vec3<u32>(0u, 45643u, 1u), vec3<u32>(4294967295u, 40646u, 52333u))), Struct_3(1i, Struct_2(false, Struct_1(vec3<u32>(61847u, 91322u, 19425u), vec3<u32>(12163u, 4294967295u, 97361u)), false, Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 81075u, 31217u)), 0i), Struct_1(vec3<u32>(4294967295u, 1u, 83340u), vec3<u32>(38302u, 11609u, 40236u))), Struct_3(2147483647i, Struct_2(false, Struct_1(vec3<u32>(0u, 20178u, 58921u), vec3<u32>(84602u, 101794u, 15770u)), false, Struct_1(vec3<u32>(0u, 9618u, 33260u), vec3<u32>(54621u, 1u, 30622u)), i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 37473u, 1u), vec3<u32>(63469u, 46664u, 59942u))), Struct_3(-14488i, Struct_2(false, Struct_1(vec3<u32>(22547u, 1u, 131601u), vec3<u32>(41071u, 50921u, 31572u)), false, Struct_1(vec3<u32>(0u, 48566u, 11393u), vec3<u32>(1u, 18754u, 4294967295u)), 45374i), Struct_1(vec3<u32>(1909u, 1u, 36987u), vec3<u32>(100443u, 48316u, 0u))), Struct_3(2147483647i, Struct_2(true, Struct_1(vec3<u32>(3778u, 52791u, 1713u), vec3<u32>(1u, 24470u, 0u)), false, Struct_1(vec3<u32>(56583u, 10679u, 23934u), vec3<u32>(837u, 0u, 0u)), -58912i), Struct_1(vec3<u32>(4294967295u, 41493u, 1u), vec3<u32>(14506u, 1u, 1u))), Struct_3(1i, Struct_2(true, Struct_1(vec3<u32>(22056u, 35724u, 0u), vec3<u32>(25053u, 0u, 4294967295u)), true, Struct_1(vec3<u32>(30862u, 9389u, 18301u), vec3<u32>(40860u, 0u, 68248u)), 1i), Struct_1(vec3<u32>(20u, 29359u, 16076u), vec3<u32>(9856u, 9089u, 19051u))), Struct_3(15541i, Struct_2(false, Struct_1(vec3<u32>(52119u, 1u, 1u), vec3<u32>(33755u, 52635u, 4294967295u)), true, Struct_1(vec3<u32>(1853u, 11222u, 23285u), vec3<u32>(1u, 20434u, 4899u)), 0i), Struct_1(vec3<u32>(220u, 58734u, 0u), vec3<u32>(1u, 4294967295u, 0u))), Struct_3(-34623i, Struct_2(false, Struct_1(vec3<u32>(14438u, 6404u, 399u), vec3<u32>(35263u, 0u, 4114u)), false, Struct_1(vec3<u32>(105639u, 10174u, 1u), vec3<u32>(17736u, 1u, 0u)), 0i), Struct_1(vec3<u32>(0u, 4294967295u, 16358u), vec3<u32>(4294967295u, 35858u, 14477u))), Struct_3(-38397i, Struct_2(true, Struct_1(vec3<u32>(1u, 39438u, 0u), vec3<u32>(4294967295u, 0u, 29126u)), true, Struct_1(vec3<u32>(49156u, 63928u, 49055u), vec3<u32>(41570u, 4294967295u, 75038u)), 2147483647i), Struct_1(vec3<u32>(1u, 8573u, 1u), vec3<u32>(4294967295u, 1u, 73505u))), Struct_3(-1i, Struct_2(true, Struct_1(vec3<u32>(23758u, 50639u, 15971u), vec3<u32>(1u, 4294967295u, 22172u)), true, Struct_1(vec3<u32>(33504u, 29082u, 20178u), vec3<u32>(13510u, 1u, 1u)), 238i), Struct_1(vec3<u32>(26206u, 27119u, 1u), vec3<u32>(10440u, 0u, 85042u))), Struct_3(i32(-2147483648), Struct_2(true, Struct_1(vec3<u32>(17994u, 0u, 1253u), vec3<u32>(0u, 4294967295u, 17895u)), false, Struct_1(vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 27515u, 0u)), i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 44009u, 4294967295u), vec3<u32>(19012u, 0u, 19701u))), Struct_3(16019i, Struct_2(true, Struct_1(vec3<u32>(0u, 50708u, 16758u), vec3<u32>(4294967295u, 51876u, 22370u)), true, Struct_1(vec3<u32>(0u, 49642u, 1u), vec3<u32>(4294967295u, 0u, 19839u)), 0i), Struct_1(vec3<u32>(34519u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u))), Struct_3(-26515i, Struct_2(true, Struct_1(vec3<u32>(0u, 44891u, 1u), vec3<u32>(22246u, 69193u, 4294967295u)), true, Struct_1(vec3<u32>(1u, 7598u, 20232u), vec3<u32>(29277u, 48171u, 9301u)), 2147483647i), Struct_1(vec3<u32>(44173u, 1u, 0u), vec3<u32>(0u, 3377u, 0u))));

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<u32>(43442u, 5499u, 50451u), vec3<u32>(32066u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(50777u, 13661u, 4294967295u), vec3<u32>(11378u, 60795u, 0u)), Struct_1(vec3<u32>(16925u, 0u, 36623u), vec3<u32>(29380u, 66389u, 1u)), Struct_1(vec3<u32>(31715u, 43595u, 0u), vec3<u32>(0u, 56355u, 10609u)), Struct_1(vec3<u32>(0u, 29813u, 57511u), vec3<u32>(57528u, 1u, 4004u)), Struct_1(vec3<u32>(30380u, 0u, 1u), vec3<u32>(7322u, 0u, 47946u)), Struct_1(vec3<u32>(0u, 1u, 22921u), vec3<u32>(1u, 11697u, 4294967295u)), Struct_1(vec3<u32>(12314u, 14325u, 18578u), vec3<u32>(4294967295u, 2944u, 1u)), Struct_1(vec3<u32>(0u, 1u, 0u), vec3<u32>(47198u, 7461u, 0u)), Struct_1(vec3<u32>(4214u, 4294967295u, 1u), vec3<u32>(45586u, 0u, 21690u)), Struct_1(vec3<u32>(1u, 4294967295u, 35990u), vec3<u32>(47073u, 0u, 1u)), Struct_1(vec3<u32>(0u, 0u, 28517u), vec3<u32>(0u, 17053u, 0u)), Struct_1(vec3<u32>(1u, 0u, 1053u), vec3<u32>(1u, 28777u, 25140u)), Struct_1(vec3<u32>(0u, 1u, 42514u), vec3<u32>(31701u, 1u, 4294967295u)), Struct_1(vec3<u32>(33737u, 0u, 19329u), vec3<u32>(1u, 1u, 1u)), Struct_1(vec3<u32>(39723u, 17702u, 18518u), vec3<u32>(54518u, 43479u, 4294967295u)), Struct_1(vec3<u32>(0u, 89994u, 1u), vec3<u32>(4294967295u, 12572u, 19263u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(17798u, 4294967295u, 10283u)), Struct_1(vec3<u32>(8191u, 4294967295u, 0u), vec3<u32>(14169u, 1u, 49744u)), Struct_1(vec3<u32>(5828u, 1u, 4294967295u), vec3<u32>(21460u, 37517u, 4294967295u)), Struct_1(vec3<u32>(20770u, 39768u, 39674u), vec3<u32>(40u, 48183u, 13925u)), Struct_1(vec3<u32>(1u, 1u, 17801u), vec3<u32>(4294967295u, 4294967295u, 0u)));

var<private> global4: array<u32, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = any(select(!vec3<bool>(false, !arg_0.b.a, !arg_0.b.c), vec3<bool>(true, true, true), arg_0.b.a));
    let var_1 = 78620u;
    global4 = array<u32, 5>();
    return !all(vec2<bool>(!(!arg_0.b.c), false));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = ~1u;
    global0 = array<Struct_4, 31>();
    let var_1 = global1.d;
    var var_2 = firstLeadingBit(global1.b.a.x);
    let var_3 = Struct_4(Struct_2(global1.c, Struct_1(~vec3<u32>(global1.d.a.x, 65191u, 23100u) & abs(vec3<u32>(19643u, u_input.b.x, var_0)), global1.b.b), true, Struct_1(~u_input.b.xzy, ~u_input.b.zww), -76305i), global1.d.b.xy, !vec2<bool>(true, global1.c), func_3(Struct_3(2147483647i, Struct_2(select(global1.c, false, true), Struct_1(var_1.b, u_input.c.xww), global1.a, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.b.x, global1.b.a.x), 23u)], arg_0.x), Struct_1(reverseBits(vec3<u32>(var_0, global1.d.b.x, 0u)), max(u_input.b.xxy, global1.b.b)))));
    return global2[_wgslsmith_index_u32(~countOneBits(global1.d.b.x), 24u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f)), _wgslsmith_f_op_f32(-1282f * _wgslsmith_f_op_f32(round(701f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-831f)))))));
    var var_1 = func_2(-vec4<i32>(~u_input.a.x & -44176i, arg_1.b.e, 1i, ~arg_3.x), reverseBits(firstTrailingBit(-35045i)), u_input.a.xx).b;
    global4 = array<u32, 5>();
    global4 = array<u32, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1126f)), 443f, _wgslsmith_f_op_f32(var_0.x - -1333f), _wgslsmith_f_op_f32(f32(-1f) * -874f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2049f, var_0.x, var_0.x, 1493f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, 786f, 175f, -1677f)), select(vec4<bool>(arg_1.b.c, var_1.a, false, false), vec4<bool>(false, true, global1.a, false), false)))))), select(vec4<bool>(!(arg_0.x | global1.a), all(vec3<bool>(true, true, false)), var_1.c, any(arg_0.wwy)), select(vec4<bool>(true, all(arg_0.www), var_1.c, global1.d.b.x > var_1.d.a.x), arg_0, select(vec4<bool>(arg_0.x, true, arg_1.b.c, var_1.c), !arg_0, !vec4<bool>(arg_0.x, false, global1.a, global1.c))), select(vec4<bool>(!global1.a, global1.c, true, global1.c), arg_0, false))));
    return Struct_1(global1.d.b, ~countOneBits(func_2(~vec4<i32>(u_input.a.x, arg_3.x, 1i, -188i), -31073i, select(vec2<i32>(u_input.a.x, arg_1.b.e), u_input.a.zx, false)).b.d.a));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    var var_0 = -204f;
    var_0 = _wgslsmith_f_op_f32(arg_0.x + arg_0.x);
    var var_1 = Struct_2((_wgslsmith_f_op_f32(-_wgslsmith_div_f32(217f, 470f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) & true, func_2(countOneBits(vec4<i32>(_wgslsmith_clamp_i32(global1.e, global1.e, u_input.a.x), -arg_1.x, _wgslsmith_add_i32(arg_1.x, -5338i), 1i)), -2147483647i, u_input.a.yx).b.d, func_2(_wgslsmith_mult_vec4_i32(firstTrailingBit(min(vec4<i32>(global1.e, u_input.a.x, 29706i, 44632i), vec4<i32>(u_input.a.x, global1.e, 62251i, -44856i))), abs(-vec4<i32>(0i, 3368i, 37498i, u_input.a.x))), _wgslsmith_div_i32(arg_1.x, 1i), vec2<i32>(global1.e, u_input.a.x)).b.a, func_2(~firstTrailingBit(vec4<i32>(-1i, arg_1.x, -61057i, arg_1.x)), -19371i, vec2<i32>(-1i, -2147483647i)).c, global1.e << (0u % 32u));
    var var_2 = select(!vec4<bool>(any(vec2<bool>(false, global1.c)), true, !all(vec2<bool>(global1.a, true)), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), global1.c, true, any(vec4<bool>(all(vec4<bool>(false, true, true, true)), arg_0.x <= 2350f, all(vec2<bool>(true, true)), global1.c))), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, var_1.c), vec2<bool>(arg_3, true))), 33203u == ~arg_2.b.x, global1.a & func_3(global2[_wgslsmith_index_u32(4294967295u, 24u)]), all(!vec2<bool>(var_1.a, true))));
    let var_3 = global2[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(5970u << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4538u) | global1.d.a.zy, u_input.c.xz), _wgslsmith_dot_vec2_u32(vec2<u32>(15951u, 137u), vec2<u32>(arg_2.b.x, 43516u)) << (18274u % 32u)) % 32u), 5u)]), 24u)];
    return Struct_4(var_3.b, u_input.c.xz, select(vec2<bool>(global1.c, false & select(global1.a, var_3.b.c, var_3.b.a)), vec2<bool>(true == (var_1.d.b.x != u_input.c.x), !global1.c), select(vec2<bool>(var_2.x, any(vec3<bool>(false, arg_3, arg_3))), var_2.wz, all(var_2.xy) || (arg_0.x <= 945f))), var_3.b.c);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-520f * 974f), _wgslsmith_f_op_f32(sign(852f)))))) > -1694f, !func_5(vec3<f32>(_wgslsmith_div_f32(1000f, -829f), _wgslsmith_f_op_f32(sign(1554f)), _wgslsmith_f_op_f32(f32(-1f) * -665f)), u_input.a.xx, global3[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(499f, 2073f, 1289f) - vec3<f32>(-1091f, -899f, 1075f)), countOneBits(vec2<i32>(global1.e, arg_1.a.e)), global1.b, arg_1.c.x).a.d.b.x, 23u)], arg_1.a.a).c.x);
    var var_1 = vec3<i32>(arg_1.a.e, -1i, _wgslsmith_div_i32(-11170i, _wgslsmith_sub_i32(func_2(vec4<i32>(u_input.a.x, global1.e, -16530i, -2147483647i), 17748i << (0u % 32u), _wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(global1.e, u_input.a.x))).b.e, global1.e)));
    global4 = array<u32, 5>();
    var_1 = vec3<i32>(41495i, ~arg_1.a.e << (abs(firstTrailingBit(~u_input.b.x)) % 32u), ~(~arg_1.a.e));
    var var_2 = global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 23u)];
    return global3[_wgslsmith_index_u32(func_2(((vec4<i32>(16642i, 0i, 10428i, arg_1.a.e) >> (~vec4<u32>(46733u, global1.b.b.x, var_2.b.x, 1u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global1.e, u_input.a.x, var_1.x), vec4<i32>(1i, 2147483647i, var_1.x, global1.e)), countOneBits(vec4<i32>(10665i, -43036i, -4086i, 63160i)))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x & arg_0.x, firstTrailingBit(1u), _wgslsmith_add_u32(global1.d.b.x, 44587u), global1.d.b.x), abs(vec4<u32>(u_input.c.x, 0u, 19656u, var_2.b.x)) & u_input.c, vec4<u32>(17592u, 65562u, countOneBits(var_2.b.x), abs(4294967295u))) % vec4<u32>(32u)), ~max(func_2(vec4<i32>(10062i, var_1.x, -2147483647i, global1.e), -1i, vec2<i32>(1i, var_1.x)).a ^ select(2147483647i, arg_1.a.e, arg_1.a.a), _wgslsmith_dot_vec2_i32(var_1.yz ^ vec2<i32>(-1i, var_1.x), vec2<i32>(var_1.x, u_input.a.x))), (((var_1.zz << (global1.b.a.yz % vec2<u32>(32u))) >> (~u_input.b.yz % vec2<u32>(32u))) ^ ((vec2<i32>(37586i, u_input.a.x) << (vec2<u32>(7300u, global1.b.b.x) % vec2<u32>(32u))) << (vec2<u32>(20827u, 6321u) % vec2<u32>(32u)))) << (countOneBits(var_2.b.xy) % vec2<u32>(32u))).b.b.b.x, 23u)];
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(any(select(!vec2<bool>(global1.c, false), func_5(vec3<f32>(547f, 1000f, -298f), select(u_input.a.zy, u_input.a.xz, false), func_2(vec4<i32>(u_input.a.x, global1.e, 1i, u_input.a.x), 41258i, vec2<i32>(u_input.a.x, global1.e)).c, !global1.c).c, all(!vec4<bool>(false, global1.a, false, global1.a)))), arg_0, true, Struct_1(~vec3<u32>(~20556u, ~u_input.c.x, ~26093u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b.a.x, global4[_wgslsmith_index_u32(u_input.c.x, 5u)], 61765u), ~u_input.b.yxw ^ ~global1.d.a, countOneBits(arg_0.b))), 1i);
    let var_1 = Struct_4(func_2(vec4<i32>(~31204i, 1i, -15531i, var_0.e), -1i, vec2<i32>(0i, var_0.e)).b, ~(~(u_input.b.xy ^ (arg_0.b.zx >> (vec2<u32>(arg_0.b.x, global1.b.b.x) % vec2<u32>(32u))))), !vec2<bool>(global1.a, false), true);
    global4 = array<u32, 5>();
    let var_2 = func_2(vec4<i32>(15533i, func_2(-reverseBits(vec4<i32>(-2147483647i, u_input.a.x, -6777i, var_1.a.e)), ~var_1.a.e >> (arg_0.b.x % 32u), u_input.a.zx).a, _wgslsmith_sub_i32(-10074i, func_2(max(vec4<i32>(-1i, -19389i, global1.e, global1.e), vec4<i32>(1i, global1.e, 1i, -1i)), _wgslsmith_mult_i32(var_1.a.e, 0i), u_input.a.yx).a), -(global1.e & global1.e) & -_wgslsmith_add_i32(1i, -31169i)), ~u_input.a.x, -abs(u_input.a.yx ^ _wgslsmith_add_vec2_i32(vec2<i32>(-37825i, var_0.e), u_input.a.yy)));
    var var_3 = vec3<i32>((_wgslsmith_add_i32(44155i, -1i) & abs(var_2.a)) << (firstTrailingBit(62506u >> (u_input.c.x % 32u)) % 32u), abs(var_1.a.e), select(-10847i, var_2.a, true)) >> (var_1.a.b.b % vec3<u32>(32u));
    return Struct_2(var_2.b.a, var_2.b.b, true, func_6(_wgslsmith_div_vec2_u32(vec2<u32>(1u, reverseBits(var_0.d.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(446u, var_0.b.a.x), ~vec2<u32>(27279u, var_2.b.d.b.x))), var_1), global1.e);
}

fn func_1() -> bool {
    global1 = func_7(func_6(vec2<u32>(global4[_wgslsmith_index_u32(~12529u, 5u)], u_input.b.x), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, -203f, 866f)) * vec3<f32>(-1399f, 1674f, -138f)), -(u_input.a.zy ^ vec2<i32>(-22607i, 0i)), func_4(vec4<bool>(true, false, false, global1.c), func_2(vec4<i32>(-67988i, global1.e, u_input.a.x, 1i), -2147483647i, u_input.a.zz), ~global1.e, ~u_input.a), true & global1.a)));
    global4 = array<u32, 5>();
    global2 = array<Struct_3, 24>();
    var var_0 = Struct_4(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, 211f, 265f)))), reverseBits(abs(vec2<i32>(-14329i, 21947i))), global3[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(30660u, 5u)]), 23u)], all(vec2<bool>(true, true))).a, vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(u_input.b.zxz, vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 5u)], global1.d.a.x, global4[_wgslsmith_index_u32(u_input.b.x, 5u)]))), vec3<u32>(max(1u, 24010u), global4[_wgslsmith_index_u32(max(39491u, global4[_wgslsmith_index_u32(global1.b.a.x, 5u)]), 5u)], _wgslsmith_sub_u32(global1.b.a.x, 4294967295u))), reverseBits(_wgslsmith_add_u32(1u, ~1u))), vec2<bool>(true, !func_3(Struct_3(0i, Struct_2(global1.c, global1.b, false, Struct_1(vec3<u32>(u_input.c.x, 25919u, global4[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<u32>(u_input.b.x, u_input.c.x, global1.d.b.x)), u_input.a.x), global3[_wgslsmith_index_u32(u_input.b.x, 23u)]))), true);
    global1 = var_0.a;
    return var_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 24u)];
    var var_1 = !vec4<bool>(global1.a, global1.c, var_0.b.c, func_1());
    let var_2 = _wgslsmith_f_op_f32(select(1877f, _wgslsmith_div_f32(1341f, _wgslsmith_f_op_f32(-403f + -658f)), true || global1.a)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1639f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + -708f) + _wgslsmith_f_op_f32(f32(-1f) * -198f))));
    let var_3 = Struct_4(var_0.b, vec2<u32>(23675u, _wgslsmith_clamp_u32(min(firstLeadingBit(53873u), firstTrailingBit(u_input.b.x)), u_input.b.x, ~0u)), !(!func_5(vec3<f32>(107f, -2655f, -689f), vec2<i32>(-39079i, global1.e), global1.b, true).c), !var_0.b.c);
    var var_4 = all(vec4<bool>(var_1.x & var_1.x, var_1.x, var_2, any(vec4<bool>(var_3.d, false, false, true)) || true));
    var var_5 = var_0.b.b;
    let var_6 = vec4<bool>(select(true, true, !((var_3.c.x & false) && (true || var_3.a.a))), true | (false || global1.a), !all(!var_1.yyx), any(vec4<bool>(!var_3.a.a, !func_7(Struct_1(var_5.b, vec3<u32>(global1.b.b.x, var_5.b.x, 15115u))).c, !global1.c, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-638f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f * _wgslsmith_f_op_f32(round(-1149f))))));
}

