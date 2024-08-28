struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(Struct_1(81229u, vec4<u32>(4294967295u, 1u, 1u, 22233u), vec2<u32>(0u, 17908u)), vec3<u32>(4294967295u, 1779u, 1u), vec4<bool>(false, true, false, false)), vec3<bool>(true, false, false), Struct_1(4294967295u, vec4<u32>(1u, 23870u, 4294967295u, 33518u), vec2<u32>(3076u, 1u)), vec2<i32>(34028i, 18765i), Struct_1(0u, vec4<u32>(0u, 86247u, 37749u, 0u), vec2<u32>(9438u, 28363u))), Struct_3(Struct_2(Struct_1(1u, vec4<u32>(27327u, 87520u, 4294967295u, 14621u), vec2<u32>(592u, 0u)), vec3<u32>(44098u, 5520u, 4294967295u), vec4<bool>(true, false, true, true)), vec3<bool>(true, true, true), Struct_1(1u, vec4<u32>(4294967295u, 12499u, 0u, 28027u), vec2<u32>(1u, 0u)), vec2<i32>(-53607i, 21690i), Struct_1(28285u, vec4<u32>(24699u, 4294967295u, 0u, 1u), vec2<u32>(68958u, 4294967295u))), Struct_3(Struct_2(Struct_1(1u, vec4<u32>(1u, 0u, 32322u, 1u), vec2<u32>(1u, 12615u)), vec3<u32>(1u, 96219u, 9334u), vec4<bool>(true, false, true, false)), vec3<bool>(false, false, false), Struct_1(27735u, vec4<u32>(61969u, 0u, 1u, 16876u), vec2<u32>(0u, 38005u)), vec2<i32>(-59081i, 34431i), Struct_1(5077u, vec4<u32>(16011u, 2925u, 4294967295u, 18090u), vec2<u32>(1u, 54088u))), Struct_3(Struct_2(Struct_1(6908u, vec4<u32>(7813u, 41495u, 29366u, 10856u), vec2<u32>(38577u, 10443u)), vec3<u32>(7404u, 22976u, 6403u), vec4<bool>(true, false, true, true)), vec3<bool>(true, true, false), Struct_1(1u, vec4<u32>(66487u, 28960u, 1u, 1u), vec2<u32>(12630u, 30687u)), vec2<i32>(2147483647i, 32755i), Struct_1(4294967295u, vec4<u32>(52055u, 8023u, 1408u, 4294967295u), vec2<u32>(0u, 0u))), Struct_3(Struct_2(Struct_1(20224u, vec4<u32>(49830u, 6190u, 52154u, 8482u), vec2<u32>(23168u, 4294967295u)), vec3<u32>(4294967295u, 1u, 34414u), vec4<bool>(false, true, true, false)), vec3<bool>(false, true, false), Struct_1(8132u, vec4<u32>(0u, 4294967295u, 87369u, 1u), vec2<u32>(4294967295u, 1u)), vec2<i32>(2147483647i, -72009i), Struct_1(162677u, vec4<u32>(1u, 1u, 4294967295u, 100333u), vec2<u32>(0u, 58486u))), Struct_3(Struct_2(Struct_1(1u, vec4<u32>(14065u, 29101u, 4294967295u, 14499u), vec2<u32>(1u, 4294967295u)), vec3<u32>(42944u, 40131u, 0u), vec4<bool>(true, true, true, true)), vec3<bool>(false, true, true), Struct_1(1u, vec4<u32>(4294967295u, 13961u, 3679u, 4294967295u), vec2<u32>(0u, 99263u)), vec2<i32>(0i, i32(-2147483648)), Struct_1(28730u, vec4<u32>(0u, 0u, 65490u, 0u), vec2<u32>(63670u, 0u))), Struct_3(Struct_2(Struct_1(0u, vec4<u32>(23441u, 0u, 90179u, 4294967295u), vec2<u32>(44333u, 1u)), vec3<u32>(4294967295u, 0u, 54282u), vec4<bool>(false, true, false, false)), vec3<bool>(false, false, false), Struct_1(3250u, vec4<u32>(26897u, 86654u, 0u, 37864u), vec2<u32>(1u, 1u)), vec2<i32>(-1i, 54586i), Struct_1(4294967295u, vec4<u32>(4294967295u, 0u, 71118u, 68540u), vec2<u32>(0u, 25680u))), Struct_3(Struct_2(Struct_1(0u, vec4<u32>(5417u, 25061u, 107269u, 34745u), vec2<u32>(28639u, 0u)), vec3<u32>(42979u, 1u, 1u), vec4<bool>(true, true, false, true)), vec3<bool>(false, true, true), Struct_1(8970u, vec4<u32>(108834u, 55744u, 1u, 4294967295u), vec2<u32>(105734u, 4294967295u)), vec2<i32>(46747i, i32(-2147483648)), Struct_1(15312u, vec4<u32>(14679u, 27794u, 4294967295u, 0u), vec2<u32>(37681u, 1152u))), Struct_3(Struct_2(Struct_1(1u, vec4<u32>(0u, 1643u, 1583u, 5510u), vec2<u32>(0u, 6752u)), vec3<u32>(6704u, 40512u, 93892u), vec4<bool>(false, true, true, false)), vec3<bool>(true, true, false), Struct_1(2170u, vec4<u32>(0u, 12314u, 0u, 31682u), vec2<u32>(35122u, 0u)), vec2<i32>(-63522i, i32(-2147483648)), Struct_1(1u, vec4<u32>(4294967295u, 0u, 31195u, 40318u), vec2<u32>(0u, 48119u))), Struct_3(Struct_2(Struct_1(15087u, vec4<u32>(49150u, 1u, 1u, 1u), vec2<u32>(40286u, 44798u)), vec3<u32>(0u, 30902u, 1u), vec4<bool>(false, false, false, true)), vec3<bool>(true, true, false), Struct_1(21814u, vec4<u32>(11161u, 0u, 4117u, 40733u), vec2<u32>(0u, 10886u)), vec2<i32>(i32(-2147483648), 47349i), Struct_1(1u, vec4<u32>(20011u, 84419u, 0u, 1u), vec2<u32>(4294967295u, 107958u))), Struct_3(Struct_2(Struct_1(0u, vec4<u32>(33038u, 0u, 14748u, 31491u), vec2<u32>(4294967295u, 106994u)), vec3<u32>(1u, 39582u, 4294967295u), vec4<bool>(true, true, true, false)), vec3<bool>(true, false, false), Struct_1(4294967295u, vec4<u32>(28033u, 0u, 8647u, 0u), vec2<u32>(4294967295u, 0u)), vec2<i32>(21367i, -55557i), Struct_1(1u, vec4<u32>(4294967295u, 4294967295u, 20897u, 73666u), vec2<u32>(0u, 1u))), Struct_3(Struct_2(Struct_1(1u, vec4<u32>(1u, 0u, 50116u, 4294967295u), vec2<u32>(0u, 1u)), vec3<u32>(3937u, 0u, 4294967295u), vec4<bool>(false, false, true, false)), vec3<bool>(true, false, false), Struct_1(86371u, vec4<u32>(1u, 0u, 1u, 78797u), vec2<u32>(13923u, 31208u)), vec2<i32>(1220i, 1i), Struct_1(1u, vec4<u32>(30825u, 1u, 4294967295u, 4294967295u), vec2<u32>(49138u, 1u))), Struct_3(Struct_2(Struct_1(47749u, vec4<u32>(15352u, 56474u, 30022u, 4294967295u), vec2<u32>(1u, 1u)), vec3<u32>(16932u, 53568u, 1072u), vec4<bool>(false, true, true, true)), vec3<bool>(true, false, false), Struct_1(40070u, vec4<u32>(18283u, 1u, 18536u, 48536u), vec2<u32>(31550u, 70588u)), vec2<i32>(29459i, 0i), Struct_1(71775u, vec4<u32>(1u, 75821u, 0u, 1u), vec2<u32>(1u, 53218u))), Struct_3(Struct_2(Struct_1(1u, vec4<u32>(113143u, 1u, 1u, 49u), vec2<u32>(4294967295u, 1u)), vec3<u32>(4294967295u, 1u, 763u), vec4<bool>(false, false, false, false)), vec3<bool>(true, true, true), Struct_1(18723u, vec4<u32>(75328u, 8314u, 129325u, 73323u), vec2<u32>(4294967295u, 35581u)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(15588u, vec4<u32>(32467u, 8226u, 1u, 4294967295u), vec2<u32>(49767u, 1u))));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(4294967295u, vec4<u32>(4294967295u, 54551u, 4294967295u, 11490u), vec2<u32>(1u, 1u)), vec3<u32>(4294967295u, 69456u, 1u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(14751u, vec4<u32>(0u, 1u, 6875u, 38342u), vec2<u32>(0u, 12791u)), vec3<u32>(10094u, 4294967295u, 1u), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(5101u, vec4<u32>(67655u, 1u, 1u, 0u), vec2<u32>(0u, 30517u)), vec3<u32>(1u, 18430u, 4294967295u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(1260u, vec4<u32>(16193u, 1u, 1u, 50748u), vec2<u32>(64968u, 1u)), vec3<u32>(5233u, 1u, 4294967295u), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(0u, vec4<u32>(15185u, 43661u, 0u, 4294967295u), vec2<u32>(30623u, 3998u)), vec3<u32>(4294967295u, 53580u, 32651u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(42442u, vec4<u32>(70053u, 6769u, 1u, 31448u), vec2<u32>(32052u, 46127u)), vec3<u32>(20959u, 87603u, 0u), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(32027u, vec4<u32>(1u, 44152u, 71900u, 21072u), vec2<u32>(105998u, 43394u)), vec3<u32>(4294967295u, 85818u, 80235u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(1u, vec4<u32>(0u, 50082u, 106690u, 21559u), vec2<u32>(4294967295u, 20158u)), vec3<u32>(4294967295u, 0u, 0u), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(0u, vec4<u32>(1u, 1u, 4294967295u, 90082u), vec2<u32>(67938u, 58537u)), vec3<u32>(1u, 34394u, 16184u), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(47094u, vec4<u32>(1135u, 1u, 0u, 1u), vec2<u32>(69911u, 1u)), vec3<u32>(1u, 32433u, 1843u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(20823u, vec4<u32>(21954u, 1u, 1u, 1u), vec2<u32>(169u, 21706u)), vec3<u32>(26396u, 31787u, 4117u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(4294967295u, vec4<u32>(50790u, 20481u, 0u, 21584u), vec2<u32>(51944u, 1u)), vec3<u32>(54113u, 4890u, 0u), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(1u, vec4<u32>(11193u, 85152u, 1u, 21002u), vec2<u32>(1u, 1u)), vec3<u32>(2828u, 24802u, 49686u), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(32585u, vec4<u32>(15715u, 42712u, 1u, 1u), vec2<u32>(1u, 0u)), vec3<u32>(22784u, 0u, 37413u), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(1u, vec4<u32>(1u, 1u, 15124u, 60625u), vec2<u32>(0u, 28965u)), vec3<u32>(0u, 1u, 1u), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(26066u, vec4<u32>(1u, 39584u, 1u, 0u), vec2<u32>(0u, 0u)), vec3<u32>(1091u, 24834u, 0u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(0u, vec4<u32>(4294967295u, 36377u, 0u, 0u), vec2<u32>(1u, 20871u)), vec3<u32>(4294967295u, 94238u, 0u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(20233u, vec4<u32>(22388u, 42781u, 0u, 5552u), vec2<u32>(104876u, 1u)), vec3<u32>(13963u, 70719u, 7668u), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(1u, vec4<u32>(67843u, 17008u, 62047u, 4294967295u), vec2<u32>(1u, 1u)), vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(10815u, vec4<u32>(66963u, 4294967295u, 14047u, 4294967295u), vec2<u32>(96232u, 55497u)), vec3<u32>(26728u, 1u, 0u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(0u, vec4<u32>(43396u, 1u, 0u, 1u), vec2<u32>(4294967295u, 1u)), vec3<u32>(0u, 0u, 80832u), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(1u, vec4<u32>(4294967295u, 43278u, 1u, 43261u), vec2<u32>(44299u, 27047u)), vec3<u32>(27172u, 522u, 0u), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(1u, vec4<u32>(9970u, 4294967295u, 4294967295u, 9756u), vec2<u32>(64003u, 4294967295u)), vec3<u32>(1u, 60070u, 0u), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(4294967295u, vec4<u32>(28972u, 4294967295u, 63326u, 39855u), vec2<u32>(103896u, 31939u)), vec3<u32>(4294967295u, 0u, 25201u), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(1u, vec4<u32>(4294967295u, 3969u, 1u, 1u), vec2<u32>(12860u, 0u)), vec3<u32>(28854u, 0u, 68112u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(71774u, vec4<u32>(1u, 0u, 24892u, 76824u), vec2<u32>(1u, 4294967295u)), vec3<u32>(77054u, 12200u, 1u), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(4294967295u, vec4<u32>(10713u, 4124u, 4294967295u, 53027u), vec2<u32>(0u, 58911u)), vec3<u32>(871u, 7891u, 4294967295u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(42913u, vec4<u32>(1u, 67575u, 305u, 4294967295u), vec2<u32>(56491u, 41225u)), vec3<u32>(0u, 40795u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(0u, vec4<u32>(1u, 50374u, 34036u, 0u), vec2<u32>(26965u, 4294967295u)), vec3<u32>(535u, 29190u, 34446u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(4294967295u, vec4<u32>(26200u, 0u, 63581u, 1u), vec2<u32>(12145u, 1u)), vec3<u32>(1u, 0u, 2712u), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(1u, vec4<u32>(99027u, 76954u, 14046u, 4294967295u), vec2<u32>(17916u, 1u)), vec3<u32>(0u, 1u, 48336u), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(1u, vec4<u32>(1u, 78161u, 4294967295u, 4294967295u), vec2<u32>(1u, 1u)), vec3<u32>(1u, 69982u, 1u), vec4<bool>(true, false, false, false)));

var<private> global2: u32 = 1815u;

var<private> global3: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(false, Struct_2(Struct_1(62646u, vec4<u32>(75526u, 0u, 7136u, 1269u), vec2<u32>(4294967295u, 43395u)), vec3<u32>(1712u, 1u, 38261u), vec4<bool>(false, false, true, true))), Struct_4(false, Struct_2(Struct_1(0u, vec4<u32>(29337u, 1u, 62734u, 69608u), vec2<u32>(4294967295u, 13403u)), vec3<u32>(4294967295u, 4294967295u, 22660u), vec4<bool>(true, true, true, true))), Struct_4(false, Struct_2(Struct_1(0u, vec4<u32>(1u, 1u, 1968u, 54014u), vec2<u32>(17659u, 2743u)), vec3<u32>(1u, 33751u, 5137u), vec4<bool>(false, false, false, false))));

var<private> global4: array<vec3<i32>, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global3 = array<Struct_4, 3>();
    global3 = array<Struct_4, 3>();
    let var_0 = u_input.e;
    global1 = array<Struct_2, 32>();
    let var_1 = select(select(!select(arg_0.c, arg_0.c, any(vec4<bool>(true, arg_1.c.x, false, arg_0.c.x))), !arg_1.c, true), vec4<bool>(arg_1.c.x, (~4294967295u ^ u_input.a.x) < max(~0u, _wgslsmith_div_u32(arg_1.b.x, arg_0.b.x)), true, any(select(!vec3<bool>(arg_1.c.x, arg_0.c.x, arg_1.c.x), !arg_0.c.wxw, arg_0.c.zzw))), _wgslsmith_sub_u32(countOneBits(~arg_0.b.x), arg_0.b.x) <= 6716u);
    return !all(select(!select(arg_1.c, var_1, false), vec4<bool>(56193u == u_input.b, true, any(vec2<bool>(false, false)), var_1.x | arg_0.c.x), !(!arg_0.c)));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    global0 = array<Struct_3, 14>();
    global2 = ~(u_input.a.x << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(u_input.a.x, 0u)), u_input.a) % 32u));
    global3 = array<Struct_4, 3>();
    let var_0 = arg_0;
    var var_1 = select(!vec2<bool>((var_0 == arg_0) & true, func_3(global1[_wgslsmith_index_u32(4294967295u, 32u)], Struct_2(Struct_1(u_input.b, vec4<u32>(65932u, u_input.b, 90724u, u_input.a.x), u_input.a), vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<bool>(false, true, true, true)))), vec2<bool>(true, true), vec2<bool>(true, select(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true)));
    return select(select(vec2<bool>(any(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(true, false, true, true))), false), select(vec2<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), true), select(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(true, true), !vec2<bool>(var_1.x, false)), false), vec2<bool>(var_1.x, all(vec3<bool>(true, false, var_1.x)))), !select(!(!vec2<bool>(var_1.x, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, var_1.x)), vec2<bool>(false, false), vec2<bool>(true, var_1.x)), all(!vec3<bool>(var_1.x, false, var_1.x))), false);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(368f, 231f, -2243f, -1865f) * vec4<f32>(354f, -680f, -1126f, -965f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1411f, 705f, 601f, 147f)))))))));
    var var_1 = _wgslsmith_mult_vec2_i32(~min(_wgslsmith_div_vec2_i32(arg_0.d, u_input.c.xx), select(~u_input.c.yz, firstTrailingBit(vec2<i32>(arg_0.d.x, u_input.d)), select(arg_2, arg_0.b.zx, true))), u_input.c.zz);
    var_1 = arg_0.d;
    var var_2 = vec3<u32>(select(countOneBits(11269u | _wgslsmith_clamp_u32(9837u, 12934u, 0u)), countOneBits(~44573u), arg_3 != !arg_0.a.c.x), arg_0.e.a, max(37888u, abs((0u >> (arg_0.a.a.a % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c.a, 37512u, arg_0.c.b.x), arg_0.a.a.b))));
    var_2 = vec3<u32>(u_input.a.x, 8989u, u_input.a.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2221f, -1009f)))))))) - var_0.xy);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> i32 {
    global0 = array<Struct_3, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1, arg_1), 14u)], !(!all(vec2<bool>(false, true)) == (_wgslsmith_add_u32(u_input.a.x, arg_1.x) > ~1u)), !(!func_2(881f)), select(func_2(-408f).x, true, true)));
    var var_1 = select(25407i << (arg_1.x % 32u), countOneBits(abs(-1i)), func_3(Struct_2(Struct_1(arg_1.x, vec4<u32>(31953u, arg_0, u_input.b, 0u), vec2<u32>(3690u, arg_1.x)), vec3<u32>(reverseBits(u_input.a.x), firstLeadingBit(1u), ~1u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, false, true))), Struct_2(Struct_1(countOneBits(arg_1.x), vec4<u32>(arg_1.x, arg_0, 18263u, arg_0), firstTrailingBit(u_input.a)), (vec3<u32>(1u, u_input.a.x, arg_1.x) & vec3<u32>(13959u, 20243u, 9210u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, 33087u), vec3<u32>(arg_0, arg_0, 33003u)), vec4<bool>(var_0.x == var_0.x, select(true, false, true), 53662i > u_input.e, arg_2.x >= 2147483647i))));
    let var_2 = ~vec3<u32>(arg_1.x, arg_1.x, _wgslsmith_clamp_u32(1u, 53204u, arg_0));
    let var_3 = vec4<bool>(true, false, any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), false);
    return -(~_wgslsmith_sub_i32(u_input.e, 1i) >> (_wgslsmith_mult_u32(64376u, 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-708f - _wgslsmith_f_op_f32(f32(-1f) * -411f)), 340f))));
    let var_1 = reverseBits(-vec4<i32>(u_input.d, u_input.e, _wgslsmith_sub_i32(func_1(33551u, vec2<u32>(u_input.a.x, 56287u), u_input.c), 0i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.c.x, 32488i), vec3<i32>(0i, -2147483647i, 40003i)), -20186i)));
    var var_2 = vec3<bool>(true, false, false);
    global1 = array<Struct_2, 32>();
    let var_3 = !(!vec4<bool>(any(vec2<bool>(var_2.x, false)), func_3(global1[_wgslsmith_index_u32(min(u_input.a.x, u_input.b), 32u)], Struct_2(Struct_1(4294967295u, vec4<u32>(1u, u_input.b, u_input.a.x, 49832u), vec2<u32>(u_input.b, 56746u)), vec3<u32>(u_input.a.x, u_input.b, u_input.b), vec4<bool>(var_2.x, var_2.x, true, var_2.x))), !(!var_2.x), !any(vec4<bool>(true, false, var_2.x, var_2.x))));
    global4 = array<vec3<i32>, 26>();
    var var_4 = Struct_1(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, select(u_input.a.x, u_input.a.x, false)), select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 23754u), vec4<u32>(47678u, 33054u, u_input.b, 8302u)), var_2.x)), ~(~select(~vec4<u32>(12298u, u_input.b, u_input.b, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a.x, 0u), vec4<u32>(0u, 1u, u_input.b, u_input.b)), select(var_3, var_3, true))), vec2<u32>(_wgslsmith_add_u32(abs(~u_input.a.x), u_input.a.x), countOneBits(firstLeadingBit(1u))));
    let var_5 = var_4.b.yxz;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zyw, var_1.x);
}

