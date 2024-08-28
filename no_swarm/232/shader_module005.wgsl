struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(17830u, Struct_2(true, vec4<bool>(true, false, true, false), false, true), vec3<u32>(1082u, 81933u, 1u), vec4<i32>(2147483647i, 8614i, -35127i, 23789i), Struct_3(Struct_2(false, vec4<bool>(false, true, true, true), true, false), Struct_1(-3476i, 2147483647i, vec2<i32>(0i, 5981i), false), 690f)), Struct_4(64329u, Struct_2(false, vec4<bool>(true, true, false, true), false, false), vec3<u32>(4294967295u, 1u, 33058u), vec4<i32>(18880i, 1i, i32(-2147483648), -15856i), Struct_3(Struct_2(true, vec4<bool>(true, true, true, false), false, true), Struct_1(-70864i, 2147483647i, vec2<i32>(1i, 51976i), false), 1220f)), Struct_4(30123u, Struct_2(false, vec4<bool>(true, true, false, false), false, true), vec3<u32>(0u, 24795u, 4294967295u), vec4<i32>(36236i, -7703i, 10238i, 0i), Struct_3(Struct_2(true, vec4<bool>(true, true, true, true), true, false), Struct_1(i32(-2147483648), 1i, vec2<i32>(13245i, 2147483647i), true), 1282f)), Struct_4(36087u, Struct_2(false, vec4<bool>(true, true, true, true), true, true), vec3<u32>(1u, 3727u, 1u), vec4<i32>(-5462i, 0i, i32(-2147483648), -1i), Struct_3(Struct_2(true, vec4<bool>(false, true, false, true), true, true), Struct_1(1i, 67980i, vec2<i32>(-1i, 1i), true), 546f)), Struct_4(1u, Struct_2(false, vec4<bool>(false, true, true, true), true, true), vec3<u32>(29736u, 104519u, 51644u), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 2147483647i), Struct_3(Struct_2(false, vec4<bool>(true, false, true, false), true, true), Struct_1(-1i, 1i, vec2<i32>(-74470i, 5660i), false), 568f)), Struct_4(26800u, Struct_2(true, vec4<bool>(true, false, false, false), true, true), vec3<u32>(60436u, 1u, 80069u), vec4<i32>(-21376i, -1i, 8422i, 74158i), Struct_3(Struct_2(true, vec4<bool>(true, false, true, false), false, true), Struct_1(-1i, -19844i, vec2<i32>(-1i, 0i), true), -247f)), Struct_4(1u, Struct_2(false, vec4<bool>(false, false, true, true), false, false), vec3<u32>(1u, 0u, 39445u), vec4<i32>(-22712i, i32(-2147483648), 2147483647i, -17190i), Struct_3(Struct_2(true, vec4<bool>(false, true, true, false), false, true), Struct_1(i32(-2147483648), -34373i, vec2<i32>(-1i, i32(-2147483648)), true), 927f)), Struct_4(48791u, Struct_2(false, vec4<bool>(true, false, false, false), true, true), vec3<u32>(59532u, 4294967295u, 0u), vec4<i32>(16390i, 1i, 0i, 0i), Struct_3(Struct_2(false, vec4<bool>(true, false, false, true), false, true), Struct_1(16089i, -23219i, vec2<i32>(-5712i, -13430i), true), 930f)), Struct_4(1u, Struct_2(true, vec4<bool>(true, true, false, true), true, true), vec3<u32>(77522u, 1u, 1u), vec4<i32>(-16142i, -14870i, -1i, -10399i), Struct_3(Struct_2(false, vec4<bool>(true, false, false, false), true, true), Struct_1(-19902i, 2147483647i, vec2<i32>(-53392i, 1i), false), 936f)), Struct_4(7462u, Struct_2(false, vec4<bool>(true, false, true, false), true, true), vec3<u32>(0u, 41154u, 0u), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i), Struct_3(Struct_2(false, vec4<bool>(true, true, true, false), false, true), Struct_1(1i, 2147483647i, vec2<i32>(0i, 33003i), false), 1009f)), Struct_4(36662u, Struct_2(true, vec4<bool>(false, true, false, true), true, true), vec3<u32>(1u, 65079u, 0u), vec4<i32>(1i, 22973i, 1i, -7717i), Struct_3(Struct_2(false, vec4<bool>(true, true, true, true), true, true), Struct_1(-26110i, -9738i, vec2<i32>(54031i, 11143i), true), -1134f)), Struct_4(4294967295u, Struct_2(true, vec4<bool>(true, true, false, false), true, false), vec3<u32>(0u, 1u, 24412u), vec4<i32>(11522i, 1i, -1i, 32280i), Struct_3(Struct_2(false, vec4<bool>(false, false, false, true), false, false), Struct_1(-52282i, 589i, vec2<i32>(-45575i, 11787i), true), -1278f)), Struct_4(16836u, Struct_2(true, vec4<bool>(true, false, false, true), false, false), vec3<u32>(4294967295u, 29682u, 16172u), vec4<i32>(2147483647i, 31137i, 0i, -23075i), Struct_3(Struct_2(false, vec4<bool>(false, false, true, true), false, true), Struct_1(50286i, 0i, vec2<i32>(-3594i, -1i), true), -379f)), Struct_4(80819u, Struct_2(true, vec4<bool>(true, true, false, true), false, true), vec3<u32>(39642u, 0u, 1u), vec4<i32>(1i, -47748i, 1i, 39059i), Struct_3(Struct_2(true, vec4<bool>(false, true, false, false), true, true), Struct_1(i32(-2147483648), -1i, vec2<i32>(1i, -5817i), false), -761f)), Struct_4(1u, Struct_2(false, vec4<bool>(true, true, true, false), true, true), vec3<u32>(0u, 1u, 14812u), vec4<i32>(43309i, i32(-2147483648), 1554i, -42823i), Struct_3(Struct_2(true, vec4<bool>(true, false, true, false), false, true), Struct_1(34142i, 0i, vec2<i32>(-1i, 0i), false), 215f)), Struct_4(21842u, Struct_2(false, vec4<bool>(false, true, true, true), false, false), vec3<u32>(1u, 1u, 31772u), vec4<i32>(-55875i, i32(-2147483648), -75514i, -28428i), Struct_3(Struct_2(true, vec4<bool>(true, false, true, false), true, false), Struct_1(-73829i, -72217i, vec2<i32>(29245i, -30892i), false), -1096f)), Struct_4(43824u, Struct_2(false, vec4<bool>(true, false, false, true), true, true), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(i32(-2147483648), -55216i, 0i, -21449i), Struct_3(Struct_2(true, vec4<bool>(false, false, true, false), true, true), Struct_1(12822i, i32(-2147483648), vec2<i32>(-26506i, 1i), true), 1002f)), Struct_4(13535u, Struct_2(true, vec4<bool>(true, false, true, true), false, true), vec3<u32>(4393u, 0u, 38180u), vec4<i32>(33962i, 2147483647i, 2147483647i, -22299i), Struct_3(Struct_2(false, vec4<bool>(true, false, true, false), true, true), Struct_1(824i, 0i, vec2<i32>(-10623i, 2147483647i), true), 3323f)), Struct_4(63682u, Struct_2(true, vec4<bool>(false, true, false, true), true, false), vec3<u32>(16523u, 1u, 15974u), vec4<i32>(-1i, -40678i, 2147483647i, i32(-2147483648)), Struct_3(Struct_2(true, vec4<bool>(true, true, true, false), false, false), Struct_1(0i, 1i, vec2<i32>(1i, 0i), true), -223f)), Struct_4(0u, Struct_2(false, vec4<bool>(true, true, false, true), true, false), vec3<u32>(36263u, 4294967295u, 15264u), vec4<i32>(-27545i, -25437i, 16358i, 1i), Struct_3(Struct_2(true, vec4<bool>(false, false, true, true), true, true), Struct_1(i32(-2147483648), i32(-2147483648), vec2<i32>(-84033i, -1i), false), 1744f)), Struct_4(60186u, Struct_2(true, vec4<bool>(true, true, false, true), true, false), vec3<u32>(1u, 34949u, 19331u), vec4<i32>(2147483647i, -1i, -34401i, 453i), Struct_3(Struct_2(false, vec4<bool>(true, false, false, false), true, true), Struct_1(1i, 2147483647i, vec2<i32>(-48224i, 8295i), true), -1406f)), Struct_4(3440u, Struct_2(true, vec4<bool>(false, true, true, true), false, true), vec3<u32>(1u, 1u, 52267u), vec4<i32>(13182i, 64058i, 2147483647i, -1i), Struct_3(Struct_2(true, vec4<bool>(true, false, false, false), true, false), Struct_1(27573i, -20882i, vec2<i32>(0i, -28997i), true), 1118f)), Struct_4(1u, Struct_2(true, vec4<bool>(true, false, false, false), false, false), vec3<u32>(0u, 523u, 1u), vec4<i32>(22057i, -27686i, -37447i, 0i), Struct_3(Struct_2(false, vec4<bool>(true, true, false, true), false, true), Struct_1(0i, 1i, vec2<i32>(-1i, -30891i), false), -665f)), Struct_4(0u, Struct_2(false, vec4<bool>(true, true, false, true), true, false), vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(-17598i, -1i, 0i, -28825i), Struct_3(Struct_2(true, vec4<bool>(true, false, true, true), false, true), Struct_1(32240i, 38321i, vec2<i32>(2147483647i, i32(-2147483648)), true), -717f)), Struct_4(7385u, Struct_2(true, vec4<bool>(false, false, false, false), true, true), vec3<u32>(0u, 0u, 0u), vec4<i32>(-10903i, 2147483647i, 1i, -15675i), Struct_3(Struct_2(true, vec4<bool>(false, false, true, false), false, false), Struct_1(3740i, 2147483647i, vec2<i32>(2147483647i, 0i), true), 1294f)), Struct_4(4294967295u, Struct_2(true, vec4<bool>(true, false, true, true), true, true), vec3<u32>(1u, 4294967295u, 95u), vec4<i32>(-1i, 1i, -667i, -3455i), Struct_3(Struct_2(true, vec4<bool>(true, false, true, true), false, false), Struct_1(i32(-2147483648), 50559i, vec2<i32>(-1i, 14627i), true), 1000f)), Struct_4(40817u, Struct_2(true, vec4<bool>(true, false, true, false), false, true), vec3<u32>(0u, 37505u, 0u), vec4<i32>(-66510i, i32(-2147483648), 1i, -9331i), Struct_3(Struct_2(true, vec4<bool>(false, false, true, true), true, true), Struct_1(i32(-2147483648), -64042i, vec2<i32>(-17281i, 0i), true), -348f)), Struct_4(16791u, Struct_2(false, vec4<bool>(true, false, false, false), false, false), vec3<u32>(61772u, 73937u, 15094u), vec4<i32>(-35359i, 27251i, 1i, -1i), Struct_3(Struct_2(false, vec4<bool>(false, true, false, true), true, false), Struct_1(54562i, 41331i, vec2<i32>(i32(-2147483648), i32(-2147483648)), false), 1000f)), Struct_4(4294967295u, Struct_2(false, vec4<bool>(false, true, true, false), false, false), vec3<u32>(0u, 4294967295u, 22201u), vec4<i32>(2147483647i, -1i, -1i, -12046i), Struct_3(Struct_2(false, vec4<bool>(true, true, false, false), true, false), Struct_1(-1i, 14078i, vec2<i32>(-1i, -3687i), false), -1444f)));

var<private> global1: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(2107f, 621f, 462f), vec3<f32>(388f, -1437f, 589f), vec3<f32>(-669f, 195f, 1000f), vec3<f32>(222f, 813f, -1000f), vec3<f32>(-503f, -1000f, -939f), vec3<f32>(3015f, 524f, 606f), vec3<f32>(-2601f, -410f, -252f), vec3<f32>(632f, 1000f, 544f), vec3<f32>(-879f, -815f, 269f), vec3<f32>(353f, -1044f, 570f), vec3<f32>(-682f, 605f, 437f), vec3<f32>(1209f, -1068f, -1189f), vec3<f32>(-1000f, -1464f, -839f), vec3<f32>(-1386f, 743f, 1652f));

var<private> global2: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false));

var<private> global3: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global3 = countOneBits(_wgslsmith_clamp_u32(u_input.d.x, firstLeadingBit(abs(129463u)), ~arg_1.c.x));
    global3 = abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.c.x, 22678u, u_input.c), vec3<u32>(u_input.c, 64585u, 6822u)) >> (firstLeadingBit(vec3<u32>(100514u, arg_1.c.x, 10686u)) % vec3<u32>(32u)), select(u_input.d, select(vec3<u32>(arg_1.c.x, u_input.c, 1u), arg_1.c, false), all(arg_2.b))), arg_1.a));
    var var_0 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(~(~vec3<u32>(6081u, arg_1.a, arg_1.c.x))), abs(_wgslsmith_div_vec3_u32(select(vec3<u32>(15623u, 26318u, 13837u), _wgslsmith_mult_vec3_u32(u_input.d, u_input.d), true), ~_wgslsmith_add_vec3_u32(arg_1.c, vec3<u32>(u_input.a.x, 4294967295u, u_input.c)))));
    return abs(9240u);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_5) -> f32 {
    let var_0 = -arg_3.b.a >> (4266u % 32u);
    global3 = func_3(arg_3.d.e.b, arg_3.d, arg_3.d.b, Struct_1(-2147483647i, arg_3.c.x, ~vec2<i32>(47534i, var_0), false));
    global3 = _wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, ~max(1581u, arg_3.d.c.x), 4294967295u), _wgslsmith_div_vec3_u32(arg_3.d.c, _wgslsmith_sub_vec3_u32(vec3<u32>(33001u, 0u, arg_3.d.a), arg_2) << (reverseBits(u_input.d) % vec3<u32>(32u))), arg_2));
    let var_1 = Struct_1(reverseBits(-2147483647i), _wgslsmith_dot_vec4_i32(max(-(~arg_3.c), -countOneBits(arg_3.d.d)), _wgslsmith_sub_vec4_i32(~arg_3.c, ~vec4<i32>(u_input.b.x, 36246i, 5056i, -2147483647i)) >> (u_input.a % vec4<u32>(32u))), arg_3.a.zx, true);
    var var_2 = var_1;
    return 568f;
}

fn func_1() -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(2414u, 14u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f - var_0.x) - 1325f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1379f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1638f + 942f), _wgslsmith_f_op_f32(min(-535f, -967f)), true)) * var_0.x)));
    global1 = array<vec3<f32>, 14>();
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(u_input.d.x >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(15472u, u_input.c)), ~vec2<u32>(u_input.a.x, u_input.a.x)) % 32u), 14u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 563f, 1230f) - _wgslsmith_f_op_vec3_f32(-var_1)), vec3<f32>(-1702f, 1644f, _wgslsmith_f_op_f32(func_2(vec2<f32>(var_1.x, 782f), u_input.b.x, vec3<u32>(u_input.a.x, u_input.d.x, 0u), Struct_5(vec3<i32>(u_input.b.x, 18872i, u_input.b.x), Struct_1(-1i, u_input.b.x, u_input.b.zz, true), vec4<i32>(-7598i, 1084i, -1i, 1i), Struct_4(0u, Struct_2(false, vec4<bool>(false, false, false, true), false, false), u_input.d, vec4<i32>(2147483647i, -1i, u_input.b.x, u_input.b.x), Struct_3(Struct_2(true, global2[_wgslsmith_index_u32(1u, 25u)], true, false), Struct_1(-41664i, u_input.b.x, vec2<i32>(-6187i, u_input.b.x), false), var_0.x)), var_0.x))))))));
    let var_3 = abs(-1099i | ~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x));
    return ~select(u_input.a, ~vec4<u32>(~u_input.c, ~u_input.d.x, ~u_input.a.x, ~u_input.c), !any(vec3<bool>(true, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 29>();
    let var_0 = func_1() & u_input.a;
    var var_1 = firstTrailingBit(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x))), 8872i, -2147483647i, countOneBits(4613i))));
    var var_2 = ~_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(var_0, min(var_0, var_0))) >> (~4294967295u % 32u);
    var var_3 = min(var_0.xzw, ~func_1().zyz);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(610f, -378f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) + _wgslsmith_f_op_f32(-629f + 831f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(471f * -500f), false)))));
    global2 = array<vec4<bool>, 25>();
    global0 = array<Struct_4, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~7339i, 0u);
}

