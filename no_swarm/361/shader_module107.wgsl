struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(0i, Struct_2(Struct_1(4294967295u, vec2<u32>(13286u, 0u), vec4<bool>(false, true, true, true))), -466f, Struct_1(2781u, vec2<u32>(8105u, 47234u), vec4<bool>(true, true, true, true)), Struct_1(13584u, vec2<u32>(1u, 67256u), vec4<bool>(true, false, true, false))), Struct_3(25534i, Struct_2(Struct_1(86237u, vec2<u32>(71601u, 1u), vec4<bool>(false, false, false, true))), 794f, Struct_1(0u, vec2<u32>(33384u, 0u), vec4<bool>(true, false, true, false)), Struct_1(29826u, vec2<u32>(15131u, 19595u), vec4<bool>(false, false, false, true))), Struct_3(13731i, Struct_2(Struct_1(3772u, vec2<u32>(62907u, 4294967295u), vec4<bool>(false, true, true, true))), -1209f, Struct_1(1u, vec2<u32>(5354u, 0u), vec4<bool>(false, true, false, false)), Struct_1(4294967295u, vec2<u32>(1u, 59765u), vec4<bool>(false, true, true, true))), Struct_3(4128i, Struct_2(Struct_1(1u, vec2<u32>(13637u, 52973u), vec4<bool>(false, true, true, true))), -552f, Struct_1(4294967295u, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_1(1u, vec2<u32>(1u, 19299u), vec4<bool>(true, false, true, true))), Struct_3(0i, Struct_2(Struct_1(0u, vec2<u32>(0u, 1u), vec4<bool>(true, false, false, true))), -1121f, Struct_1(57136u, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_1(0u, vec2<u32>(9930u, 10605u), vec4<bool>(false, true, true, false))), Struct_3(12705i, Struct_2(Struct_1(0u, vec2<u32>(1u, 15949u), vec4<bool>(true, false, false, true))), 1464f, Struct_1(12135u, vec2<u32>(32885u, 1u), vec4<bool>(true, false, false, true)), Struct_1(651u, vec2<u32>(55497u, 4294967295u), vec4<bool>(false, true, false, true))), Struct_3(1i, Struct_2(Struct_1(1u, vec2<u32>(1u, 4294967295u), vec4<bool>(false, false, false, false))), -866f, Struct_1(18579u, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(25169u, vec2<u32>(22035u, 0u), vec4<bool>(false, true, true, true))), Struct_3(-69646i, Struct_2(Struct_1(4711u, vec2<u32>(1u, 741u), vec4<bool>(false, true, true, false))), -608f, Struct_1(1027u, vec2<u32>(0u, 100920u), vec4<bool>(true, false, false, false)), Struct_1(4294967295u, vec2<u32>(1u, 0u), vec4<bool>(true, false, true, false))), Struct_3(2147483647i, Struct_2(Struct_1(1u, vec2<u32>(0u, 4294967295u), vec4<bool>(true, true, true, false))), 291f, Struct_1(0u, vec2<u32>(69009u, 4294967295u), vec4<bool>(false, true, false, false)), Struct_1(1u, vec2<u32>(62206u, 4294967295u), vec4<bool>(false, false, false, true))), Struct_3(0i, Struct_2(Struct_1(59417u, vec2<u32>(10073u, 38372u), vec4<bool>(false, false, false, true))), 319f, Struct_1(4294967295u, vec2<u32>(1u, 19449u), vec4<bool>(false, false, false, true)), Struct_1(4294967295u, vec2<u32>(1u, 66631u), vec4<bool>(false, false, false, false))), Struct_3(-1i, Struct_2(Struct_1(21539u, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, false, true, true))), 1893f, Struct_1(100325u, vec2<u32>(46413u, 55434u), vec4<bool>(false, true, true, false)), Struct_1(47000u, vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, true, true))), Struct_3(0i, Struct_2(Struct_1(1u, vec2<u32>(12190u, 36628u), vec4<bool>(true, false, true, false))), -1585f, Struct_1(45544u, vec2<u32>(2370u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(1u, vec2<u32>(44502u, 4294967295u), vec4<bool>(false, true, false, true))), Struct_3(58528i, Struct_2(Struct_1(15691u, vec2<u32>(12300u, 62057u), vec4<bool>(true, false, false, false))), -1237f, Struct_1(24505u, vec2<u32>(4294967295u, 1u), vec4<bool>(true, false, true, false)), Struct_1(31014u, vec2<u32>(1u, 33912u), vec4<bool>(false, true, false, true))), Struct_3(-4813i, Struct_2(Struct_1(1u, vec2<u32>(37507u, 55549u), vec4<bool>(false, true, false, false))), 280f, Struct_1(20404u, vec2<u32>(4476u, 7359u), vec4<bool>(true, true, true, false)), Struct_1(25022u, vec2<u32>(1u, 0u), vec4<bool>(false, true, true, true))), Struct_3(4396i, Struct_2(Struct_1(0u, vec2<u32>(1u, 1u), vec4<bool>(true, true, false, true))), 657f, Struct_1(81546u, vec2<u32>(4294967295u, 1u), vec4<bool>(true, true, true, false)), Struct_1(47148u, vec2<u32>(13340u, 0u), vec4<bool>(true, true, false, false))), Struct_3(-713i, Struct_2(Struct_1(1u, vec2<u32>(4294967295u, 0u), vec4<bool>(false, true, false, false))), 1515f, Struct_1(6715u, vec2<u32>(40563u, 11086u), vec4<bool>(false, true, true, false)), Struct_1(876u, vec2<u32>(47102u, 4294967295u), vec4<bool>(true, true, true, false))), Struct_3(0i, Struct_2(Struct_1(4294967295u, vec2<u32>(1u, 26954u), vec4<bool>(false, true, false, true))), 1311f, Struct_1(27751u, vec2<u32>(25376u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(0u, vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, false, true))), Struct_3(2147483647i, Struct_2(Struct_1(64231u, vec2<u32>(61960u, 19409u), vec4<bool>(true, false, false, true))), 457f, Struct_1(0u, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, false, true, true)), Struct_1(27587u, vec2<u32>(47194u, 1u), vec4<bool>(false, true, false, false))), Struct_3(2147483647i, Struct_2(Struct_1(8651u, vec2<u32>(0u, 4294967295u), vec4<bool>(true, false, true, false))), -775f, Struct_1(4294967295u, vec2<u32>(4294967295u, 12912u), vec4<bool>(true, false, true, true)), Struct_1(1u, vec2<u32>(3303u, 28654u), vec4<bool>(false, false, false, false))), Struct_3(2548i, Struct_2(Struct_1(0u, vec2<u32>(10962u, 50707u), vec4<bool>(false, true, true, false))), -1000f, Struct_1(0u, vec2<u32>(27008u, 12215u), vec4<bool>(false, false, false, true)), Struct_1(55u, vec2<u32>(1u, 0u), vec4<bool>(true, false, false, true))), Struct_3(-66105i, Struct_2(Struct_1(52392u, vec2<u32>(23689u, 1u), vec4<bool>(false, false, true, true))), 1000f, Struct_1(0u, vec2<u32>(44439u, 32715u), vec4<bool>(false, true, false, true)), Struct_1(37381u, vec2<u32>(4294967295u, 37985u), vec4<bool>(true, false, false, false))), Struct_3(-50188i, Struct_2(Struct_1(1u, vec2<u32>(30635u, 35123u), vec4<bool>(true, true, false, true))), -1000f, Struct_1(53626u, vec2<u32>(1u, 17487u), vec4<bool>(true, true, true, true)), Struct_1(0u, vec2<u32>(28586u, 122571u), vec4<bool>(true, false, true, true))), Struct_3(1i, Struct_2(Struct_1(39985u, vec2<u32>(1u, 0u), vec4<bool>(false, false, false, true))), -824f, Struct_1(1u, vec2<u32>(9998u, 66217u), vec4<bool>(true, true, false, false)), Struct_1(4294967295u, vec2<u32>(1u, 7547u), vec4<bool>(false, false, false, false))), Struct_3(0i, Struct_2(Struct_1(0u, vec2<u32>(1u, 6171u), vec4<bool>(false, true, true, true))), 785f, Struct_1(72630u, vec2<u32>(23016u, 1u), vec4<bool>(false, false, true, false)), Struct_1(29240u, vec2<u32>(4294967295u, 2050u), vec4<bool>(true, false, true, false))), Struct_3(-57243i, Struct_2(Struct_1(1u, vec2<u32>(28263u, 4294967295u), vec4<bool>(false, true, false, true))), -690f, Struct_1(1u, vec2<u32>(4294967295u, 3685u), vec4<bool>(true, false, false, true)), Struct_1(39794u, vec2<u32>(0u, 48608u), vec4<bool>(true, false, true, true))), Struct_3(i32(-2147483648), Struct_2(Struct_1(43046u, vec2<u32>(1u, 0u), vec4<bool>(true, true, true, false))), -1761f, Struct_1(14592u, vec2<u32>(1u, 37574u), vec4<bool>(true, true, true, false)), Struct_1(0u, vec2<u32>(1u, 0u), vec4<bool>(true, false, false, false))), Struct_3(-1i, Struct_2(Struct_1(55362u, vec2<u32>(21099u, 4294967295u), vec4<bool>(false, true, false, false))), 975f, Struct_1(15071u, vec2<u32>(15229u, 94715u), vec4<bool>(false, false, true, false)), Struct_1(1u, vec2<u32>(4294967295u, 0u), vec4<bool>(true, false, true, false))), Struct_3(0i, Struct_2(Struct_1(0u, vec2<u32>(73731u, 28119u), vec4<bool>(true, false, false, true))), 646f, Struct_1(4294967295u, vec2<u32>(49232u, 0u), vec4<bool>(false, true, true, true)), Struct_1(4294967295u, vec2<u32>(0u, 0u), vec4<bool>(false, true, true, false))), Struct_3(0i, Struct_2(Struct_1(1u, vec2<u32>(1u, 15101u), vec4<bool>(true, false, true, false))), -413f, Struct_1(64894u, vec2<u32>(81120u, 92500u), vec4<bool>(true, false, true, true)), Struct_1(4294967295u, vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, true, true))));

var<private> global2: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global3: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(4294967295u, 82370u, 4294967295u), vec3<u32>(25237u, 1u, 4294967295u), vec3<u32>(25994u, 0u, 4294967295u), vec3<u32>(4294967295u, 31822u, 4294967295u), vec3<u32>(60973u, 50487u, 94900u), vec3<u32>(18616u, 22355u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 68442u, 10814u), vec3<u32>(1u, 1u, 1u), vec3<u32>(84074u, 4294967295u, 36531u), vec3<u32>(14315u, 4801u, 1u), vec3<u32>(1u, 59877u, 4294967295u), vec3<u32>(22239u, 4294967295u, 16814u), vec3<u32>(19458u, 12323u, 68818u), vec3<u32>(0u, 47618u, 62135u), vec3<u32>(0u, 4294967295u, 38256u), vec3<u32>(15236u, 10486u, 1u), vec3<u32>(0u, 1u, 23814u), vec3<u32>(6666u, 10843u, 0u), vec3<u32>(7571u, 570u, 1u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(12098u & global2.x, ~u_input.b), _wgslsmith_add_u32(~u_input.b, global2.x)) | global2.x, 863u, 57972u);
    global2 = countOneBits(~vec2<u32>(65449u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(40359u, 4294967295u, u_input.c, u_input.c), vec4<u32>(global2.x, global2.x, var_0.x, 54828u)), vec4<u32>(global2.x, u_input.c, global2.x, var_0.x))));
    let var_1 = Struct_2(Struct_1(~select(1u, global2.x, false) << (_wgslsmith_add_u32(1u, ~var_0.x) % 32u), vec2<u32>(var_0.x, ~(var_0.x >> (0u % 32u))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true))));
    global1 = array<Struct_3, 29>();
    var var_2 = ~(~countOneBits(~(vec2<u32>(35033u, 4294967295u) | vec2<u32>(global2.x, var_0.x))));
    return 313f;
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = u_input.b;
    let var_1 = vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 1i, -u_input.a.x), ~(-(~2147483647i & reverseBits(u_input.a.x))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) + 544f))) - _wgslsmith_f_op_f32(max(-118f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    var var_3 = vec3<f32>(var_2, _wgslsmith_f_op_f32(294f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_div_f32(var_2, var_2)), _wgslsmith_f_op_f32(func_3()))), var_2);
    global2 = select(~vec2<u32>(1u, ~var_0) << (min(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 1u), global0[_wgslsmith_index_u32(58566u, 2u)]), select(vec2<u32>(0u, 0u), vec2<u32>(var_0, var_0), true) << (~vec2<u32>(var_0, global2.x) % vec2<u32>(32u))) % vec2<u32>(32u)), ~firstLeadingBit(global0[_wgslsmith_index_u32((2385u & global2.x) >> (~u_input.b % 32u), 2u)]), vec2<bool>(all(vec4<bool>(false, false, false, true)) == arg_0, !(!(false | arg_0))));
    return arg_0;
}

fn func_1() -> vec2<u32> {
    let var_0 = func_2(true);
    var var_1 = Struct_2(Struct_1(1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 2u)] | vec2<u32>(u_input.c, global2.x), firstTrailingBit(vec2<u32>(global2.x, 1u))) ^ global2.x, 2u)], !select(!vec4<bool>(false, true, var_0, var_0), vec4<bool>(false, false, false, var_0), true || var_0)));
    var var_2 = -(i32(-1i) * -u_input.a.x) ^ _wgslsmith_add_i32(-u_input.a.x >> (5816u % 32u), 0i);
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(-(~u_input.a.x), 6796i), abs(_wgslsmith_sub_i32(0i, ~reverseBits(2147483647i))), u_input.a.x | 1i, 0i);
    let var_4 = var_1.a.b.x;
    return var_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 29>();
    var var_0 = -reverseBits(u_input.a.x);
    global3 = array<vec3<u32>, 20>();
    global0 = array<vec2<u32>, 2>();
    let var_1 = true;
    global2 = ~firstLeadingBit(global0[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(u_input.b, 0u, u_input.b)), 2u)]);
    global2 = ~global0[_wgslsmith_index_u32(137073u, 2u)];
    var var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global2.x, u_input.c, 0u, 0u)) >> (vec4<u32>(1u, 1u, ~1u, global2.x) % vec4<u32>(32u)), ~(~firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, global2.x, 25592u)))), _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, global2.x, 62266u) & vec4<u32>(global2.x, 1u, u_input.b, 1132u), firstTrailingBit(vec4<u32>(1u, 1u, 57329u, 55493u)), vec4<u32>(u_input.b, 2028u, global2.x, u_input.b)), select(_wgslsmith_div_vec4_u32(~vec4<u32>(global2.x, global2.x, u_input.c, u_input.c), vec4<u32>(33319u, 4294967295u, global2.x, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(20654u, u_input.c, u_input.b, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(27554u, 28964u, u_input.b, global2.x), vec4<u32>(global2.x, 38503u, u_input.c, 0u))), vec4<bool>(true, !var_1, true, true))));
    let var_3 = Struct_2(Struct_1(select(28088u, min(_wgslsmith_mult_u32(4294967295u, u_input.c), ~16006u), !var_1), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, global2.x), func_1()), vec4<bool>(true, select(65111i, u_input.a.x, var_1) > u_input.a.x, all(!vec2<bool>(var_1, true)), func_2(select(false, false, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1413f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-789f))), -1096f), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-978f, 651f))), _wgslsmith_f_op_f32(step(-398f, 389f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-710f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(441f + 122f), _wgslsmith_f_op_f32(f32(-1f) * -1640f)))), vec3<i32>(~22346i, firstLeadingBit(~u_input.a.x), -11178i), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2147483647i, u_input.a.x))), vec3<i32>(u_input.a.x, reverseBits(u_input.a.x), ~u_input.a.x)), ~(~vec3<i32>(u_input.a.x, 35268i, u_input.a.x) << (~global3[_wgslsmith_index_u32(1u, 20u)] % vec3<u32>(32u)))), firstLeadingBit(-9945i));
}

