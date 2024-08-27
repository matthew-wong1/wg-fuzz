struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(17519i, 2147483647i, -52342i, 0i), vec3<i32>(30381i, 50844i, -45315i), vec3<u32>(0u, 4294967295u, 84573u), vec2<u32>(25454u, 40158u), -23588i), Struct_1(vec4<i32>(-60476i, 3745i, 0i, 0i), vec3<i32>(-24043i, 5628i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 1u), vec2<u32>(36013u, 20380u), 1i), Struct_1(vec4<i32>(-1i, -46430i, -9076i, -35325i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<u32>(0u, 27491u, 4294967295u), vec2<u32>(37546u, 4294967295u), -53350i), Struct_1(vec4<i32>(-23028i, -19832i, 1i, -20147i), vec3<i32>(-41374i, -17995i, 21575i), vec3<u32>(66015u, 0u, 8602u), vec2<u32>(26348u, 4294967295u), 2147483647i), Struct_1(vec4<i32>(6072i, 64244i, -1i, -40455i), vec3<i32>(-21782i, 6085i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 24620u), vec2<u32>(1u, 6798u), 20264i), Struct_1(vec4<i32>(-61296i, 35700i, 67504i, -1i), vec3<i32>(3631i, 1945i, -9194i), vec3<u32>(3314u, 4294967295u, 1u), vec2<u32>(35809u, 4294967295u), 0i), Struct_1(vec4<i32>(1i, -18846i, 2147483647i, 1i), vec3<i32>(45577i, 0i, 0i), vec3<u32>(1724u, 134807u, 4294967295u), vec2<u32>(13190u, 4294967295u), -26261i), Struct_1(vec4<i32>(-45141i, 1i, 44368i, -18311i), vec3<i32>(12318i, 0i, 11662i), vec3<u32>(0u, 23295u, 13107u), vec2<u32>(4294967295u, 1u), 14513i), Struct_1(vec4<i32>(-26743i, -48106i, i32(-2147483648), -42287i), vec3<i32>(-9618i, 4313i, 2147483647i), vec3<u32>(56313u, 1u, 0u), vec2<u32>(4294967295u, 2745u), i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, -9936i, -10840i, 1i), vec3<i32>(0i, 33409i, 0i), vec3<u32>(0u, 1u, 2914u), vec2<u32>(0u, 28414u), i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), 25336i, 0i, 0i), vec3<i32>(14297i, -1i, 40130i), vec3<u32>(72862u, 0u, 1u), vec2<u32>(11554u, 4294967295u), -10701i), Struct_1(vec4<i32>(i32(-2147483648), -201i, 16929i, -59190i), vec3<i32>(30266i, i32(-2147483648), 21083i), vec3<u32>(18707u, 0u, 1u), vec2<u32>(1u, 48318u), 2147483647i), Struct_1(vec4<i32>(10059i, 1i, 1i, 1i), vec3<i32>(-1i, -16635i, -31822i), vec3<u32>(31428u, 39686u, 1u), vec2<u32>(50829u, 4294967295u), 72015i), Struct_1(vec4<i32>(18549i, 0i, -65277i, -1i), vec3<i32>(1i, 1i, -1i), vec3<u32>(32259u, 27914u, 23847u), vec2<u32>(3011u, 1u), 1i), Struct_1(vec4<i32>(-31196i, -1i, 2147483647i, 0i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<u32>(65439u, 4294967295u, 34588u), vec2<u32>(4294967295u, 4294967295u), 1i), Struct_1(vec4<i32>(2147483647i, 1i, -1i, 1i), vec3<i32>(0i, -1i, 22226i), vec3<u32>(1941u, 22521u, 4294967295u), vec2<u32>(0u, 34453u), -373i), Struct_1(vec4<i32>(-1i, 35873i, -1443i, -32955i), vec3<i32>(-6431i, -6641i, 2147483647i), vec3<u32>(7527u, 18078u, 1u), vec2<u32>(1u, 7652u), 15652i), Struct_1(vec4<i32>(2147483647i, 1i, 48892i, 1i), vec3<i32>(-18143i, 0i, i32(-2147483648)), vec3<u32>(1u, 1u, 54664u), vec2<u32>(4294967295u, 0u), 18133i), Struct_1(vec4<i32>(-37192i, 2147483647i, i32(-2147483648), 0i), vec3<i32>(-30070i, 1i, 2147483647i), vec3<u32>(48965u, 0u, 41262u), vec2<u32>(56545u, 0u), 27150i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -32953i, 1i), vec3<i32>(29509i, -11701i, i32(-2147483648)), vec3<u32>(68072u, 1u, 4294967295u), vec2<u32>(62133u, 0u), -1i));

var<private> global2: array<i32, 25> = array<i32, 25>(38683i, i32(-2147483648), 2147483647i, 8602i, -1i, -5588i, 1i, -12519i, i32(-2147483648), 4697i, 29361i, i32(-2147483648), 26486i, 1i, 1i, -20039i, 5210i, -2645i, -1654i, 0i, -1i, 2147483647i, 0i, 7300i, 48172i);

var<private> global3: Struct_2;

var<private> global4: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_3(1000f, Struct_1(vec4<i32>(-12763i, 2147483647i, i32(-2147483648), -23905i), vec3<i32>(0i, 1i, 3849i), vec3<u32>(1u, 11012u, 19826u), vec2<u32>(4294967295u, 64356u), 2147483647i), vec3<u32>(0u, 0u, 0u), vec2<i32>(29591i, -14626i))), Struct_4(Struct_3(-770f, Struct_1(vec4<i32>(0i, 1i, 2147483647i, -38646i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<u32>(11963u, 71753u, 84485u), vec2<u32>(132062u, 0u), 1i), vec3<u32>(22685u, 1893u, 0u), vec2<i32>(-1i, -45757i))), Struct_4(Struct_3(-1071f, Struct_1(vec4<i32>(31046i, i32(-2147483648), 1i, -14137i), vec3<i32>(47313i, i32(-2147483648), 2448i), vec3<u32>(67989u, 2766u, 5460u), vec2<u32>(4294967295u, 0u), 1i), vec3<u32>(4294967295u, 1u, 13127u), vec2<i32>(1i, i32(-2147483648)))), Struct_4(Struct_3(-1000f, Struct_1(vec4<i32>(-23804i, 2147483647i, -26384i, 79883i), vec3<i32>(i32(-2147483648), 2147483647i, 30021i), vec3<u32>(0u, 0u, 4294967295u), vec2<u32>(0u, 4294967295u), -1i), vec3<u32>(10684u, 4145u, 10449u), vec2<i32>(-20712i, 40797i))), Struct_4(Struct_3(961f, Struct_1(vec4<i32>(i32(-2147483648), 0i, 57954i, 1i), vec3<i32>(-3671i, 0i, 2147483647i), vec3<u32>(40108u, 17195u, 10496u), vec2<u32>(5403u, 98370u), 0i), vec3<u32>(0u, 0u, 4294967295u), vec2<i32>(-1i, -19938i))), Struct_4(Struct_3(-681f, Struct_1(vec4<i32>(8312i, -66220i, -34374i, 0i), vec3<i32>(1i, 61066i, 2147483647i), vec3<u32>(6494u, 4294967295u, 17350u), vec2<u32>(0u, 1u), -44501i), vec3<u32>(6959u, 3915u, 42314u), vec2<i32>(i32(-2147483648), 0i))), Struct_4(Struct_3(1000f, Struct_1(vec4<i32>(44994i, 13026i, 18474i, 21307i), vec3<i32>(-6044i, i32(-2147483648), 0i), vec3<u32>(0u, 38806u, 0u), vec2<u32>(55768u, 0u), 0i), vec3<u32>(4294967295u, 31906u, 1u), vec2<i32>(93013i, i32(-2147483648)))), Struct_4(Struct_3(154f, Struct_1(vec4<i32>(22461i, 52582i, 32503i, 0i), vec3<i32>(i32(-2147483648), 1i, 2143i), vec3<u32>(0u, 2705u, 31360u), vec2<u32>(47753u, 53612u), 2147483647i), vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(2147483647i, -44358i))), Struct_4(Struct_3(219f, Struct_1(vec4<i32>(1i, 27869i, -1i, 2147483647i), vec3<i32>(-51531i, 28400i, 33879i), vec3<u32>(4294967295u, 49951u, 0u), vec2<u32>(71067u, 4294967295u), 2147483647i), vec3<u32>(4294967295u, 27363u, 27112u), vec2<i32>(13486i, 0i))), Struct_4(Struct_3(878f, Struct_1(vec4<i32>(-34856i, -8935i, -398i, 0i), vec3<i32>(59307i, 23704i, 26120i), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(1u, 42234u), 0i), vec3<u32>(0u, 1u, 46479u), vec2<i32>(2147483647i, 70688i))), Struct_4(Struct_3(-1085f, Struct_1(vec4<i32>(0i, 1i, -255i, 79454i), vec3<i32>(i32(-2147483648), 56989i, -79777i), vec3<u32>(40665u, 0u, 6769u), vec2<u32>(13130u, 21889u), 1i), vec3<u32>(2816u, 0u, 51184u), vec2<i32>(-1i, 2147483647i))), Struct_4(Struct_3(1100f, Struct_1(vec4<i32>(47341i, 1i, -10858i, -27659i), vec3<i32>(-58426i, 2147483647i, 0i), vec3<u32>(15658u, 34816u, 43012u), vec2<u32>(0u, 0u), 2147483647i), vec3<u32>(123350u, 4811u, 4294967295u), vec2<i32>(-15558i, 39378i))), Struct_4(Struct_3(1154f, Struct_1(vec4<i32>(12564i, -39949i, 1i, i32(-2147483648)), vec3<i32>(-4438i, -41340i, 19306i), vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(0u, 4294967295u), -6413i), vec3<u32>(59634u, 4294967295u, 26700u), vec2<i32>(0i, 29232i))), Struct_4(Struct_3(467f, Struct_1(vec4<i32>(-6853i, 2147483647i, 15045i, i32(-2147483648)), vec3<i32>(-8416i, i32(-2147483648), 1i), vec3<u32>(4722u, 1u, 4294967295u), vec2<u32>(0u, 0u), -15746i), vec3<u32>(18118u, 1u, 4294967295u), vec2<i32>(36629i, 3775i))), Struct_4(Struct_3(-1231f, Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 1i), vec3<i32>(-19855i, 14534i, 0i), vec3<u32>(1u, 138705u, 67106u), vec2<u32>(23742u, 1u), i32(-2147483648)), vec3<u32>(18692u, 4294967295u, 18473u), vec2<i32>(0i, 1i))), Struct_4(Struct_3(624f, Struct_1(vec4<i32>(-13360i, 1i, 2147483647i, 0i), vec3<i32>(-19947i, 2147483647i, 64859i), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<u32>(33574u, 34843u), -28057i), vec3<u32>(1u, 0u, 1u), vec2<i32>(-6255i, 2147483647i))), Struct_4(Struct_3(-245f, Struct_1(vec4<i32>(-14561i, -1i, 1i, -66705i), vec3<i32>(14471i, 0i, 2147483647i), vec3<u32>(20905u, 13510u, 50842u), vec2<u32>(44498u, 0u), 39835i), vec3<u32>(45774u, 1u, 8308u), vec2<i32>(1i, 2147483647i))), Struct_4(Struct_3(218f, Struct_1(vec4<i32>(0i, 2147483647i, -1i, -46864i), vec3<i32>(56197i, 1i, 1i), vec3<u32>(16892u, 0u, 1u), vec2<u32>(43412u, 4294967295u), 2147483647i), vec3<u32>(29555u, 29876u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_4(Struct_3(-1124f, Struct_1(vec4<i32>(1i, 1i, 41487i, 30091i), vec3<i32>(-1i, i32(-2147483648), 34185i), vec3<u32>(6468u, 1951u, 65120u), vec2<u32>(20757u, 8252u), 0i), vec3<u32>(83105u, 19969u, 0u), vec2<i32>(-1i, -33445i))), Struct_4(Struct_3(320f, Struct_1(vec4<i32>(1i, 38008i, 0i, 2147483647i), vec3<i32>(-8873i, -8625i, 2990i), vec3<u32>(125130u, 1u, 0u), vec2<u32>(0u, 48790u), 0i), vec3<u32>(1u, 4294967295u, 4294967295u), vec2<i32>(0i, -1i))), Struct_4(Struct_3(1146f, Struct_1(vec4<i32>(18213i, 1i, -1i, 28192i), vec3<i32>(1i, 2147483647i, 13836i), vec3<u32>(13902u, 49249u, 122762u), vec2<u32>(0u, 37371u), i32(-2147483648)), vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(-33540i, -842i))), Struct_4(Struct_3(-318f, Struct_1(vec4<i32>(-5884i, 0i, -12510i, 11123i), vec3<i32>(0i, 2147483647i, 0i), vec3<u32>(1u, 34964u, 1u), vec2<u32>(41695u, 1u), 1299i), vec3<u32>(23773u, 38320u, 0u), vec2<i32>(11191i, 30318i))), Struct_4(Struct_3(453f, Struct_1(vec4<i32>(-11016i, 37882i, -16492i, 2147483647i), vec3<i32>(-1i, 1i, -38024i), vec3<u32>(19650u, 8675u, 4294967295u), vec2<u32>(57427u, 4294967295u), -30768i), vec3<u32>(1u, 4294967295u, 0u), vec2<i32>(18908i, 1388i))), Struct_4(Struct_3(401f, Struct_1(vec4<i32>(-45770i, 7134i, 7659i, 9671i), vec3<i32>(-16256i, -48685i, 2147483647i), vec3<u32>(41522u, 0u, 47886u), vec2<u32>(4294967295u, 68779u), i32(-2147483648)), vec3<u32>(8749u, 0u, 0u), vec2<i32>(2147483647i, -24687i))), Struct_4(Struct_3(-1088f, Struct_1(vec4<i32>(-29569i, -31559i, 12899i, -11835i), vec3<i32>(7519i, i32(-2147483648), 4932i), vec3<u32>(4294967295u, 4294967295u, 26009u), vec2<u32>(4294967295u, 0u), -1i), vec3<u32>(1u, 11100u, 97993u), vec2<i32>(-22152i, 0i))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> vec3<u32> {
    global2 = array<i32, 25>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(min(1339f, 1318f)), arg_1.b, arg_1.b.c, _wgslsmith_mult_vec2_i32(u_input.b.zy, firstLeadingBit(~(vec2<i32>(-1i, 1i) >> (global3.b.c.yy % vec2<u32>(32u))))));
    var var_1 = firstLeadingBit(-vec3<i32>(0i, global3.b.b.x, ~arg_1.b.e));
    global3 = arg_1;
    let var_2 = reverseBits(global2[_wgslsmith_index_u32(~arg_1.b.c.x, 25u)]);
    return ~(firstTrailingBit(reverseBits(vec3<u32>(global3.b.c.x, global3.b.d.x, 0u)) | vec3<u32>(arg_1.b.c.x, global3.b.d.x, var_0.b.d.x)) & ~(~(~vec3<u32>(var_0.b.c.x, 1u, u_input.c.x))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> Struct_3 {
    global0 = -arg_1;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(312f))));
    var var_1 = func_3(select(global3.c.xz, !global3.c.zw, select(global3.a, vec2<bool>(all(global3.d.yx), true), vec2<bool>(false, !global3.c.x))), Struct_2(global3.d.xz, global3.b, !vec4<bool>(global3.a.x, all(vec3<bool>(global3.c.x, global3.d.x, false)), false, false), global3.c.yxz));
    global3 = Struct_2(vec2<bool>(false, global3.d.x), Struct_1(~(-_wgslsmith_mult_vec4_i32(arg_0.b.a, vec4<i32>(global2[_wgslsmith_index_u32(arg_2, 25u)], global3.b.b.x, 2147483647i, -1i))), vec3<i32>(u_input.b.x, ~countOneBits(u_input.d.x), -19754i), abs(_wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_2, var_1.x, global3.b.d.x)), vec3<u32>(arg_0.c.x, global3.b.d.x, 0u))), ~arg_0.b.d, 28058i), select(vec4<bool>(global3.a.x, all(select(vec4<bool>(global3.c.x, global3.c.x, global3.a.x, false), vec4<bool>(global3.c.x, global3.d.x, true, true), vec4<bool>(true, true, global3.c.x, true))), select(global3.d.x, global3.a.x, false) || true, true), vec4<bool>(any(global3.c.xw), !all(global3.c), global3.a.x, false), !select(global3.c, select(vec4<bool>(global3.c.x, true, global3.c.x, false), vec4<bool>(true, false, true, global3.c.x), true), !global3.c)), !select(global3.d, select(!vec3<bool>(global3.c.x, true, false), vec3<bool>(global3.d.x, true, global3.a.x), false), vec3<bool>(global3.d.x, true, global2[_wgslsmith_index_u32(u_input.e.x, 25u)] > -23791i)));
    var_1 = max(~vec3<u32>(arg_0.b.c.x, 1u, min(~21042u, 4294967295u)), _wgslsmith_div_vec3_u32(global3.b.c, vec3<u32>(~var_1.x, u_input.c.x, _wgslsmith_mod_u32(global3.b.d.x, global3.b.d.x) << (firstTrailingBit(arg_0.c.x) % 32u))));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_5) -> f32 {
    var var_0 = ~vec4<u32>(~(~(86823u >> (arg_2.d.x % 32u))), u_input.a, func_2(func_2(arg_1.a, arg_1.a.d.x, ~8787u), ~_wgslsmith_sub_i32(0i, 1i), global3.b.d.x).b.d.x, arg_2.b.c.x);
    return _wgslsmith_f_op_f32(ceil(arg_2.a.x));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: f32) -> Struct_1 {
    global2 = array<i32, 25>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1174f);
    var_0 = _wgslsmith_f_op_f32(func_4(global3.d.x, Struct_4(func_2(Struct_3(869f, Struct_1(vec4<i32>(u_input.d.x, 21864i, 6479i, 8341i), vec3<i32>(42126i, arg_2, global3.b.b.x), u_input.c.yzz, vec2<u32>(1u, u_input.a), -33048i), firstTrailingBit(vec3<u32>(1u, u_input.a, 0u)), u_input.b.zz), -2147483647i << (global3.b.c.x % 32u), global3.b.c.x)), Struct_5(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, 677f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0) - vec2<f32>(-669f, arg_3))))), Struct_3(697f, Struct_1(~vec4<i32>(20120i, u_input.b.x, global3.b.b.x, 0i), global3.b.b, vec3<u32>(39471u, u_input.e.x, 4294967295u), u_input.c.xx, 33083i << (u_input.c.x % 32u)), vec3<u32>(u_input.e.x | 3584u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.e.zy), ~u_input.a), global3.b.a.xy), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1384f, arg_1, _wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, arg_3, 1416f)) - vec3<f32>(arg_3, -937f, arg_3))), vec4<u32>(15740u, global3.b.d.x, ~(103465u << (global3.b.c.x % 32u)), ~4294967295u))));
    global2 = array<i32, 25>();
    let var_1 = global3.b.c.xy;
    return func_2(Struct_3(-1350f, Struct_1(vec4<i32>(-26492i, ~(-1i), 1i << (0u % 32u), _wgslsmith_sub_i32(global3.b.b.x, 0i)), reverseBits(global3.b.a.zzz << (global3.b.c % vec3<u32>(32u))), global3.b.c, vec2<u32>(global3.b.c.x, 1u << (global3.b.c.x % 32u)), u_input.b.x), vec3<u32>(global3.b.c.x ^ 1u, _wgslsmith_mod_u32(44835u, u_input.e.x), global3.b.c.x) & vec3<u32>(_wgslsmith_sub_u32(31588u, global3.b.d.x), ~var_1.x, _wgslsmith_div_u32(var_1.x, var_1.x)), ~(global3.b.b.xy ^ _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.b.yy))), (reverseBits(firstLeadingBit(u_input.d.x)) ^ -45412i) | 1i, u_input.c.x).b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 36189u, 25798u), ~(~vec3<u32>(global3.b.c.x, 35678u, 4294967295u)))), global3.b.c, vec3<u32>(global3.b.d.x, _wgslsmith_mult_u32(global3.b.d.x, arg_0.c.x), ~arg_0.c.x));
    var var_1 = ~(~(1u << (var_0.x % 32u)));
    var var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * func_2(Struct_3(-2227f, Struct_1(arg_0.a, arg_0.b, vec3<u32>(global3.b.c.x, var_0.x, global3.b.d.x), vec2<u32>(10634u, 4294967295u), u_input.b.x), vec3<u32>(78579u, u_input.a, 35742u), global3.b.a.zw), -2147483647i, 53730u).a)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(1628f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(-arg_2))), arg_2);
    return StorageBuffer(~select(~func_2(Struct_3(arg_2, Struct_1(vec4<i32>(0i, arg_0.e, global3.b.b.x, u_input.d.x), arg_0.a.xxx, u_input.c.xzz, vec2<u32>(var_0.x, 48692u), global3.b.b.x), global3.b.c, u_input.b.xz), 45127i, 4294967295u).c.xy, vec2<u32>(abs(12319u), ~0u), vec2<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(arg_1.x, global3.d.x)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~(~u_input.c), ~vec4<u32>(global3.b.d.x, global3.b.c.x, 33754u, global3.b.c.x)), ~u_input.c & _wgslsmith_clamp_vec4_u32(vec4<u32>(41581u, arg_0.c.x, global3.b.d.x, u_input.e.x), u_input.c, countOneBits(u_input.c)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(i32(-1i) * -18995i, global3.b.a.x, (i32(-1i) * -reverseBits(-6367i)) >> (u_input.e.x % 32u));
    let x = u_input.a;
    s_output = func_5(func_1(-308f, _wgslsmith_f_op_f32(f32(-1f) * -244f), 2147483647i, 823f), global3.c, _wgslsmith_f_op_f32(f32(-1f) * -793f));
}

