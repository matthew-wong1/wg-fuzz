struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-438f, -1000f, 1045f), vec3<f32>(-580f, 1092f, 1000f), vec3<f32>(979f, 1000f, -781f), vec3<f32>(522f, 741f, 577f), vec3<f32>(-1144f, 851f, 730f), vec3<f32>(-478f, -173f, 328f), vec3<f32>(1473f, -1943f, -206f), vec3<f32>(143f, 291f, -660f), vec3<f32>(408f, 1359f, -633f), vec3<f32>(-155f, 338f, -2130f), vec3<f32>(149f, -315f, -404f), vec3<f32>(-900f, 139f, -1258f), vec3<f32>(-216f, -780f, -785f), vec3<f32>(-102f, 654f, 740f), vec3<f32>(-909f, -708f, 917f), vec3<f32>(683f, -959f, 991f), vec3<f32>(-853f, -1837f, 1581f), vec3<f32>(1000f, -610f, -626f), vec3<f32>(-217f, 583f, -1000f), vec3<f32>(950f, 192f, -2467f), vec3<f32>(-322f, -174f, 1000f), vec3<f32>(-315f, 350f, 142f), vec3<f32>(607f, -2173f, 1450f), vec3<f32>(-1596f, 1146f, -1000f), vec3<f32>(-1225f, 954f, 257f), vec3<f32>(-720f, 960f, -1165f), vec3<f32>(161f, 766f, 336f));

var<private> global2: bool;

var<private> global3: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(1u, false, true, vec3<bool>(true, true, true), vec3<i32>(38569i, 0i, i32(-2147483648))), -25292i, -266f, Struct_2(vec2<u32>(4294967295u, 29420u), Struct_1(4294967295u, false, true, vec3<bool>(false, true, true), vec3<i32>(-36710i, -22242i, 2147483647i))), Struct_2(vec2<u32>(4294967295u, 11839u), Struct_1(23065u, true, false, vec3<bool>(true, true, false), vec3<i32>(13510i, 12885i, -33320i)))), Struct_3(Struct_1(2628u, true, false, vec3<bool>(false, true, true), vec3<i32>(-1i, 42744i, 2685i)), -23246i, -458f, Struct_2(vec2<u32>(82669u, 100056u), Struct_1(0u, false, false, vec3<bool>(true, true, false), vec3<i32>(11360i, 1i, -1i))), Struct_2(vec2<u32>(1u, 27560u), Struct_1(16959u, false, true, vec3<bool>(true, false, false), vec3<i32>(-31518i, -7873i, -9289i)))), Struct_3(Struct_1(0u, false, false, vec3<bool>(false, false, false), vec3<i32>(-1i, i32(-2147483648), -36446i)), -5985i, -924f, Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(83602u, false, true, vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), -1i, 0i))), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(0u, false, true, vec3<bool>(false, true, true), vec3<i32>(-1i, -1i, 13795i)))), Struct_3(Struct_1(4294967295u, true, true, vec3<bool>(false, false, true), vec3<i32>(-1i, 0i, 39756i)), 1450i, -798f, Struct_2(vec2<u32>(2011u, 1u), Struct_1(44223u, false, true, vec3<bool>(false, false, true), vec3<i32>(-8671i, -5853i, -20805i))), Struct_2(vec2<u32>(52740u, 1670u), Struct_1(0u, false, true, vec3<bool>(true, false, false), vec3<i32>(-1i, -1i, 34342i)))), Struct_3(Struct_1(0u, true, false, vec3<bool>(true, false, true), vec3<i32>(1i, -6869i, i32(-2147483648))), 2147483647i, 469f, Struct_2(vec2<u32>(41847u, 0u), Struct_1(7057u, false, true, vec3<bool>(false, true, true), vec3<i32>(-8405i, 2147483647i, 6873i))), Struct_2(vec2<u32>(402u, 21032u), Struct_1(0u, true, false, vec3<bool>(true, true, true), vec3<i32>(0i, -1i, -1i)))), Struct_3(Struct_1(50591u, true, false, vec3<bool>(true, true, false), vec3<i32>(-2195i, -5314i, -12359i)), -1i, 1230f, Struct_2(vec2<u32>(4294967295u, 36855u), Struct_1(42741u, true, false, vec3<bool>(false, true, false), vec3<i32>(0i, 0i, 2147483647i))), Struct_2(vec2<u32>(20204u, 4294967295u), Struct_1(1u, false, true, vec3<bool>(true, false, false), vec3<i32>(-1i, 41324i, -1i)))), Struct_3(Struct_1(42999u, true, true, vec3<bool>(false, false, false), vec3<i32>(-14412i, -3780i, 2147483647i)), i32(-2147483648), 396f, Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(4294967295u, true, false, vec3<bool>(false, false, false), vec3<i32>(-7439i, -42131i, -31209i))), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(785u, true, true, vec3<bool>(false, true, true), vec3<i32>(1i, 26526i, 4239i)))), Struct_3(Struct_1(6311u, true, false, vec3<bool>(true, true, true), vec3<i32>(1i, 60519i, 0i)), 4048i, 585f, Struct_2(vec2<u32>(51068u, 4294967295u), Struct_1(1u, true, true, vec3<bool>(true, true, false), vec3<i32>(-22636i, -1i, 1i))), Struct_2(vec2<u32>(33956u, 0u), Struct_1(0u, true, false, vec3<bool>(false, false, true), vec3<i32>(-31504i, i32(-2147483648), 0i)))), Struct_3(Struct_1(4294967295u, false, false, vec3<bool>(true, false, true), vec3<i32>(46245i, 32801i, i32(-2147483648))), -12677i, 310f, Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(1u, false, true, vec3<bool>(true, true, false), vec3<i32>(0i, i32(-2147483648), -40220i))), Struct_2(vec2<u32>(43574u, 0u), Struct_1(4294967295u, true, false, vec3<bool>(true, true, true), vec3<i32>(47293i, -52506i, 37005i)))), Struct_3(Struct_1(50347u, false, false, vec3<bool>(false, true, true), vec3<i32>(-35871i, 2147483647i, 40462i)), 2147483647i, 1491f, Struct_2(vec2<u32>(4294967295u, 64590u), Struct_1(0u, true, false, vec3<bool>(true, true, false), vec3<i32>(36719i, -4536i, 2147483647i))), Struct_2(vec2<u32>(0u, 29787u), Struct_1(80665u, false, true, vec3<bool>(false, true, true), vec3<i32>(2351i, 5147i, i32(-2147483648))))), Struct_3(Struct_1(6124u, false, false, vec3<bool>(false, false, false), vec3<i32>(2147483647i, -12718i, 73013i)), -1i, 1194f, Struct_2(vec2<u32>(44090u, 1u), Struct_1(42079u, true, false, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), -2898i, i32(-2147483648)))), Struct_2(vec2<u32>(31859u, 28817u), Struct_1(5142u, false, true, vec3<bool>(true, false, false), vec3<i32>(-1i, 2147483647i, 45622i)))), Struct_3(Struct_1(219u, true, true, vec3<bool>(true, true, true), vec3<i32>(1i, 0i, 0i)), 2147483647i, -1955f, Struct_2(vec2<u32>(36205u, 0u), Struct_1(0u, false, true, vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -1i, -15900i))), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(4294967295u, false, true, vec3<bool>(false, true, true), vec3<i32>(-41681i, 1i, 1i)))), Struct_3(Struct_1(9829u, false, false, vec3<bool>(true, true, true), vec3<i32>(33834i, i32(-2147483648), 71827i)), -22731i, 1000f, Struct_2(vec2<u32>(0u, 8287u), Struct_1(14522u, true, true, vec3<bool>(false, true, false), vec3<i32>(61748i, -13000i, i32(-2147483648)))), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(4294967295u, false, false, vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), -1i, 13644i)))), Struct_3(Struct_1(0u, false, true, vec3<bool>(true, true, false), vec3<i32>(-1i, 20896i, i32(-2147483648))), -27284i, 1354f, Struct_2(vec2<u32>(94326u, 18659u), Struct_1(4705u, false, true, vec3<bool>(false, true, false), vec3<i32>(-69004i, i32(-2147483648), i32(-2147483648)))), Struct_2(vec2<u32>(4294967295u, 132544u), Struct_1(1u, false, false, vec3<bool>(false, true, true), vec3<i32>(2147483647i, 1i, -17161i)))), Struct_3(Struct_1(23570u, true, false, vec3<bool>(true, false, false), vec3<i32>(1i, 2147483647i, 0i)), 16108i, 2368f, Struct_2(vec2<u32>(8898u, 75639u), Struct_1(1u, false, true, vec3<bool>(false, true, true), vec3<i32>(27277i, 0i, 345i))), Struct_2(vec2<u32>(0u, 47645u), Struct_1(1u, true, true, vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), 2147483647i, -1i)))), Struct_3(Struct_1(12416u, true, true, vec3<bool>(true, false, false), vec3<i32>(28603i, -51972i, 9808i)), 1i, 904f, Struct_2(vec2<u32>(7329u, 4294967295u), Struct_1(4294967295u, true, false, vec3<bool>(true, true, true), vec3<i32>(-70647i, i32(-2147483648), -1i))), Struct_2(vec2<u32>(1u, 31431u), Struct_1(0u, true, false, vec3<bool>(true, false, true), vec3<i32>(50933i, 0i, 2147483647i)))), Struct_3(Struct_1(1u, false, false, vec3<bool>(true, false, true), vec3<i32>(17432i, 1i, 1i)), 0i, 534f, Struct_2(vec2<u32>(28597u, 35463u), Struct_1(14429u, false, true, vec3<bool>(false, false, true), vec3<i32>(62453i, -33686i, i32(-2147483648)))), Struct_2(vec2<u32>(0u, 66085u), Struct_1(1u, true, false, vec3<bool>(true, true, true), vec3<i32>(56124i, 0i, 45626i)))), Struct_3(Struct_1(16560u, true, true, vec3<bool>(false, false, false), vec3<i32>(22758i, 1i, 62776i)), -3138i, 1946f, Struct_2(vec2<u32>(36789u, 21214u), Struct_1(8779u, true, false, vec3<bool>(true, true, true), vec3<i32>(-19468i, -1i, -1i))), Struct_2(vec2<u32>(1u, 965u), Struct_1(4294967295u, false, true, vec3<bool>(true, false, false), vec3<i32>(-1i, -31854i, -1i)))), Struct_3(Struct_1(65940u, true, false, vec3<bool>(true, true, false), vec3<i32>(27710i, 3190i, -339i)), 0i, 562f, Struct_2(vec2<u32>(0u, 1u), Struct_1(44516u, true, true, vec3<bool>(false, true, false), vec3<i32>(-36538i, 2147483647i, -1i))), Struct_2(vec2<u32>(11545u, 44389u), Struct_1(0u, false, false, vec3<bool>(false, false, false), vec3<i32>(-46789i, 22347i, i32(-2147483648))))));

var<private> global4: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(1u, true, false, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), -11806i, -30170i)), -14394i, -800f, Struct_2(vec2<u32>(1u, 1433u), Struct_1(51814u, true, false, vec3<bool>(true, true, false), vec3<i32>(13239i, 57026i, -60267i))), Struct_2(vec2<u32>(54931u, 4294967295u), Struct_1(0u, true, true, vec3<bool>(true, true, false), vec3<i32>(-1i, 1i, 2147483647i)))), Struct_3(Struct_1(56037u, true, false, vec3<bool>(false, true, false), vec3<i32>(17793i, -3801i, 0i)), 0i, -1270f, Struct_2(vec2<u32>(33888u, 1u), Struct_1(73525u, true, false, vec3<bool>(true, false, true), vec3<i32>(2147483647i, -45587i, i32(-2147483648)))), Struct_2(vec2<u32>(2661u, 0u), Struct_1(4294967295u, true, true, vec3<bool>(true, false, true), vec3<i32>(1i, 1i, -1i)))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = any(vec2<bool>(true, true)) & select(1u != u_input.a, true, true);
    let var_1 = _wgslsmith_div_u32(u_input.a, 62530u) ^ ~(~(~u_input.a));
    return var_0 || all(!select(vec3<bool>(var_0, var_0, true), !vec3<bool>(true, false, var_0), vec3<bool>(false, true, var_0)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_3 {
    global2 = true;
    global1 = array<vec3<f32>, 27>();
    let var_0 = any(select(vec4<bool>(false, true, func_3(arg_2.x), arg_0), select(vec4<bool>(u_input.b.x == 0u, arg_0, true, true & arg_0), vec4<bool>(arg_0, arg_0, all(vec4<bool>(arg_0, arg_0, false, arg_0)), arg_0), arg_0), select(!select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, true, arg_0, false), true), !(!vec4<bool>(false, false, true, arg_0)), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, false, true), all(vec4<bool>(false, arg_0, false, arg_0))))));
    var var_1 = global4[_wgslsmith_index_u32(~(~35575u), 2u)];
    global3 = array<Struct_3, 19>();
    return global4[_wgslsmith_index_u32(~((var_1.e.b.a | abs(67929u)) >> (abs(reverseBits(~28213u)) % 32u)), 2u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, _wgslsmith_add_i32(arg_1.b.e.x & arg_2.b, _wgslsmith_mult_i32(arg_0.e.b.e.x, 32052i)), ~_wgslsmith_mult_i32(arg_2.a.e.x, 1i)) << (firstTrailingBit(vec3<u32>(1u, firstTrailingBit(arg_2.d.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(29926u, 60521u), vec2<u32>(25407u, 82307u)))) % vec3<u32>(32u)), arg_1.b.e);
    var_0 = 2147483647i;
    return vec2<bool>(select(true, all(vec3<bool>(true, true, any(vec2<bool>(arg_0.d.b.d.x, arg_0.a.c)))), !(!(arg_0.e.b.c && true))), arg_1.b.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_1(u_input.b.x, true != !((-1i | arg_0.x) > countOneBits(-31592i)), 0u > ~(~_wgslsmith_mult_u32(u_input.b.x, 99440u)), vec3<bool>(all(func_4(func_2(true, arg_1.x, vec3<i32>(arg_0.x, 31916i, 34574i), vec2<f32>(1213f, -1512f)), func_2(true, global0[_wgslsmith_index_u32(1u, 13u)], vec3<i32>(-16193i, arg_0.x, arg_0.x), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)])).e, global3[_wgslsmith_index_u32(1u, 19u)], vec2<f32>(arg_1.x, -231f))), true, any(vec3<bool>(true, true, true)) && any(vec3<bool>(true, true, true))), select(countOneBits(~vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), vec3<i32>(firstLeadingBit(~arg_0.x), _wgslsmith_sub_i32(select(-26134i, arg_0.x, false), func_2(false, arg_1.x, vec3<i32>(-54396i, arg_0.x, arg_0.x), arg_1).a.e.x), countOneBits(arg_0.x) & 0i), true));
    var var_1 = -vec4<i32>(57638i, 1i, -max(var_0.e.x >> (0u % 32u), 70745i), _wgslsmith_add_i32(10275i, ~0i));
    global2 = false;
    let var_2 = ~select(_wgslsmith_clamp_vec4_u32(u_input.b, ~(~u_input.b), vec4<u32>(4294967295u, 1u, 1u, ~var_0.a)), ~vec4<u32>(var_0.a, ~38765u, 1u, func_2(true, global0[_wgslsmith_index_u32(var_0.a, 13u)], vec3<i32>(1i, var_0.e.x, arg_0.x), vec2<f32>(-1061f, -671f)).d.b.a), var_0.d.x);
    let var_3 = false;
    return vec2<u32>(reverseBits(~min(15516u, u_input.a >> (var_2.x % 32u))), abs(~_wgslsmith_mod_u32(u_input.a, var_0.a)) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 2>();
    var var_0 = Struct_2(func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, i32(-1i) * -2147483647i), vec2<i32>(1i << (u_input.a % 32u), ~1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1374f, global0[_wgslsmith_index_u32(24079u, 13u)]), vec2<f32>(global0[_wgslsmith_index_u32(31573u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)])))))), Struct_1(u_input.b.x, func_2(func_3(1i), _wgslsmith_f_op_f32(sign(693f)), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, 5343i, -5355i), vec3<i32>(1i, 1206i, 12492i)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1500f, -233f), _wgslsmith_f_op_vec2_f32(vec2<f32>(552f, -299f) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(53440u, 13u)]))))).a.b, true, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), vec3<i32>(_wgslsmith_sub_i32(-33089i, -2147483647i), countOneBits(-96204i), 2147483647i >> (u_input.a % 32u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 32517u) & vec3<u32>(u_input.b.x, 1u, 86125u), ~u_input.b.yxy) % vec3<u32>(32u))));
    global4 = array<Struct_3, 2>();
    var var_1 = func_2(global0[_wgslsmith_index_u32(4294967295u, 13u)] > 1839f, -1025f, vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -var_0.b.e.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.e.x, 4627i, var_0.b.e.x), vec3<i32>(1i, var_0.b.e.x, var_0.b.e.x))), func_2(!var_0.b.b, 167f, var_0.b.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(246f, -358f) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]))).b), var_0.b.e.x, -(~6471i) | var_0.b.e.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1195f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).e;
    var_1 = func_2(func_3(~select(_wgslsmith_clamp_i32(-27318i, -2147483647i, var_0.b.e.x), _wgslsmith_sub_i32(var_1.b.e.x, 28146i), var_1.b.c || false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 13u)]), -142f)), ((~var_1.b.e | _wgslsmith_div_vec3_i32(var_0.b.e, vec3<i32>(1i, var_1.b.e.x, var_0.b.e.x))) ^ -(vec3<i32>(-1i, var_1.b.e.x, var_1.b.e.x) & vec3<i32>(11101i, -2147483647i, var_0.b.e.x))) >> (vec3<u32>(~func_1(var_1.b.e.xz, vec2<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)])).x, u_input.a, var_1.b.a) % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(3032u, 13u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]) + vec2<f32>(-1557f, global0[_wgslsmith_index_u32(39137u, 13u)]))))), vec2<f32>(func_2(false, _wgslsmith_f_op_f32(221f * -2048f), vec3<i32>(-37514i, var_1.b.e.x, -16422i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 728f)))).c, _wgslsmith_f_op_f32(floor(func_2(true, global0[_wgslsmith_index_u32(var_0.b.a, 13u)], var_1.b.e, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], -1998f)).c))))).e;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, -firstTrailingBit(2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 13u)], 1328f, true)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.x, 13u)] * 240f), _wgslsmith_f_op_f32(-143f + -610f), _wgslsmith_f_op_f32(ceil(138f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 310f)))))), firstLeadingBit(~var_1.b.e.zy ^ ~vec2<i32>(var_0.b.e.x, -11214i)));
}

