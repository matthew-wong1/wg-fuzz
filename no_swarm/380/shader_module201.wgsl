struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(false, vec2<f32>(1000f, -1000f), Struct_2(-22089i, 25054u, true, Struct_1(vec2<u32>(0u, 24324u), vec2<u32>(4294967295u, 71969u), vec4<i32>(-7633i, 1i, -3661i, 2147483647i), 1623i, 2147483647i), 0u), 0u), Struct_3(false, vec2<f32>(-1928f, -1908f), Struct_2(78446i, 0u, true, Struct_1(vec2<u32>(2127u, 138642u), vec2<u32>(1u, 21061u), vec4<i32>(9005i, 73176i, i32(-2147483648), 17448i), -33506i, -46048i), 71216u), 16163u), Struct_3(true, vec2<f32>(-1194f, -331f), Struct_2(25033i, 23813u, false, Struct_1(vec2<u32>(0u, 0u), vec2<u32>(0u, 25754u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -24915i), 1i, 2147483647i), 17087u), 1u), Struct_3(false, vec2<f32>(-1047f, 1299f), Struct_2(-1i, 4294967295u, false, Struct_1(vec2<u32>(38376u, 1u), vec2<u32>(14922u, 0u), vec4<i32>(i32(-2147483648), 11655i, 96602i, -8435i), 0i, -22113i), 0u), 4294967295u), Struct_3(true, vec2<f32>(1572f, -294f), Struct_2(0i, 52387u, false, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec4<i32>(48809i, -46727i, i32(-2147483648), -28285i), 1i, 1i), 70109u), 30874u), Struct_3(true, vec2<f32>(1757f, -1300f), Struct_2(-13287i, 84309u, false, Struct_1(vec2<u32>(1u, 28579u), vec2<u32>(4294967295u, 526u), vec4<i32>(14067i, 0i, -15551i, -1i), -1i, i32(-2147483648)), 0u), 1u), Struct_3(true, vec2<f32>(-1244f, -100f), Struct_2(i32(-2147483648), 17278u, false, Struct_1(vec2<u32>(4294967295u, 62148u), vec2<u32>(0u, 24886u), vec4<i32>(-38385i, 2147483647i, -5045i, 47810i), -1i, i32(-2147483648)), 15029u), 13583u), Struct_3(true, vec2<f32>(299f, 1306f), Struct_2(-1i, 46240u, true, Struct_1(vec2<u32>(10388u, 28241u), vec2<u32>(41118u, 4294967295u), vec4<i32>(-25344i, 49617i, 10660i, 2147483647i), -20193i, 0i), 1u), 4294967295u), Struct_3(true, vec2<f32>(2161f, 364f), Struct_2(i32(-2147483648), 4294967295u, true, Struct_1(vec2<u32>(75188u, 4294967295u), vec2<u32>(1u, 1u), vec4<i32>(4491i, -14707i, 0i, 2147483647i), 1i, 0i), 44778u), 45496u), Struct_3(false, vec2<f32>(776f, 738f), Struct_2(0i, 10460u, true, Struct_1(vec2<u32>(29590u, 4294967295u), vec2<u32>(4294967295u, 60369u), vec4<i32>(0i, -4369i, 35318i, i32(-2147483648)), 32559i, -1i), 1u), 47778u), Struct_3(true, vec2<f32>(1050f, -160f), Struct_2(2147483647i, 0u, false, Struct_1(vec2<u32>(5382u, 1u), vec2<u32>(4294967295u, 1u), vec4<i32>(1i, -1i, -2573i, -1i), 0i, -1i), 0u), 2564u), Struct_3(false, vec2<f32>(705f, -508f), Struct_2(-1i, 0u, false, Struct_1(vec2<u32>(23434u, 44060u), vec2<u32>(85685u, 51123u), vec4<i32>(1i, 0i, -38907i, 18375i), -1i, 2147483647i), 77551u), 11799u), Struct_3(true, vec2<f32>(-309f, 1000f), Struct_2(23430i, 4294967295u, true, Struct_1(vec2<u32>(79502u, 29446u), vec2<u32>(4294967295u, 1u), vec4<i32>(-51366i, 2147483647i, 11206i, 1i), 0i, 45155i), 1u), 37026u), Struct_3(false, vec2<f32>(1000f, 683f), Struct_2(-1i, 4294967295u, false, Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(64276u, 4294967295u), vec4<i32>(-3260i, -1i, 11376i, -42724i), -6474i, i32(-2147483648)), 1u), 11822u), Struct_3(false, vec2<f32>(-2643f, 215f), Struct_2(1i, 51560u, false, Struct_1(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec4<i32>(1i, -60285i, 0i, 978i), -1i, i32(-2147483648)), 25984u), 4294967295u), Struct_3(true, vec2<f32>(-1901f, 2494f), Struct_2(30002i, 0u, true, Struct_1(vec2<u32>(47670u, 42396u), vec2<u32>(28420u, 4294967295u), vec4<i32>(38528i, 2147483647i, -35500i, -1i), -1i, -1i), 26902u), 137549u), Struct_3(false, vec2<f32>(-466f, -423f), Struct_2(1i, 1u, true, Struct_1(vec2<u32>(20069u, 12048u), vec2<u32>(4294967295u, 27156u), vec4<i32>(70364i, 1i, -11206i, 1i), 26065i, 1i), 3160u), 4294967295u), Struct_3(true, vec2<f32>(-1000f, -1121f), Struct_2(6091i, 5465u, true, Struct_1(vec2<u32>(53602u, 1u), vec2<u32>(19809u, 81574u), vec4<i32>(2034i, -1i, 4020i, i32(-2147483648)), 0i, -4494i), 0u), 0u), Struct_3(false, vec2<f32>(990f, 579f), Struct_2(11630i, 30447u, false, Struct_1(vec2<u32>(17010u, 0u), vec2<u32>(1u, 37084u), vec4<i32>(1i, 2147483647i, -1i, -6654i), -7432i, 1i), 4294967295u), 0u), Struct_3(true, vec2<f32>(657f, -732f), Struct_2(i32(-2147483648), 25321u, true, Struct_1(vec2<u32>(1u, 59810u), vec2<u32>(48070u, 0u), vec4<i32>(9348i, 0i, 1i, -1i), i32(-2147483648), -793i), 65274u), 90136u), Struct_3(true, vec2<f32>(964f, 294f), Struct_2(48016i, 21819u, true, Struct_1(vec2<u32>(4294967295u, 42669u), vec2<u32>(22080u, 16900u), vec4<i32>(-24087i, 2147483647i, 0i, i32(-2147483648)), i32(-2147483648), -4917i), 51869u), 8959u), Struct_3(false, vec2<f32>(503f, 756f), Struct_2(0i, 52318u, false, Struct_1(vec2<u32>(27011u, 50411u), vec2<u32>(0u, 1u), vec4<i32>(2147483647i, 1i, 17692i, -5679i), 0i, -10270i), 4294967295u), 0u), Struct_3(true, vec2<f32>(1094f, -923f), Struct_2(73i, 7824u, false, Struct_1(vec2<u32>(0u, 56158u), vec2<u32>(4294967295u, 23637u), vec4<i32>(i32(-2147483648), 1i, -1i, -28523i), -34439i, 31087i), 27414u), 6974u), Struct_3(true, vec2<f32>(327f, -1145f), Struct_2(-26201i, 19148u, false, Struct_1(vec2<u32>(0u, 0u), vec2<u32>(6179u, 114905u), vec4<i32>(12709i, -17735i, 31090i, 25703i), -1i, -1i), 1u), 2521u));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global1 = array<Struct_3, 24>();
    var var_0 = global2.b.x;
    let var_1 = u_input.a;
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.b.c.d.b, arg_0.b.c.d.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), arg_0.b.c.e), ~global2.a, ~vec2<u32>(arg_0.a, 47490u))), ~global2.a);
    let var_2 = ~reverseBits(_wgslsmith_sub_vec3_i32(arg_0.b.c.d.c.xxw, global2.c.yxx));
    return 37398u;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_4(~(~u_input.b.x), global1[_wgslsmith_index_u32(func_3(Struct_4(1u, global1[_wgslsmith_index_u32(~u_input.a, 24u)])) << ((_wgslsmith_dot_vec3_u32(u_input.b.xxx, u_input.b.yyx) ^ global2.b.x) % 32u), 24u)]);
    global1 = array<Struct_3, 24>();
    var var_1 = var_0.b;
    let var_2 = vec3<f32>(-1000f, -230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x + var_0.b.b.x)))));
    let var_3 = !(!select(select(select(vec4<bool>(var_0.b.c.c, true, false, var_1.c.c), vec4<bool>(true, false, true, arg_1.c), true), select(vec4<bool>(arg_1.c, var_1.a, var_1.a, true), vec4<bool>(arg_1.c, true, true, var_0.b.c.c), vec4<bool>(var_1.c.c, var_1.c.c, var_0.b.c.c, arg_1.c)), select(vec4<bool>(var_0.b.c.c, var_1.c.c, var_1.c.c, var_1.a), vec4<bool>(var_1.a, true, var_0.b.c.c, var_0.b.c.c), true)), !vec4<bool>(var_0.b.a, true, false, false), !select(vec4<bool>(arg_1.c, var_0.b.c.c, false, var_1.a), vec4<bool>(false, true, arg_1.c, false), vec4<bool>(var_0.b.c.c, var_0.b.c.c, false, var_1.a))));
    return select(select(select(vec4<bool>(true, var_3.x, var_3.x, any(var_3.zz)), select(vec4<bool>(var_0.b.c.c, var_3.x, var_3.x, var_0.b.a), vec4<bool>(var_3.x, var_1.c.c, var_3.x, var_1.a), !var_3), var_3), vec4<bool>((var_0.b.d << (39168u % 32u)) == var_1.d, !all(var_3), !(var_1.c.c & var_0.b.c.c), all(select(var_3.yw, var_3.zz, true))), var_3), select(var_3, var_3, arg_1.c), !select(select(vec4<bool>(false, true, var_3.x, false), !var_3, vec4<bool>(var_1.c.c, false, var_3.x, var_0.b.c.c)), select(vec4<bool>(arg_1.c, false, arg_1.c, arg_1.c), !var_3, !vec4<bool>(var_1.c.c, true, arg_1.c, false)), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    global1 = array<Struct_3, 24>();
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(global2.c.xx, abs(vec2<i32>(global2.e, global2.d))), _wgslsmith_sub_u32(10196u, u_input.a), any(select(func_2(-1000f, Struct_2(global2.d, 18195u, false, Struct_1(u_input.b.yy, global2.a, global2.c, global2.d, global2.d), 10259u)), func_2(-810f, Struct_2(-19967i, 4294967295u, true, Struct_1(vec2<u32>(2893u, arg_3), u_input.b.xz, global2.c, -2147483647i, 2147483647i), global2.a.x)), vec4<bool>(var_0 <= 696f, true, arg_1.x, true))), Struct_1(vec2<u32>(firstLeadingBit(select(u_input.b.x, global2.a.x, false)), ~(~u_input.b.x)), global2.b, min(select(global2.c, global2.c, arg_1.x), global2.c), 1i, global2.c.x), u_input.b.x);
    var var_2 = func_2(_wgslsmith_f_op_f32(floor(-1785f)), Struct_2(_wgslsmith_clamp_i32(1i ^ var_1.a, var_1.d.e & -8889i, _wgslsmith_div_i32(global2.d, global2.e)) & (var_1.d.d >> (1956u % 32u)), (arg_3 | 87278u) >> (14613u % 32u), any(!select(arg_1.xwx, arg_1.yxw, false)), Struct_1(global2.b, global2.a, _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-4843i, 6833i, -20406i, 2147483647i), vec4<i32>(1i, var_1.d.e, global2.c.x, 2147483647i), false), reverseBits(var_1.d.c), global2.c & global2.c), -_wgslsmith_sub_i32(-46262i, var_1.d.e), -var_1.a), _wgslsmith_dot_vec2_u32(var_1.d.a, ~var_1.d.a | abs(vec2<u32>(global2.b.x, 4294967295u))))).yy;
    var var_3 = Struct_1(global2.a, reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_1.d.a.x), vec2<u32>(10217u, arg_3)), select(global2.a, vec2<u32>(64937u, 4294967295u), vec2<bool>(true, true)))) & (vec2<u32>(33325u << (u_input.b.x % 32u), arg_3) ^ u_input.b.xz), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, abs(global2.d), var_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, global2.d), var_1.d.c.wx)), _wgslsmith_sub_vec4_i32(global2.c, vec4<i32>(global2.e, global2.c.x, var_1.a, 29686i)) ^ var_1.d.c)), _wgslsmith_mod_i32(13208i, 42665i), 19749i);
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, 1347f)))))));
    var var_0 = _wgslsmith_div_i32(~_wgslsmith_div_i32(-34782i, min(12598i, firstLeadingBit(global2.c.x))), global2.c.x);
    var var_1 = Struct_4(_wgslsmith_clamp_u32(select(0u, global2.b.x, select(true, arg_1.x, !arg_0.c)), _wgslsmith_div_u32(1u, ~(~arg_0.e)), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a, 1u, _wgslsmith_mult_u32(u_input.a, 0u), 1u))), Struct_3(true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-448f, -153f))), arg_0, _wgslsmith_sub_u32(~_wgslsmith_div_u32(4294967295u, global2.b.x), countOneBits(_wgslsmith_sub_u32(arg_0.b, arg_0.e)))));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.b.x, 24u)];
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-134f, 201f) + _wgslsmith_f_op_f32(-arg_2.x)) + -195f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f - var_2.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * 492f));
    return Struct_3(arg_0.c, var_2.b, Struct_2(firstLeadingBit(1i), ~func_3(Struct_4(global2.a.x, var_1.b)), var_2.a, func_4(vec2<bool>(true, any(arg_3.xy)), select(vec4<bool>(var_2.a, true, false, var_1.b.a), !arg_1, func_2(arg_2.x, Struct_2(var_1.b.c.d.d, 1u, arg_0.c, Struct_1(vec2<u32>(0u, global2.b.x), u_input.b.xw, vec4<i32>(-1i, 0i, arg_0.a, global2.c.x), arg_0.a, var_1.b.c.a), 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b * vec2<f32>(-757f, arg_2.x))), 18191u).d, 1u << (u_input.b.x % 32u)), arg_0.e);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec3<u32> {
    var var_0 = func_5(func_4(vec2<bool>(global2.c.x > (i32(-1i) * -1i), all(vec3<bool>(true, true, true))), select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -632f), Struct_2(arg_1, global2.a.x, false, Struct_1(vec2<u32>(1u, u_input.a), u_input.b.xw, vec4<i32>(global2.d, -2147483647i, 5976i, global2.e), global2.c.x, arg_1), 1u)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), func_2(1103f, Struct_2(-16084i, global2.a.x, true, Struct_1(vec2<u32>(1u, 3081u), global2.b, global2.c, -1i, arg_1), u_input.a)))), vec2<f32>(-645f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, arg_0.x)))), 12754u), select(select(!func_2(arg_0.x, Struct_2(arg_1, u_input.b.x, true, Struct_1(vec2<u32>(0u, global2.a.x), vec2<u32>(0u, u_input.b.x), global2.c, 5132i, global2.e), global2.b.x)), vec4<bool>(false, select(false, false, true), any(vec2<bool>(false, true)), true), vec4<bool>(any(vec2<bool>(false, false)), true, true, true)), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, all(vec2<bool>(true, true)), true), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yyw * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(2206f + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -397f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1108f, 406f, global0.x) - arg_0.ywy), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -339f, -850f) + vec3<f32>(676f, global0.x, arg_0.x)), true)) + arg_0.yzx)), vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), abs(1u) == global2.a.x));
    var var_1 = var_0.c.d;
    var var_2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.d, u_input.b.x, global2.b.x), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.wzx, u_input.b.www), ~(~vec3<u32>(var_1.b.x, var_0.c.d.b.x, 1u))), ~u_input.b.yyw);
    let var_3 = var_0.c.c & any(select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -336f), func_4(vec2<bool>(false, true), vec4<bool>(true, var_0.a, true, false), arg_0.yy, 37038u)).wzz, !(!vec3<bool>(var_0.c.c, var_0.a, false)), all(select(vec4<bool>(var_0.c.c, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.c.c, false), vec4<bool>(false, true, false, false)))));
    let var_4 = u_input.a == abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(global2.b.x >> (global2.b.x % 32u), ~60438u), _wgslsmith_dot_vec3_u32(u_input.b.wzz, vec3<u32>(1u, var_0.c.d.b.x, 4294967295u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 71024u, var_1.b.x), u_input.b.yxz)));
    return vec3<u32>(u_input.a, _wgslsmith_mod_u32(41646u, reverseBits(15774u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.c.e, u_input.a << (1u % 32u), 4294967295u, _wgslsmith_mult_u32(var_2.x, var_1.b.x)), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(12726u, var_0.c.d.b.x, 15887u, 71846u), u_input.b) ^ ~u_input.b), ~_wgslsmith_div_u32(func_4(vec2<bool>(true, var_3), vec4<bool>(var_4, var_0.c.c, var_4, false), var_0.b, global2.b.x).d.a.x, global2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -790f, 1015f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -458f, global0.x, 224f))))))), reverseBits(global2.d));
    var_0 = vec3<u32>(~_wgslsmith_mod_u32(u_input.a ^ func_1(vec4<f32>(global0.x, -782f, -2831f, global0.x), global2.e).x, ~_wgslsmith_div_u32(2266u, var_0.x)), _wgslsmith_div_u32(func_4(vec2<bool>(true, global2.c.x > global2.c.x), vec4<bool>(true, true, true, false), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1038f, 3310f) - vec2<f32>(global0.x, -349f)))), firstTrailingBit(~global2.b.x)).d.b.x, global2.b.x << (global2.a.x % 32u)), ~min(min(~var_0.x, var_0.x | u_input.a), global2.b.x));
    global1 = array<Struct_3, 24>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1266f) - vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1541f, -371f) - vec2<f32>(global0.x, 211f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-127f, global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
    var var_1 = true;
    let var_2 = false;
    global2 = func_5(Struct_2(-global2.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, countOneBits(4294967295u), ~global2.a.x, global2.b.x | 0u), u_input.b), (-global2.c.x | (2147483647i >> (u_input.a % 32u))) < 14596i, func_5(func_4(vec2<bool>(true, true), vec4<bool>(true, false, var_2, var_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1197f, -298f) + vec2<f32>(1285f, global0.x)), 0u | u_input.b.x), vec4<bool>(var_2 || false, all(vec2<bool>(var_2, var_2)), !var_2, global2.b.x <= global2.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 247f, -830f), vec3<f32>(global0.x, -1046f, global0.x))), select(func_2(global0.x, Struct_2(0i, 0u, true, Struct_1(vec2<u32>(13695u, 1u), u_input.b.zx, global2.c, global2.e, -39427i), global2.a.x)).xyz, vec3<bool>(true, true, true), select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, var_2, true)))).c.d, global2.a.x), func_2(global0.x, func_5(func_5(Struct_2(0i, 88645u, var_2, Struct_1(vec2<u32>(u_input.a, 7990u), vec2<u32>(0u, 1u), vec4<i32>(global2.c.x, -48167i, global2.e, 0i), -13789i, 1i), 43287u), vec4<bool>(true, var_2, var_2, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(-259f, global0.x, 140f)), func_2(global0.x, Struct_2(global2.e, 40673u, true, Struct_1(vec2<u32>(var_0.x, u_input.a), u_input.b.wy, vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 1i), global2.e, global2.e), 4294967295u)).yxw).c, select(func_2(global0.x, Struct_2(6260i, 11146u, var_2, Struct_1(vec2<u32>(32562u, 29253u), var_0.xx, vec4<i32>(global2.d, global2.e, global2.e, -32195i), global2.d, 0i), 4265u)), select(vec4<bool>(true, false, var_2, false), vec4<bool>(false, true, var_2, false), false), !vec4<bool>(true, true, var_2, var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-333f, 629f, 771f))) - vec3<f32>(-260f, -381f, 1089f)), func_2(203f, func_5(Struct_2(global2.e, u_input.b.x, var_2, Struct_1(vec2<u32>(var_0.x, 4630u), vec2<u32>(4294967295u, var_0.x), vec4<i32>(global2.d, global2.c.x, 2147483647i, 1i), 0i, global2.c.x), global2.a.x), vec4<bool>(true, var_2, false, true), vec3<f32>(global0.x, global0.x, global0.x), vec3<bool>(false, var_2, var_2)).c).xyx).c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-323f, -727f, global0.x)) + vec3<f32>(global0.x, -624f, global0.x))))), vec3<bool>(false, func_2(global0.x, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.d, -4301i), vec3<i32>(global2.e, -2147483647i, global2.c.x)), ~var_0.x, false, Struct_1(vec2<u32>(u_input.a, 0u), global2.a, global2.c, -1i, global2.d), _wgslsmith_dot_vec2_u32(global2.a, global2.a))).x, false && ((false | var_2) && !var_2))).c.d;
    var_1 = !(!all(!(!vec4<bool>(var_2, var_2, var_2, false))));
    var_0 = select(_wgslsmith_mod_vec3_u32(u_input.b.zxw, min(u_input.b.wzx, ~vec3<u32>(u_input.b.x, 46626u, 11060u))), select(u_input.b.yxw, vec3<u32>(_wgslsmith_div_u32(global2.b.x, global2.b.x) | _wgslsmith_div_u32(global2.b.x, var_0.x), (u_input.b.x | 4294967295u) | ~global2.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, global2.a.x), 4600u)), any(vec4<bool>(false, false, var_2, var_2)) & true), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-20259i, global2.c.x, ~(-34205i)), _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(global2.c.wxw, vec3<i32>(-1i, -54019i, -22537i)), global2.c.zxw), reverseBits(countOneBits(~(~vec4<i32>(global2.c.x, -19627i, -7125i, global2.e)))), reverseBits(global2.c.x));
}

