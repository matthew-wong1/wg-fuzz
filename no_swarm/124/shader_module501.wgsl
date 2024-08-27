struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-1416f, -191f), vec2<f32>(733f, -1334f), vec2<f32>(-980f, -1000f), vec2<f32>(-1222f, -1827f), vec2<f32>(-455f, 267f), vec2<f32>(-464f, 121f), vec2<f32>(1792f, 477f), vec2<f32>(1566f, 1470f));

var<private> global1: array<i32, 30>;

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(4294967295u, 0u), vec2<u32>(9784u, 0u), vec2<u32>(0u, 36280u), vec2<u32>(20428u, 11728u), vec2<u32>(5802u, 4294967295u), vec2<u32>(0u, 19211u), vec2<u32>(4294967295u, 71346u), vec2<u32>(0u, 0u), vec2<u32>(1u, 74920u), vec2<u32>(4294967295u, 0u));

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(11498u, Struct_1(vec4<i32>(1i, -7213i, 2147483647i, 0i), vec4<i32>(5585i, 42957i, 27450i, 12233i), vec4<u32>(92054u, 4294967295u, 4294967295u, 71993u)), vec2<i32>(24527i, 1i), Struct_1(vec4<i32>(-1i, -7220i, -8425i, 7166i), vec4<i32>(2147483647i, -4968i, 12725i, -8194i), vec4<u32>(0u, 63977u, 72407u, 8152u)), true), Struct_2(4294967295u, Struct_1(vec4<i32>(21152i, 1i, 0i, -1i), vec4<i32>(-35474i, -19872i, i32(-2147483648), 19831i), vec4<u32>(4294967295u, 1u, 13694u, 53044u)), vec2<i32>(1352i, 0i), Struct_1(vec4<i32>(-35271i, 12202i, -15982i, 25482i), vec4<i32>(-17088i, 2147483647i, 2147483647i, -53053i), vec4<u32>(61077u, 4294967295u, 20297u, 22806u)), true), Struct_2(0u, Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -3750i), vec4<i32>(2147483647i, 0i, 0i, 14114i), vec4<u32>(4294967295u, 42u, 17483u, 37553u)), vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, -7478i), vec4<i32>(-31808i, 2147483647i, 0i, -41064i), vec4<u32>(0u, 4294967295u, 13210u, 11593u)), false), Struct_2(0u, Struct_1(vec4<i32>(i32(-2147483648), 23565i, -1i, i32(-2147483648)), vec4<i32>(-39454i, -1i, 0i, -1i), vec4<u32>(22138u, 4294967295u, 33659u, 116369u)), vec2<i32>(-1i, 4402i), Struct_1(vec4<i32>(19851i, 39487i, i32(-2147483648), -1i), vec4<i32>(-44443i, i32(-2147483648), 30291i, 1i), vec4<u32>(0u, 0u, 0u, 37637u)), true), Struct_2(0u, Struct_1(vec4<i32>(i32(-2147483648), 74082i, -1i, 19868i), vec4<i32>(-23869i, 2147483647i, 54626i, 30822i), vec4<u32>(40025u, 0u, 50691u, 50652u)), vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<i32>(10021i, -9555i, 1i, 29041i), vec4<i32>(-5290i, i32(-2147483648), -1i, 3068i), vec4<u32>(0u, 0u, 4294967295u, 1u)), false), Struct_2(86159u, Struct_1(vec4<i32>(-29715i, i32(-2147483648), -74817i, 2147483647i), vec4<i32>(2147483647i, -30509i, -52452i, 2147483647i), vec4<u32>(1u, 4294967295u, 1u, 0u)), vec2<i32>(1i, -1i), Struct_1(vec4<i32>(711i, 2147483647i, 22330i, 2147483647i), vec4<i32>(i32(-2147483648), -1828i, -59790i, -1i), vec4<u32>(32779u, 26813u, 1u, 417u)), true), Struct_2(1u, Struct_1(vec4<i32>(1i, 1i, 19752i, 7413i), vec4<i32>(2147483647i, 28275i, 1i, 0i), vec4<u32>(42711u, 4294967295u, 14998u, 0u)), vec2<i32>(1i, -21159i), Struct_1(vec4<i32>(70703i, 2147483647i, -19220i, 1i), vec4<i32>(12953i, -1i, 65387i, 1i), vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), true), Struct_2(48549u, Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, 10141i), vec4<i32>(-41852i, 15779i, -7533i, -15591i), vec4<u32>(50757u, 100063u, 1u, 1u)), vec2<i32>(-29766i, -18078i), Struct_1(vec4<i32>(1i, -4817i, i32(-2147483648), -10341i), vec4<i32>(5284i, -31296i, i32(-2147483648), 2147483647i), vec4<u32>(27880u, 14884u, 12729u, 109574u)), false), Struct_2(1u, Struct_1(vec4<i32>(22599i, 2147483647i, 6967i, 31652i), vec4<i32>(-17449i, -26968i, 34145i, -10057i), vec4<u32>(0u, 20786u, 33042u, 2145u)), vec2<i32>(-20421i, -1i), Struct_1(vec4<i32>(2147483647i, 0i, -11901i, 35573i), vec4<i32>(0i, -1i, 56357i, 2147483647i), vec4<u32>(27559u, 1u, 4294967295u, 38117u)), false), Struct_2(4294967295u, Struct_1(vec4<i32>(-9162i, -71436i, 2147483647i, 1i), vec4<i32>(-1i, 31907i, -32925i, 1i), vec4<u32>(0u, 39430u, 16866u, 0u)), vec2<i32>(2147483647i, -12570i), Struct_1(vec4<i32>(-64211i, 0i, 1i, 1i), vec4<i32>(18676i, -68843i, 2147483647i, -31635i), vec4<u32>(67047u, 1u, 35572u, 1u)), false), Struct_2(4294967295u, Struct_1(vec4<i32>(-15192i, 1i, -13303i, -1i), vec4<i32>(34683i, 1i, i32(-2147483648), -11763i), vec4<u32>(27812u, 4294967295u, 66608u, 108942u)), vec2<i32>(-13885i, i32(-2147483648)), Struct_1(vec4<i32>(-32920i, 2147483647i, 2147483647i, 66814i), vec4<i32>(0i, 1i, 0i, i32(-2147483648)), vec4<u32>(76913u, 4294967295u, 10125u, 53608u)), false), Struct_2(4294967295u, Struct_1(vec4<i32>(-16411i, 1i, 2147483647i, 5420i), vec4<i32>(1i, -27102i, -40572i, i32(-2147483648)), vec4<u32>(15632u, 14553u, 0u, 12606u)), vec2<i32>(-1i, -27170i), Struct_1(vec4<i32>(0i, 98812i, 9342i, 42520i), vec4<i32>(-11750i, i32(-2147483648), i32(-2147483648), 5924i), vec4<u32>(0u, 36109u, 37754u, 0u)), true), Struct_2(4294967295u, Struct_1(vec4<i32>(2147483647i, 0i, 1i, 83328i), vec4<i32>(-1i, -78981i, -41692i, -27202i), vec4<u32>(24502u, 1u, 21843u, 25227u)), vec2<i32>(23986i, -2289i), Struct_1(vec4<i32>(2147483647i, -1i, 0i, 2147483647i), vec4<i32>(-1i, 27126i, 8677i, -74699i), vec4<u32>(4294967295u, 88301u, 4294967295u, 51851u)), true), Struct_2(1u, Struct_1(vec4<i32>(0i, 0i, -32526i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 1i), vec4<u32>(1u, 1u, 39933u, 723u)), vec2<i32>(1i, i32(-2147483648)), Struct_1(vec4<i32>(-1i, -21867i, 2147483647i, 6565i), vec4<i32>(0i, -2509i, 45092i, 7154i), vec4<u32>(4294967295u, 4184u, 0u, 0u)), true), Struct_2(27032u, Struct_1(vec4<i32>(i32(-2147483648), -13251i, -30428i, i32(-2147483648)), vec4<i32>(2147483647i, -15612i, 12093i, -15578i), vec4<u32>(1u, 4834u, 0u, 38011u)), vec2<i32>(-13907i, 1i), Struct_1(vec4<i32>(1i, 2147483647i, -64463i, 0i), vec4<i32>(-31764i, -17263i, i32(-2147483648), 0i), vec4<u32>(22661u, 23046u, 1u, 1u)), false), Struct_2(6160u, Struct_1(vec4<i32>(0i, 13431i, 0i, -1i), vec4<i32>(0i, 1i, 2147483647i, 21097i), vec4<u32>(0u, 55492u, 33704u, 4294967295u)), vec2<i32>(1i, 2147483647i), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), -19091i, 26767i, -1509i), vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), false), Struct_2(0u, Struct_1(vec4<i32>(42203i, -64835i, 2147483647i, 0i), vec4<i32>(-23069i, -9934i, -1i, 0i), vec4<u32>(4294967295u, 0u, 0u, 41579u)), vec2<i32>(14822i, 7893i), Struct_1(vec4<i32>(1i, 14483i, i32(-2147483648), -6261i), vec4<i32>(-43496i, 2147483647i, -1i, 19547i), vec4<u32>(83387u, 4294967295u, 0u, 4294967295u)), true), Struct_2(0u, Struct_1(vec4<i32>(46097i, -26125i, 1i, 0i), vec4<i32>(-35923i, -41522i, i32(-2147483648), -23463i), vec4<u32>(27878u, 100156u, 0u, 3094u)), vec2<i32>(-42886i, 1i), Struct_1(vec4<i32>(2147483647i, -9931i, -1i, 3820i), vec4<i32>(-32912i, 0i, -23918i, -1i), vec4<u32>(23220u, 1u, 44901u, 53801u)), false), Struct_2(40567u, Struct_1(vec4<i32>(0i, 34863i, -1i, 25137i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 1i), vec4<u32>(4294967295u, 4294967295u, 28931u, 4294967295u)), vec2<i32>(2147483647i, -64351i), Struct_1(vec4<i32>(1i, 1i, 0i, 4195i), vec4<i32>(1i, 6877i, -1i, 2147483647i), vec4<u32>(16455u, 1400u, 2549u, 1u)), true), Struct_2(39396u, Struct_1(vec4<i32>(-1i, i32(-2147483648), 37710i, 4473i), vec4<i32>(19395i, -14281i, 29723i, 23113i), vec4<u32>(7579u, 78838u, 58956u, 0u)), vec2<i32>(1i, -1i), Struct_1(vec4<i32>(1i, 19778i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, -33555i, -103i, 2147483647i), vec4<u32>(39137u, 1u, 0u, 4294967295u)), false), Struct_2(70684u, Struct_1(vec4<i32>(8201i, 2147483647i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 1i, 0i), vec4<u32>(1u, 13992u, 1259u, 4294967295u)), vec2<i32>(2147483647i, 63958i), Struct_1(vec4<i32>(76255i, 48966i, 15569i, -41159i), vec4<i32>(1i, 15702i, -55539i, 44038i), vec4<u32>(4294967295u, 24843u, 17161u, 6885u)), true), Struct_2(4294967295u, Struct_1(vec4<i32>(33669i, -46763i, i32(-2147483648), 2147483647i), vec4<i32>(46664i, i32(-2147483648), 0i, -1i), vec4<u32>(24879u, 1u, 4294967295u, 34142u)), vec2<i32>(1i, 0i), Struct_1(vec4<i32>(i32(-2147483648), 42000i, -11861i, 1i), vec4<i32>(-14974i, 9978i, -325i, 1i), vec4<u32>(33012u, 1u, 1u, 4294967295u)), true), Struct_2(1u, Struct_1(vec4<i32>(1i, -59684i, -12547i, i32(-2147483648)), vec4<i32>(182i, 0i, i32(-2147483648), -1i), vec4<u32>(52787u, 75057u, 44847u, 25474u)), vec2<i32>(8393i, 64660i), Struct_1(vec4<i32>(-1i, 0i, 4131i, 10962i), vec4<i32>(12748i, -1i, -1i, 0i), vec4<u32>(11337u, 1u, 26328u, 52854u)), false), Struct_2(4294967295u, Struct_1(vec4<i32>(i32(-2147483648), 14669i, -4774i, -1i), vec4<i32>(-24765i, -3157i, 35729i, 2147483647i), vec4<u32>(4294967295u, 35276u, 66900u, 0u)), vec2<i32>(1i, 0i), Struct_1(vec4<i32>(52636i, -11111i, -39682i, 40168i), vec4<i32>(0i, -29863i, 2147483647i, i32(-2147483648)), vec4<u32>(0u, 74854u, 4294967295u, 1u)), true), Struct_2(12157u, Struct_1(vec4<i32>(40418i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(1i, 0i, -8726i, 57531i), vec4<u32>(19970u, 11715u, 4294967295u, 1u)), vec2<i32>(0i, 2147483647i), Struct_1(vec4<i32>(30527i, 71513i, -2259i, -8054i), vec4<i32>(-31990i, -1i, 0i, -57050i), vec4<u32>(47172u, 2687u, 1u, 1u)), false), Struct_2(1u, Struct_1(vec4<i32>(2844i, -5987i, i32(-2147483648), -1i), vec4<i32>(-10829i, -45216i, 1i, 12962i), vec4<u32>(49064u, 1u, 1u, 1u)), vec2<i32>(1i, 10172i), Struct_1(vec4<i32>(-4694i, -1i, 2147483647i, 29376i), vec4<i32>(48906i, -2186i, -47493i, 1i), vec4<u32>(24451u, 87138u, 9479u, 7761u)), true), Struct_2(96u, Struct_1(vec4<i32>(i32(-2147483648), 16478i, 33386i, 0i), vec4<i32>(-35335i, 18191i, -24521i, -1242i), vec4<u32>(4294967295u, 4294967295u, 4122u, 22734u)), vec2<i32>(0i, -27047i), Struct_1(vec4<i32>(4239i, 1i, 1i, 8170i), vec4<i32>(-19249i, 1i, 2147483647i, i32(-2147483648)), vec4<u32>(13519u, 1u, 0u, 0u)), false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<u32> {
    global0 = array<vec2<f32>, 8>();
    let var_0 = ~global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, arg_1.d.c.x), 10u)];
    global0 = array<vec2<f32>, 8>();
    global0 = array<vec2<f32>, 8>();
    global2 = array<vec2<u32>, 10>();
    return vec4<u32>(9712u >> (firstTrailingBit(116752u) % 32u), ~4294967295u, _wgslsmith_sub_u32(arg_1.a, 9649u), arg_2.x);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(~(~u_input.a), Struct_1(vec4<i32>(55532i, ~(~global1[_wgslsmith_index_u32(4294967295u, 30u)]), arg_0, -18215i), vec4<i32>(global1[_wgslsmith_index_u32(firstLeadingBit(6617u), 30u)], global1[_wgslsmith_index_u32(~4294967295u, 30u)], ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 30u)], -43792i, 2147483647i, arg_0), vec4<i32>(arg_0, 2147483647i, 1i, arg_0)), arg_0), select(_wgslsmith_add_vec4_u32(max(vec4<u32>(30525u, 73102u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 25419u)), firstTrailingBit(vec4<u32>(20099u, 12409u, 72750u, 41886u))), vec4<u32>(18313u, u_input.a, u_input.a, u_input.a), any(vec4<bool>(true, true, true, true)))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(max(0i, arg_0), min(global1[_wgslsmith_index_u32(u_input.a, 30u)], 57280i))), vec2<i32>(arg_0, arg_0)), Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(0i, arg_0, arg_0, global1[_wgslsmith_index_u32(18224u, 30u)]) ^ vec4<i32>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 30u)], arg_0, 13830i)), vec4<i32>(-1i, global1[_wgslsmith_index_u32(31424u, 30u)], arg_0, global1[_wgslsmith_index_u32(u_input.a, 30u)]) << (~vec4<u32>(0u, u_input.a, u_input.a, 52694u) % vec4<u32>(32u))), -(~(~vec4<i32>(2147483647i, -35690i, global1[_wgslsmith_index_u32(u_input.a, 30u)], arg_0))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a | u_input.a, 1u), func_3(Struct_1(vec4<i32>(29228i, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], 8139i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<u32>(u_input.a, 75908u, u_input.a, 7444u)), global3[_wgslsmith_index_u32(~u_input.a, 27u)], vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)))), true);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(var_0.d.b, _wgslsmith_add_vec4_i32(-(~var_0.d.a), -var_0.b.a)), ~_wgslsmith_div_vec4_i32(vec4<i32>(min(global1[_wgslsmith_index_u32(36974u, 30u)], -1i), _wgslsmith_add_i32(var_0.d.b.x, 2610i), -2147483647i, firstTrailingBit(-33995i)), -vec4<i32>(var_0.d.a.x, 19859i, 1i, var_0.b.b.x)), _wgslsmith_mod_vec4_u32(abs(select(vec4<u32>(1u, 1u, u_input.a, u_input.a) << (vec4<u32>(33710u, 3093u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(31461u, 4294967295u, 35107u, 4294967295u), vec4<u32>(var_0.d.c.x, 1132u, u_input.a, 1u)), any(vec2<bool>(false, var_0.e)))), var_0.b.c));
    var var_2 = vec2<u32>(u_input.a, ~1u) | ~vec2<u32>(select(71641u, ~var_0.d.c.x, all(vec3<bool>(var_0.e, false, var_0.e))), u_input.a);
    var_2 = countOneBits(vec2<u32>(~(~42670u), ~(~1u)));
    var var_3 = 0u;
    return Struct_1(-select(select(vec4<i32>(var_0.b.b.x, arg_0, global1[_wgslsmith_index_u32(var_0.b.c.x, 30u)], var_1.a.x), vec4<i32>(-1014i, var_1.a.x, arg_0, global1[_wgslsmith_index_u32(1u, 30u)]) ^ var_0.b.a, var_0.e), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.d.c.x, 30u)], var_1.b.x, global1[_wgslsmith_index_u32(1u, 30u)], 22104i), vec4<i32>(global1[_wgslsmith_index_u32(var_1.c.x, 30u)], var_0.c.x, -65285i, var_1.b.x)), max(var_0.d.b, vec4<i32>(17559i, var_0.c.x, 1i, var_1.b.x))), vec4<bool>(var_0.e, any(vec4<bool>(var_0.e, var_0.e, var_0.e, true)), var_0.e, false)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_1.b.x, 2147483647i, -59276i) << (reverseBits(vec4<u32>(var_0.b.c.x, var_0.b.c.x, var_1.c.x, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(var_0.b.a, min(var_0.d.a, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 27033i, var_0.c.x, 10449i)), var_0.b.a)), var_1.b, var_0.e), ~(vec4<u32>(func_3(Struct_1(vec4<i32>(-46391i, 2147483647i, 0i, global1[_wgslsmith_index_u32(var_1.c.x, 30u)]), var_1.b, vec4<u32>(14645u, var_2.x, var_1.c.x, u_input.a)), Struct_2(var_1.c.x, Struct_1(var_0.b.a, var_1.a, vec4<u32>(4294967295u, 0u, var_2.x, 0u)), var_1.a.yz, var_0.d, true), vec4<u32>(4294967295u, var_2.x, u_input.a, 107699u)).x, _wgslsmith_clamp_u32(var_2.x, var_1.c.x, u_input.a), abs(var_2.x), ~0u) ^ vec4<u32>(select(var_2.x, 4294967295u, false), _wgslsmith_dot_vec4_u32(var_1.c, var_0.d.c), 1u, _wgslsmith_dot_vec4_u32(var_1.c, var_1.c))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<i32, 30>();
    global0 = array<vec2<f32>, 8>();
    global1 = array<i32, 30>();
    global3 = array<Struct_2, 27>();
    global0 = array<vec2<f32>, 8>();
    return func_2(_wgslsmith_add_i32(~(~(~global1[_wgslsmith_index_u32(25360u, 30u)])), _wgslsmith_mod_i32(-2147483647i >> (u_input.a % 32u), ~5135i) >> (u_input.a % 32u)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, arg_0.a & arg_0.b.c.x), ~1u)), Struct_1(~select(-arg_0.b.b, ~arg_0.d.b, !vec4<bool>(arg_0.e, true, arg_0.e, false)), arg_0.b.b, arg_0.b.c), ~arg_0.b.a.zy, func_1(!all(!vec4<bool>(arg_0.e, false, true, false))), true);
    global3 = array<Struct_2, 27>();
    var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_add_u32(1u, 49109u), ~0u, ~firstLeadingBit(1u)), arg_0.d.c), Struct_1(-firstLeadingBit(-arg_0.b.b), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], _wgslsmith_dot_vec3_i32(arg_0.b.a.xxy, var_0.b.b.zyx), arg_0.c.x, ~(~global1[_wgslsmith_index_u32(var_0.d.c.x, 30u)])), max(~vec4<u32>(u_input.a, arg_0.b.c.x, var_0.d.c.x, 7201u), vec4<u32>(var_0.a, 27167u, 46266u, u_input.a)) & vec4<u32>(arg_0.d.c.x, ~var_0.d.c.x, 1u, u_input.a)), var_0.b.a.yy, var_0.b, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(var_0.b.c.x, 8u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(-1f)) + vec2<f32>(-846f, 1648f)), var_0.e || true));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 390f) - _wgslsmith_f_op_f32(max(var_1.x, var_1.x))) + -195f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(821f))))), false);
    return func_2(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, -25013i, countOneBits(var_0.c.x)), -global1[_wgslsmith_index_u32(var_0.a, 30u)]), min(arg_0.c.x, arg_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(60839u, 58042u), vec2<u32>(~u_input.a, _wgslsmith_add_u32(23450u, 9602u))), func_1(abs(global1[_wgslsmith_index_u32(u_input.a, 30u)]) < global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 30u)]), vec2<i32>(abs(_wgslsmith_mod_i32(-2147483647i, 1i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)])), _wgslsmith_sub_vec3_i32(vec3<i32>(-35768i, -24923i, 0i), vec3<i32>(31868i, 2147483647i, global1[_wgslsmith_index_u32(0u, 30u)])))), Struct_1(vec4<i32>(-18746i, 2147483647i, -2883i, global1[_wgslsmith_index_u32(u_input.a, 30u)]) & vec4<i32>(global1[_wgslsmith_index_u32(68985u, 30u)], global1[_wgslsmith_index_u32(46345u, 30u)], global1[_wgslsmith_index_u32(108400u, 30u)], global1[_wgslsmith_index_u32(21357u, 30u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-33175i, -8965i, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(29406u, 30u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(44228u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], 42134i)) & select(vec4<i32>(global1[_wgslsmith_index_u32(63233u, 30u)], 0i, -1i, global1[_wgslsmith_index_u32(41148u, 30u)]), vec4<i32>(-26210i, 29384i, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(false, false, false, false)), firstTrailingBit(abs(vec4<u32>(0u, u_input.a, 1u, 28177u)))), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    global0 = array<vec2<f32>, 8>();
    global1 = array<i32, 30>();
    var var_1 = countOneBits(~(-firstLeadingBit(var_0.b.x)) ^ ~7035i);
    var var_2 = i32(-1i) * -(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 30u)], var_0.b.x, global1[_wgslsmith_index_u32(u_input.a, 30u)], -7840i), _wgslsmith_sub_vec4_i32(var_0.a, var_0.a)) | -12132i);
    let var_3 = Struct_2(~_wgslsmith_dot_vec4_u32(reverseBits(var_0.c), ~var_0.c) & func_4(Struct_2(func_4(global3[_wgslsmith_index_u32(var_0.c.x, 27u)]).c.x, func_4(global3[_wgslsmith_index_u32(13430u, 27u)]), var_0.b.wy, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(var_0.c.x, 30u)], 11853i, 76476i, global1[_wgslsmith_index_u32(73002u, 30u)]), vec4<i32>(-4129i, 3933i, var_0.b.x, global1[_wgslsmith_index_u32(0u, 30u)]), var_0.c), true)).c.x, var_0, _wgslsmith_div_vec2_i32(vec2<i32>(~38762i, reverseBits(-var_0.b.x)), vec2<i32>(3527i, -1i) << (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~64530u, min(127809u, 1u)), 10u)] % vec2<u32>(32u))), var_0, true);
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 884f, 595f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, -1597f, 199f))))))), ~(~(-global1[_wgslsmith_index_u32(var_4.c.x, 30u)])), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-703f, _wgslsmith_f_op_f32(1000f + 1000f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1248f)))), -1397f, 1569f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_0.c.x, 8u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1423f, 337f))) - global0[_wgslsmith_index_u32(132954u, 8u)]) - vec2<f32>(-438f, _wgslsmith_f_op_f32(max(867f, _wgslsmith_f_op_f32(f32(-1f) * -1023f))))));
}

