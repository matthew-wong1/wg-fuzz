struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 16>;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<u32>(1u, 4294967295u, 1u, 16894u), 2147483647i, vec2<bool>(true, false), Struct_1(0u, vec2<i32>(-24797i, -1i), vec2<bool>(true, false), vec4<u32>(63039u, 1u, 0u, 33470u), vec3<u32>(4294967295u, 39553u, 149493u)), Struct_1(4294967295u, vec2<i32>(2147483647i, 41418i), vec2<bool>(false, true), vec4<u32>(40665u, 36867u, 74328u, 10949u), vec3<u32>(0u, 1u, 2636u))), Struct_2(vec4<u32>(4294967295u, 1u, 40655u, 4294967295u), -21558i, vec2<bool>(true, false), Struct_1(4535u, vec2<i32>(54681i, 10396i), vec2<bool>(true, true), vec4<u32>(4294967295u, 30548u, 0u, 1u), vec3<u32>(8841u, 0u, 4294967295u)), Struct_1(40766u, vec2<i32>(2147483647i, 31020i), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 4294967295u, 59474u), vec3<u32>(4294967295u, 60468u, 1u))), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 38862u), -33101i, vec2<bool>(true, false), Struct_1(50294u, vec2<i32>(2147483647i, 50553i), vec2<bool>(false, true), vec4<u32>(31901u, 2075u, 50306u, 68420u), vec3<u32>(0u, 1u, 1u)), Struct_1(0u, vec2<i32>(-47753i, 92666i), vec2<bool>(false, false), vec4<u32>(1u, 33106u, 19342u, 23379u), vec3<u32>(4294967295u, 7238u, 1u))), Struct_2(vec4<u32>(0u, 1u, 30394u, 1u), 9235i, vec2<bool>(true, true), Struct_1(8054u, vec2<i32>(-1992i, -7161i), vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 0u, 41722u), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(1u, vec2<i32>(22034i, 1i), vec2<bool>(true, false), vec4<u32>(1u, 82804u, 1u, 1u), vec3<u32>(1u, 0u, 1u))), Struct_2(vec4<u32>(57864u, 52584u, 0u, 4294967295u), -1i, vec2<bool>(true, false), Struct_1(0u, vec2<i32>(21203i, 2147483647i), vec2<bool>(true, false), vec4<u32>(2872u, 4294967295u, 78364u, 19815u), vec3<u32>(49881u, 59090u, 4294967295u)), Struct_1(50740u, vec2<i32>(i32(-2147483648), 0i), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 0u, 51995u), vec3<u32>(32935u, 0u, 4294967295u))), Struct_2(vec4<u32>(88201u, 102014u, 1u, 119262u), 2147483647i, vec2<bool>(true, true), Struct_1(14386u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(38862u, 4294967295u, 60487u, 1u), vec3<u32>(1u, 0u, 8197u)), Struct_1(34232u, vec2<i32>(0i, 2147483647i), vec2<bool>(false, true), vec4<u32>(2696u, 16676u, 90919u, 1u), vec3<u32>(17310u, 22450u, 6223u))), Struct_2(vec4<u32>(0u, 9543u, 38918u, 4294967295u), 5202i, vec2<bool>(false, false), Struct_1(4294967295u, vec2<i32>(4511i, i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(4294967295u, 12942u, 32332u, 40208u), vec3<u32>(0u, 4294967295u, 1u)), Struct_1(38104u, vec2<i32>(444i, 12878i), vec2<bool>(false, true), vec4<u32>(1u, 17508u, 1u, 9985u), vec3<u32>(0u, 4294967295u, 1u))), Struct_2(vec4<u32>(0u, 10970u, 0u, 4294967295u), i32(-2147483648), vec2<bool>(true, true), Struct_1(1u, vec2<i32>(-12119i, 2147483647i), vec2<bool>(false, true), vec4<u32>(13026u, 73461u, 23492u, 8077u), vec3<u32>(0u, 4294967295u, 54935u)), Struct_1(0u, vec2<i32>(i32(-2147483648), 56034i), vec2<bool>(true, false), vec4<u32>(0u, 1u, 49398u, 14656u), vec3<u32>(0u, 0u, 4294967295u))), Struct_2(vec4<u32>(4294967295u, 0u, 86030u, 48450u), 1i, vec2<bool>(true, true), Struct_1(1u, vec2<i32>(-3383i, 1i), vec2<bool>(false, true), vec4<u32>(0u, 20045u, 1u, 6122u), vec3<u32>(20069u, 10583u, 1u)), Struct_1(0u, vec2<i32>(-1i, 0i), vec2<bool>(false, false), vec4<u32>(1018u, 1u, 19932u, 1u), vec3<u32>(16111u, 1u, 4294967295u))), Struct_2(vec4<u32>(1u, 1u, 36135u, 4294967295u), 1i, vec2<bool>(true, false), Struct_1(1u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(0u, 1u, 0u, 4294967295u), vec3<u32>(22782u, 33746u, 54294u)), Struct_1(0u, vec2<i32>(-1811i, 3836i), vec2<bool>(false, false), vec4<u32>(0u, 1u, 11561u, 47878u), vec3<u32>(1u, 25937u, 49590u))), Struct_2(vec4<u32>(1u, 1u, 1u, 1u), -1i, vec2<bool>(false, true), Struct_1(4294967295u, vec2<i32>(2147483647i, -1i), vec2<bool>(false, false), vec4<u32>(20502u, 63190u, 12378u, 10146u), vec3<u32>(1u, 46959u, 38498u)), Struct_1(0u, vec2<i32>(1317i, i32(-2147483648)), vec2<bool>(false, true), vec4<u32>(0u, 19834u, 67212u, 0u), vec3<u32>(0u, 1u, 10165u))), Struct_2(vec4<u32>(0u, 17177u, 34455u, 74934u), -1i, vec2<bool>(true, true), Struct_1(0u, vec2<i32>(-61893i, 23147i), vec2<bool>(true, true), vec4<u32>(67462u, 73968u, 9250u, 0u), vec3<u32>(1u, 0u, 2692u)), Struct_1(1u, vec2<i32>(2147483647i, -16801i), vec2<bool>(false, false), vec4<u32>(37469u, 1u, 2702u, 16394u), vec3<u32>(12946u, 1u, 4294967295u))), Struct_2(vec4<u32>(1u, 1u, 1u, 15434u), 34806i, vec2<bool>(false, true), Struct_1(1u, vec2<i32>(-13261i, i32(-2147483648)), vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 2447u, 65238u), vec3<u32>(1u, 11422u, 32038u)), Struct_1(94833u, vec2<i32>(36965i, 0i), vec2<bool>(false, false), vec4<u32>(18326u, 34108u, 31365u, 33772u), vec3<u32>(1488u, 1u, 4294967295u))), Struct_2(vec4<u32>(4294967295u, 7370u, 5808u, 54659u), 2147483647i, vec2<bool>(false, true), Struct_1(1245u, vec2<i32>(2147483647i, -1i), vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 337u, 10523u), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(4294967295u, vec2<i32>(-35318i, 6025i), vec2<bool>(false, false), vec4<u32>(1u, 1u, 0u, 4294967295u), vec3<u32>(50378u, 4294967295u, 4294967295u))), Struct_2(vec4<u32>(26679u, 3636u, 30732u, 4294967295u), -1i, vec2<bool>(false, false), Struct_1(73524u, vec2<i32>(-1i, 9986i), vec2<bool>(false, true), vec4<u32>(1u, 75368u, 53660u, 20657u), vec3<u32>(53618u, 1u, 4294967295u)), Struct_1(4294967295u, vec2<i32>(-5082i, i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(106944u, 21829u, 12579u, 4294967295u), vec3<u32>(1u, 15825u, 0u))), Struct_2(vec4<u32>(1402u, 4294967295u, 63454u, 5738u), 1i, vec2<bool>(false, true), Struct_1(11422u, vec2<i32>(0i, 7033i), vec2<bool>(false, true), vec4<u32>(56992u, 0u, 5845u, 0u), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(0u, vec2<i32>(-19800i, 20323i), vec2<bool>(true, false), vec4<u32>(38439u, 95860u, 4294967295u, 4294967295u), vec3<u32>(4886u, 13108u, 50482u))), Struct_2(vec4<u32>(66050u, 6059u, 4294967295u, 0u), -1i, vec2<bool>(true, true), Struct_1(54956u, vec2<i32>(23088i, 38264i), vec2<bool>(false, false), vec4<u32>(1u, 13907u, 4294967295u, 4294967295u), vec3<u32>(72665u, 4294967295u, 4294967295u)), Struct_1(4294967295u, vec2<i32>(-19903i, -1752i), vec2<bool>(true, false), vec4<u32>(25628u, 0u, 0u, 1u), vec3<u32>(1u, 1u, 64258u))), Struct_2(vec4<u32>(7919u, 1u, 8963u, 1u), -15101i, vec2<bool>(false, false), Struct_1(1u, vec2<i32>(1i, 1i), vec2<bool>(true, true), vec4<u32>(0u, 0u, 71244u, 16933u), vec3<u32>(0u, 7750u, 34528u)), Struct_1(8852u, vec2<i32>(i32(-2147483648), 2623i), vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 28867u, 1u), vec3<u32>(1u, 4294967295u, 1388u))), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), -24497i, vec2<bool>(true, false), Struct_1(2745u, vec2<i32>(-1i, -1i), vec2<bool>(false, true), vec4<u32>(93620u, 128471u, 48296u, 1u), vec3<u32>(18240u, 67570u, 28265u)), Struct_1(0u, vec2<i32>(2147483647i, 2147483647i), vec2<bool>(false, false), vec4<u32>(113368u, 41772u, 17090u, 0u), vec3<u32>(11928u, 28288u, 4294967295u))), Struct_2(vec4<u32>(0u, 44898u, 0u, 14449u), i32(-2147483648), vec2<bool>(true, true), Struct_1(0u, vec2<i32>(-28569i, 2147483647i), vec2<bool>(false, true), vec4<u32>(41622u, 42354u, 4294967295u, 30603u), vec3<u32>(27360u, 72186u, 48485u)), Struct_1(53205u, vec2<i32>(-42728i, 18679i), vec2<bool>(true, false), vec4<u32>(1u, 13216u, 0u, 4294967295u), vec3<u32>(4294967295u, 12802u, 4294967295u))), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), -7903i, vec2<bool>(false, true), Struct_1(4294967295u, vec2<i32>(0i, 27518i), vec2<bool>(true, false), vec4<u32>(4294967295u, 27950u, 35312u, 1u), vec3<u32>(4294967295u, 21534u, 1518u)), Struct_1(31476u, vec2<i32>(-1i, 0i), vec2<bool>(true, false), vec4<u32>(0u, 0u, 0u, 48228u), vec3<u32>(0u, 31267u, 4294967295u))), Struct_2(vec4<u32>(72307u, 7742u, 0u, 0u), 27263i, vec2<bool>(true, false), Struct_1(45912u, vec2<i32>(-82343i, -1i), vec2<bool>(true, false), vec4<u32>(21088u, 24043u, 6528u, 1u), vec3<u32>(1u, 4294967295u, 22654u)), Struct_1(25857u, vec2<i32>(-30023i, -17622i), vec2<bool>(true, true), vec4<u32>(143377u, 12262u, 0u, 1u), vec3<u32>(109424u, 33888u, 4294967295u))), Struct_2(vec4<u32>(1u, 0u, 62990u, 73412u), -1i, vec2<bool>(true, true), Struct_1(4264u, vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(21260u, 6874u, 4294967295u, 0u), vec3<u32>(31779u, 3074u, 29909u)), Struct_1(0u, vec2<i32>(-9213i, i32(-2147483648)), vec2<bool>(false, true), vec4<u32>(4294967295u, 9693u, 16682u, 4294967295u), vec3<u32>(1u, 21475u, 0u))), Struct_2(vec4<u32>(14991u, 1u, 0u, 4294967295u), -16812i, vec2<bool>(true, true), Struct_1(39723u, vec2<i32>(1i, 2147483647i), vec2<bool>(true, true), vec4<u32>(25074u, 7592u, 7257u, 21880u), vec3<u32>(53392u, 0u, 1u)), Struct_1(62394u, vec2<i32>(1i, 2147483647i), vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 0u, 81947u), vec3<u32>(27214u, 10401u, 1u))), Struct_2(vec4<u32>(1u, 3052u, 52260u, 1u), 9717i, vec2<bool>(false, true), Struct_1(50130u, vec2<i32>(i32(-2147483648), 17229i), vec2<bool>(true, true), vec4<u32>(41715u, 1u, 4294967295u, 22058u), vec3<u32>(1u, 4966u, 23872u)), Struct_1(12352u, vec2<i32>(-16293i, 0i), vec2<bool>(true, false), vec4<u32>(1u, 47849u, 40703u, 8485u), vec3<u32>(24605u, 1u, 91348u))), Struct_2(vec4<u32>(50358u, 16320u, 0u, 33108u), 32461i, vec2<bool>(false, false), Struct_1(68008u, vec2<i32>(-28897i, i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(0u, 0u, 0u, 50460u), vec3<u32>(1u, 27579u, 1u)), Struct_1(21915u, vec2<i32>(-212i, -475i), vec2<bool>(false, false), vec4<u32>(1u, 4294967295u, 4294967295u, 53191u), vec3<u32>(62559u, 4294967295u, 31502u))));

var<private> global3: vec2<f32> = vec2<f32>(-1000f, -1868f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_1(~u_input.c, -(~countOneBits(-vec2<i32>(2147483647i, -17838i))), select(vec2<bool>((arg_2.x & arg_2.x) < (u_input.b.x << (arg_2.x % 32u)), true), vec2<bool>(all(select(vec3<bool>(arg_1, true, arg_0), vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1))), arg_3 == arg_3), select(true || arg_0, arg_0, !arg_1)), u_input.d, u_input.b.zzz << (abs(~vec3<u32>(8717u, u_input.c, arg_2.x) << (u_input.b.xxz % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = vec4<u32>(29419u, 1u, 31762u, arg_2.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(1028f + global1[_wgslsmith_index_u32(var_1.x, 16u)]), _wgslsmith_f_op_f32(min(-1007f, -552f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - -438f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(681f + global1[_wgslsmith_index_u32(2101u, 16u)]) + _wgslsmith_div_f32(-190f, -1261f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(603f, 921f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(0u, 16u)]) - _wgslsmith_f_op_f32(select(-1000f, 838f, true))))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(true, any(vec4<bool>(arg_0.c.x, arg_0.e.c.x, arg_0.e.c.x, arg_0.c.x)), vec2<u32>(select(452u, 0u, arg_0.e.c.x), 21149u | u_input.c), 1i)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(all(arg_0.e.c), arg_0.c.x, u_input.d.xy, u_input.a ^ u_input.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, 2005f, global3.x, 1387f))), !(!vec4<bool>(true, arg_0.e.c.x, arg_0.c.x, arg_0.e.c.x))))));
    let var_1 = arg_0.e;
    var var_2 = arg_0;
    var var_3 = 0i;
    var_3 = reverseBits(_wgslsmith_mod_i32(~abs(arg_0.e.b.x), 1i)) >> (~var_2.e.a % 32u);
    return Struct_1(_wgslsmith_mult_u32(firstTrailingBit(abs(max(arg_0.e.d.x, 30836u))), ~31822u >> (_wgslsmith_clamp_u32(firstTrailingBit(18317u), ~0u, 11871u & u_input.c) % 32u)), vec2<i32>(-13788i, 1i), vec2<bool>(any(vec4<bool>(true, var_2.d.c.x | arg_0.c.x, true & arg_0.c.x, var_2.d.c.x)), !arg_0.e.c.x), u_input.d, abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.d.wxy << (var_1.e % vec3<u32>(32u)), vec3<u32>(var_2.d.d.x, u_input.b.x, var_1.e.x) & vec3<u32>(var_1.d.x, var_1.a, var_1.e.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(50947u, arg_0.e.e.x, 0u), ~vec3<u32>(u_input.b.x, 4294967295u, 1u)), (vec3<u32>(var_2.a.x, var_2.e.d.x, var_1.d.x) ^ vec3<u32>(var_2.d.e.x, 70152u, 91235u)) ^ u_input.d.zwx)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = ~firstTrailingBit(abs(u_input.d.yz)) >> (countOneBits(_wgslsmith_add_vec2_u32(select(vec2<u32>(arg_1.a, 4294967295u), vec2<u32>(arg_1.a, u_input.c), arg_1.c.x), _wgslsmith_add_vec2_u32(arg_1.d.zx, ~arg_1.d.ww))) % vec2<u32>(32u));
    global0 = reverseBits(-1i);
    global1 = array<f32, 16>();
    global3 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(select(global3.x, global3.x, arg_1.c.x)));
    global2 = array<Struct_2, 26>();
    return max(~(~arg_0.x), arg_1.b.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global3 = vec2<f32>(-1142f, _wgslsmith_f_op_f32(f32(-1f) * -455f));
    global0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(func_4(vec2<i32>(u_input.a, 20778i), func_2(global2[_wgslsmith_index_u32(u_input.b.x, 26u)])), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-14227i, -20018i, arg_0), vec3<i32>(22165i, u_input.a, arg_0))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, _wgslsmith_mod_i32(arg_0, -17225i)), vec2<i32>(func_4(vec2<i32>(-31356i, u_input.a), Struct_1(u_input.d.x, vec2<i32>(-51034i, arg_0), vec2<bool>(false, false), vec4<u32>(0u, 10937u, u_input.c, u_input.d.x), vec3<u32>(47184u, 1u, 44465u))), arg_0 ^ -1i), true), vec2<i32>(func_4(~vec2<i32>(-4142i, arg_0), Struct_1(u_input.d.x, vec2<i32>(2147483647i, 10366i), vec2<bool>(true, false), vec4<u32>(u_input.b.x, 106054u, u_input.c, 43834u), u_input.b.wwx)), -arg_0), firstTrailingBit(func_2(global2[_wgslsmith_index_u32(u_input.d.x, 26u)]).b | (vec2<i32>(arg_0, -33583i) | vec2<i32>(1i, -22705i)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-279f, -1031f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -687f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1564f, 1139f, 317f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-270f, global3.x, global3.x), vec3<f32>(global3.x, global1[_wgslsmith_index_u32(u_input.c, 16u)], global3.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 16u)] + 586f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14567u, 16u)] + 841f)), _wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(17863u, 16u)], global3.x) - 1366f))));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy))));
    let var_1 = Struct_2(~(~u_input.b), -41306i, vec2<bool>(false, !(!select(false, true, true))), Struct_1(max(_wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.d.x), 3219u), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, u_input.a), vec2<i32>(2147483647i, -14992i), vec2<i32>(arg_0, -2147483647i)), vec2<i32>(arg_0, -25047i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-15454i, arg_0), ~vec2<i32>(-2147483647i, 22923i), vec2<i32>(u_input.a, 2147483647i) >> (vec2<u32>(u_input.c, 16216u) % vec2<u32>(32u))), ~func_2(Struct_2(vec4<u32>(4294967295u, 4294967295u, u_input.c, 0u), u_input.a, vec2<bool>(false, false), Struct_1(0u, vec2<i32>(-2147483647i, 0i), vec2<bool>(false, false), u_input.d, vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)), Struct_1(13032u, vec2<i32>(2147483647i, -15090i), vec2<bool>(false, true), u_input.d, vec3<u32>(u_input.d.x, 4294967295u, 19094u)))).b), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), vec4<u32>(~_wgslsmith_add_u32(u_input.d.x, 19021u), abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.d)), _wgslsmith_mod_u32(u_input.c, 16873u), _wgslsmith_dot_vec4_u32(~u_input.d, ~vec4<u32>(u_input.c, u_input.c, u_input.d.x, u_input.c))), u_input.b.wyw), func_2(global2[_wgslsmith_index_u32(countOneBits(71938u), 26u)]));
    return Struct_1(~0u, var_1.e.b, var_1.c, _wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.a.x, select(_wgslsmith_dot_vec2_u32(u_input.d.xz, u_input.d.zy), u_input.d.x, var_1.d.c.x), ~u_input.d.x, u_input.b.x), reverseBits(reverseBits(var_1.e.d))), var_1.a.zyw);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 26>();
    global1 = array<f32, 16>();
    var var_0 = global2[_wgslsmith_index_u32(1u, 26u)];
    let var_1 = global2[_wgslsmith_index_u32(511u, 26u)];
    var var_2 = true;
    global0 = -var_1.e.b.x;
    var var_3 = Struct_2(u_input.b, min(~(~(~var_1.e.b.x)), ((var_0.e.b.x | var_1.d.b.x) & -1i) << (~71851u % 32u)), select(vec2<bool>(_wgslsmith_mod_u32(48921u, var_0.e.e.x) > _wgslsmith_add_u32(1u, var_0.e.d.x), all(select(vec4<bool>(var_1.c.x, true, var_0.d.c.x, false), vec4<bool>(var_0.c.x, var_1.e.c.x, false, var_0.c.x), var_0.d.c.x))), var_1.e.c, true), func_1(1i), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, var_1.d.d.x, 0u), vec3<u32>(u_input.d.x, u_input.c, var_0.e.a)), _wgslsmith_mult_vec3_u32(var_0.d.e, ~vec3<u32>(u_input.d.x, var_0.e.a, var_0.d.a))), vec2<i32>(~_wgslsmith_clamp_i32(44786i, u_input.a, var_1.e.b.x), _wgslsmith_add_i32(2147483647i, -24715i)), vec2<bool>(!(!var_1.d.c.x), var_0.c.x), abs(~(~var_0.d.d)), vec3<u32>(53270u | var_0.d.a, 57942u, func_1(var_0.b).e.x) ^ var_0.e.d.zyz));
    var_0 = global2[_wgslsmith_index_u32(var_0.e.e.x, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(20006u, global3.x, -1575f);
}

