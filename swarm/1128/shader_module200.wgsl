struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 2147483647i, 36172i);

var<private> global1: array<Struct_4, 30>;

var<private> global2: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_1(1i, vec3<i32>(-4015i, 0i, -1i), -7050i, vec2<u32>(53495u, 5560u)), false, Struct_2(vec3<u32>(14253u, 86426u, 104890u), Struct_1(-47205i, vec3<i32>(34740i, -38578i, -8076i), 0i, vec2<u32>(4294967295u, 0u))), vec3<u32>(55236u, 18335u, 1u), Struct_3(-226f, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_4(Struct_1(2147483647i, vec3<i32>(0i, -1i, -1i), 5183i, vec2<u32>(0u, 117717u)), true, Struct_2(vec3<u32>(52182u, 4294967295u, 55673u), Struct_1(0i, vec3<i32>(-1i, 1i, 13752i), 18740i, vec2<u32>(4294967295u, 0u))), vec3<u32>(0u, 28517u, 31664u), Struct_3(346f, vec3<u32>(0u, 103594u, 62740u))), Struct_4(Struct_1(i32(-2147483648), vec3<i32>(1920i, -94i, -100i), 1i, vec2<u32>(4294967295u, 4294967295u)), true, Struct_2(vec3<u32>(0u, 4294967295u, 72958u), Struct_1(-20846i, vec3<i32>(-874i, -1i, 44624i), -46011i, vec2<u32>(1u, 48576u))), vec3<u32>(32458u, 0u, 0u), Struct_3(470f, vec3<u32>(63551u, 88867u, 4294967295u))), Struct_4(Struct_1(-17768i, vec3<i32>(i32(-2147483648), -1i, 2147483647i), i32(-2147483648), vec2<u32>(72770u, 1u)), true, Struct_2(vec3<u32>(9868u, 118829u, 0u), Struct_1(-1i, vec3<i32>(53206i, i32(-2147483648), 1i), -4649i, vec2<u32>(4294967295u, 6653u))), vec3<u32>(127918u, 0u, 99676u), Struct_3(-718f, vec3<u32>(1u, 0u, 89136u))), Struct_4(Struct_1(i32(-2147483648), vec3<i32>(-28112i, i32(-2147483648), -1i), 2147483647i, vec2<u32>(0u, 18660u)), true, Struct_2(vec3<u32>(0u, 0u, 71619u), Struct_1(0i, vec3<i32>(1i, 2147483647i, 10157i), -1i, vec2<u32>(0u, 40499u))), vec3<u32>(1u, 27580u, 4294967295u), Struct_3(-693f, vec3<u32>(53765u, 30290u, 1u))), Struct_4(Struct_1(2229i, vec3<i32>(-1i, -42415i, -6724i), -3765i, vec2<u32>(1u, 4294967295u)), false, Struct_2(vec3<u32>(34390u, 45395u, 9891u), Struct_1(-19594i, vec3<i32>(1i, i32(-2147483648), -1813i), 2147483647i, vec2<u32>(56033u, 4294967295u))), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_3(1096f, vec3<u32>(1u, 85598u, 3939u))), Struct_4(Struct_1(-24271i, vec3<i32>(2147483647i, -13960i, -35156i), -48299i, vec2<u32>(0u, 1u)), false, Struct_2(vec3<u32>(2599u, 31549u, 1u), Struct_1(-1i, vec3<i32>(1i, -58365i, 23076i), -2735i, vec2<u32>(4294967295u, 37292u))), vec3<u32>(24050u, 76698u, 1u), Struct_3(848f, vec3<u32>(1u, 57094u, 52694u))), Struct_4(Struct_1(-45202i, vec3<i32>(i32(-2147483648), -1i, -18536i), 32517i, vec2<u32>(4294967295u, 0u)), true, Struct_2(vec3<u32>(9767u, 0u, 6544u), Struct_1(-34032i, vec3<i32>(58942i, -11458i, 18861i), 1751i, vec2<u32>(4294967295u, 35185u))), vec3<u32>(28609u, 0u, 6051u), Struct_3(1484f, vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_4(Struct_1(12300i, vec3<i32>(14156i, 5093i, 5133i), i32(-2147483648), vec2<u32>(9373u, 19822u)), false, Struct_2(vec3<u32>(1u, 1u, 1u), Struct_1(i32(-2147483648), vec3<i32>(394i, -62139i, 2147483647i), 54116i, vec2<u32>(50708u, 185u))), vec3<u32>(81352u, 3438u, 12615u), Struct_3(-343f, vec3<u32>(4294967295u, 85556u, 4380u))), Struct_4(Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), 1i, 53557i), -4146i, vec2<u32>(0u, 86263u)), false, Struct_2(vec3<u32>(34282u, 24566u, 1u), Struct_1(-1i, vec3<i32>(i32(-2147483648), -36819i, 69922i), 2147483647i, vec2<u32>(4294967295u, 4294967295u))), vec3<u32>(0u, 5586u, 0u), Struct_3(448f, vec3<u32>(0u, 1u, 62348u))), Struct_4(Struct_1(0i, vec3<i32>(32977i, 2147483647i, 28206i), i32(-2147483648), vec2<u32>(49648u, 4294967295u)), true, Struct_2(vec3<u32>(0u, 0u, 10791u), Struct_1(0i, vec3<i32>(i32(-2147483648), 0i, 2147483647i), 0i, vec2<u32>(53347u, 111871u))), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_3(-261f, vec3<u32>(63714u, 0u, 6542u))), Struct_4(Struct_1(2147483647i, vec3<i32>(72868i, i32(-2147483648), 0i), -1i, vec2<u32>(7053u, 27675u)), false, Struct_2(vec3<u32>(3018u, 13465u, 0u), Struct_1(-1i, vec3<i32>(-30041i, -26254i, -20948i), -20808i, vec2<u32>(4294967295u, 1u))), vec3<u32>(0u, 0u, 4294967295u), Struct_3(-572f, vec3<u32>(21288u, 3893u, 1u))), Struct_4(Struct_1(5323i, vec3<i32>(i32(-2147483648), 10905i, i32(-2147483648)), -4257i, vec2<u32>(49562u, 35116u)), false, Struct_2(vec3<u32>(17776u, 33246u, 20053u), Struct_1(-15775i, vec3<i32>(16024i, 0i, i32(-2147483648)), -12449i, vec2<u32>(1u, 4782u))), vec3<u32>(35924u, 2421u, 47817u), Struct_3(-130f, vec3<u32>(1u, 0u, 109233u))), Struct_4(Struct_1(0i, vec3<i32>(0i, 9769i, 2147483647i), 27962i, vec2<u32>(0u, 19371u)), true, Struct_2(vec3<u32>(0u, 239u, 9587u), Struct_1(0i, vec3<i32>(21698i, 22340i, 10543i), 29857i, vec2<u32>(88925u, 1u))), vec3<u32>(4294967295u, 12270u, 7726u), Struct_3(-1000f, vec3<u32>(0u, 1u, 1u))), Struct_4(Struct_1(i32(-2147483648), vec3<i32>(-7394i, 10900i, 11341i), 2147483647i, vec2<u32>(4294967295u, 23718u)), false, Struct_2(vec3<u32>(4294967295u, 10879u, 4239u), Struct_1(-48867i, vec3<i32>(2147483647i, -14664i, -25737i), 2147483647i, vec2<u32>(0u, 4294967295u))), vec3<u32>(4294967295u, 12101u, 46349u), Struct_3(1086f, vec3<u32>(1u, 21568u, 3159u))), Struct_4(Struct_1(-35377i, vec3<i32>(1i, -15580i, -1i), 1i, vec2<u32>(4294967295u, 10058u)), true, Struct_2(vec3<u32>(11294u, 20629u, 5188u), Struct_1(-44899i, vec3<i32>(0i, 2147483647i, 37248i), -47637i, vec2<u32>(0u, 800u))), vec3<u32>(0u, 48933u, 127320u), Struct_3(204f, vec3<u32>(85220u, 0u, 7328u))), Struct_4(Struct_1(-13639i, vec3<i32>(2147483647i, 6177i, -29026i), 2147483647i, vec2<u32>(1u, 4568u)), true, Struct_2(vec3<u32>(4866u, 16540u, 1u), Struct_1(i32(-2147483648), vec3<i32>(44539i, 7478i, 31141i), -1i, vec2<u32>(2951u, 75705u))), vec3<u32>(38766u, 66510u, 0u), Struct_3(857f, vec3<u32>(4294967295u, 4294967295u, 0u))), Struct_4(Struct_1(-1i, vec3<i32>(2147483647i, 2147483647i, 9413i), 65977i, vec2<u32>(1u, 0u)), true, Struct_2(vec3<u32>(1u, 69692u, 45603u), Struct_1(-24229i, vec3<i32>(13136i, 21991i, 0i), -144i, vec2<u32>(1u, 4349u))), vec3<u32>(4294967295u, 20770u, 1u), Struct_3(710f, vec3<u32>(4294967295u, 19922u, 1u))), Struct_4(Struct_1(-14957i, vec3<i32>(1i, -1i, i32(-2147483648)), 27327i, vec2<u32>(79648u, 1u)), false, Struct_2(vec3<u32>(30630u, 1580u, 1u), Struct_1(-53443i, vec3<i32>(2147483647i, -1i, 13526i), -45496i, vec2<u32>(56979u, 43401u))), vec3<u32>(4294967295u, 44860u, 4294967295u), Struct_3(804f, vec3<u32>(4294967295u, 4294967295u, 61988u))), Struct_4(Struct_1(-1i, vec3<i32>(-27286i, -9607i, 0i), 2147483647i, vec2<u32>(0u, 1u)), true, Struct_2(vec3<u32>(51192u, 48288u, 13619u), Struct_1(1i, vec3<i32>(-19357i, 55210i, 9251i), -1i, vec2<u32>(24470u, 16285u))), vec3<u32>(4294967295u, 50267u, 0u), Struct_3(-182f, vec3<u32>(27634u, 0u, 90381u))), Struct_4(Struct_1(-1i, vec3<i32>(0i, 4362i, 12040i), 2147483647i, vec2<u32>(45682u, 1u)), false, Struct_2(vec3<u32>(16451u, 52960u, 0u), Struct_1(-2897i, vec3<i32>(22688i, -19247i, 35828i), 1i, vec2<u32>(12687u, 1u))), vec3<u32>(69099u, 4294967295u, 4294967295u), Struct_3(2116f, vec3<u32>(1u, 14955u, 4294967295u))), Struct_4(Struct_1(1i, vec3<i32>(-1i, -31170i, 21214i), 18909i, vec2<u32>(4294967295u, 38687u)), false, Struct_2(vec3<u32>(1u, 22494u, 0u), Struct_1(-19231i, vec3<i32>(2498i, 3621i, 2147483647i), 2147483647i, vec2<u32>(22045u, 47374u))), vec3<u32>(0u, 18535u, 9558u), Struct_3(633f, vec3<u32>(1u, 3749u, 1u))), Struct_4(Struct_1(0i, vec3<i32>(-20156i, 0i, 1i), i32(-2147483648), vec2<u32>(30342u, 0u)), true, Struct_2(vec3<u32>(31816u, 80936u, 0u), Struct_1(14131i, vec3<i32>(-1i, -11784i, i32(-2147483648)), 28377i, vec2<u32>(4294967295u, 4294967295u))), vec3<u32>(0u, 0u, 4294967295u), Struct_3(1287f, vec3<u32>(0u, 0u, 0u))), Struct_4(Struct_1(54302i, vec3<i32>(1i, 22640i, 11146i), -44863i, vec2<u32>(0u, 7074u)), false, Struct_2(vec3<u32>(4294967295u, 4294967295u, 22640u), Struct_1(1i, vec3<i32>(2147483647i, -1790i, 0i), -1i, vec2<u32>(0u, 0u))), vec3<u32>(33982u, 4807u, 78476u), Struct_3(-396f, vec3<u32>(56165u, 1u, 60654u))), Struct_4(Struct_1(0i, vec3<i32>(2147483647i, -11961i, 23325i), 2147483647i, vec2<u32>(77259u, 0u)), false, Struct_2(vec3<u32>(56696u, 64167u, 1u), Struct_1(-73871i, vec3<i32>(58620i, 17334i, 2147483647i), -39649i, vec2<u32>(18516u, 4294967295u))), vec3<u32>(52549u, 2170u, 5510u), Struct_3(-855f, vec3<u32>(1u, 5566u, 0u))), Struct_4(Struct_1(1i, vec3<i32>(-10634i, 2147483647i, 12342i), -16917i, vec2<u32>(0u, 4294967295u)), true, Struct_2(vec3<u32>(4294967295u, 1u, 60318u), Struct_1(1i, vec3<i32>(-7018i, -11771i, 13922i), -17589i, vec2<u32>(33044u, 4294967295u))), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_3(-792f, vec3<u32>(24222u, 84603u, 90188u))), Struct_4(Struct_1(0i, vec3<i32>(1986i, 0i, -41197i), -983i, vec2<u32>(1u, 6153u)), true, Struct_2(vec3<u32>(0u, 19303u, 2609u), Struct_1(32814i, vec3<i32>(57982i, 0i, -1i), -30053i, vec2<u32>(0u, 4294967295u))), vec3<u32>(41417u, 0u, 76048u), Struct_3(-580f, vec3<u32>(4294967295u, 1u, 12853u))), Struct_4(Struct_1(-1i, vec3<i32>(12906i, 1i, i32(-2147483648)), -10754i, vec2<u32>(0u, 1u)), false, Struct_2(vec3<u32>(65971u, 44877u, 1u), Struct_1(-3145i, vec3<i32>(2147483647i, -27031i, i32(-2147483648)), 19292i, vec2<u32>(4294967295u, 0u))), vec3<u32>(0u, 4294967295u, 1u), Struct_3(164f, vec3<u32>(1u, 0u, 61940u))), Struct_4(Struct_1(-33938i, vec3<i32>(20607i, 41348i, -52758i), 18878i, vec2<u32>(2704u, 1u)), false, Struct_2(vec3<u32>(0u, 4294967295u, 25526u), Struct_1(2147483647i, vec3<i32>(30022i, -1i, 2175i), -18953i, vec2<u32>(15175u, 44406u))), vec3<u32>(4294967295u, 8287u, 44162u), Struct_3(2087f, vec3<u32>(15248u, 4294967295u, 1u))), Struct_4(Struct_1(21224i, vec3<i32>(-29261i, -33022i, -1i), 42648i, vec2<u32>(63459u, 8552u)), false, Struct_2(vec3<u32>(81126u, 4294967295u, 1u), Struct_1(-1i, vec3<i32>(6348i, 0i, 0i), 27305i, vec2<u32>(59671u, 1u))), vec3<u32>(62047u, 13283u, 4294967295u), Struct_3(571f, vec3<u32>(4294967295u, 1u, 49778u))), Struct_4(Struct_1(33732i, vec3<i32>(-1i, 1i, i32(-2147483648)), 0i, vec2<u32>(19798u, 4294967295u)), true, Struct_2(vec3<u32>(42479u, 82029u, 4294967295u), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), -35451i, -23235i), 339i, vec2<u32>(0u, 0u))), vec3<u32>(0u, 1u, 34203u), Struct_3(599f, vec3<u32>(23645u, 14935u, 4294967295u))));

var<private> global3: bool = true;

var<private> global4: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_div_vec3_u32(select(abs(u_input.c.wwx), u_input.c.yxy, true), u_input.c.yyx), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global4.b.b.x), vec2<i32>(global4.b.b.x, 79850i)), reverseBits(54212i)) >> (_wgslsmith_clamp_u32(~arg_1.d.x, u_input.c.x << (global4.b.d.x % 32u), ~global4.b.d.x) % 32u), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, u_input.a, 55343i), abs(vec3<i32>(-15547i, global0.x, 7857i))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -3337i, arg_1.c) >> (~vec3<u32>(global4.b.d.x, arg_1.d.x, 26845u) % vec3<u32>(32u)), countOneBits(vec3<i32>(17378i, global0.x, -2147483647i))), _wgslsmith_mod_vec2_u32(~(vec2<u32>(arg_1.d.x, global4.a.x) & vec2<u32>(arg_1.d.x, 96331u)), abs(~vec2<u32>(arg_1.d.x, u_input.d)))));
    let var_1 = global2[_wgslsmith_index_u32(abs(firstLeadingBit(~abs(global4.b.d.x)) ^ _wgslsmith_mult_u32(26050u, var_0.a.x)), 31u)];
    var var_2 = _wgslsmith_sub_u32(global4.b.d.x, ~0u);
    global4 = var_1.c;
    let var_3 = Struct_1(~(-global0.x), vec3<i32>(-27397i, arg_1.b.x, -1i), global0.x, _wgslsmith_add_vec2_u32(var_0.a.zz, u_input.c.zy));
    return var_0.a;
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(658f + -1075f) - _wgslsmith_f_op_f32(sign(437f))) - 1f)), reverseBits(vec3<u32>(8037u, ~firstTrailingBit(655u), 1u)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a)))), func_3(any(vec4<bool>(true, false, true, false)) & false, global4.b));
    var var_2 = _wgslsmith_div_f32(1690f, _wgslsmith_f_op_f32(-var_0.a));
    let var_3 = _wgslsmith_f_op_f32(round(var_1.a));
    var var_4 = 50210u;
    return Struct_3(var_1.a, ~u_input.c.yzw);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> f32 {
    let var_0 = func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, ~global4.b.b.x), global4.b.b.zy) << (firstLeadingBit(~3554u) % 32u));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, -921f, -555f, 673f)), vec4<f32>(arg_1, var_0.a, arg_2.e.a, var_0.a)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 933f, 189f, var_0.a)), vec4<f32>(arg_1, -292f, arg_2.e.a, 992f), select(vec4<bool>(true, false, true, arg_2.b), vec4<bool>(false, arg_0.x, true, true), arg_2.b))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -745f, arg_1))))))));
    var var_2 = 1i;
    var var_3 = arg_2.c;
    let var_4 = var_1.zxy;
    return arg_2.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_div_f32(835f, _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, false), 224f, Struct_4(global4.b, true, Struct_2(global4.a, global4.b), vec3<u32>(1u, u_input.b.x, global4.b.d.x), Struct_3(-230f, vec3<u32>(global4.a.x, 72173u, global4.a.x))), 16165u)))), 205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(729f, -1000f))), -227f));
    var var_1 = ((_wgslsmith_sub_i32(_wgslsmith_mod_i32(global4.b.a, 0i), global0.x ^ u_input.a) > (global4.b.b.x | _wgslsmith_sub_i32(global4.b.a, 2147483647i))) != true) && (any(vec4<bool>(true, true, true, true)) & true);
    var var_2 = Struct_1(16803i, vec3<i32>(min(global4.b.c | _wgslsmith_div_i32(global4.b.b.x, -4796i), ~reverseBits(global4.b.a)), global4.b.a, u_input.a), global0.x, reverseBits((u_input.e >> (u_input.b % vec2<u32>(32u))) << (~(~vec2<u32>(global4.a.x, 4294967295u)) % vec2<u32>(32u))));
    global4 = Struct_2(u_input.c.yyy, global4.b);
    var var_3 = abs(select(abs(vec2<i32>(7009i, max(var_2.b.x, 0i))), global4.b.b.zz, firstTrailingBit(~var_2.d.x) < _wgslsmith_mod_u32(~var_2.d.x, ~23203u)));
    let var_4 = select(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.e.x, 1u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, global4.b.d.x, 4294967295u, 11902u))), ~0u), ~(~max(_wgslsmith_clamp_vec3_u32(global4.a, vec3<u32>(38079u, 31443u, global4.a.x), vec3<u32>(var_2.d.x, 1u, 1u)), vec3<u32>(50772u, var_2.d.x, global4.a.x))), true);
    let var_5 = global0.xy;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec3_u32(~vec3<u32>(global4.a.x, var_2.d.x, 15816u), reverseBits(~vec3<u32>(41091u, u_input.c.x, 1u))), var_4, select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), 146f >= var_0.x), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2063f, 240f)))))), vec3<u32>(24148u, _wgslsmith_add_u32(var_4.x, 46918u), _wgslsmith_clamp_u32(global4.a.x, _wgslsmith_dot_vec2_u32(~var_2.d, max(vec2<u32>(var_4.x, 8089u), u_input.b)), ~66927u >> (var_4.x % 32u))));
}

