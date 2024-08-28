struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(Struct_1(61473u, vec3<i32>(i32(-2147483648), 2147483647i, -34967i), vec3<i32>(1i, -2137i, 16169i))), Struct_2(Struct_1(4294967295u, vec3<i32>(2147483647i, 0i, -22866i), vec3<i32>(-55402i, 30728i, 37126i))), Struct_2(Struct_1(23409u, vec3<i32>(56387i, -7210i, -1606i), vec3<i32>(34032i, 0i, -9127i))), 4294967295u, 4294967295u), Struct_3(Struct_2(Struct_1(40917u, vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(5207i, i32(-2147483648), -1835i))), Struct_2(Struct_1(1u, vec3<i32>(-56454i, 0i, 0i), vec3<i32>(4205i, 0i, -9404i))), Struct_2(Struct_1(1u, vec3<i32>(19112i, -1i, -28814i), vec3<i32>(-10996i, i32(-2147483648), -22929i))), 1u, 0u), Struct_3(Struct_2(Struct_1(4294967295u, vec3<i32>(2147483647i, -1i, -9155i), vec3<i32>(i32(-2147483648), 7377i, 25598i))), Struct_2(Struct_1(28753u, vec3<i32>(i32(-2147483648), -1i, 10478i), vec3<i32>(-36687i, 13308i, 2147483647i))), Struct_2(Struct_1(35967u, vec3<i32>(-29478i, -30606i, -1i), vec3<i32>(-14372i, 2147483647i, 21249i))), 0u, 19462u), Struct_3(Struct_2(Struct_1(18889u, vec3<i32>(-16683i, 19002i, i32(-2147483648)), vec3<i32>(1i, -1i, 0i))), Struct_2(Struct_1(0u, vec3<i32>(-57171i, 14962i, -4022i), vec3<i32>(0i, 1i, -11714i))), Struct_2(Struct_1(27260u, vec3<i32>(-23603i, 1i, 15275i), vec3<i32>(0i, 1i, 4362i))), 0u, 32359u), Struct_3(Struct_2(Struct_1(1u, vec3<i32>(i32(-2147483648), 32733i, 2147483647i), vec3<i32>(33646i, 16314i, 31722i))), Struct_2(Struct_1(8011u, vec3<i32>(i32(-2147483648), 58255i, 1i), vec3<i32>(0i, -11234i, -41036i))), Struct_2(Struct_1(4294967295u, vec3<i32>(-2087i, 25055i, -14958i), vec3<i32>(-23917i, 2147483647i, -13420i))), 92524u, 62089u), Struct_3(Struct_2(Struct_1(4294967295u, vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(48557i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(0u, vec3<i32>(0i, 11595i, -35267i), vec3<i32>(27957i, 2147483647i, 22549i))), Struct_2(Struct_1(47133u, vec3<i32>(760i, 74563i, 2147483647i), vec3<i32>(2147483647i, 1i, 46499i))), 4294967295u, 88640u), Struct_3(Struct_2(Struct_1(0u, vec3<i32>(-4720i, -10644i, 24240i), vec3<i32>(-1i, 43592i, -1i))), Struct_2(Struct_1(1u, vec3<i32>(-6006i, -57664i, i32(-2147483648)), vec3<i32>(-55388i, -5980i, -1i))), Struct_2(Struct_1(4851u, vec3<i32>(13734i, 0i, 0i), vec3<i32>(1i, -5464i, -43256i))), 2831u, 15329u), Struct_3(Struct_2(Struct_1(4294967295u, vec3<i32>(1i, 0i, 0i), vec3<i32>(1i, -11943i, -28307i))), Struct_2(Struct_1(78366u, vec3<i32>(-1i, 13214i, 1i), vec3<i32>(-5570i, 15709i, i32(-2147483648)))), Struct_2(Struct_1(4294967295u, vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 2147483647i))), 4294967295u, 4294967295u), Struct_3(Struct_2(Struct_1(82495u, vec3<i32>(-7989i, 15155i, 47684i), vec3<i32>(-87294i, 0i, 0i))), Struct_2(Struct_1(0u, vec3<i32>(15589i, -25760i, 2147483647i), vec3<i32>(-11857i, -19839i, -1i))), Struct_2(Struct_1(4294967295u, vec3<i32>(1944i, 0i, -45907i), vec3<i32>(22501i, 0i, 0i))), 1u, 0u), Struct_3(Struct_2(Struct_1(0u, vec3<i32>(-84078i, 1i, 0i), vec3<i32>(1i, 2147483647i, 1i))), Struct_2(Struct_1(49487u, vec3<i32>(44022i, 2147483647i, 15381i), vec3<i32>(i32(-2147483648), -18519i, -18656i))), Struct_2(Struct_1(175611u, vec3<i32>(-23170i, 0i, i32(-2147483648)), vec3<i32>(-1i, 7818i, 0i))), 59815u, 73003u), Struct_3(Struct_2(Struct_1(6043u, vec3<i32>(-1i, 1884i, 0i), vec3<i32>(1i, 0i, 28210i))), Struct_2(Struct_1(47055u, vec3<i32>(27673i, i32(-2147483648), 70820i), vec3<i32>(2147483647i, i32(-2147483648), -60940i))), Struct_2(Struct_1(4294967295u, vec3<i32>(-357i, -51698i, 4932i), vec3<i32>(0i, -1i, 28520i))), 14589u, 4294967295u), Struct_3(Struct_2(Struct_1(4294967295u, vec3<i32>(-3536i, -13746i, 1i), vec3<i32>(-32729i, 2147483647i, 1i))), Struct_2(Struct_1(0u, vec3<i32>(20289i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -20177i))), Struct_2(Struct_1(0u, vec3<i32>(-9743i, 1i, 10013i), vec3<i32>(-1i, 15108i, -21654i))), 1u, 1u), Struct_3(Struct_2(Struct_1(1u, vec3<i32>(3173i, -16641i, 2147483647i), vec3<i32>(i32(-2147483648), -25667i, -56176i))), Struct_2(Struct_1(18112u, vec3<i32>(1906i, 12044i, -10884i), vec3<i32>(1i, 0i, 23098i))), Struct_2(Struct_1(0u, vec3<i32>(25437i, i32(-2147483648), -27350i), vec3<i32>(1i, 11436i, -1i))), 3771u, 17989u), Struct_3(Struct_2(Struct_1(48261u, vec3<i32>(2147483647i, -10660i, -35654i), vec3<i32>(2147483647i, i32(-2147483648), 29633i))), Struct_2(Struct_1(1u, vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-1i, -224i, 0i))), Struct_2(Struct_1(45061u, vec3<i32>(0i, 0i, 41360i), vec3<i32>(0i, -407i, -15293i))), 55228u, 8890u), Struct_3(Struct_2(Struct_1(1u, vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(2147483647i, 36433i, 11440i))), Struct_2(Struct_1(4294967295u, vec3<i32>(1i, -49969i, 2147483647i), vec3<i32>(-19818i, 0i, 17164i))), Struct_2(Struct_1(13733u, vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(-31989i, 1i, 279i))), 1u, 0u), Struct_3(Struct_2(Struct_1(0u, vec3<i32>(-1i, -14627i, 2147483647i), vec3<i32>(i32(-2147483648), -17857i, -24936i))), Struct_2(Struct_1(2880u, vec3<i32>(28457i, -11110i, 41865i), vec3<i32>(1i, 2147483647i, 1i))), Struct_2(Struct_1(34713u, vec3<i32>(-17856i, 17762i, 0i), vec3<i32>(16865i, -14139i, 40614i))), 4294967295u, 0u), Struct_3(Struct_2(Struct_1(16400u, vec3<i32>(-1i, -6121i, 50312i), vec3<i32>(5644i, -44615i, -8038i))), Struct_2(Struct_1(4294967295u, vec3<i32>(-28192i, i32(-2147483648), -41333i), vec3<i32>(-1i, -49395i, 1i))), Struct_2(Struct_1(0u, vec3<i32>(-22938i, i32(-2147483648), -2798i), vec3<i32>(32070i, i32(-2147483648), 2147483647i))), 4294967295u, 4294967295u), Struct_3(Struct_2(Struct_1(48708u, vec3<i32>(52213i, -1i, 0i), vec3<i32>(-1i, i32(-2147483648), 35535i))), Struct_2(Struct_1(0u, vec3<i32>(-75236i, -31511i, 0i), vec3<i32>(-6140i, 1i, -1i))), Struct_2(Struct_1(90025u, vec3<i32>(16030i, 2147483647i, 68975i), vec3<i32>(-36037i, i32(-2147483648), -8760i))), 29447u, 65880u), Struct_3(Struct_2(Struct_1(23469u, vec3<i32>(2795i, i32(-2147483648), 1i), vec3<i32>(1i, i32(-2147483648), 4483i))), Struct_2(Struct_1(1u, vec3<i32>(-12060i, i32(-2147483648), -26790i), vec3<i32>(9928i, -34372i, -34036i))), Struct_2(Struct_1(30571u, vec3<i32>(0i, 34720i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 5915i))), 4294967295u, 112684u), Struct_3(Struct_2(Struct_1(34381u, vec3<i32>(i32(-2147483648), -3393i, 19098i), vec3<i32>(0i, 0i, -1i))), Struct_2(Struct_1(33019u, vec3<i32>(28682i, 59871i, 1i), vec3<i32>(-1i, 13644i, 0i))), Struct_2(Struct_1(4294967295u, vec3<i32>(1i, 8155i, -22957i), vec3<i32>(1i, i32(-2147483648), 1i))), 15197u, 17139u), Struct_3(Struct_2(Struct_1(12563u, vec3<i32>(624i, 6844i, i32(-2147483648)), vec3<i32>(12134i, 13595i, 1i))), Struct_2(Struct_1(9578u, vec3<i32>(-8967i, 1i, 19000i), vec3<i32>(6639i, 1i, 0i))), Struct_2(Struct_1(0u, vec3<i32>(-1i, -41973i, 1i), vec3<i32>(14902i, -15240i, 0i))), 1u, 4294967295u), Struct_3(Struct_2(Struct_1(14832u, vec3<i32>(i32(-2147483648), -11730i, 6962i), vec3<i32>(18432i, 54165i, 1i))), Struct_2(Struct_1(35446u, vec3<i32>(-26628i, i32(-2147483648), -5392i), vec3<i32>(22387i, -11822i, 0i))), Struct_2(Struct_1(0u, vec3<i32>(-42600i, 7054i, 1i), vec3<i32>(0i, i32(-2147483648), 20712i))), 61699u, 4294967295u), Struct_3(Struct_2(Struct_1(1882u, vec3<i32>(-1i, i32(-2147483648), 30915i), vec3<i32>(81313i, -9665i, 57016i))), Struct_2(Struct_1(22201u, vec3<i32>(2147483647i, -1i, -14665i), vec3<i32>(-1485i, i32(-2147483648), -4887i))), Struct_2(Struct_1(1u, vec3<i32>(2147483647i, 1053i, -64029i), vec3<i32>(0i, 29754i, 50524i))), 0u, 33225u), Struct_3(Struct_2(Struct_1(30562u, vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(1i, 0i, 0i))), Struct_2(Struct_1(32104u, vec3<i32>(-1i, -1i, -1i), vec3<i32>(-14388i, -53648i, 10914i))), Struct_2(Struct_1(56852u, vec3<i32>(8686i, 1i, -7221i), vec3<i32>(i32(-2147483648), -828i, 38416i))), 110464u, 1u), Struct_3(Struct_2(Struct_1(0u, vec3<i32>(44409i, 2147483647i, -1i), vec3<i32>(0i, 20902i, 0i))), Struct_2(Struct_1(56248u, vec3<i32>(40646i, 62412i, 2147483647i), vec3<i32>(-7173i, -13870i, 1378i))), Struct_2(Struct_1(0u, vec3<i32>(-2833i, 1i, -1i), vec3<i32>(1i, i32(-2147483648), 37317i))), 0u, 13797u), Struct_3(Struct_2(Struct_1(18775u, vec3<i32>(-12258i, 0i, -1i), vec3<i32>(0i, -1i, 2147483647i))), Struct_2(Struct_1(0u, vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), -17638i, -1i))), Struct_2(Struct_1(63800u, vec3<i32>(1i, 43181i, 2147483647i), vec3<i32>(-1i, 2147483647i, 24154i))), 6901u, 0u), Struct_3(Struct_2(Struct_1(13603u, vec3<i32>(i32(-2147483648), -53749i, i32(-2147483648)), vec3<i32>(1i, 10685i, -1i))), Struct_2(Struct_1(0u, vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-33090i, 39168i, 0i))), Struct_2(Struct_1(1u, vec3<i32>(-15734i, 10879i, -25263i), vec3<i32>(8002i, -40102i, -30273i))), 1u, 4294967295u), Struct_3(Struct_2(Struct_1(4294967295u, vec3<i32>(2147483647i, 26782i, -1i), vec3<i32>(2147483647i, 38722i, i32(-2147483648)))), Struct_2(Struct_1(0u, vec3<i32>(-1i, 213i, -33510i), vec3<i32>(-10122i, -40910i, -45417i))), Struct_2(Struct_1(1u, vec3<i32>(-35285i, 1i, -66168i), vec3<i32>(-22880i, i32(-2147483648), 0i))), 4294967295u, 73807u), Struct_3(Struct_2(Struct_1(0u, vec3<i32>(8283i, 10624i, 58717i), vec3<i32>(0i, 48686i, 0i))), Struct_2(Struct_1(4294967295u, vec3<i32>(-35469i, -37988i, i32(-2147483648)), vec3<i32>(-37459i, 0i, -1i))), Struct_2(Struct_1(7557u, vec3<i32>(-22200i, -1i, -27336i), vec3<i32>(i32(-2147483648), -1i, 21191i))), 42936u, 4294967295u), Struct_3(Struct_2(Struct_1(1u, vec3<i32>(0i, 0i, -8735i), vec3<i32>(-76045i, 46584i, -1i))), Struct_2(Struct_1(1u, vec3<i32>(-42409i, 1i, -238i), vec3<i32>(-42885i, 49155i, -1i))), Struct_2(Struct_1(1u, vec3<i32>(8511i, -29629i, 2147483647i), vec3<i32>(1i, 53329i, 42431i))), 52022u, 4294967295u), Struct_3(Struct_2(Struct_1(4294967295u, vec3<i32>(3825i, 30181i, -49747i), vec3<i32>(53817i, 1i, 24378i))), Struct_2(Struct_1(5950u, vec3<i32>(17992i, -1i, 13268i), vec3<i32>(0i, 1i, 33414i))), Struct_2(Struct_1(3323u, vec3<i32>(1i, -19940i, 2147483647i), vec3<i32>(0i, 2147483647i, i32(-2147483648)))), 1u, 1u), Struct_3(Struct_2(Struct_1(3173u, vec3<i32>(i32(-2147483648), -1i, -20391i), vec3<i32>(42396i, -1i, -32536i))), Struct_2(Struct_1(6655u, vec3<i32>(-11379i, -1687i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, -19598i))), Struct_2(Struct_1(49409u, vec3<i32>(2147483647i, -22907i, i32(-2147483648)), vec3<i32>(36676i, -6396i, 3285i))), 60784u, 5617u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(26626u, arg_0.b.a.a, arg_0.d, global0[_wgslsmith_index_u32(64593u, 11u)]) & vec4<u32>(global0[_wgslsmith_index_u32(13849u, 11u)], global0[_wgslsmith_index_u32(arg_0.d, 11u)], 13313u, arg_0.c.a.a), abs(vec4<u32>(8558u, 4294967295u, global0[_wgslsmith_index_u32(0u, 11u)], 1u))) & ~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d, 11u)], 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], 0u)));
    global1 = array<Struct_3, 32>();
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = Struct_2(arg_0.a.a);
    let var_3 = Struct_1(4294967295u, vec3<i32>(~u_input.a, u_input.a, 74158i), ~(-reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.b.x, 0i, 9768i), vec3<i32>(u_input.a, arg_0.a.a.c.x, u_input.a), vec3<i32>(var_2.a.b.x, -2147483647i, var_2.a.b.x)))));
    return _wgslsmith_div_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(var_3.a, 11u)]), 11u)] & arg_0.c.a.a, global0[_wgslsmith_index_u32(arg_0.c.a.a, 11u)]), ~(~(var_0.xw | vec2<u32>(0u, var_0.x))) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3.a, 25979u), var_0.xz & vec2<u32>(var_0.x, var_2.a.a), firstLeadingBit(vec2<u32>(var_2.a.a, var_2.a.a))) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = countOneBits(_wgslsmith_add_i32(max(abs(arg_0.c.a.c.x), -1i), ~(-1i) ^ arg_0.a.a.b.x));
    var var_1 = vec4<u32>(max(_wgslsmith_sub_u32(arg_0.d, _wgslsmith_dot_vec2_u32(func_3(Struct_3(arg_0.c, arg_0.b, arg_0.a, 0u, arg_0.b.a.a)), vec2<u32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(97415u, 11u)]))), 0u), 39839u, 1u, arg_0.b.a.a);
    var var_2 = vec2<bool>(!(!all(!vec3<bool>(false, arg_1.x, arg_1.x))), !all(vec2<bool>(arg_1.x || arg_1.x, arg_1.x)));
    global1 = array<Struct_3, 32>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1032f, -140f)))) + 105f)));
    return vec4<u32>(global0[_wgslsmith_index_u32(0u, 11u)], 1u, arg_0.d, ~(~(var_1.x | arg_0.b.a.a)) >> (max(var_1.x, arg_0.e) % 32u));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = select(!arg_0, select(!select(!vec2<bool>(false, arg_0.x), arg_0, vec2<bool>(arg_0.x, false)), vec2<bool>((global0[_wgslsmith_index_u32(22241u, 11u)] == 0u) & true, any(vec2<bool>(false, false))), true | (global0[_wgslsmith_index_u32(abs(60711u), 11u)] >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26669u, 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7351u, 11u)], 11u)], global0[_wgslsmith_index_u32(12816u, 11u)], 0u), vec4<u32>(0u, global0[_wgslsmith_index_u32(48880u, 11u)], 34168u, 36372u)), 11u)])), arg_0.x && (false | (!arg_0.x || (false & arg_0.x))));
    global1 = array<Struct_3, 32>();
    global0 = array<u32, 11>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1439f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) + _wgslsmith_f_op_f32(f32(-1f) * -328f)) + _wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(max(-525f, -1640f))))));
    var var_2 = max(_wgslsmith_div_i32(-_wgslsmith_div_i32(1i, u_input.a) >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64507u, 11u)], 11u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 11u)], 4294967295u)) % 32u), -37045i), _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, -1i) >> (func_2(Struct_3(Struct_2(Struct_1(88029u, vec3<i32>(1i, u_input.a, -51723i), vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_2(Struct_1(0u, vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(1i, 49136i, -2147483647i))), Struct_2(Struct_1(1u, vec3<i32>(u_input.a, 52824i, -1103i), vec3<i32>(u_input.a, u_input.a, -59341i))), 0u, 0u), var_0) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(-14499i, 2147483647i, -2848i, 0i), vec4<i32>(u_input.a, 46361i, u_input.a, u_input.a))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    var var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)] << (109417u % 32u)), ~(global0[_wgslsmith_index_u32(68703u, 11u)] & 35961u)), abs(select(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 11u)]), 1u, func_1(vec2<bool>(false, false))))), 11u)] ^ (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(abs(1u), 1u, true), 11u)], 11u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(68479u, 11u)], ~min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72728u, 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)])), 11u)], 11u)] % 32u)), 32u)];
    var_0 = global1[_wgslsmith_index_u32(~(var_0.d & reverseBits(~global0[_wgslsmith_index_u32(135739u ^ var_0.c.a.a, 11u)])), 32u)];
    global0 = array<u32, 11>();
    let var_1 = Struct_1(0u, -var_0.b.a.c, ~var_0.c.a.c);
    let var_2 = vec4<i32>(firstLeadingBit(min(~63475i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.a, var_1.a, 14327u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.a.a, 11u)], 11u)]), vec4<u32>(var_0.d, var_0.d, var_1.a, 0u)) % 32u), i32(-1i) * -20998i)), 1i, u_input.a, 1i ^ _wgslsmith_add_i32(firstTrailingBit(var_1.b.x), ~(~35322i)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec3<u32>(27571u, global0[_wgslsmith_index_u32(987u, 11u)], 18871u), vec3<u32>(global0[_wgslsmith_index_u32(var_1.a, 11u)], var_1.a, 15026u) >> (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(var_1.a, 11u)], var_0.c.a.a) % vec3<u32>(32u))) & ~(~vec3<u32>(1099u, var_0.e, global0[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_f_op_f32(-1025f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1042f + 390f) + _wgslsmith_f_op_f32(f32(-1f) * -2140f)))), ~(var_0.c.a.a & 1u), (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(21982u, 37925u), vec2<u32>(4547u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(var_0.c.a.a, 11u)], 4294967295u)), ~vec2<u32>(global0[_wgslsmith_index_u32(var_1.a, 11u)], global0[_wgslsmith_index_u32(23903u, 11u)])) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 1u) << (vec2<u32>(var_0.e, global0[_wgslsmith_index_u32(var_1.a, 11u)]) % vec2<u32>(32u)), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(15835u, 11u)]))) >> (vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, var_0.d) | ~global0[_wgslsmith_index_u32(21512u, 11u)]) % vec2<u32>(32u)));
}

