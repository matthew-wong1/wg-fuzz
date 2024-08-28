struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: Struct_3,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_4 = Struct_4(true, -2317f, Struct_3(Struct_1(vec4<i32>(-12961i, -89144i, 0i, 2147483647i), 74253u, 4294967295u, vec2<bool>(false, false), vec3<u32>(4294967295u, 27055u, 4294967295u))), Struct_3(Struct_1(vec4<i32>(0i, 65031i, -1i, 10097i), 4294967295u, 0u, vec2<bool>(true, true), vec3<u32>(0u, 0u, 1u))), vec4<bool>(true, false, false, false));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<i32>(1i, 14239i, -4999i, 46574i), 34312u, 0u, vec2<bool>(false, false), vec3<u32>(4294967295u, 27469u, 0u)));

var<private> global3: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global4: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(false, -1463f, Struct_3(Struct_1(vec4<i32>(-36814i, 2147483647i, -1i, -34003i), 31004u, 4294967295u, vec2<bool>(true, true), vec3<u32>(50052u, 4294967295u, 0u))), Struct_3(Struct_1(vec4<i32>(23636i, -1i, 31768i, 41146i), 0u, 44573u, vec2<bool>(false, false), vec3<u32>(102830u, 0u, 65516u))), vec4<bool>(true, false, true, false)), Struct_4(false, 1559f, Struct_3(Struct_1(vec4<i32>(0i, -1i, -17844i, -3380i), 39241u, 4294967295u, vec2<bool>(false, true), vec3<u32>(1u, 1u, 1u))), Struct_3(Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -35597i), 1u, 27874u, vec2<bool>(true, false), vec3<u32>(44695u, 96345u, 25788u))), vec4<bool>(false, false, true, true)), Struct_4(false, -313f, Struct_3(Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -1i), 19014u, 0u, vec2<bool>(false, true), vec3<u32>(0u, 14175u, 12427u))), Struct_3(Struct_1(vec4<i32>(1i, -19446i, 0i, 0i), 4294967295u, 24804u, vec2<bool>(true, true), vec3<u32>(85614u, 25423u, 0u))), vec4<bool>(false, true, false, true)), Struct_4(true, -1304f, Struct_3(Struct_1(vec4<i32>(2147483647i, -35775i, 2147483647i, i32(-2147483648)), 2312u, 11421u, vec2<bool>(true, true), vec3<u32>(14603u, 4294967295u, 86082u))), Struct_3(Struct_1(vec4<i32>(2140i, 2147483647i, -37139i, -1i), 30256u, 0u, vec2<bool>(true, false), vec3<u32>(3910u, 4294967295u, 4294967295u))), vec4<bool>(true, true, false, false)), Struct_4(true, 149f, Struct_3(Struct_1(vec4<i32>(22520i, 54501i, -32011i, 0i), 22281u, 46831u, vec2<bool>(false, true), vec3<u32>(32527u, 53500u, 6671u))), Struct_3(Struct_1(vec4<i32>(0i, 13452i, -68231i, 1i), 29792u, 4294967295u, vec2<bool>(false, false), vec3<u32>(36031u, 13008u, 1u))), vec4<bool>(true, true, true, true)), Struct_4(false, 889f, Struct_3(Struct_1(vec4<i32>(0i, 2147483647i, -23378i, 1i), 41080u, 4294967295u, vec2<bool>(false, false), vec3<u32>(3594u, 1u, 85349u))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i), 1u, 75409u, vec2<bool>(true, true), vec3<u32>(7285u, 0u, 8461u))), vec4<bool>(false, false, false, false)), Struct_4(true, 1221f, Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 20452i, i32(-2147483648), 1i), 0u, 37159u, vec2<bool>(false, false), vec3<u32>(67132u, 4294967295u, 0u))), Struct_3(Struct_1(vec4<i32>(0i, -1i, -58948i, 0i), 73844u, 1u, vec2<bool>(false, true), vec3<u32>(29381u, 489u, 896u))), vec4<bool>(true, false, true, true)), Struct_4(false, -2171f, Struct_3(Struct_1(vec4<i32>(45128i, -5315i, -1i, i32(-2147483648)), 1971u, 0u, vec2<bool>(false, false), vec3<u32>(1u, 1u, 7587u))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -27140i, -35324i, -10710i), 24348u, 1u, vec2<bool>(true, true), vec3<u32>(16158u, 1u, 0u))), vec4<bool>(true, true, true, true)), Struct_4(true, 1250f, Struct_3(Struct_1(vec4<i32>(-35799i, 61345i, -1i, 1i), 18336u, 4294967295u, vec2<bool>(false, false), vec3<u32>(25588u, 4294967295u, 0u))), Struct_3(Struct_1(vec4<i32>(-4135i, -37665i, -19681i, 1i), 1u, 4294967295u, vec2<bool>(true, false), vec3<u32>(4294967295u, 71218u, 54225u))), vec4<bool>(true, false, false, true)), Struct_4(false, -749f, Struct_3(Struct_1(vec4<i32>(-42036i, -19611i, -9268i, 1i), 53540u, 4294967295u, vec2<bool>(true, true), vec3<u32>(50881u, 0u, 948u))), Struct_3(Struct_1(vec4<i32>(-26185i, -1i, 1i, 1i), 24728u, 4294967295u, vec2<bool>(false, true), vec3<u32>(43557u, 55682u, 65155u))), vec4<bool>(true, false, true, true)), Struct_4(false, -200f, Struct_3(Struct_1(vec4<i32>(41428i, 0i, 1i, -6319i), 1u, 1u, vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 0u))), Struct_3(Struct_1(vec4<i32>(2147483647i, 1i, -77019i, -1i), 0u, 43271u, vec2<bool>(false, false), vec3<u32>(0u, 1u, 4294967295u))), vec4<bool>(false, false, false, true)), Struct_4(true, -616f, Struct_3(Struct_1(vec4<i32>(-50226i, -1i, 44989i, 2147483647i), 0u, 14493u, vec2<bool>(true, false), vec3<u32>(7070u, 43741u, 52932u))), Struct_3(Struct_1(vec4<i32>(0i, -32455i, -1i, 2147483647i), 1u, 1u, vec2<bool>(false, true), vec3<u32>(4223u, 1u, 24581u))), vec4<bool>(false, true, true, false)), Struct_4(true, 530f, Struct_3(Struct_1(vec4<i32>(397i, 0i, 19884i, -66303i), 0u, 4294967295u, vec2<bool>(true, false), vec3<u32>(1u, 62972u, 1u))), Struct_3(Struct_1(vec4<i32>(-11688i, 24392i, 33915i, 2147483647i), 14468u, 4294967295u, vec2<bool>(true, false), vec3<u32>(31301u, 1u, 1659u))), vec4<bool>(true, true, true, false)), Struct_4(true, 532f, Struct_3(Struct_1(vec4<i32>(0i, 13631i, -22844i, 2147483647i), 34446u, 85663u, vec2<bool>(true, true), vec3<u32>(0u, 33517u, 6781u))), Struct_3(Struct_1(vec4<i32>(-44834i, 0i, -14292i, 7965i), 4294967295u, 0u, vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 1u))), vec4<bool>(true, true, true, false)), Struct_4(true, -747f, Struct_3(Struct_1(vec4<i32>(-1940i, 62671i, 1i, -1i), 121543u, 4294967295u, vec2<bool>(false, true), vec3<u32>(14596u, 1u, 107901u))), Struct_3(Struct_1(vec4<i32>(-81669i, i32(-2147483648), -12488i, i32(-2147483648)), 4294967295u, 21564u, vec2<bool>(true, false), vec3<u32>(89781u, 4294967295u, 4294967295u))), vec4<bool>(false, false, true, false)), Struct_4(false, -1000f, Struct_3(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, -1i), 0u, 0u, vec2<bool>(true, true), vec3<u32>(119674u, 4294967295u, 0u))), Struct_3(Struct_1(vec4<i32>(-45942i, -1i, 1i, -46532i), 4294967295u, 1u, vec2<bool>(false, false), vec3<u32>(1u, 34586u, 0u))), vec4<bool>(true, false, true, true)), Struct_4(false, 804f, Struct_3(Struct_1(vec4<i32>(80545i, 0i, -12472i, 6093i), 36836u, 22004u, vec2<bool>(false, false), vec3<u32>(4294967295u, 26034u, 0u))), Struct_3(Struct_1(vec4<i32>(-62580i, 2147483647i, -42876i, 1i), 34334u, 4294967295u, vec2<bool>(true, true), vec3<u32>(34748u, 1u, 1u))), vec4<bool>(true, true, true, false)), Struct_4(true, -657f, Struct_3(Struct_1(vec4<i32>(0i, -1i, 2147483647i, 22425i), 5723u, 60232u, vec2<bool>(true, false), vec3<u32>(33084u, 4275u, 4294967295u))), Struct_3(Struct_1(vec4<i32>(0i, -20007i, -15710i, 0i), 13656u, 4294967295u, vec2<bool>(true, true), vec3<u32>(0u, 45733u, 4294967295u))), vec4<bool>(true, true, true, true)), Struct_4(false, 1577f, Struct_3(Struct_1(vec4<i32>(20330i, -1i, -49264i, -8732i), 0u, 0u, vec2<bool>(false, true), vec3<u32>(93211u, 0u, 1u))), Struct_3(Struct_1(vec4<i32>(-13135i, 2147483647i, 4973i, -13845i), 5938u, 9707u, vec2<bool>(false, true), vec3<u32>(4294967295u, 89631u, 4294967295u))), vec4<bool>(true, true, false, false)), Struct_4(true, -2381f, Struct_3(Struct_1(vec4<i32>(1i, 0i, -1i, 0i), 36370u, 4294967295u, vec2<bool>(false, true), vec3<u32>(47186u, 67708u, 2225u))), Struct_3(Struct_1(vec4<i32>(33696i, -1i, 0i, -32235i), 4294967295u, 4294967295u, vec2<bool>(false, false), vec3<u32>(10576u, 64356u, 4832u))), vec4<bool>(false, false, false, true)), Struct_4(true, 1546f, Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 35777i, 1i, 35174i), 21649u, 1u, vec2<bool>(true, true), vec3<u32>(0u, 4294967295u, 19209u))), Struct_3(Struct_1(vec4<i32>(-52031i, 1i, 28348i, -1i), 0u, 37982u, vec2<bool>(false, true), vec3<u32>(30066u, 81156u, 1735u))), vec4<bool>(true, false, false, true)), Struct_4(false, 363f, Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 49141i, 2147483647i, 3845i), 1u, 80455u, vec2<bool>(true, false), vec3<u32>(0u, 0u, 4294967295u))), Struct_3(Struct_1(vec4<i32>(5477i, i32(-2147483648), -28953i, -10102i), 17570u, 27019u, vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 5224u))), vec4<bool>(true, true, false, true)), Struct_4(false, 2798f, Struct_3(Struct_1(vec4<i32>(-21909i, 1i, -25094i, 5325i), 4294967295u, 0u, vec2<bool>(false, false), vec3<u32>(29411u, 67331u, 14676u))), Struct_3(Struct_1(vec4<i32>(0i, -1i, -1i, 7672i), 0u, 13468u, vec2<bool>(false, false), vec3<u32>(98419u, 30005u, 4294967295u))), vec4<bool>(true, true, false, false)), Struct_4(true, 209f, Struct_3(Struct_1(vec4<i32>(-47088i, -61216i, -64319i, -21723i), 0u, 4294967295u, vec2<bool>(true, false), vec3<u32>(1u, 17163u, 52618u))), Struct_3(Struct_1(vec4<i32>(-1i, -1i, -4751i, -29212i), 12653u, 30011u, vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 33488u))), vec4<bool>(false, false, false, true)), Struct_4(true, -1854f, Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -1i, 5419i, 1i), 4294967295u, 5477u, vec2<bool>(true, true), vec3<u32>(485u, 4294967295u, 0u))), Struct_3(Struct_1(vec4<i32>(86733i, 40295i, 0i, 58192i), 0u, 31839u, vec2<bool>(false, true), vec3<u32>(18761u, 8434u, 1700u))), vec4<bool>(false, false, false, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_3(global2.a);
    var_0 = global1.d;
    let var_1 = Struct_5(Struct_4(true, global1.b, Struct_3(Struct_1(global1.c.a.a | vec4<i32>(2147483647i, 48511i, -1i, 0i), global2.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(33593u, global3.x, 9361u, 0u), vec4<u32>(30033u, 0u, var_0.a.e.x, 4294967295u)), vec2<bool>(global1.d.a.d.x, global2.a.d.x), vec3<u32>(global3.x, global3.x, 1u) >> (u_input.a % vec3<u32>(32u)))), global1.d, global1.e), vec2<i32>(~min(firstLeadingBit(0i), -1i), -global2.a.a.x), global2.a.a.ywz, vec2<i32>(firstLeadingBit(abs(1i)), max(_wgslsmith_dot_vec2_i32(var_0.a.a.yx >> (global1.d.a.e.xx % vec2<u32>(32u)), ~var_0.a.a.zz), -20778i)));
    global4 = array<Struct_4, 25>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * arg_0.x), -1499f, _wgslsmith_f_op_f32(abs(-1382f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(156f, var_1.a.b, 266f), vec3<f32>(854f, var_1.a.b, -1979f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(835f - var_1.a.b) * _wgslsmith_f_op_f32(-430f - -113f)), -140f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1036f)), _wgslsmith_f_op_f32(trunc(arg_0.x)))))));
    return vec4<i32>(i32(-1i) * -1i, 1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~var_0.a.a.x, _wgslsmith_clamp_i32(6426i, var_0.a.a.x, global2.a.a.x), u_input.b.x), 10864i, 1i), -(~firstTrailingBit(global1.d.a.a.x))), -abs(countOneBits(reverseBits(37530i))));
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global1.c.a.a.x, global1.c.a.a.x, global1.c.a.a.x, 1581i), arg_0.c.a.a)), global2.a.e.x, ~_wgslsmith_add_u32(global2.a.c, 1u) ^ ~(~u_input.a.x), select(vec2<bool>(global2.a.d.x, true), select(vec2<bool>(false, true), select(arg_0.c.a.d, vec2<bool>(global2.a.d.x, true), vec2<bool>(arg_0.d.a.d.x, false)), select(vec2<bool>(true, true), vec2<bool>(false, arg_0.a), global1.d.a.d.x)), select(vec2<bool>(global2.a.d.x, global0.x), global0.xx, !global2.a.d.x)), vec3<u32>(~(u_input.a.x >> (arg_0.d.a.e.x % 32u)), min(firstTrailingBit(u_input.a.x), 1u), ~(~global1.d.a.e.x))), Struct_1(global2.a.a, 17216u, _wgslsmith_mult_u32(global2.a.c, 1u << (~global3.x % 32u)), global2.a.d, select((arg_0.d.a.e >> (vec3<u32>(0u, 4294967295u, global3.x) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a.e.x, global1.c.a.c, 0u), u_input.a, vec3<u32>(global1.c.a.b, 8965u, global2.a.e.x)), abs(global1.d.a.e), global2.a.d.x)), !vec2<bool>(!global1.d.a.d.x, all(global1.e) | !global1.c.a.d.x), vec4<u32>(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, global1.c.a.b, 11609u, global2.a.b), ~vec4<u32>(arg_0.c.a.c, 13730u, u_input.a.x, 20260u), global1.e.x), vec4<u32>(global1.d.a.c, global1.c.a.b >> (global3.x % 32u), _wgslsmith_add_u32(37698u, 43321u), global1.c.a.e.x)), arg_0.c.a.b, 35909u, countOneBits(global2.a.e.x)));
    var var_1 = Struct_2(global2.a, Struct_1(~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 682f))), firstLeadingBit(max(var_0.b.c, ~arg_0.c.a.e.x)), abs(firstLeadingBit(~23573u)), select(var_0.c, vec2<bool>(!var_0.b.d.x, all(arg_0.e)), all(select(vec2<bool>(var_0.a.d.x, true), vec2<bool>(global1.a, true), true))), vec3<u32>(~(~global3.x), _wgslsmith_clamp_u32(u_input.a.x, var_0.b.b, ~0u), 1u)), !vec2<bool>(global0.x, any(!vec3<bool>(global2.a.d.x, global1.c.a.d.x, global0.x))), ~(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_0.d.x, global2.a.b, global2.a.e.x, 143798u), vec4<u32>(9206u, arg_0.d.a.b, 0u, global1.d.a.b)), ~var_0.d)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-133f + global1.b) + _wgslsmith_f_op_f32(-211f - global1.b)))));
    let var_3 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.b, max(~97364u, countOneBits(u_input.a.x)), _wgslsmith_dot_vec3_u32(u_input.a, firstTrailingBit(var_1.a.e)), 4294967295u), firstTrailingBit(~var_0.d) << (vec4<u32>(firstLeadingBit(global1.c.a.c), 27516u, 4294967295u, _wgslsmith_mult_u32(u_input.a.x, 0u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(var_1.d, (vec4<u32>(4294967295u, global3.x, 1u, u_input.a.x) ^ ~vec4<u32>(25842u, 8271u, 65782u, arg_0.c.a.b)) << (reverseBits(~vec4<u32>(var_1.b.e.x, u_input.a.x, global2.a.e.x, 4294967295u)) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.a.x, global2.a.e.x, global1.d.a.e.x, 82690u) >> (var_1.d % vec4<u32>(32u)))), !(global1.b <= _wgslsmith_div_f32(arg_0.b, -1529f)));
    var var_4 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_add_vec2_i32(u_input.b.yx, vec2<i32>(~(-1i), 2147483647i)), ~(~(-u_input.b.yy)), !(!any(global2.a.d))), abs(max(vec2<i32>(_wgslsmith_mult_i32(2147483647i, global1.c.a.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a.x, 33740i, global2.a.a.x, var_0.a.a.x), global2.a.a)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, global2.a.a.x), vec2<i32>(global2.a.a.x, 2147483647i), ~u_input.b.yz))));
    return vec4<bool>(global0.x, var_0.c.x, !(!(!var_1.c.x)) | (!all(var_0.a.d) || global0.x), !var_1.a.d.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> u32 {
    global0 = select(!(!select(global1.e, vec4<bool>(true, false, true, global0.x), true)), !select(!vec4<bool>(true, global0.x, global1.d.a.d.x, global0.x), func_2(global4[_wgslsmith_index_u32(39006u, 25u)]), vec4<bool>(true, global0.x || global2.a.d.x, global2.a.d.x | global1.e.x, false)), false);
    var var_0 = Struct_5(global4[_wgslsmith_index_u32(global3.x, 25u)], countOneBits(u_input.b.yy), vec3<i32>(-global2.a.a.x, ~(~global1.d.a.a.x) & global2.a.a.x, ~(-26154i)), (vec2<i32>(-1i) * -global2.a.a.zz) >> (global1.c.a.e.zy % vec2<u32>(32u)));
    var var_1 = !(~(~1i) >= max(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global2.a.a, vec4<i32>(1i, global1.d.a.a.x, var_0.a.d.a.a.x, 0i)), var_0.a.d.a.a.x ^ global1.d.a.a.x), var_0.a.d.a.a.x));
    let var_2 = -567f;
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(36354i, firstTrailingBit(_wgslsmith_div_i32(-2147483647i, -1i))), ~(~37911i)), global2.a.a.yx);
    return _wgslsmith_mod_u32(7957u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    var var_1 = vec3<u32>(0u, ~_wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.a.e.x, 61692u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 5814u, global2.a.b), vec3<u32>(var_0.b, global2.a.c, global1.c.a.e.x)))), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.b + -1443f), 1557f, _wgslsmith_f_op_f32(global1.b + -150f), 939f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-717f, 597f, global1.b, 753f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global1.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global1.b))))));
    var var_2 = ~9021u;
    var_1 = ~vec3<u32>(~(~func_1(vec4<f32>(global1.b, 349f, global1.b, global1.b), vec3<f32>(458f, -1000f, 2862f))), _wgslsmith_mod_u32(var_0.b, _wgslsmith_add_u32(global2.a.b << (u_input.a.x % 32u), ~4838u)), 1u);
    let var_3 = 0u;
    let var_4 = global1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(global2.a.c, 65548u, 0u, 54300u), vec4<u32>(1065u, u_input.a.x, var_3, 0u)), vec4<u32>(33727u, 1u, 1u, 0u)), vec4<u32>(global2.a.e.x, 4294967295u, var_1.x, var_3)), 1000f);
}

