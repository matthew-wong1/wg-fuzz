struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(1u, vec2<bool>(false, false), Struct_1(vec3<i32>(1i, 28352i, i32(-2147483648))), Struct_3(Struct_2(vec3<i32>(54237i, 35401i, -1i), -2048f, Struct_1(vec3<i32>(39776i, -14226i, 2147483647i)), -53852i, Struct_1(vec3<i32>(15939i, -1i, 37493i))), vec2<i32>(-5893i, 19256i), i32(-2147483648)), Struct_2(vec3<i32>(-39971i, 31012i, 0i), -116f, Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i)), 0i, Struct_1(vec3<i32>(-834i, 10784i, i32(-2147483648))))), Struct_4(0u, vec2<bool>(true, true), Struct_1(vec3<i32>(-10605i, 1i, i32(-2147483648))), Struct_3(Struct_2(vec3<i32>(-43843i, -41034i, -1i), 561f, Struct_1(vec3<i32>(31567i, -51082i, -1i)), i32(-2147483648), Struct_1(vec3<i32>(0i, 2244i, -17939i))), vec2<i32>(6175i, i32(-2147483648)), -1i), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 32105i), -578f, Struct_1(vec3<i32>(11944i, 2147483647i, 61898i)), i32(-2147483648), Struct_1(vec3<i32>(-23283i, 2147483647i, -1i)))), Struct_4(4294967295u, vec2<bool>(false, false), Struct_1(vec3<i32>(2147483647i, 5016i, 9032i)), Struct_3(Struct_2(vec3<i32>(60490i, 0i, -1i), -970f, Struct_1(vec3<i32>(1i, 0i, -879i)), i32(-2147483648), Struct_1(vec3<i32>(2147483647i, 18234i, 1i))), vec2<i32>(19048i, 2147483647i), 2147483647i), Struct_2(vec3<i32>(1i, i32(-2147483648), -31014i), -2061f, Struct_1(vec3<i32>(-27276i, 1i, 44393i)), -15882i, Struct_1(vec3<i32>(30704i, 40090i, -65271i)))), Struct_4(43840u, vec2<bool>(false, false), Struct_1(vec3<i32>(-74580i, -49196i, -1i)), Struct_3(Struct_2(vec3<i32>(2147483647i, -76483i, 24272i), 967f, Struct_1(vec3<i32>(-15020i, 1i, 0i)), 41974i, Struct_1(vec3<i32>(33911i, 0i, -1i))), vec2<i32>(4194i, 60060i), 16643i), Struct_2(vec3<i32>(-13179i, -9028i, i32(-2147483648)), -1000f, Struct_1(vec3<i32>(2147483647i, -40061i, -1i)), 49262i, Struct_1(vec3<i32>(-33981i, i32(-2147483648), -32952i)))), Struct_4(0u, vec2<bool>(false, false), Struct_1(vec3<i32>(i32(-2147483648), -5599i, 2147483647i)), Struct_3(Struct_2(vec3<i32>(-1i, 15068i, 2147483647i), -1382f, Struct_1(vec3<i32>(21312i, i32(-2147483648), -1i)), 24950i, Struct_1(vec3<i32>(2147483647i, -25018i, 2147483647i))), vec2<i32>(0i, 38223i), -63268i), Struct_2(vec3<i32>(1i, 9034i, 55360i), -1000f, Struct_1(vec3<i32>(2147483647i, -535i, 15724i)), 45903i, Struct_1(vec3<i32>(22127i, -59284i, 31864i)))), Struct_4(4294967295u, vec2<bool>(true, false), Struct_1(vec3<i32>(37054i, i32(-2147483648), 0i)), Struct_3(Struct_2(vec3<i32>(0i, 1i, -46997i), 742f, Struct_1(vec3<i32>(18171i, 21065i, 26781i)), 8083i, Struct_1(vec3<i32>(-6550i, -26384i, 23906i))), vec2<i32>(-62425i, 17511i), -12095i), Struct_2(vec3<i32>(2147483647i, 0i, -38579i), -463f, Struct_1(vec3<i32>(6379i, i32(-2147483648), -9135i)), 1i, Struct_1(vec3<i32>(0i, 10683i, 2147483647i)))), Struct_4(0u, vec2<bool>(true, true), Struct_1(vec3<i32>(1i, -24998i, -57197i)), Struct_3(Struct_2(vec3<i32>(0i, 0i, 2147483647i), 150f, Struct_1(vec3<i32>(-9426i, 0i, 0i)), 0i, Struct_1(vec3<i32>(-39789i, -56106i, -49525i))), vec2<i32>(-1i, -44591i), 24556i), Struct_2(vec3<i32>(-1i, -30153i, 1i), -1000f, Struct_1(vec3<i32>(i32(-2147483648), 0i, 58389i)), -1i, Struct_1(vec3<i32>(36198i, -25203i, 186i)))), Struct_4(0u, vec2<bool>(true, false), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -26689i)), Struct_3(Struct_2(vec3<i32>(-1i, i32(-2147483648), 3126i), -1491f, Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i)), -12362i, Struct_1(vec3<i32>(i32(-2147483648), 14343i, -23930i))), vec2<i32>(1i, 1i), 0i), Struct_2(vec3<i32>(9923i, 37690i, -12406i), -201f, Struct_1(vec3<i32>(2930i, 32834i, 2147483647i)), -16890i, Struct_1(vec3<i32>(0i, 70555i, -28532i)))), Struct_4(26099u, vec2<bool>(false, true), Struct_1(vec3<i32>(79526i, 13424i, -1i)), Struct_3(Struct_2(vec3<i32>(-27221i, 0i, 0i), 371f, Struct_1(vec3<i32>(30444i, -31255i, 2147483647i)), 1i, Struct_1(vec3<i32>(-26261i, -32064i, 0i))), vec2<i32>(-22641i, 0i), i32(-2147483648)), Struct_2(vec3<i32>(i32(-2147483648), 0i, 0i), -577f, Struct_1(vec3<i32>(-11842i, 2147483647i, -25453i)), 4344i, Struct_1(vec3<i32>(2075i, 2147483647i, 25201i)))), Struct_4(4294967295u, vec2<bool>(false, false), Struct_1(vec3<i32>(-1i, -1i, -20165i)), Struct_3(Struct_2(vec3<i32>(-1i, -1i, -46399i), 1807f, Struct_1(vec3<i32>(52916i, 1i, 0i)), i32(-2147483648), Struct_1(vec3<i32>(20662i, 0i, 1i))), vec2<i32>(-24489i, 1i), -1i), Struct_2(vec3<i32>(-27198i, -18227i, 29081i), -430f, Struct_1(vec3<i32>(-4687i, 47765i, 1i)), -57307i, Struct_1(vec3<i32>(31290i, 0i, i32(-2147483648))))), Struct_4(0u, vec2<bool>(true, false), Struct_1(vec3<i32>(30960i, -1i, 0i)), Struct_3(Struct_2(vec3<i32>(-21801i, -3969i, -1i), 847f, Struct_1(vec3<i32>(15720i, 1i, 1i)), i32(-2147483648), Struct_1(vec3<i32>(0i, 1i, 110134i))), vec2<i32>(-13730i, 41589i), 0i), Struct_2(vec3<i32>(1i, 2147483647i, -5464i), -1944f, Struct_1(vec3<i32>(31844i, 2147483647i, i32(-2147483648))), -21444i, Struct_1(vec3<i32>(1i, 2147483647i, -20144i)))), Struct_4(4294967295u, vec2<bool>(false, false), Struct_1(vec3<i32>(-19992i, -1i, 1i)), Struct_3(Struct_2(vec3<i32>(22920i, 26174i, i32(-2147483648)), -1782f, Struct_1(vec3<i32>(-47937i, 5164i, 12337i)), -57966i, Struct_1(vec3<i32>(2147483647i, 810i, -1i))), vec2<i32>(-7068i, i32(-2147483648)), -5052i), Struct_2(vec3<i32>(1i, 0i, -66986i), -604f, Struct_1(vec3<i32>(-9416i, 2147483647i, -21753i)), i32(-2147483648), Struct_1(vec3<i32>(15588i, -1i, -21975i)))), Struct_4(8614u, vec2<bool>(false, false), Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i)), Struct_3(Struct_2(vec3<i32>(0i, 0i, 2147483647i), -564f, Struct_1(vec3<i32>(0i, 14912i, i32(-2147483648))), -89851i, Struct_1(vec3<i32>(26888i, -32308i, 0i))), vec2<i32>(1i, i32(-2147483648)), 29086i), Struct_2(vec3<i32>(-46086i, i32(-2147483648), 2147483647i), -1000f, Struct_1(vec3<i32>(1i, 1i, i32(-2147483648))), -1i, Struct_1(vec3<i32>(237i, -1i, -9923i)))), Struct_4(30364u, vec2<bool>(false, false), Struct_1(vec3<i32>(-43160i, i32(-2147483648), 11221i)), Struct_3(Struct_2(vec3<i32>(24518i, 33556i, -21085i), 499f, Struct_1(vec3<i32>(1i, 1i, i32(-2147483648))), i32(-2147483648), Struct_1(vec3<i32>(61964i, 79999i, 79084i))), vec2<i32>(-26909i, -1i), 15387i), Struct_2(vec3<i32>(-16335i, 0i, 2147483647i), -1000f, Struct_1(vec3<i32>(44815i, 13862i, i32(-2147483648))), 2147483647i, Struct_1(vec3<i32>(41228i, 0i, 12371i)))), Struct_4(50844u, vec2<bool>(true, true), Struct_1(vec3<i32>(-8853i, 1i, 50185i)), Struct_3(Struct_2(vec3<i32>(2147483647i, 1i, i32(-2147483648)), -2413f, Struct_1(vec3<i32>(0i, 23864i, -27543i)), 5708i, Struct_1(vec3<i32>(-7202i, 2147483647i, 11558i))), vec2<i32>(-1i, i32(-2147483648)), 5841i), Struct_2(vec3<i32>(33850i, -12000i, -19087i), -902f, Struct_1(vec3<i32>(2147483647i, 21370i, -21949i)), -8413i, Struct_1(vec3<i32>(-45608i, 2282i, -1i)))), Struct_4(53480u, vec2<bool>(true, true), Struct_1(vec3<i32>(i32(-2147483648), 0i, -22297i)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 1i, 10868i), 755f, Struct_1(vec3<i32>(2147483647i, 9043i, 1i)), 0i, Struct_1(vec3<i32>(2147483647i, 7362i, -2538i))), vec2<i32>(0i, -7034i), i32(-2147483648)), Struct_2(vec3<i32>(405i, 55090i, i32(-2147483648)), 372f, Struct_1(vec3<i32>(-5609i, 0i, -36184i)), -1009i, Struct_1(vec3<i32>(-74908i, -42083i, -16447i)))), Struct_4(0u, vec2<bool>(true, true), Struct_1(vec3<i32>(i32(-2147483648), -2814i, -76403i)), Struct_3(Struct_2(vec3<i32>(1i, -1i, 1565i), -1216f, Struct_1(vec3<i32>(1i, 1i, -1i)), 19336i, Struct_1(vec3<i32>(-9321i, 41804i, 2147483647i))), vec2<i32>(1i, 22062i), -11351i), Struct_2(vec3<i32>(0i, 23272i, i32(-2147483648)), 1308f, Struct_1(vec3<i32>(-59769i, -20391i, 2147483647i)), i32(-2147483648), Struct_1(vec3<i32>(-16757i, -1i, i32(-2147483648))))), Struct_4(69211u, vec2<bool>(true, false), Struct_1(vec3<i32>(16236i, -1i, -20085i)), Struct_3(Struct_2(vec3<i32>(0i, -30786i, 50754i), 1000f, Struct_1(vec3<i32>(-34434i, -16436i, 0i)), -7033i, Struct_1(vec3<i32>(-1i, 0i, 0i))), vec2<i32>(-1i, -1i), -11410i), Struct_2(vec3<i32>(i32(-2147483648), -1i, 0i), -230f, Struct_1(vec3<i32>(1i, 0i, -17510i)), 29035i, Struct_1(vec3<i32>(1i, 36048i, 6218i)))), Struct_4(4294967295u, vec2<bool>(true, false), Struct_1(vec3<i32>(i32(-2147483648), 49128i, 16758i)), Struct_3(Struct_2(vec3<i32>(13908i, -1i, 31269i), 729f, Struct_1(vec3<i32>(-2374i, -1i, i32(-2147483648))), 10714i, Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i))), vec2<i32>(i32(-2147483648), 12840i), -1i), Struct_2(vec3<i32>(27427i, -1i, 1i), -566f, Struct_1(vec3<i32>(16551i, 17869i, -18157i)), 0i, Struct_1(vec3<i32>(0i, 4711i, i32(-2147483648))))), Struct_4(1u, vec2<bool>(true, true), Struct_1(vec3<i32>(-1707i, 1i, 0i)), Struct_3(Struct_2(vec3<i32>(26162i, 10824i, 0i), 1139f, Struct_1(vec3<i32>(0i, 1i, -46052i)), -61414i, Struct_1(vec3<i32>(-27274i, 2147483647i, -40363i))), vec2<i32>(i32(-2147483648), -27589i), 55937i), Struct_2(vec3<i32>(-1i, 0i, -30450i), -1302f, Struct_1(vec3<i32>(1i, 2147483647i, -24495i)), 1i, Struct_1(vec3<i32>(14044i, 0i, 1i)))), Struct_4(0u, vec2<bool>(true, true), Struct_1(vec3<i32>(-18822i, -1i, 33905i)), Struct_3(Struct_2(vec3<i32>(2147483647i, 4560i, i32(-2147483648)), 206f, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 31906i)), i32(-2147483648), Struct_1(vec3<i32>(1i, 57871i, -1i))), vec2<i32>(i32(-2147483648), -1i), 18954i), Struct_2(vec3<i32>(i32(-2147483648), 207i, -1i), 801f, Struct_1(vec3<i32>(-38413i, 51840i, 63282i)), 64293i, Struct_1(vec3<i32>(-23761i, 22718i, -4117i)))), Struct_4(4294967295u, vec2<bool>(true, false), Struct_1(vec3<i32>(-34165i, i32(-2147483648), -1i)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 1i, 0i), 1327f, Struct_1(vec3<i32>(12544i, -30999i, 2147483647i)), i32(-2147483648), Struct_1(vec3<i32>(0i, -11863i, 2147483647i))), vec2<i32>(13113i, -1i), 18643i), Struct_2(vec3<i32>(30514i, i32(-2147483648), 1i), -1000f, Struct_1(vec3<i32>(0i, 76541i, 14641i)), 89085i, Struct_1(vec3<i32>(11878i, 12411i, 2163i)))));

var<private> global2: array<i32, 17> = array<i32, 17>(-35815i, -1i, -1i, -7533i, 30933i, 14320i, 20632i, -24396i, -24423i, 20310i, -25129i, -51055i, 2147483647i, 22561i, -14531i, -5117i, -19220i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_3(arg_1.e, arg_1.e.a.yy, global0.x);
    global2 = array<i32, 17>();
    global0 = var_0.b;
    var var_1 = arg_1.d;
    var var_2 = !select(false, true, all(vec2<bool>(arg_1.b.x, all(vec4<bool>(true, arg_1.b.x, arg_1.b.x, false)))));
    return ~(~57280u);
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = u_input.a;
    let var_1 = select(vec2<bool>(arg_0, any(vec4<bool>(arg_0, !arg_0, arg_0, arg_0))), vec2<bool>((~8007u & u_input.a) < func_3(~vec3<u32>(var_0, 1u, var_0), Struct_4(12127u, vec2<bool>(false, false), Struct_1(vec3<i32>(global0.x, 12815i, -1i)), Struct_3(Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(var_0, 17u)], 1i, 17177i), 1468f, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(var_0, 17u)], global2[_wgslsmith_index_u32(var_0, 17u)], global0.x)), global0.x, Struct_1(vec3<i32>(global0.x, 0i, -11176i))), vec2<i32>(global0.x, global0.x), -7474i), Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], 31858i, global2[_wgslsmith_index_u32(48116u, 17u)]), -228f, Struct_1(vec3<i32>(1i, 0i, 2147483647i)), global2[_wgslsmith_index_u32(var_0, 17u)], Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], -36000i, 10607i))))), all(vec4<bool>(u_input.a == 0u, true, !arg_0, true))), vec2<bool>(all(!vec2<bool>(false, arg_0)), true));
    let var_2 = !(!vec3<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(47185u, u_input.a, 58738u, 14123u), vec4<u32>(1u, 40012u, 4294967295u, u_input.a)) < var_0, var_1.x));
    var var_3 = Struct_2(-_wgslsmith_mod_vec3_i32(~firstLeadingBit(vec3<i32>(-20945i, 32827i, 17884i)), _wgslsmith_add_vec3_i32(-vec3<i32>(0i, -13677i, 0i), vec3<i32>(30262i, global2[_wgslsmith_index_u32(var_0, 17u)], -39443i))), 1290f, Struct_1(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(-2147483647i, global0.x, global0.x)), min(-vec3<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.a, 17u)], global0.x), vec3<i32>(1i, 17891i, -2147483647i) >> (vec3<u32>(4294967295u, var_0, 3783u) % vec3<u32>(32u))))), -1i, Struct_1(reverseBits(~select(vec3<i32>(0i, global0.x, -1i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], -2147483647i, 1i), true))));
    global1 = array<Struct_4, 22>();
    return !any(select(vec2<bool>(!arg_0, true), vec2<bool>(true, !arg_0), !var_1.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    return Struct_3(Struct_2(_wgslsmith_mod_vec3_i32(select(-vec3<i32>(0i, -36148i, -2147483647i), vec3<i32>(-1i, global2[_wgslsmith_index_u32(arg_0.x, 17u)], global0.x), true), _wgslsmith_add_vec3_i32(-vec3<i32>(6014i, global0.x, global2[_wgslsmith_index_u32(1u, 17u)]), vec3<i32>(global2[_wgslsmith_index_u32(arg_2.x, 17u)], -45390i, global2[_wgslsmith_index_u32(arg_2.x, 17u)]) & vec3<i32>(global0.x, 18891i, global0.x))), arg_3, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(arg_0.x, 17u)] | global2[_wgslsmith_index_u32(arg_0.x, 17u)], ~global0.x)), i32(-1i) * -1i, Struct_1(-vec3<i32>(-74166i, global0.x, global0.x) >> (arg_2 % vec3<u32>(32u)))), -select(vec2<i32>(34396i, i32(-1i) * -28038i), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global0.x), vec2<i32>(0i, 18058i))), arg_0.x != abs(62895u)), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~arg_2.x, 17u)], 25839i));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_5 {
    let var_0 = -arg_1.c.a.xy;
    global1 = array<Struct_4, 22>();
    global1 = array<Struct_4, 22>();
    global1 = array<Struct_4, 22>();
    let var_1 = Struct_5(Struct_4(abs(52859u << (reverseBits(u_input.a) % 32u)), arg_1.b, func_4(vec3<u32>(min(u_input.a, 0u), u_input.a, 1u), vec2<bool>(false, arg_1.b.x), vec3<u32>(arg_1.a, u_input.a, ~u_input.a), -196f).a.e, func_4(firstTrailingBit(vec3<u32>(0u, 65801u, 797u)), vec2<bool>(arg_1.e.b > -720f, true), ~firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.a)), _wgslsmith_div_f32(-950f, _wgslsmith_f_op_f32(arg_3.x * -218f))), func_4(reverseBits(vec3<u32>(4294967295u, 1u, 4294967295u)), !select(arg_1.b, arg_1.b, arg_1.b), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, arg_1.a), vec3<u32>(16197u, u_input.a, arg_1.a)), ~vec3<u32>(arg_1.a, 1u, 12468u)), _wgslsmith_f_op_f32(f32(-1f) * -522f)).a), max(~u_input.a, min(2054u, 24359u)), -50325i, true & any(arg_1.b), arg_3.x);
    return var_1;
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> Struct_2 {
    let var_0 = func_5(func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, arg_0.a), _wgslsmith_mult_u32(1u, u_input.a), ~76480u), vec3<u32>(~4294967295u, ~4294967295u, u_input.a)), vec2<bool>(!func_2(arg_0.b.x), true), ~(~vec3<u32>(0u, 1u, arg_0.a)) & ~max(vec3<u32>(u_input.a, 4294967295u, arg_0.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), 1704f), Struct_4(arg_0.a, !vec2<bool>(arg_0.b.x, true), arg_0.d.a.e, func_4(~firstTrailingBit(vec3<u32>(5452u, arg_0.a, 10680u)), arg_0.b, min(~vec3<u32>(1u, u_input.a, arg_0.a), ~vec3<u32>(5232u, arg_0.a, 663u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2132f) - -181f)), arg_0.d.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-204f, arg_0.e.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.b, arg_0.e.b))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.a.b, arg_0.e.b)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d.a.b, -246f)))))), vec2<bool>(arg_0.b.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.b, -364f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.d.a.b, 630f))), true)))));
    var var_1 = !(!(!select(var_0.a.b, select(var_0.a.b, vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, true)), func_5(Struct_3(Struct_2(vec3<i32>(0i, arg_0.e.c.a.x, -51993i), -1397f, Struct_1(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(6224u, 17u)], -21361i)), global2[_wgslsmith_index_u32(arg_0.a, 17u)], Struct_1(vec3<i32>(var_0.c, 0i, 33770i))), arg_0.e.e.a.xx, 0i), Struct_4(arg_0.a, vec2<bool>(var_0.d, var_0.d), Struct_1(vec3<i32>(global0.x, 2147483647i, -1i)), Struct_3(arg_0.d.a, arg_0.d.b, global2[_wgslsmith_index_u32(3605u, 17u)]), var_0.a.e), vec2<f32>(1086f, arg_0.d.a.b), vec2<f32>(arg_0.e.b, -699f)).a.b.x)));
    let var_2 = arg_0.e;
    let var_3 = Struct_5(Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(116473u, 1u, 77261u, arg_0.a), vec4<u32>(0u, 8900u, 0u, 48940u)) >> (vec4<u32>(1u, 84500u, u_input.a, var_0.b) % vec4<u32>(32u)), vec4<u32>(10576u, 4294967295u, 6829u, 4294967295u) & ~vec4<u32>(u_input.a, 4294967295u, arg_0.a, arg_0.a)), vec2<bool>((arg_0.e.b <= -1219f) || arg_0.b.x, any(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_0.d, true, true), vec3<bool>(true, arg_0.b.x, var_0.a.b.x)))), Struct_1((var_2.a ^ vec3<i32>(global0.x, var_2.a.x, 0i)) ^ -arg_0.d.a.a), var_0.a.d, Struct_2(vec3<i32>(i32(-1i) * -6312i, 2147483647i, arg_0.d.c), _wgslsmith_f_op_f32(2076f * _wgslsmith_f_op_f32(sign(1679f))), Struct_1(vec3<i32>(var_2.a.x, global0.x, -16090i) >> (vec3<u32>(arg_0.a, 4294967295u, var_0.b) % vec3<u32>(32u))), ~var_0.c, arg_0.d.a.e)), max(abs(~var_0.a.a), min(var_0.b, _wgslsmith_div_u32(func_3(vec3<u32>(32622u, arg_0.a, u_input.a), Struct_4(var_0.b, var_0.a.b, Struct_1(arg_0.e.e.a), var_0.a.d, Struct_2(vec3<i32>(0i, 2944i, 0i), 556f, Struct_1(var_2.c.a), global0.x, arg_0.e.e))), ~4294967295u))), -(arg_0.d.a.c.a.x << (min(arg_0.a, 29021u) % 32u)), ~(~1u) >= _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, var_0.a.a, 0u)) ^ (vec3<u32>(arg_0.a, arg_0.a, arg_0.a) >> (vec3<u32>(35509u, 21604u, var_0.b) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(u_input.a, arg_0.a), arg_0.a, ~u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * -1210f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_0.e.b + _wgslsmith_f_op_f32(arg_0.d.a.b + -347f))))));
    let var_4 = func_4(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_3.a.a, 67792u), 1u, func_3(vec3<u32>(79631u, var_0.a.a, 42129u), var_0.a)), select(reverseBits(vec3<u32>(14439u, u_input.a, 10071u)), vec3<u32>(u_input.a, arg_0.a, var_3.b), select(var_1.x, true, arg_0.b.x)), ~(~vec3<u32>(29378u, 17680u, var_0.a.a)))), select(vec2<bool>(true, var_0.d), arg_0.b, var_0.a.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.a, u_input.a), vec3<u32>(var_3.a.a, var_3.b, 16429u)), ~var_0.b), firstTrailingBit(vec3<u32>(var_0.a.a, u_input.a, u_input.a))) | vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 50920u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 23101u), vec2<u32>(4294967295u, 1u))), var_0.a.a, 1u), _wgslsmith_f_op_f32(751f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, func_4(vec3<u32>(26420u, 34767u, 0u), arg_0.b, vec3<u32>(0u, u_input.a, var_3.b), arg_0.e.b).a.b, all(vec4<bool>(var_1.x, false, true, false))))))).a.e.a;
    return var_0.a.e;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    var var_0 = -arg_0.c.a;
    let var_1 = vec3<bool>(_wgslsmith_mult_u32(firstTrailingBit(~u_input.a), func_5(func_4(vec3<u32>(127065u, 1u, u_input.a), vec2<bool>(arg_0.b.x, arg_0.b.x), vec3<u32>(u_input.a, 7940u, 14832u), arg_0.e.b), func_5(arg_0.d, Struct_4(arg_0.a, vec2<bool>(arg_0.b.x, false), arg_0.e.c, arg_0.d, Struct_2(vec3<i32>(arg_1.a.x, -1i, arg_0.d.c), 1115f, arg_1.e, global2[_wgslsmith_index_u32(4294967295u, 17u)], arg_0.e.c)), vec2<f32>(arg_0.e.b, -1321f), vec2<f32>(arg_1.b, arg_1.b)).a, vec2<f32>(-1058f, arg_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_0.e.b))).b) != (1u ^ ~_wgslsmith_add_u32(u_input.a, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) + _wgslsmith_f_op_f32(arg_1.b + arg_0.d.a.b))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e.b)))), arg_0.b.x);
    let var_2 = Struct_5(Struct_4(abs(~4294967295u), !vec2<bool>(arg_1.b > -173f, arg_0.b.x), arg_1.e, Struct_3(arg_1, arg_1.a.yz | firstTrailingBit(var_0.zz), ~global0.x), arg_0.e), 8241u << (arg_0.a % 32u), 2147483647i, false & (func_5(func_5(arg_0.d, arg_0, vec2<f32>(arg_0.e.b, 799f), vec2<f32>(-1020f, arg_0.d.a.b)).a.d, func_5(arg_0.d, Struct_4(u_input.a, vec2<bool>(var_1.x, var_1.x), Struct_1(arg_1.c.a), Struct_3(arg_1, var_0.xx, -18024i), Struct_2(vec3<i32>(var_0.x, 2147483647i, -2147483647i), 413f, Struct_1(arg_1.c.a), arg_1.a.x, Struct_1(arg_0.c.a))), vec2<f32>(arg_1.b, arg_0.e.b), vec2<f32>(arg_1.b, 1817f)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_0.d.a.b)), vec2<f32>(arg_1.b, -737f)).d || false), -711f);
    var var_3 = Struct_4(_wgslsmith_mult_u32(func_5(arg_0.d, Struct_4(var_2.b, var_2.a.b, Struct_1(vec3<i32>(global0.x, global0.x, arg_1.d)), func_4(vec3<u32>(arg_0.a, 0u, arg_0.a), var_1.zy, vec3<u32>(0u, u_input.a, 0u), 2344f), Struct_2(var_2.a.d.a.e.a, 1084f, arg_0.c, -28986i, Struct_1(var_2.a.d.a.e.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d.a.b, 205f), vec2<f32>(1209f, 722f), var_2.a.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.b, arg_0.d.a.b) + vec2<f32>(654f, var_2.e)), select(vec2<bool>(false, var_2.d), vec2<bool>(false, true), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.d.a.b, -1799f) * vec2<f32>(-943f, arg_1.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, arg_0.e.b)))).a.a, arg_0.a), vec2<bool>(!all(select(var_1.yy, var_1.zy, var_2.a.b.x)), true), var_2.a.e.e, var_2.a.d, var_2.a.d.a);
    let var_4 = var_2;
    return Struct_4(var_4.b, var_3.b, Struct_1(~(arg_0.e.e.a | _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -72895i, -55018i), vec3<i32>(2147483647i, global0.x, var_2.a.d.a.e.a.x)))), Struct_3(func_5(var_3.d, global1[_wgslsmith_index_u32(~(~var_4.b), 22u)], vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), -502f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) - vec2<f32>(var_2.a.e.b, var_3.d.a.b))))).a.d.a, ~(~(~arg_1.e.a.xy)), ~(-1i >> (u_input.a % 32u)) << ((arg_0.a >> (~0u % 32u)) % 32u)), Struct_2(var_3.d.a.c.a, -1303f, var_3.c, 12556i, var_2.a.c));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_1 {
    global2 = array<i32, 17>();
    let var_0 = arg_2.e;
    global0 = arg_0.a.yx;
    global0 = -(~arg_0.a.yz);
    return func_5(func_4(vec3<u32>(~(~u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_2.a, u_input.a), vec3<u32>(arg_1, 88002u, arg_2.a)), firstLeadingBit(vec3<u32>(0u, 0u, 50701u))), firstTrailingBit(arg_1)), vec2<bool>(any(vec2<bool>(arg_2.b.x, arg_2.b.x)), true), ~(~select(vec3<u32>(arg_1, 2544u, 4294967295u), vec3<u32>(u_input.a, arg_2.a, 86122u), vec3<bool>(arg_2.b.x, arg_2.b.x, true))), 1000f), Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 0u, arg_2.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, arg_1), vec3<u32>(arg_2.a, 1u, arg_2.a))) & 80469u, !select(!arg_2.b, vec2<bool>(true, arg_2.b.x), vec2<bool>(true, true)), func_6(Struct_4(~23095u, !arg_2.b, Struct_1(arg_0.a), Struct_3(Struct_2(vec3<i32>(arg_0.a.x, 2147483647i, var_0.a.x), arg_2.e.b, var_0.e, global2[_wgslsmith_index_u32(arg_1, 17u)], Struct_1(vec3<i32>(-2147483647i, global0.x, var_0.d))), vec2<i32>(var_0.e.a.x, var_0.d), global0.x), var_0), Struct_2(max(vec3<i32>(-34357i, global2[_wgslsmith_index_u32(11374u, 17u)], global2[_wgslsmith_index_u32(43792u, 17u)]), arg_2.e.e.a), _wgslsmith_f_op_f32(3114f - arg_3.x), func_1(global1[_wgslsmith_index_u32(9843u, 22u)], var_0.d).e, -2147483647i, Struct_1(var_0.e.a))).d.a.e, Struct_3(func_4(vec3<u32>(u_input.a, 56203u, u_input.a), arg_2.b, vec3<u32>(0u, 21216u, arg_2.a), _wgslsmith_f_op_f32(floor(arg_2.e.b))).a, vec2<i32>(~arg_2.d.c, max(var_0.e.a.x, arg_2.c.a.x)), _wgslsmith_add_i32(0i, 40134i >> (arg_1 % 32u))), Struct_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(-27238i, 24472i, var_0.e.a.x), func_6(Struct_4(arg_1, vec2<bool>(arg_2.b.x, arg_2.b.x), Struct_1(vec3<i32>(0i, 53094i, global2[_wgslsmith_index_u32(18000u, 17u)])), arg_2.d, arg_2.d.a), arg_2.d.a).c.a), arg_3.x, Struct_1(-var_0.a), func_6(Struct_4(arg_2.a, arg_2.b, Struct_1(vec3<i32>(-20946i, 0i, arg_2.c.a.x)), arg_2.d, var_0), Struct_2(arg_2.c.a, -1222f, var_0.c, -34230i, var_0.e)).d.c, arg_2.c)), arg_3.xx, arg_3.xx).a.c;
}

fn func_8(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    global2 = array<i32, 17>();
    var var_0 = -(~global0.x);
    let var_1 = -2311f;
    var var_2 = func_4(~(min(vec3<u32>(arg_0.a.a, 16329u, 3387u), vec3<u32>(arg_1.a, 102516u, 79943u)) << (vec3<u32>(13474u, arg_1.a, 26749u) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_0.a.a), ~vec3<u32>(0u, u_input.a, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, u_input.a, 0u, u_input.a), vec4<u32>(arg_1.a, 4294967295u, 4294967295u, u_input.a)), ~u_input.a, abs(u_input.a))) % vec3<u32>(32u)), vec2<bool>(all(vec4<bool>(true, func_5(arg_2, global1[_wgslsmith_index_u32(4294967295u, 22u)], vec2<f32>(1318f, 229f), vec2<f32>(arg_2.a.b, arg_2.a.b)).d, !arg_0.a.b.x, arg_1.b.x)), any(vec3<bool>(false, true, true))), min(vec3<u32>(_wgslsmith_clamp_u32(abs(u_input.a), ~u_input.a, arg_0.a.a << (4294967295u % 32u)), arg_0.b, 33238u), ~vec3<u32>(~arg_0.b, ~u_input.a, _wgslsmith_div_u32(arg_1.a, arg_1.a))), _wgslsmith_f_op_f32(-var_1)).a.a;
    let var_3 = arg_0.a.d.a;
    return arg_0.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(-_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], -1i, global0.x), vec3<i32>(-4565i, global2[_wgslsmith_index_u32(u_input.a, 17u)], 9755i)), vec3<i32>(2147483647i, 926i, global2[_wgslsmith_index_u32(17865u, 17u)] >> (u_input.a % 32u))) | abs(abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], -1603i, global0.x))));
    let var_1 = func_8(Struct_5(global1[_wgslsmith_index_u32(~countOneBits(u_input.a), 22u)], 1u >> ((reverseBits(4294967295u) ^ u_input.a) % 32u), firstTrailingBit(min(max(var_0.a.x, -20970i), 2147483647i)), true, -274f), Struct_4(u_input.a, !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), global0.x <= global0.x), func_7(var_0, ~(u_input.a | u_input.a), func_6(Struct_4(u_input.a, vec2<bool>(false, true), var_0, Struct_3(Struct_2(var_0.a, -1000f, var_0, 15021i, var_0), var_0.a.xz, -1i), Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(31673u, 17u)], -31369i), -1311f, Struct_1(vec3<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.a, 17u)], 39356i)), global0.x, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], -13968i, var_0.a.x)))), func_1(Struct_4(u_input.a, vec2<bool>(false, true), Struct_1(var_0.a), Struct_3(Struct_2(var_0.a, 1062f, var_0, var_0.a.x, Struct_1(vec3<i32>(1i, global0.x, var_0.a.x))), var_0.a.xy, -2147483647i), Struct_2(vec3<i32>(-2147483647i, 19513i, var_0.a.x), -2376f, var_0, 15651i, Struct_1(var_0.a))), var_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, 1694f, -1827f)))), Struct_3(func_1(func_6(global1[_wgslsmith_index_u32(u_input.a, 22u)], Struct_2(var_0.a, -481f, var_0, var_0.a.x, var_0)), 2147483647i), func_1(func_6(global1[_wgslsmith_index_u32(61059u, 22u)], Struct_2(vec3<i32>(25631i, 0i, 48273i), -383f, var_0, 0i, Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, global2[_wgslsmith_index_u32(45829u, 17u)])))), -19250i).a.yz, func_6(func_5(Struct_3(Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], 2147483647i), -1035f, Struct_1(vec3<i32>(global0.x, 0i, global2[_wgslsmith_index_u32(u_input.a, 17u)])), var_0.a.x, var_0), var_0.a.xy, global2[_wgslsmith_index_u32(u_input.a, 17u)]), global1[_wgslsmith_index_u32(u_input.a, 22u)], vec2<f32>(238f, 222f), vec2<f32>(-2521f, 1145f)).a, Struct_2(vec3<i32>(-72096i, -1i, 2147483647i), -430f, Struct_1(vec3<i32>(-2147483647i, 19228i, global2[_wgslsmith_index_u32(u_input.a, 17u)])), global0.x, var_0)).d.c), Struct_2(~var_0.a, _wgslsmith_f_op_f32(933f + _wgslsmith_f_op_f32(1000f * 1117f)), func_7(Struct_1(var_0.a), 71027u, global1[_wgslsmith_index_u32(u_input.a, 22u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-372f, 725f, -2103f))), min(func_1(Struct_4(8983u, vec2<bool>(true, false), Struct_1(var_0.a), Struct_3(Struct_2(vec3<i32>(0i, global0.x, global0.x), -317f, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(1u, 17u)], global0.x, var_0.a.x)), -40788i, Struct_1(vec3<i32>(2147483647i, global0.x, var_0.a.x))), vec2<i32>(21088i, -1i), global2[_wgslsmith_index_u32(u_input.a, 17u)]), Struct_2(var_0.a, 762f, Struct_1(var_0.a), 0i, var_0)), var_0.a.x).a.x, -26614i), var_0)), Struct_3(Struct_2(~(var_0.a >> (vec3<u32>(u_input.a, u_input.a, 11937u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1588f)), var_0, _wgslsmith_sub_i32(var_0.a.x, -2147483647i), var_0), ~(~vec2<i32>(global0.x, var_0.a.x)), func_1(global1[_wgslsmith_index_u32(~45063u, 22u)], firstLeadingBit(firstLeadingBit(1i))).d));
    var var_2 = func_5(Struct_3(func_4(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 18287u)), ~vec3<u32>(2062u, 4294967295u, u_input.a)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, false)), ~(~vec3<u32>(13140u, 4294967295u, 2889u)), _wgslsmith_f_op_f32(-var_1.b)).a, ~var_1.a.xx, global0.x), func_5(func_5(func_5(Struct_3(Struct_2(vec3<i32>(var_1.c.a.x, global0.x, 2147483647i), var_1.b, Struct_1(vec3<i32>(-2147483647i, var_1.e.a.x, -25305i)), 7517i, Struct_1(var_1.a)), vec2<i32>(1i, 2147483647i), 0i), func_6(global1[_wgslsmith_index_u32(1u, 22u)], var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -470f) * vec2<f32>(679f, var_1.b)), vec2<f32>(1000f, var_1.b)).a.d, Struct_4(0u, func_5(Struct_3(Struct_2(var_0.a, var_1.b, var_0, -1i, var_1.c), var_0.a.zz, -65331i), global1[_wgslsmith_index_u32(1u, 22u)], vec2<f32>(1000f, var_1.b), vec2<f32>(var_1.b, -1204f)).a.b, Struct_1(var_0.a), Struct_3(var_1, var_0.a.xx, 0i), var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, 267f), vec2<f32>(491f, 616f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -994f) * vec2<f32>(var_1.b, -1005f)))).a.d, Struct_4(_wgslsmith_mult_u32(~u_input.a, ~u_input.a), vec2<bool>(true, true), func_4(~vec3<u32>(u_input.a, 0u, u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, false), true), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 26110u), vec3<u32>(u_input.a, 38140u, u_input.a)), _wgslsmith_div_f32(1695f, -1195f)).a.e, Struct_3(Struct_2(var_0.a, var_1.b, var_1.c, -1i, Struct_1(vec3<i32>(global0.x, 47127i, var_1.d))), select(vec2<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.a, 17u)]), var_0.a.yz, false), -var_0.a.x), var_1), vec2<f32>(_wgslsmith_div_f32(func_8(Struct_5(Struct_4(u_input.a, vec2<bool>(true, false), var_0, Struct_3(var_1, var_0.a.zz, -39772i), var_1), u_input.a, var_0.a.x, false, var_1.b), Struct_4(u_input.a, vec2<bool>(true, true), var_1.c, Struct_3(var_1, vec2<i32>(var_1.c.a.x, -3687i), -2147483647i), Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], var_1.a.x, global2[_wgslsmith_index_u32(88u, 17u)]), var_1.b, var_1.e, 17864i, var_1.c)), Struct_3(var_1, var_0.a.xx, var_1.e.a.x)).b, func_6(global1[_wgslsmith_index_u32(61594u, 22u)], Struct_2(var_1.a, 419f, Struct_1(var_1.c.a), global2[_wgslsmith_index_u32(u_input.a, 17u)], var_0)).e.b), -115f), vec2<f32>(-144f, _wgslsmith_f_op_f32(626f + _wgslsmith_f_op_f32(ceil(-617f))))).a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 548f) + vec2<f32>(var_1.b, 733f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(495f, -386f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1279f, -1126f), vec2<f32>(var_1.b, var_1.b))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, _wgslsmith_f_op_f32(var_1.b - var_1.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-818f, var_1.b) - vec2<f32>(var_1.b, 1084f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1165f, var_2.a.d.a.b, 1113f, -1000f)) + vec4<f32>(-1729f, var_1.b, -1068f, var_2.e)) + vec4<f32>(_wgslsmith_f_op_f32(min(-917f, 100f)), _wgslsmith_f_op_f32(-941f - var_2.a.d.a.b), _wgslsmith_f_op_f32(-1341f * -351f), var_2.a.d.a.b)))));
    global1 = array<Struct_4, 22>();
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_div_i32(1i, var_1.d), _wgslsmith_div_i32(global0.x, 1526i), ~(-global2[_wgslsmith_index_u32(0u, 17u)]) << (1u % 32u)));
    global2 = array<i32, 17>();
    var_4 = var_2.a.e.e;
    global1 = array<Struct_4, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(3236i, vec3<u32>(33566u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(55311u, 0u, 57353u, u_input.a) & vec4<u32>(var_2.a.a, u_input.a, u_input.a, var_2.b), vec4<u32>(var_2.b, 0u, 16238u, 4294967295u) << (vec4<u32>(41082u, u_input.a, var_2.b, var_2.a.a) % vec4<u32>(32u))), 76508u), 1059f, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(6767u, 1u, 1u, var_2.b), vec4<u32>(4294967295u, u_input.a, 9323u, 33212u) >> (vec4<u32>(0u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)))), u_input.a));
}

