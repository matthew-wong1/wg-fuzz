struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, Struct_1(true, vec4<u32>(1u, 33850u, 6942u, 1u), vec3<u32>(0u, 0u, 42173u)), Struct_1(true, vec4<u32>(1u, 0u, 5186u, 1u), vec3<u32>(4294967295u, 4294967295u, 72100u)), Struct_1(false, vec4<u32>(49700u, 4294967295u, 121354u, 12957u), vec3<u32>(57403u, 4294967295u, 1u)), vec4<f32>(-781f, -1673f, -2150f, -606f)), Struct_2(true, Struct_1(true, vec4<u32>(18884u, 43030u, 46162u, 11189u), vec3<u32>(4294967295u, 4294967295u, 5471u)), Struct_1(false, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec3<u32>(1u, 4813u, 23557u)), Struct_1(true, vec4<u32>(0u, 46314u, 3591u, 0u), vec3<u32>(1u, 0u, 4294967295u)), vec4<f32>(479f, 786f, 344f, -409f)), Struct_2(false, Struct_1(true, vec4<u32>(4294967295u, 27u, 1u, 1u), vec3<u32>(29084u, 70666u, 8483u)), Struct_1(false, vec4<u32>(1u, 1u, 1308u, 0u), vec3<u32>(3425u, 0u, 4294967295u)), Struct_1(true, vec4<u32>(0u, 1u, 4294967295u, 22646u), vec3<u32>(39669u, 10709u, 1u)), vec4<f32>(694f, -810f, -390f, -430f)), Struct_2(true, Struct_1(false, vec4<u32>(2279u, 11578u, 4294967295u, 36162u), vec3<u32>(43334u, 84052u, 0u)), Struct_1(false, vec4<u32>(7708u, 45090u, 4294967295u, 1u), vec3<u32>(37729u, 4967u, 0u)), Struct_1(false, vec4<u32>(1u, 4294967295u, 9024u, 1u), vec3<u32>(283u, 4294967295u, 52417u)), vec4<f32>(1634f, -234f, -343f, -1394f)), Struct_2(true, Struct_1(false, vec4<u32>(4294967295u, 1u, 19517u, 15782u), vec3<u32>(22086u, 87349u, 1u)), Struct_1(true, vec4<u32>(30293u, 4294967295u, 1u, 0u), vec3<u32>(0u, 33685u, 1u)), Struct_1(true, vec4<u32>(14116u, 4294967295u, 38827u, 22315u), vec3<u32>(0u, 1u, 1u)), vec4<f32>(-1265f, 1000f, -1000f, -1000f)), Struct_2(false, Struct_1(false, vec4<u32>(0u, 27354u, 0u, 56041u), vec3<u32>(1u, 47409u, 4294967295u)), Struct_1(false, vec4<u32>(1u, 38722u, 1u, 1u), vec3<u32>(11132u, 1u, 37704u)), Struct_1(true, vec4<u32>(1u, 46720u, 7605u, 4294967295u), vec3<u32>(45411u, 24888u, 69643u)), vec4<f32>(988f, 1000f, -1023f, 1000f)), Struct_2(true, Struct_1(false, vec4<u32>(25355u, 1u, 26696u, 1u), vec3<u32>(23427u, 4294967295u, 4294967295u)), Struct_1(true, vec4<u32>(0u, 65118u, 13790u, 88230u), vec3<u32>(0u, 21765u, 50642u)), Struct_1(true, vec4<u32>(0u, 37803u, 9599u, 106757u), vec3<u32>(1u, 1u, 109230u)), vec4<f32>(1001f, -106f, 1091f, 1844f)), Struct_2(false, Struct_1(true, vec4<u32>(46403u, 22741u, 29263u, 65185u), vec3<u32>(12756u, 4387u, 1u)), Struct_1(false, vec4<u32>(4294967295u, 0u, 4294967295u, 52692u), vec3<u32>(0u, 41291u, 4365u)), Struct_1(false, vec4<u32>(0u, 0u, 10244u, 26062u), vec3<u32>(0u, 1u, 4294967295u)), vec4<f32>(1000f, -248f, 2016f, 1289f)), Struct_2(false, Struct_1(true, vec4<u32>(4294967295u, 25405u, 71375u, 59237u), vec3<u32>(47126u, 62773u, 0u)), Struct_1(false, vec4<u32>(4294967295u, 54248u, 0u, 3773u), vec3<u32>(23092u, 4294967295u, 0u)), Struct_1(true, vec4<u32>(1u, 1u, 0u, 13585u), vec3<u32>(7933u, 2007u, 19815u)), vec4<f32>(172f, 429f, -854f, 789f)), Struct_2(false, Struct_1(false, vec4<u32>(4294967295u, 22745u, 89207u, 0u), vec3<u32>(11113u, 4294967295u, 1u)), Struct_1(false, vec4<u32>(51165u, 35723u, 4294967295u, 18148u), vec3<u32>(0u, 35722u, 58759u)), Struct_1(true, vec4<u32>(19040u, 15982u, 12239u, 0u), vec3<u32>(35913u, 75429u, 5486u)), vec4<f32>(-127f, -546f, -1359f, 1000f)), Struct_2(true, Struct_1(false, vec4<u32>(9451u, 36733u, 1u, 6630u), vec3<u32>(12682u, 0u, 0u)), Struct_1(false, vec4<u32>(7412u, 3851u, 17430u, 0u), vec3<u32>(100106u, 0u, 0u)), Struct_1(true, vec4<u32>(77614u, 35459u, 4294967295u, 1u), vec3<u32>(31077u, 0u, 4294967295u)), vec4<f32>(-576f, -640f, -189f, 1000f)), Struct_2(false, Struct_1(false, vec4<u32>(4294967295u, 20234u, 1u, 8310u), vec3<u32>(17223u, 36288u, 11416u)), Struct_1(false, vec4<u32>(0u, 49118u, 4294967295u, 4294967295u), vec3<u32>(0u, 24369u, 4294967295u)), Struct_1(false, vec4<u32>(36440u, 70901u, 67782u, 16359u), vec3<u32>(56614u, 1u, 74009u)), vec4<f32>(165f, 466f, -715f, 177f)), Struct_2(false, Struct_1(false, vec4<u32>(0u, 1u, 60508u, 2973u), vec3<u32>(4294967295u, 13032u, 3891u)), Struct_1(false, vec4<u32>(1u, 4294967295u, 53149u, 0u), vec3<u32>(0u, 6160u, 77272u)), Struct_1(false, vec4<u32>(50706u, 22533u, 0u, 0u), vec3<u32>(112268u, 1u, 29488u)), vec4<f32>(-315f, 1704f, -364f, -2129f)), Struct_2(true, Struct_1(false, vec4<u32>(7423u, 4294967295u, 4294967295u, 27154u), vec3<u32>(1u, 17416u, 34581u)), Struct_1(false, vec4<u32>(4294967295u, 22525u, 28046u, 1u), vec3<u32>(102277u, 100231u, 4404u)), Struct_1(true, vec4<u32>(26763u, 1u, 23098u, 1u), vec3<u32>(35179u, 0u, 119845u)), vec4<f32>(220f, 1299f, -2061f, -1286f)), Struct_2(false, Struct_1(true, vec4<u32>(48466u, 0u, 1u, 64217u), vec3<u32>(4294967295u, 10508u, 0u)), Struct_1(true, vec4<u32>(4294967295u, 72740u, 1099u, 10936u), vec3<u32>(46997u, 24010u, 15131u)), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec3<u32>(22231u, 0u, 32643u)), vec4<f32>(2508f, 1596f, -1897f, -329f)), Struct_2(true, Struct_1(true, vec4<u32>(4294967295u, 44440u, 19434u, 58459u), vec3<u32>(37346u, 1u, 1052u)), Struct_1(true, vec4<u32>(4294967295u, 23299u, 50351u, 0u), vec3<u32>(4294967295u, 0u, 3539u)), Struct_1(true, vec4<u32>(1u, 60912u, 4294967295u, 8274u), vec3<u32>(4294967295u, 3318u, 48490u)), vec4<f32>(-577f, 437f, -2340f, 299f)), Struct_2(false, Struct_1(true, vec4<u32>(19544u, 42377u, 0u, 27183u), vec3<u32>(1u, 0u, 1281u)), Struct_1(true, vec4<u32>(21261u, 4294967295u, 4557u, 59446u), vec3<u32>(1u, 7974u, 77u)), Struct_1(true, vec4<u32>(37813u, 25312u, 4294967295u, 0u), vec3<u32>(80210u, 4294967295u, 1u)), vec4<f32>(625f, -1709f, 948f, 533f)), Struct_2(true, Struct_1(true, vec4<u32>(1u, 16644u, 4294967295u, 72731u), vec3<u32>(4294967295u, 4294967295u, 94479u)), Struct_1(true, vec4<u32>(34332u, 5660u, 0u, 0u), vec3<u32>(74975u, 1u, 0u)), Struct_1(false, vec4<u32>(4294967295u, 0u, 0u, 77501u), vec3<u32>(1u, 4294967295u, 1u)), vec4<f32>(1498f, -3422f, 1259f, 860f)), Struct_2(true, Struct_1(false, vec4<u32>(32778u, 0u, 44u, 1u), vec3<u32>(21016u, 54890u, 29768u)), Struct_1(true, vec4<u32>(1u, 29516u, 1892u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 28947u)), Struct_1(true, vec4<u32>(2289u, 59274u, 44977u, 39545u), vec3<u32>(20991u, 20514u, 7927u)), vec4<f32>(372f, -117f, -786f, 1000f)), Struct_2(true, Struct_1(false, vec4<u32>(1u, 0u, 20382u, 1423u), vec3<u32>(7761u, 0u, 4547u)), Struct_1(false, vec4<u32>(1u, 10770u, 75395u, 1u), vec3<u32>(30794u, 13064u, 13012u)), Struct_1(false, vec4<u32>(35744u, 0u, 42890u, 0u), vec3<u32>(7567u, 4294967295u, 4294967295u)), vec4<f32>(433f, -751f, -402f, -648f)), Struct_2(true, Struct_1(true, vec4<u32>(4294967295u, 36124u, 4294967295u, 0u), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(true, vec4<u32>(19298u, 24721u, 1283u, 1u), vec3<u32>(49734u, 1u, 0u)), Struct_1(false, vec4<u32>(0u, 4294967295u, 0u, 15102u), vec3<u32>(0u, 46904u, 6636u)), vec4<f32>(1751f, 987f, 965f, 1135f)), Struct_2(true, Struct_1(true, vec4<u32>(1u, 0u, 0u, 16481u), vec3<u32>(101326u, 27653u, 0u)), Struct_1(false, vec4<u32>(4294967295u, 72799u, 1u, 39069u), vec3<u32>(0u, 17671u, 1u)), Struct_1(true, vec4<u32>(4294967295u, 4920u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u)), vec4<f32>(1767f, -1000f, -1156f, 554f)), Struct_2(true, Struct_1(true, vec4<u32>(67093u, 50043u, 1u, 72007u), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(true, vec4<u32>(29291u, 0u, 0u, 32170u), vec3<u32>(1u, 5090u, 4294967295u)), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec3<u32>(1u, 10647u, 4294967295u)), vec4<f32>(1000f, -486f, -402f, -1491f)), Struct_2(true, Struct_1(false, vec4<u32>(3165u, 52536u, 46144u, 4294967295u), vec3<u32>(52428u, 1u, 1u)), Struct_1(false, vec4<u32>(1u, 17606u, 1u, 36129u), vec3<u32>(37841u, 4294967295u, 4294967295u)), Struct_1(false, vec4<u32>(66581u, 47452u, 1u, 22357u), vec3<u32>(1u, 1u, 57461u)), vec4<f32>(-857f, -2218f, -1292f, -658f)));

var<private> global3: f32 = -1000f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 + arg_1) + arg_1), select(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false)), vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(arg_0.a, false)))) * arg_1) - arg_1);
    global1 = ~arg_0.c.x;
    global0 = 0i;
    var var_1 = !(!(!(!(!vec2<bool>(true, arg_0.a)))));
    global0 = -reverseBits(u_input.a);
    return any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), 0u > arg_0.c.x), vec2<bool>(true, true), select(vec2<bool>(arg_0.a, false), select(vec2<bool>(arg_0.a, var_1.x), vec2<bool>(var_1.x, false), false), select(vec2<bool>(false, false), vec2<bool>(arg_0.a, false), arg_0.a))), vec2<bool>(!all(vec3<bool>(var_1.x, false, false)), arg_0.a), !vec2<bool>(arg_0.a, arg_0.a || arg_0.a)));
}

fn func_2() -> u32 {
    let var_0 = 1u;
    return ~(select(24663u >> (_wgslsmith_mod_u32(var_0, 96005u) % 32u), _wgslsmith_clamp_u32(var_0, ~var_0, 16418u ^ var_0), func_3(Struct_1(false, vec4<u32>(var_0, 0u, 17559u, var_0), vec3<u32>(var_0, var_0, 9238u)), vec2<f32>(-351f, -799f))) << (1u % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-787f)), _wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1371f, -1000f), _wgslsmith_f_op_f32(round(1308f)))), -661f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-118f, 874f, -2016f, 1828f) - vec4<f32>(1065f, -184f, -1000f, -291f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1920f, 1226f, 1659f, -2221f))), select(!vec4<bool>(arg_2.a, arg_3.a, true, arg_3.a), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, arg_3.a, false), vec4<bool>(false, true, false, false), true)))))));
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(13987i, -1i) >> (~vec2<u32>(firstTrailingBit(arg_0), 4294967295u) % vec2<u32>(32u)), -_wgslsmith_mult_vec2_i32(vec2<i32>(18495i & u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(29893i, u_input.a)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-33233i, u_input.a), arg_1.a))), ~(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -49217i), vec2<i32>(u_input.a, 39616i)) | ~vec2<i32>(u_input.a, u_input.a)));
    global1 = ~select(~(~arg_2.c.x ^ ~4294967295u), 52995u, !any(vec2<bool>(true, true)));
    let var_2 = vec4<i32>(29669i, var_1.x, -2147483647i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-u_input.a << (arg_1.c.x % 32u), min(-2147483647i, 3817i)), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-16394i), ~u_input.a, var_1.x), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_1.x, -1i))));
    var var_3 = vec2<bool>(!(!(true & any(vec4<bool>(false, true, arg_2.a, arg_2.a)))), ~38923u <= firstTrailingBit(arg_1.b.x));
    return Struct_1(arg_1.a & all(vec2<bool>(any(vec2<bool>(true, arg_2.a)), all(vec3<bool>(false, arg_2.a, arg_3.a)))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.x, 106715u, 0u, 1u | arg_1.c.x), ~(arg_3.b << (arg_2.b % vec4<u32>(32u)))) << (min(~vec4<u32>(arg_2.b.x, 1u, arg_3.c.x, arg_3.b.x) & ~arg_1.b, arg_3.b) % vec4<u32>(32u)), _wgslsmith_sub_vec3_u32(arg_1.b.zzy, vec3<u32>(arg_3.c.x, _wgslsmith_div_u32(~arg_0, ~28u), arg_2.c.x)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    return arg_0.x;
}

fn func_1() -> i32 {
    global0 = 2147483647i;
    let var_0 = vec2<u32>(~func_5(vec2<u32>(1u, 1u), func_4(func_2(), Struct_1(false, vec4<u32>(4294967295u, 0u, 0u, 21751u), vec3<u32>(1u, 0u, 76719u)), Struct_1(false, vec4<u32>(89880u, 40711u, 0u, 109216u), vec3<u32>(53291u, 2954u, 17132u)), Struct_1(false, vec4<u32>(0u, 4294967295u, 1u, 1u), vec3<u32>(1u, 29978u, 103750u))), vec2<bool>(true, true)), 5221u);
    global0 = _wgslsmith_dot_vec4_i32(-(~(vec4<i32>(u_input.a, u_input.a, 26076i, 2147483647i) ^ vec4<i32>(u_input.a, -1i, -36983i, u_input.a))) | vec4<i32>(~1161i, countOneBits(-u_input.a), ~54840i, countOneBits(1i) >> (var_0.x % 32u)), _wgslsmith_add_vec4_i32(max(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-45826i, 0i, -1i, u_input.a)), vec4<i32>(-1i, 0i, u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -2147483647i, -45890i), vec4<i32>(-32478i, u_input.a, 0i, 1i) >> (vec4<u32>(var_0.x, 87672u, 1u, var_0.x) % vec4<u32>(32u)))), vec4<i32>(u_input.a, -6287i, -34762i, -12601i & u_input.a)));
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(func_2(), 19154u, func_4(31042u, func_4(var_1.d.b.x, func_4(var_0.x, Struct_1(var_1.a, var_1.c.b, vec3<u32>(1u, 0u, var_1.c.b.x)), var_1.c, var_1.b), var_1.c, var_1.d), func_4(4294967295u, var_1.b, var_1.d, func_4(1u, Struct_1(var_1.b.a, vec4<u32>(var_0.x, var_1.b.c.x, 45311u, var_0.x), vec3<u32>(54659u, var_0.x, 15102u)), Struct_1(false, var_1.b.b, vec3<u32>(var_1.d.c.x, 0u, var_0.x)), Struct_1(false, vec4<u32>(var_0.x, 4294967295u, var_1.c.c.x, 0u), var_1.d.c))), func_4(min(var_1.c.b.x, 1u), func_4(var_0.x, Struct_1(var_1.a, var_1.b.b, var_1.c.c), var_1.b, var_1.d), Struct_1(false, var_1.c.b, vec3<u32>(var_1.d.b.x, var_1.c.c.x, 4294967295u)), func_4(14878u, var_1.c, var_1.b, var_1.c))).b.x)), 24u)];
    return abs(36524i >> (select(0u, var_1.c.c.x, all(select(vec2<bool>(true, true), vec2<bool>(var_1.a, true), false))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -633f), -2576f)))));
    global0 = func_1();
    var var_0 = ~(~(_wgslsmith_add_u32(max(13318u, 8372u), 13409u) >> (func_5(vec2<u32>(43146u, 41329u), func_4(4294967295u, Struct_1(true, vec4<u32>(1351u, 22663u, 34562u, 33959u), vec3<u32>(23226u, 36433u, 4294967295u)), Struct_1(true, vec4<u32>(4294967295u, 1u, 97385u, 37069u), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(false, vec4<u32>(0u, 4294967295u, 4294967295u, 60436u), vec3<u32>(1u, 8541u, 44291u))), vec2<bool>(true, false)) % 32u)));
    var var_1 = true;
    let var_2 = (select(-max(vec3<i32>(2147483647i, 38213i, 5441i), vec3<i32>(2147483647i, 0i, -12464i)), ~vec3<i32>(u_input.a, -1i, -2147483647i), vec3<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)))) << (((_wgslsmith_add_vec3_u32(vec3<u32>(0u, 11032u, 0u), vec3<u32>(37809u, 58258u, 1u)) | firstTrailingBit(vec3<u32>(0u, 24289u, 1u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -13082i, _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, 16703i), ~(-7483i)), -20394i), u_input.a, ~_wgslsmith_add_i32(~u_input.a, u_input.a));
    var var_3 = !(!(!(!select(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~select(~vec4<u32>(54181u, 25121u, 13900u, 0u), vec4<u32>(1u, 1u, 1u, 1u), all(vec4<bool>(false, false, false, true)))), reverseBits(abs(var_2.x) | (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2.x), var_2.xz) << (~1u % 32u))), vec2<u32>(1u, 1u), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17891u, 57100u, 3108u), vec4<u32>(1u, 1u, 1u, 1u))), ~abs(min(70789i, -13336i)));
}

