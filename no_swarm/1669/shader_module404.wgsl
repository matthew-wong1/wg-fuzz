struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 244f;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec2<i32>(1i, -1i), vec4<u32>(4294967295u, 62437u, 48727u, 12050u), 4294967295u, 83096i, vec4<i32>(-1i, i32(-2147483648), -8639i, -77297i)), true, Struct_1(vec2<i32>(2147483647i, 7246i), vec4<u32>(79631u, 14341u, 0u, 90196u), 0u, -29184i, vec4<i32>(1i, 1i, 1551i, -1i)), -2739f, 952f), Struct_2(Struct_1(vec2<i32>(-56516i, 0i), vec4<u32>(4294967295u, 45265u, 1u, 1u), 4294967295u, -44709i, vec4<i32>(-23594i, -19703i, -1i, -1i)), false, Struct_1(vec2<i32>(-1i, -1i), vec4<u32>(1u, 4294967295u, 0u, 25444u), 0u, 14011i, vec4<i32>(-11215i, -1i, -20200i, 9122i)), -858f, 1290f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<u32>(31655u, 0u, 4294967295u, 4294967295u), 4662u, 1i, vec4<i32>(-22959i, 0i, 51761i, 21558i)), true, Struct_1(vec2<i32>(21133i, 66967i), vec4<u32>(4294967295u, 42137u, 4294967295u, 0u), 20516u, 1i, vec4<i32>(2147483647i, 1i, 0i, -7292i)), -703f, -586f), Struct_2(Struct_1(vec2<i32>(-110i, 1i), vec4<u32>(23690u, 4294967295u, 7717u, 1u), 52539u, 1i, vec4<i32>(77719i, -12286i, -31105i, -1i)), false, Struct_1(vec2<i32>(-17787i, i32(-2147483648)), vec4<u32>(65411u, 1u, 22542u, 72590u), 4294967295u, i32(-2147483648), vec4<i32>(-41627i, -12907i, -27034i, 24462i)), -1376f, -1141f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<u32>(4294967295u, 9791u, 1u, 1u), 45870u, 2147483647i, vec4<i32>(-20139i, -1i, -1i, 2147483647i)), false, Struct_1(vec2<i32>(-1i, -20618i), vec4<u32>(1u, 1u, 1u, 4294967295u), 1u, -1i, vec4<i32>(i32(-2147483648), 78710i, -9365i, 0i)), -684f, 596f), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec4<u32>(4376u, 1u, 4823u, 4294967295u), 1u, i32(-2147483648), vec4<i32>(2147483647i, 1i, 9460i, -26448i)), false, Struct_1(vec2<i32>(-1i, -75296i), vec4<u32>(5915u, 6950u, 0u, 0u), 35795u, 21216i, vec4<i32>(1i, -1i, -1i, -34908i)), -641f, 854f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(8496u, 1u, 41188u, 873u), 0u, 4029i, vec4<i32>(1i, 39589i, 11547i, 1i)), false, Struct_1(vec2<i32>(1i, -1i), vec4<u32>(0u, 4294967295u, 4294967295u, 2030u), 1u, 35840i, vec4<i32>(70073i, 1i, 2147483647i, -1i)), 781f, -795f), Struct_2(Struct_1(vec2<i32>(0i, 0i), vec4<u32>(0u, 973u, 20684u, 32344u), 33778u, -6483i, vec4<i32>(551i, -25747i, -30454i, -46951i)), false, Struct_1(vec2<i32>(0i, -1i), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 0u, -1i, vec4<i32>(2147483647i, 3909i, -25588i, 2147483647i)), 500f, -544f), Struct_2(Struct_1(vec2<i32>(53472i, 0i), vec4<u32>(44215u, 10456u, 3589u, 97154u), 4294967295u, i32(-2147483648), vec4<i32>(4706i, -54648i, -85962i, 0i)), true, Struct_1(vec2<i32>(27956i, -1i), vec4<u32>(68967u, 42803u, 49263u, 0u), 96856u, -47266i, vec4<i32>(1i, -41019i, -25275i, 0i)), -354f, 1446f), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<u32>(66302u, 95632u, 37743u, 3468u), 77025u, -1i, vec4<i32>(-25469i, i32(-2147483648), 0i, i32(-2147483648))), true, Struct_1(vec2<i32>(1i, -8185i), vec4<u32>(59744u, 46090u, 1u, 50649u), 4294967295u, 21661i, vec4<i32>(0i, 1i, i32(-2147483648), -1i)), -1147f, -304f), Struct_2(Struct_1(vec2<i32>(11902i, -37357i), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), 0u, -12013i, vec4<i32>(-34939i, 18867i, 0i, -1i)), true, Struct_1(vec2<i32>(-14293i, -17555i), vec4<u32>(4294967295u, 20101u, 13208u, 0u), 12386u, i32(-2147483648), vec4<i32>(-47176i, -28702i, 0i, -11493i)), -434f, -643f), Struct_2(Struct_1(vec2<i32>(1i, -1i), vec4<u32>(37516u, 79622u, 56541u, 21197u), 96571u, 0i, vec4<i32>(-1i, -1i, 9921i, -32381i)), false, Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<u32>(4294967295u, 1u, 38008u, 4294967295u), 36006u, 42335i, vec4<i32>(1i, -19281i, 19024i, 2147483647i)), 651f, -668f), Struct_2(Struct_1(vec2<i32>(2938i, 0i), vec4<u32>(1u, 4294967295u, 9132u, 4294967295u), 39970u, 41152i, vec4<i32>(1i, 2147483647i, -25091i, 1i)), true, Struct_1(vec2<i32>(i32(-2147483648), 41696i), vec4<u32>(76703u, 59509u, 0u, 3118u), 4294967295u, -1i, vec4<i32>(0i, i32(-2147483648), 14248i, i32(-2147483648))), 927f, 613f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 3903i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 38941u), 20565u, 2147483647i, vec4<i32>(-35150i, -1i, 2147483647i, -1i)), false, Struct_1(vec2<i32>(1630i, -2100i), vec4<u32>(0u, 4294967295u, 3284u, 1u), 1u, -1i, vec4<i32>(i32(-2147483648), 2147483647i, 1i, 6803i)), -898f, 1472f), Struct_2(Struct_1(vec2<i32>(-72824i, 2147483647i), vec4<u32>(4069u, 0u, 0u, 6189u), 0u, 236i, vec4<i32>(0i, -27675i, -15399i, 1067i)), true, Struct_1(vec2<i32>(-58634i, 0i), vec4<u32>(1u, 14335u, 2784u, 1u), 1u, i32(-2147483648), vec4<i32>(73i, -1i, 1i, 1i)), 539f, -1769f), Struct_2(Struct_1(vec2<i32>(26747i, -31235i), vec4<u32>(1u, 57717u, 95722u, 1u), 4294967295u, 11098i, vec4<i32>(-33034i, 491i, i32(-2147483648), i32(-2147483648))), false, Struct_1(vec2<i32>(-1i, -9962i), vec4<u32>(1u, 19802u, 4294967295u, 56539u), 36367u, i32(-2147483648), vec4<i32>(-326i, 38935i, i32(-2147483648), 2147483647i)), 228f, -942f), Struct_2(Struct_1(vec2<i32>(2147483647i, -43349i), vec4<u32>(1u, 65797u, 14445u, 13742u), 85774u, 19815i, vec4<i32>(8167i, -38704i, 24169i, 2147483647i)), false, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(1u, 68209u, 1u, 4294967295u), 106459u, 10278i, vec4<i32>(1812i, -55347i, i32(-2147483648), 1i)), -248f, -1734f), Struct_2(Struct_1(vec2<i32>(-13683i, 26735i), vec4<u32>(1u, 1561u, 4294967295u, 0u), 0u, 37311i, vec4<i32>(-8988i, 58289i, -1i, -39268i)), false, Struct_1(vec2<i32>(1i, -9866i), vec4<u32>(51730u, 24877u, 4294967295u, 77010u), 68604u, i32(-2147483648), vec4<i32>(-37013i, 0i, -2661i, -73567i)), 374f, -726f), Struct_2(Struct_1(vec2<i32>(-47405i, 0i), vec4<u32>(75035u, 22431u, 41844u, 4294967295u), 49570u, -41028i, vec4<i32>(0i, 0i, -1i, -3684i)), false, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(4294967295u, 1u, 0u, 24977u), 4294967295u, -1i, vec4<i32>(80562i, 1i, 5811i, 1i)), -1000f, -597f), Struct_2(Struct_1(vec2<i32>(0i, 0i), vec4<u32>(0u, 0u, 38580u, 50772u), 65203u, -24143i, vec4<i32>(-13479i, 0i, 1i, -1i)), false, Struct_1(vec2<i32>(-1i, 0i), vec4<u32>(79616u, 13649u, 0u, 48610u), 72571u, -1i, vec4<i32>(-61376i, i32(-2147483648), -4468i, 0i)), -413f, 975f), Struct_2(Struct_1(vec2<i32>(-15650i, 2147483647i), vec4<u32>(32761u, 1u, 0u, 4294967295u), 1u, -12469i, vec4<i32>(i32(-2147483648), -1i, -6350i, 1i)), false, Struct_1(vec2<i32>(2303i, i32(-2147483648)), vec4<u32>(0u, 28680u, 20173u, 4294967295u), 96469u, -2471i, vec4<i32>(-8406i, -1i, -11615i, 2439i)), -1000f, 1219f), Struct_2(Struct_1(vec2<i32>(1i, 36439i), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), 16280u, 14713i, vec4<i32>(9254i, 1i, 2147483647i, 0i)), true, Struct_1(vec2<i32>(-29539i, i32(-2147483648)), vec4<u32>(88685u, 1u, 4294967295u, 0u), 1u, -6852i, vec4<i32>(-1i, -1i, -20468i, 4639i)), -515f, 1000f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2028i), vec4<u32>(1u, 3762u, 4294967295u, 0u), 0u, -13821i, vec4<i32>(-17007i, -24856i, -22889i, i32(-2147483648))), true, Struct_1(vec2<i32>(1i, -43511i), vec4<u32>(1u, 24965u, 13300u, 0u), 59208u, i32(-2147483648), vec4<i32>(1i, 2147483647i, 35578i, 10012i)), -1586f, 1000f), Struct_2(Struct_1(vec2<i32>(-44920i, 1365i), vec4<u32>(1u, 29643u, 56380u, 0u), 51881u, 900i, vec4<i32>(-18201i, 0i, 11649i, 1i)), true, Struct_1(vec2<i32>(1i, -86748i), vec4<u32>(4294967295u, 64278u, 0u, 0u), 0u, 2147483647i, vec4<i32>(1i, 1i, 2147483647i, -19309i)), -345f, 1000f), Struct_2(Struct_1(vec2<i32>(0i, -47640i), vec4<u32>(11554u, 110162u, 1u, 55125u), 6613u, -1i, vec4<i32>(0i, 0i, -19536i, 1i)), false, Struct_1(vec2<i32>(-1i, -1i), vec4<u32>(1u, 25411u, 1u, 0u), 48588u, 0i, vec4<i32>(-1i, -15568i, 0i, 63458i)), -509f, 124f), Struct_2(Struct_1(vec2<i32>(0i, -6541i), vec4<u32>(1u, 4294967295u, 85156u, 1u), 81729u, 0i, vec4<i32>(2147483647i, 1i, 0i, 0i)), true, Struct_1(vec2<i32>(-1i, 2147483647i), vec4<u32>(35568u, 0u, 1u, 38420u), 18110u, -11571i, vec4<i32>(-1i, 56637i, -26732i, -47795i)), -510f, 1309f), Struct_2(Struct_1(vec2<i32>(2147483647i, 31279i), vec4<u32>(0u, 62994u, 87205u, 49534u), 83230u, 2147483647i, vec4<i32>(-1i, 3889i, -16125i, 2147483647i)), true, Struct_1(vec2<i32>(i32(-2147483648), 24930i), vec4<u32>(0u, 1923u, 56513u, 1u), 4294967295u, -40364i, vec4<i32>(i32(-2147483648), -1i, -10491i, 5607i)), -165f, -2097f), Struct_2(Struct_1(vec2<i32>(2147483647i, -13381i), vec4<u32>(0u, 4294967295u, 35785u, 36732u), 1u, -32454i, vec4<i32>(-43686i, 0i, 51784i, 12540i)), false, Struct_1(vec2<i32>(-5120i, -5242i), vec4<u32>(74541u, 30323u, 12545u, 1u), 4294967295u, i32(-2147483648), vec4<i32>(1i, -1i, -1i, -19517i)), -281f, -1560f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(0u, 4294967295u, 32071u, 14595u), 75006u, -17238i, vec4<i32>(-71679i, -1i, 45825i, i32(-2147483648))), true, Struct_1(vec2<i32>(-72143i, -51709i), vec4<u32>(1u, 21902u, 57680u, 1u), 0u, -26657i, vec4<i32>(41452i, i32(-2147483648), 1i, 0i)), -1734f, 299f));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, 49551i), vec4<u32>(1u, 1u, 12213u, 1u), 55723u, 25002i, vec4<i32>(-6461i, 0i, -1i, 0i)), false, Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<u32>(4294967295u, 52810u, 32706u, 1u), 1u, -1i, vec4<i32>(-1i, i32(-2147483648), 23630i, 2147483647i)), -745f, 255f);

var<private> global3: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global4: array<i32, 19> = array<i32, 19>(9721i, -1i, 59752i, 51998i, 1i, 12709i, 1i, 1354i, 1i, -1i, 1i, 4756i, 15275i, 2434i, 50352i, 1i, -1i, 0i, 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(select(-1i, -1i, true), var_0.b, var_0.b), countOneBits(var_0.a.c.e.zxz) | vec3<i32>(13211i, 28561i, global4[_wgslsmith_index_u32(u_input.b.x, 19u)]))), select(min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.c.c, var_0.a.a.b.x, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.c, 90925u, u_input.a.x, var_0.a.a.b.x), vec4<u32>(86003u, 4294967295u, 48929u, arg_0.a.c.c))), firstTrailingBit(vec4<u32>(0u, u_input.b.x, var_0.a.a.c, u_input.b.x) << (vec4<u32>(arg_0.a.a.b.x, 0u, 63657u, u_input.b.x) % vec4<u32>(32u)))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.c.b.x, 73677u, 12099u, 4294967295u), vec4<u32>(48205u, 22916u, global2.a.c, 29562u)), vec4<u32>(var_0.a.c.c, arg_0.a.a.c, var_0.a.c.b.x, var_0.a.c.b.x)) << (vec4<u32>(reverseBits(arg_0.a.a.b.x), 4294967295u << (var_0.a.c.c % 32u), arg_0.a.c.c, ~arg_0.a.c.b.x) % vec4<u32>(32u)), vec4<bool>(all(select(vec3<bool>(arg_0.a.b, var_0.a.b, var_0.a.b), vec3<bool>(false, arg_0.a.b, global2.b), var_0.a.b)), all(vec3<bool>(global2.b, true, global2.b)), _wgslsmith_sub_u32(4294967295u, var_0.a.a.c) > 1u, false)), u_input.b.x, 2147483647i, -var_0.a.a.e);
    global1 = array<Struct_2, 29>();
    global2 = arg_0.a;
    var var_2 = _wgslsmith_mult_u32(global2.a.c, ~arg_0.a.a.b.x);
    return var_0.c.zyy;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = !(!global3[_wgslsmith_index_u32(~(u_input.a.x & 89501u) & firstTrailingBit(_wgslsmith_div_u32(global2.c.b.x, arg_1.a.a.b.x)), 25u)]);
    var var_1 = arg_1.a.c;
    let var_2 = -557f;
    global4 = array<i32, 19>();
    global4 = array<i32, 19>();
    return arg_1.c.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> Struct_3 {
    global3 = array<vec2<bool>, 25>();
    var var_0 = global2.a;
    var var_1 = true;
    global2 = Struct_2(global2.a, !(!(!any(vec2<bool>(false, true)))), Struct_1(var_0.e.xy, ~(~u_input.b) | firstTrailingBit(vec4<u32>(4294967295u, 0u, global2.a.b.x, 2371u)), ~24569u, _wgslsmith_div_i32(0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 5530i, -2147483647i, 25855i), global2.a.e), -61661i)), vec4<i32>(u_input.c, global4[_wgslsmith_index_u32(min(4294967295u, global2.a.b.x), 19u)], ~abs(var_0.a.x), global4[_wgslsmith_index_u32(firstLeadingBit(~0u), 19u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-541f - arg_2.x), arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(Struct_1(vec2<i32>(2290i, 8601i), var_0.b, 0u, 20311i, vec4<i32>(global2.a.e.x, u_input.c, u_input.c, 15588i)), false, global2.a, -1398f, arg_2.x), -13494i, vec4<f32>(arg_2.x, 1000f, -893f, arg_1))))), Struct_3(Struct_2(global2.a, true, Struct_1(global2.a.a, var_0.b, global2.a.b.x, 2010i, vec4<i32>(-2147483647i, global2.c.e.x, u_input.c, 5449i)), arg_1, arg_2.x), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 138f, 1000f, -813f))))), _wgslsmith_f_op_f32(-818f * _wgslsmith_f_op_f32(-1057f * _wgslsmith_f_op_f32(arg_1 + 148f)))));
    var_0 = global2.a;
    return Struct_3(Struct_2(Struct_1(vec2<i32>(~var_0.a.x, ~global2.a.d), ~(~vec4<u32>(var_0.b.x, 1u, 1u, 12494u)), 20257u, 1i, firstLeadingBit(vec4<i32>(global2.c.d, u_input.c, -30035i, global2.a.e.x))), false, global2.a, _wgslsmith_f_op_f32(475f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-662f, 983f))), _wgslsmith_f_op_f32(trunc(-453f))), global2.a.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.e, -439f, arg_0, arg_0), vec4<f32>(arg_1, arg_2.x, arg_0, arg_0), global2.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-877f, 1716f, arg_1, arg_1))))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1472f))), arg_0, arg_0, global2.d)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>) -> vec3<u32> {
    let var_0 = global3[_wgslsmith_index_u32(global2.c.c >> (4294967295u % 32u), 25u)];
    let var_1 = global2.d;
    return vec3<u32>(~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, arg_0.a.c.c)), 276u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(reverseBits(arg_0.a.c.b.x), arg_0.a.c.c), 0u, u_input.a.x, _wgslsmith_add_u32(arg_0.a.c.b.x, reverseBits(global2.a.b.x))), vec4<u32>(1u, 83459u, arg_0.a.c.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.a.a.b.zwy, global2.a.b.yzx), vec3<u32>(1u, arg_0.a.a.c, global2.c.c) << (global2.c.b.wxz % vec3<u32>(32u))))), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.zwy, vec3<u32>(62743u, 0u, 1u))), 59898u));
}

fn func_1() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~50031u, 29u)];
    let var_1 = global2.d;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.e, 352f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e)))));
    global3 = array<vec2<bool>, 25>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-190f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(step(386f, var_0.d))), 193f)));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.c.b.www, func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, -416f) + _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(-var_0.d)), vec2<f32>(var_0.d, _wgslsmith_f_op_f32(-var_2))), vec2<bool>(!all(vec3<bool>(true, true, var_0.b)), false))), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 25>();
    global2 = func_1();
    global3 = array<vec2<bool>, 25>();
    var var_0 = 60948u;
    var_0 = ~abs(4294967295u & func_2(global2.d, _wgslsmith_f_op_f32(round(global2.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(849f, 1000f) * vec2<f32>(global2.e, 901f))).a.a.c);
    let var_1 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().d)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.d, 893f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d + 688f)))))), _wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1020f + 1185f), _wgslsmith_f_op_f32(sign(global2.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.e, 513f, true)))))).a;
    var var_2 = global2.e;
    var var_3 = select(vec3<bool>(_wgslsmith_mod_i32(max(global2.a.e.x, 2147483647i), global4[_wgslsmith_index_u32(u_input.b.x, 19u)]) >= -var_1.c.e.x, true, global2.d == -1068f), !(!vec3<bool>(false, !global2.b, global2.b)), !(!(!select(vec3<bool>(true, true, var_1.b), vec3<bool>(false, false, false), vec3<bool>(global2.b, false, var_1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(7335u, u_input.a.x, var_1.c.b.x), u_input.b.yzw)), _wgslsmith_sub_u32(global2.c.b.x, global2.c.c));
}

