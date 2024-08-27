struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 10> = array<Struct_5, 10>(Struct_5(Struct_2(Struct_1(vec4<bool>(true, false, false, true), -14582i, vec4<u32>(0u, 37598u, 1u, 1u), true, 1u), vec3<bool>(true, false, true)), Struct_4(vec4<u32>(4294967295u, 4294967295u, 18118u, 4294967295u), Struct_3(Struct_1(vec4<bool>(true, true, true, true), -7494i, vec4<u32>(75465u, 1u, 11936u, 0u), true, 34509u), Struct_2(Struct_1(vec4<bool>(false, false, true, false), 1i, vec4<u32>(50710u, 2257u, 47171u, 0u), false, 0u), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec4<bool>(true, true, false, false), i32(-2147483648), vec4<u32>(1u, 1u, 42270u, 0u), false, 9778u), vec3<bool>(false, false, false))), Struct_4(vec4<u32>(26905u, 73358u, 1u, 0u), Struct_3(Struct_1(vec4<bool>(true, false, false, true), -44246i, vec4<u32>(4294967295u, 27876u, 1u, 4294967295u), false, 17829u), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 53424i, vec4<u32>(98832u, 4294967295u, 4294967295u, 1u), false, 30370u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 6984i, vec4<u32>(5973u, 0u, 4294967295u, 21269u), false, 1u), vec3<bool>(true, false, false)))), Struct_5(Struct_2(Struct_1(vec4<bool>(true, false, true, true), 2451i, vec4<u32>(0u, 8850u, 1u, 1u), true, 3851u), vec3<bool>(false, false, false)), Struct_4(vec4<u32>(0u, 4294967295u, 1u, 2389u), Struct_3(Struct_1(vec4<bool>(false, false, false, false), 0i, vec4<u32>(42976u, 0u, 104139u, 1u), true, 34326u), Struct_2(Struct_1(vec4<bool>(true, false, true, true), -5915i, vec4<u32>(0u, 35986u, 28677u, 1u), false, 1u), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), -60566i, vec4<u32>(14494u, 16338u, 29591u, 320u), false, 1u), vec3<bool>(false, true, false))), Struct_4(vec4<u32>(88817u, 45528u, 45283u, 0u), Struct_3(Struct_1(vec4<bool>(false, true, false, true), i32(-2147483648), vec4<u32>(69223u, 4294967295u, 4294967295u, 1u), false, 48413u), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 2147483647i, vec4<u32>(20597u, 1u, 1u, 28103u), true, 0u), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), -10203i, vec4<u32>(2037u, 34529u, 1u, 0u), true, 1703u), vec3<bool>(false, false, true)))), Struct_5(Struct_2(Struct_1(vec4<bool>(false, true, false, false), -1i, vec4<u32>(5090u, 100287u, 0u, 17890u), true, 1u), vec3<bool>(false, true, false)), Struct_4(vec4<u32>(4294967295u, 14241u, 62689u, 1u), Struct_3(Struct_1(vec4<bool>(true, true, false, true), 2147483647i, vec4<u32>(0u, 0u, 0u, 20636u), true, 27913u), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 17429i, vec4<u32>(1u, 14937u, 27915u, 1u), false, 4294967295u), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), -1i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 24409u), true, 1u), vec3<bool>(false, false, false))), Struct_4(vec4<u32>(4294967295u, 75954u, 0u, 0u), Struct_3(Struct_1(vec4<bool>(false, true, true, true), 1i, vec4<u32>(34695u, 83639u, 9932u, 48176u), true, 4294967295u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), -1i, vec4<u32>(27924u, 4294967295u, 23004u, 4294967295u), false, 4294967295u), vec3<bool>(false, false, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), i32(-2147483648), vec4<u32>(4294967295u, 1u, 21609u, 3600u), true, 0u), vec3<bool>(true, true, true)))), Struct_5(Struct_2(Struct_1(vec4<bool>(true, true, false, false), -1i, vec4<u32>(0u, 4294967295u, 49735u, 1u), false, 22259u), vec3<bool>(true, true, true)), Struct_4(vec4<u32>(59947u, 30574u, 2741u, 4294967295u), Struct_3(Struct_1(vec4<bool>(true, false, false, false), -35146i, vec4<u32>(1u, 36563u, 84473u, 93542u), false, 37683u), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 2147483647i, vec4<u32>(8677u, 0u, 0u, 0u), true, 30879u), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 58812i, vec4<u32>(7009u, 0u, 0u, 26317u), true, 48268u), vec3<bool>(true, false, false))), Struct_4(vec4<u32>(1u, 4294967295u, 49103u, 4222u), Struct_3(Struct_1(vec4<bool>(false, true, false, false), -1i, vec4<u32>(7905u, 16953u, 31979u, 4294967295u), true, 4294967295u), Struct_2(Struct_1(vec4<bool>(false, false, true, false), 2147483647i, vec4<u32>(1u, 61031u, 0u, 1u), false, 14216u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec4<bool>(true, false, false, true), -1i, vec4<u32>(1u, 4294967295u, 48966u, 4294967295u), true, 9505u), vec3<bool>(false, false, true)))), Struct_5(Struct_2(Struct_1(vec4<bool>(false, false, true, true), 1i, vec4<u32>(35841u, 4150u, 8617u, 4294967295u), true, 1u), vec3<bool>(false, false, true)), Struct_4(vec4<u32>(63177u, 1u, 1u, 11709u), Struct_3(Struct_1(vec4<bool>(false, false, false, false), 0i, vec4<u32>(0u, 4294967295u, 0u, 81487u), true, 12814u), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 7290i, vec4<u32>(35752u, 31600u, 1u, 13936u), false, 0u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), -1i, vec4<u32>(4294967295u, 24223u, 10250u, 14035u), false, 21847u), vec3<bool>(false, true, false))), Struct_4(vec4<u32>(5652u, 23464u, 0u, 4569u), Struct_3(Struct_1(vec4<bool>(true, false, true, false), 7510i, vec4<u32>(1u, 4294967295u, 18292u, 4294967295u), false, 23532u), Struct_2(Struct_1(vec4<bool>(true, false, true, false), -25869i, vec4<u32>(108252u, 13042u, 114160u, 81723u), true, 4294967295u), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -1i, vec4<u32>(13843u, 18107u, 1u, 4294967295u), false, 25156u), vec3<bool>(false, false, true)))), Struct_5(Struct_2(Struct_1(vec4<bool>(false, false, true, false), -5123i, vec4<u32>(42301u, 4294967295u, 1u, 12526u), true, 65660u), vec3<bool>(false, true, false)), Struct_4(vec4<u32>(9855u, 0u, 61738u, 52891u), Struct_3(Struct_1(vec4<bool>(true, true, false, true), -22321i, vec4<u32>(1u, 4294967295u, 1u, 1804u), false, 10112u), Struct_2(Struct_1(vec4<bool>(true, true, false, true), -23963i, vec4<u32>(0u, 4294967295u, 0u, 83037u), true, 29481u), vec3<bool>(false, false, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -1i, vec4<u32>(50353u, 6845u, 9844u, 4294967295u), true, 29099u), vec3<bool>(false, true, false))), Struct_4(vec4<u32>(0u, 72568u, 1u, 15593u), Struct_3(Struct_1(vec4<bool>(false, false, false, true), 50906i, vec4<u32>(863u, 25100u, 1u, 105396u), false, 4294967295u), Struct_2(Struct_1(vec4<bool>(true, true, false, false), -1i, vec4<u32>(34481u, 0u, 1u, 0u), true, 51627u), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 0i, vec4<u32>(0u, 14521u, 4294967295u, 7999u), true, 82974u), vec3<bool>(true, true, false)))), Struct_5(Struct_2(Struct_1(vec4<bool>(false, true, true, false), -16347i, vec4<u32>(4294967295u, 4294967295u, 13020u, 1u), false, 4294967295u), vec3<bool>(false, false, false)), Struct_4(vec4<u32>(60402u, 26971u, 2749u, 23375u), Struct_3(Struct_1(vec4<bool>(true, false, false, false), 1i, vec4<u32>(0u, 1u, 0u, 44516u), false, 26401u), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 2147483647i, vec4<u32>(0u, 72492u, 4294967295u, 99729u), false, 4294967295u), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), -1i, vec4<u32>(16080u, 48543u, 70958u, 4294967295u), true, 8758u), vec3<bool>(true, false, true))), Struct_4(vec4<u32>(17979u, 0u, 639u, 0u), Struct_3(Struct_1(vec4<bool>(true, true, true, true), i32(-2147483648), vec4<u32>(13481u, 0u, 38960u, 0u), false, 62870u), Struct_2(Struct_1(vec4<bool>(false, true, true, true), -16289i, vec4<u32>(4294967295u, 0u, 0u, 6430u), true, 4294967295u), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), -7692i, vec4<u32>(8652u, 33747u, 1u, 4294967295u), true, 0u), vec3<bool>(true, false, true)))), Struct_5(Struct_2(Struct_1(vec4<bool>(false, true, true, true), -1i, vec4<u32>(0u, 1u, 12620u, 85702u), false, 4294967295u), vec3<bool>(false, true, false)), Struct_4(vec4<u32>(49578u, 301u, 18741u, 0u), Struct_3(Struct_1(vec4<bool>(true, true, true, false), 16071i, vec4<u32>(38862u, 46136u, 4294967295u, 0u), true, 0u), Struct_2(Struct_1(vec4<bool>(true, true, true, false), 16766i, vec4<u32>(0u, 61726u, 0u, 51436u), false, 1u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 0i, vec4<u32>(70369u, 0u, 11890u, 29516u), false, 30600u), vec3<bool>(true, true, false))), Struct_4(vec4<u32>(52774u, 51581u, 24023u, 54983u), Struct_3(Struct_1(vec4<bool>(true, false, true, true), i32(-2147483648), vec4<u32>(1u, 1u, 20685u, 0u), false, 1u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 33783i, vec4<u32>(0u, 1u, 30035u, 34145u), true, 0u), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 76552i, vec4<u32>(2130u, 4294967295u, 0u, 4294967295u), true, 30447u), vec3<bool>(false, true, false)))), Struct_5(Struct_2(Struct_1(vec4<bool>(true, true, false, false), i32(-2147483648), vec4<u32>(25704u, 28801u, 4294967295u, 4294967295u), true, 0u), vec3<bool>(false, false, true)), Struct_4(vec4<u32>(83217u, 50100u, 1803u, 83838u), Struct_3(Struct_1(vec4<bool>(true, false, false, true), -31719i, vec4<u32>(42541u, 48958u, 1u, 1u), false, 0u), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 2147483647i, vec4<u32>(99189u, 22017u, 1u, 4294967295u), true, 39541u), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -1i, vec4<u32>(1u, 0u, 4294967295u, 43782u), true, 74921u), vec3<bool>(true, true, false))), Struct_4(vec4<u32>(43800u, 0u, 37030u, 33762u), Struct_3(Struct_1(vec4<bool>(true, false, true, false), 1i, vec4<u32>(14997u, 4294967295u, 4294967295u, 1u), true, 460u), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 1i, vec4<u32>(85922u, 1u, 88556u, 81465u), true, 1u), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 0i, vec4<u32>(40191u, 0u, 1u, 58817u), false, 0u), vec3<bool>(true, true, false)))), Struct_5(Struct_2(Struct_1(vec4<bool>(false, true, false, false), -39740i, vec4<u32>(10150u, 1u, 1u, 1u), true, 8555u), vec3<bool>(true, true, true)), Struct_4(vec4<u32>(51848u, 20899u, 6016u, 31428u), Struct_3(Struct_1(vec4<bool>(true, true, true, false), 0i, vec4<u32>(4294967295u, 23111u, 0u, 37147u), true, 0u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -52728i, vec4<u32>(116159u, 62285u, 75969u, 78409u), false, 4294967295u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), i32(-2147483648), vec4<u32>(4294967295u, 36273u, 15613u, 1u), true, 84805u), vec3<bool>(true, false, true))), Struct_4(vec4<u32>(49079u, 21405u, 31420u, 1u), Struct_3(Struct_1(vec4<bool>(false, false, true, true), 2147483647i, vec4<u32>(28011u, 1u, 44850u, 0u), false, 37130u), Struct_2(Struct_1(vec4<bool>(true, false, false, false), i32(-2147483648), vec4<u32>(10296u, 34928u, 1u, 54604u), true, 0u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 53400i, vec4<u32>(4294967295u, 64934u, 4294967295u, 0u), true, 129171u), vec3<bool>(true, false, false)))));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32) -> vec4<u32> {
    return abs(firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0, arg_0, 26870u, 4294967295u), ~(~vec4<u32>(u_input.b, 26444u, arg_0, 36476u)))));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(max(abs(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 814u, 17366u), vec4<u32>(589u, 16653u, 105990u, 15287u)))), ~select(func_2(u_input.b), vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b), any(vec2<bool>(true, false)))), Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, false)), ~0i, vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(360u, u_input.b, u_input.a.x), vec3<u32>(6649u, 31209u, 1u))), true, _wgslsmith_clamp_u32(u_input.b ^ 0u, ~u_input.b, ~u_input.b)), Struct_2(Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), -1i, _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 78143u, 1u)), true, 6640u), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -_wgslsmith_mod_i32(-2147483647i, -1i), ~(~vec4<u32>(57963u, u_input.b, u_input.a.x, 4294967295u)), any(vec2<bool>(false, false)), 11085u | (u_input.a.x >> (u_input.a.x % 32u))), vec3<bool>(true, true, true)));
    var var_1 = var_0;
    let var_2 = any(var_1.b.b.a.a.yx);
    var var_3 = 1i;
    let var_4 = 1u;
    return var_0;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_3(func_1().c.a, Struct_2(Struct_1(select(!arg_0.b.a.a, !arg_0.a.a, true), arg_0.a.b, arg_0.a.c, arg_0.a.d, (25257u << (1u % 32u)) >> (arg_0.a.c.x % 32u)), vec3<bool>(!(arg_2 & true), arg_0.a.a.x, true)));
    let var_1 = arg_0.a.c.xyw;
    var var_2 = select(var_0.b.b.xy, vec2<bool>(var_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1023f * 337f) - 1320f) <= arg_1), !select(!vec2<bool>(false, arg_0.a.d), select(select(arg_0.a.a.xy, vec2<bool>(arg_0.b.b.x, true), true), select(vec2<bool>(var_0.a.a.x, arg_2), vec2<bool>(var_0.b.a.d, false), arg_0.a.a.x), arg_0.a.a.zw), arg_0.a.a.zz));
    var var_3 = -1656f;
    var var_4 = Struct_2(Struct_1(vec4<bool>(true, !(u_input.b <= 9330u), true, !(arg_0.a.d && false)), -1i, var_0.b.a.c, false, _wgslsmith_mult_u32(~_wgslsmith_div_u32(4294967295u, 1u), ~func_2(var_1.x).x)), arg_0.a.a.xyx);
    return func_1().c.a.c.xw << (countOneBits(abs(~var_4.a.c.xw & ~var_1.xy)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_5 {
    let var_0 = arg_2.c;
    global0 = array<Struct_5, 10>();
    global0 = array<Struct_5, 10>();
    var var_1 = arg_2.b;
    let var_2 = -19714i == _wgslsmith_div_i32(-_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2.c.a.b, var_1.a.b), -18877i), (arg_2.b.a.b ^ (var_0.a.b >> (0u % 32u))) | (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b, 1i, -1i), vec3<i32>(var_0.a.b, 2147483647i, 1i)) << (var_1.a.c.x % 32u)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, ~max(8289u, ~arg_3.x), arg_3.x, 1u), ~(arg_1.c >> (arg_2.c.a.c % vec4<u32>(32u)))), 10u)];
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec4<bool>(true, select(!arg_0.c.c.b.x, !any(arg_0.a.a.a), false), !arg_0.a.a.d, arg_0.c.c.a.a.x);
    let var_1 = _wgslsmith_f_op_f32(min(arg_2.x, 996f));
    global0 = array<Struct_5, 10>();
    var_0 = select(!vec4<bool>(var_0.x & all(vec3<bool>(false, false, arg_0.c.b.b.a.a.x)), all(vec4<bool>(true, true, true, true)), true, var_0.x), arg_0.b.c.a.a, !(!(!all(arg_0.c.b.a.a.zwz))));
    var_0 = arg_0.a.a.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1900f * var_1) - _wgslsmith_f_op_f32(-1055f - -455f)), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))) * 771f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, 827f)), Struct_1(vec4<bool>(false, false, true, true), -2147483647i, vec4<u32>(53594u, 1u, 1u, 61319u), true, 38336u), func_1(), func_3(Struct_3(Struct_1(vec4<bool>(false, true, true, false), 46368i, vec4<u32>(u_input.b, 112307u, 2422u, 75977u), true, u_input.b), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 1i, vec4<u32>(0u, 1509u, 10100u, 35080u), false, 0u), vec3<bool>(false, true, false))), 1449f, true)), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-111f, 294f), vec2<f32>(861f, -736f))))))), 2667f);
    var var_1 = select(_wgslsmith_mod_u32(u_input.a.x ^ 1u, 24903u), 40298u & u_input.b, all(vec2<bool>(true, true)));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x))), vec2<f32>(var_0.x, 948f))))) + vec2<f32>(-305f, _wgslsmith_f_op_f32(func_5(func_4(vec2<f32>(1024f, -1124f), Struct_1(vec4<bool>(false, false, true, true), 1i, vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), true, 92827u), Struct_4(vec4<u32>(39140u, u_input.a.x, 1u, u_input.a.x), Struct_3(Struct_1(vec4<bool>(false, false, true, true), -19733i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), false, u_input.a.x), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 12627i, vec4<u32>(49864u, u_input.a.x, u_input.b, 4294967295u), false, u_input.b), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 21704i, vec4<u32>(u_input.b, 0u, 0u, u_input.b), true, 30438u), vec3<bool>(true, false, false))), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(u_input.b, 10652u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1244f, var_0.x))))))), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(1f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, 902f))), Struct_1(vec4<bool>(true, true, true, true), min(~(-20429i), 1i << (1u % 32u)), _wgslsmith_mult_vec4_u32(func_2(u_input.a.x), ~vec4<u32>(1u, u_input.a.x, 0u, 1u)), true, min(_wgslsmith_add_u32(u_input.a.x, u_input.b), max(u_input.b, u_input.a.x))), Struct_4(vec4<u32>(~94164u, 4294967295u & u_input.b, 96375u, ~u_input.a.x), Struct_3(Struct_1(vec4<bool>(true, true, true, true), -1i, vec4<u32>(4294967295u, u_input.b, 0u, 24764u), false, 39413u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 1i, vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b), true, 4294967295u), vec3<bool>(true, true, false))), func_4(vec2<f32>(var_0.x, 761f), Struct_1(vec4<bool>(true, false, true, false), -44575i, vec4<u32>(15849u, u_input.a.x, 18441u, 4189u), false, 5627u), func_4(vec2<f32>(var_0.x, var_0.x), Struct_1(vec4<bool>(true, true, false, true), -16000i, vec4<u32>(1802u, 4294967295u, 48043u, u_input.a.x), true, u_input.a.x), Struct_4(vec4<u32>(0u, u_input.b, u_input.b, 4294967295u), Struct_3(Struct_1(vec4<bool>(false, true, false, true), 0i, vec4<u32>(35052u, u_input.a.x, 12389u, u_input.b), true, 1340u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 2147483647i, vec4<u32>(u_input.a.x, 18853u, 1u, 51068u), false, 0u), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 1i, vec4<u32>(4294967295u, u_input.b, u_input.a.x, 9359u), true, u_input.b), vec3<bool>(true, true, false))), u_input.a).c, vec2<u32>(82348u, u_input.a.x)).b.c), u_input.a).c.c.a, func_1(), ~vec2<u32>(u_input.b, ~func_2(u_input.a.x).x)).a.a;
    var var_3 = ((2147483647i >> (var_2.e % 32u)) ^ _wgslsmith_dot_vec2_i32(select(firstLeadingBit(vec2<i32>(-1i, var_2.b)), countOneBits(vec2<i32>(-2147483647i, -1i)), vec2<bool>(true, true)), vec2<i32>(~var_2.b, var_2.b))) << (var_2.c.x % 32u);
    let var_4 = func_1().c;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-458f, var_0.x)), _wgslsmith_f_op_f32(var_0.x + 401f))) * _wgslsmith_f_op_f32(f32(-1f) * -415f)));
    var_2 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c.yy, 40034u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_5), 926f)))));
}

