struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-20686i, 30193i, Struct_1(vec2<i32>(27322i, i32(-2147483648)), vec4<i32>(0i, -25445i, i32(-2147483648), -33735i), vec3<u32>(0u, 0u, 4294967295u), -2021f), vec4<i32>(1i, 1i, 0i, -25802i), Struct_1(vec2<i32>(1i, -18461i), vec4<i32>(20449i, 13701i, 0i, 40644i), vec3<u32>(4294967295u, 4294967295u, 94874u), -1745f));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(37312i, 30136i, Struct_1(vec2<i32>(2147483647i, 0i), vec4<i32>(-12179i, -20839i, -1i, 1i), vec3<u32>(25281u, 4294967295u, 0u), 1549f), vec4<i32>(-13425i, -57523i, 2147483647i, -7784i), Struct_1(vec2<i32>(-1i, 49541i), vec4<i32>(-33618i, 1i, 0i, 2147483647i), vec3<u32>(0u, 80411u, 4294967295u), 461f)), Struct_2(52013i, 2147483647i, Struct_1(vec2<i32>(2147483647i, -66474i), vec4<i32>(1i, -22676i, 6304i, 18729i), vec3<u32>(26399u, 58467u, 4294967295u), -1057f), vec4<i32>(-23760i, -1i, -2399i, 2147483647i), Struct_1(vec2<i32>(0i, 2147483647i), vec4<i32>(-25127i, -20027i, -1i, 1i), vec3<u32>(0u, 0u, 40407u), -1000f)), Struct_2(2147483647i, -7588i, Struct_1(vec2<i32>(1i, 0i), vec4<i32>(-27739i, 0i, 2147483647i, i32(-2147483648)), vec3<u32>(41268u, 4294967295u, 4294967295u), 1000f), vec4<i32>(10495i, -14158i, 2147483647i, -27461i), Struct_1(vec2<i32>(-55907i, 0i), vec4<i32>(35067i, 24153i, 10005i, 1i), vec3<u32>(1u, 0u, 4294967295u), -1000f)), Struct_2(1i, 0i, Struct_1(vec2<i32>(0i, 0i), vec4<i32>(28828i, -38643i, 0i, -18616i), vec3<u32>(1u, 1u, 0u), -1153f), vec4<i32>(i32(-2147483648), 1i, -2116i, -51562i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(-50338i, 1i, -31692i, -37126i), vec3<u32>(24532u, 21784u, 392u), -332f)), Struct_2(1i, 2219i, Struct_1(vec2<i32>(27501i, -1i), vec4<i32>(1i, 0i, 30082i, 18027i), vec3<u32>(45853u, 4294967295u, 31678u), -654f), vec4<i32>(37512i, -30772i, -24554i, 14369i), Struct_1(vec2<i32>(-45086i, -13134i), vec4<i32>(-36475i, 10053i, 0i, -38029i), vec3<u32>(42300u, 5216u, 6344u), 537f)), Struct_2(2147483647i, 2147483647i, Struct_1(vec2<i32>(-39761i, -10956i), vec4<i32>(-1i, 12911i, -50725i, 2147483647i), vec3<u32>(4294967295u, 0u, 58238u), 102f), vec4<i32>(0i, -31413i, -36668i, 2147483647i), Struct_1(vec2<i32>(27635i, 2147483647i), vec4<i32>(11811i, -1i, -61i, -1i), vec3<u32>(4294967295u, 45313u, 4294967295u), 1000f)), Struct_2(22988i, -9188i, Struct_1(vec2<i32>(-26123i, 11585i), vec4<i32>(2147483647i, 24124i, i32(-2147483648), -50421i), vec3<u32>(4294967295u, 35331u, 4294967295u), -962f), vec4<i32>(-1i, 73692i, 1i, 13629i), Struct_1(vec2<i32>(49952i, 0i), vec4<i32>(6269i, -1i, -17138i, 57024i), vec3<u32>(26873u, 1u, 36476u), -1000f)), Struct_2(0i, i32(-2147483648), Struct_1(vec2<i32>(-52050i, 3116i), vec4<i32>(0i, -1i, 0i, -17155i), vec3<u32>(4294967295u, 0u, 20711u), -2121f), vec4<i32>(i32(-2147483648), -6909i, -110575i, -16873i), Struct_1(vec2<i32>(1i, 0i), vec4<i32>(i32(-2147483648), 48924i, 2147483647i, -1i), vec3<u32>(1u, 4294967295u, 2474u), -982f)), Struct_2(-50296i, -1i, Struct_1(vec2<i32>(22918i, 0i), vec4<i32>(1i, 36766i, -48799i, 2147483647i), vec3<u32>(21489u, 60974u, 0u), 193f), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 1i), Struct_1(vec2<i32>(-50131i, 26674i), vec4<i32>(1i, 2172i, 18896i, 33171i), vec3<u32>(0u, 4294967295u, 21377u), 736f)), Struct_2(35415i, -10780i, Struct_1(vec2<i32>(28037i, i32(-2147483648)), vec4<i32>(-1i, 0i, i32(-2147483648), -30152i), vec3<u32>(29044u, 4294967295u, 1u), 318f), vec4<i32>(-27468i, 50263i, 0i, i32(-2147483648)), Struct_1(vec2<i32>(-1i, 1i), vec4<i32>(80600i, 0i, 2103i, 1i), vec3<u32>(18390u, 80626u, 1u), -585f)), Struct_2(-16992i, 18678i, Struct_1(vec2<i32>(i32(-2147483648), -28127i), vec4<i32>(-44627i, -27549i, 1i, 28925i), vec3<u32>(1u, 4294967295u, 31194u), -182f), vec4<i32>(1i, -1i, 2147483647i, 9222i), Struct_1(vec2<i32>(1i, 1i), vec4<i32>(-12625i, -45785i, 1i, 29035i), vec3<u32>(1u, 0u, 0u), 886f)), Struct_2(-46109i, -41014i, Struct_1(vec2<i32>(-8786i, -1i), vec4<i32>(-24328i, 577i, 2147483647i, -8119i), vec3<u32>(67939u, 0u, 13844u), 204f), vec4<i32>(-48085i, -1i, 0i, i32(-2147483648)), Struct_1(vec2<i32>(0i, -11102i), vec4<i32>(1i, 0i, 1i, 1i), vec3<u32>(29396u, 20212u, 82295u), -405f)), Struct_2(-68148i, 13282i, Struct_1(vec2<i32>(0i, -17000i), vec4<i32>(9317i, 1i, -17370i, 6927i), vec3<u32>(0u, 11292u, 1u), 1106f), vec4<i32>(0i, 1i, 1i, 1i), Struct_1(vec2<i32>(731i, 1i), vec4<i32>(0i, 1i, -33819i, 0i), vec3<u32>(4294967295u, 97111u, 41785u), -761f)), Struct_2(i32(-2147483648), i32(-2147483648), Struct_1(vec2<i32>(-13104i, 15237i), vec4<i32>(-40257i, 1i, 1i, 0i), vec3<u32>(7087u, 4294967295u, 45166u), -1048f), vec4<i32>(41540i, 0i, -23497i, -1i), Struct_1(vec2<i32>(0i, -15112i), vec4<i32>(0i, -1i, 22642i, 2147483647i), vec3<u32>(56001u, 31561u, 21094u), -188f)), Struct_2(-1i, i32(-2147483648), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, -1i, -14446i, i32(-2147483648)), vec3<u32>(0u, 29346u, 1u), 874f), vec4<i32>(-13250i, -33175i, 2147483647i, -1i), Struct_1(vec2<i32>(-16518i, -6899i), vec4<i32>(8296i, 10262i, 1i, i32(-2147483648)), vec3<u32>(34999u, 4294967295u, 0u), 860f)), Struct_2(33637i, i32(-2147483648), Struct_1(vec2<i32>(18944i, 1i), vec4<i32>(i32(-2147483648), 22112i, 1i, -16465i), vec3<u32>(7201u, 1u, 0u), 689f), vec4<i32>(1i, -1i, -19837i, 8417i), Struct_1(vec2<i32>(-8761i, 0i), vec4<i32>(-18934i, -5779i, 1i, 7799i), vec3<u32>(29557u, 30271u, 79979u), 952f)), Struct_2(-1i, i32(-2147483648), Struct_1(vec2<i32>(-30260i, -1i), vec4<i32>(1i, 0i, i32(-2147483648), -65918i), vec3<u32>(0u, 1u, 1u), 1724f), vec4<i32>(0i, i32(-2147483648), 2147483647i, -1i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(2147483647i, -42593i, 2147483647i, -11388i), vec3<u32>(4294967295u, 26452u, 61651u), 517f)), Struct_2(1i, 26608i, Struct_1(vec2<i32>(37499i, -1i), vec4<i32>(1i, -1i, 0i, 2147483647i), vec3<u32>(49383u, 1u, 51332u), -1000f), vec4<i32>(33178i, -9139i, 54221i, -7072i), Struct_1(vec2<i32>(-1i, -38481i), vec4<i32>(-20025i, -35920i, 17967i, 1i), vec3<u32>(4138u, 1u, 19107u), 1609f)), Struct_2(0i, -30020i, Struct_1(vec2<i32>(-1i, -1i), vec4<i32>(-30984i, -1i, i32(-2147483648), 0i), vec3<u32>(0u, 0u, 1u), 153f), vec4<i32>(-27802i, i32(-2147483648), -18813i, i32(-2147483648)), Struct_1(vec2<i32>(0i, 1i), vec4<i32>(-83786i, 0i, 1i, -35092i), vec3<u32>(4388u, 545u, 55730u), 1080f)), Struct_2(17823i, -22265i, Struct_1(vec2<i32>(43063i, 2147483647i), vec4<i32>(-22985i, 1i, 30067i, -1i), vec3<u32>(53218u, 28691u, 4294967295u), 1583f), vec4<i32>(-1i, 2147483647i, -30025i, 16894i), Struct_1(vec2<i32>(1i, 0i), vec4<i32>(-15407i, 1i, 15910i, -60027i), vec3<u32>(23410u, 44516u, 41673u), 109f)), Struct_2(0i, -13933i, Struct_1(vec2<i32>(-1i, -9101i), vec4<i32>(-40056i, i32(-2147483648), 8702i, -2824i), vec3<u32>(0u, 42340u, 0u), -976f), vec4<i32>(-27670i, -6790i, -34760i, 0i), Struct_1(vec2<i32>(0i, 0i), vec4<i32>(18026i, -40090i, 2147483647i, -6972i), vec3<u32>(0u, 1u, 19857u), -321f)));

var<private> global2: array<f32, 15> = array<f32, 15>(1526f, -343f, 1707f, -1505f, -1311f, 720f, -1739f, -1018f, 284f, -1503f, -191f, 803f, -1967f, -1000f, -308f);

var<private> global3: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 21u)];
    global0 = Struct_2(~abs(-1i), _wgslsmith_clamp_i32(global0.d.x & min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.a, global0.b), vec3<i32>(global0.d.x, global0.c.a.x, 2147483647i)), -17263i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(35444i, global0.c.b.x, global0.d.x, -1i), vec4<i32>(global0.a, -6307i, global0.d.x, global0.a)), 29061i), abs(global0.e.a.x)), -global0.d.x), global0.e, vec4<i32>(1i | _wgslsmith_dot_vec3_i32(global0.e.b.xxx, global0.d.wzz), ~1i, -_wgslsmith_mult_i32(~global0.d.x, i32(-1i) * -1i), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(global0.b, global0.d.x), _wgslsmith_clamp_i32(global0.c.a.x, countOneBits(0i), -922i), -14192i)), Struct_1(firstTrailingBit(-global0.c.a), ~vec4<i32>(-12712i, global0.a, global0.c.b.x, ~2147483647i), global0.e.c, 223f));
    global3 = all(vec3<bool>(false, true, !any(vec2<bool>(true, true))));
    global1 = array<Struct_2, 21>();
    let var_0 = global0.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-443f - global0.e.d) - _wgslsmith_f_op_f32(f32(-1f) * -703f))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1964f, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]))), vec4<f32>(-1253f, -1652f, global2[_wgslsmith_index_u32(u_input.a.x ^ global0.c.c.x, 15u)], global2[_wgslsmith_index_u32(9070u, 15u)])), vec4<f32>(global2[_wgslsmith_index_u32(global0.e.c.x, 15u)], global2[_wgslsmith_index_u32(~(~1u), 15u)], _wgslsmith_f_op_f32(-666f - _wgslsmith_f_op_f32(trunc(248f))), _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.e.d, 135f, 964f, -1378f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 672f, global2[_wgslsmith_index_u32(global0.c.c.x, 15u)], global0.c.d), vec4<f32>(global2[_wgslsmith_index_u32(9359u, 15u)], global0.c.d, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], -958f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.e.d), _wgslsmith_f_op_f32(-2175f * global0.e.d), _wgslsmith_f_op_f32(ceil(global0.e.d)), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(56565u, 15u)]))))));
    global0 = Struct_2(10981i, _wgslsmith_sub_i32(arg_0, firstLeadingBit(-2147483647i)), global0.e, global0.c.b, global0.c);
    global0 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(39009u, u_input.a.x) >> (_wgslsmith_mult_u32(max(global0.c.c.x, 1u), _wgslsmith_add_u32(43419u, u_input.a.x)) % 32u)) | global0.e.c.x, 21u)];
    var var_1 = global1[_wgslsmith_index_u32(62103u, 21u)];
    global0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~30918u, u_input.a.x)) | ~_wgslsmith_mult_u32(min(u_input.a.x, var_1.e.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(11397u, 3659u, 209u, var_1.e.c.x), ~vec4<u32>(1u, 41669u, var_1.e.c.x, u_input.a.x))), 21u)];
    return Struct_1(var_1.c.b.zw, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-abs(var_1.d), ~firstTrailingBit(global0.e.b)), _wgslsmith_add_vec4_i32(~abs(var_1.d), vec4<i32>(10608i >> (var_1.c.c.x % 32u), countOneBits(33334i), -2147483647i | var_1.d.x, ~2147483647i))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.e.c.x & ~global0.c.c.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24230u), vec2<u32>(global0.c.c.x, 671u)), _wgslsmith_clamp_u32(global0.e.c.x, 28639u, 36180u)), 41594u), vec3<u32>(0u, 4865u, ~firstTrailingBit(var_1.e.c.x))), _wgslsmith_f_op_f32(-922f + var_0.x));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_2 {
    return Struct_2(-2147483647i, _wgslsmith_add_i32(-countOneBits(global0.e.a.x), global0.e.a.x), func_2(0i), firstLeadingBit(global0.c.b >> (~vec4<u32>(global0.c.c.x, global0.e.c.x, 51132u, 4294967295u) % vec4<u32>(32u))), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-global0.c.a.x, -global0.a), vec2<i32>(arg_1.x, _wgslsmith_mult_i32(global0.d.x, global0.b))), ~vec4<i32>(-55891i, _wgslsmith_sub_i32(global0.d.x, arg_1.x), ~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(34824i, 2147483647i, arg_1.x), global0.d.zxz)), vec3<u32>(max(~46769u, global0.c.c.x), ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.d.e.c.x, 55942u, 0u)), arg_0.e.e.c.x | ~8249u), 863f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1234f + -235f) - -1534f), -1718f, _wgslsmith_f_op_f32(216f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~1u, 15u)] * 696f)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(36248u, ~(~4294967295u)), 21u)], func_1(Struct_4(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], _wgslsmith_f_op_f32(select(-763f, 1331f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_f_op_f32(global0.c.d - _wgslsmith_f_op_f32(-global0.e.d)), global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.c.c.x, 1u) ^ firstTrailingBit(94501u), 21u)]), vec3<i32>(2523i, 10914i, 0i) << (vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), vec3<u32>(0u, 0u, 28504u)), 1u) % vec3<u32>(32u))));
    let var_1 = func_1(Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 15u)], _wgslsmith_f_op_f32(-global0.e.d), _wgslsmith_f_op_f32(min(857f, 509f)), func_1(Struct_4(var_0.c, var_0.b, 996f, Struct_2(4833i, var_0.e.e.a.x, Struct_1(var_0.d.c.a, vec4<i32>(1i, -2147483647i, var_0.d.d.x, var_0.d.a), vec3<u32>(global0.c.c.x, global0.c.c.x, u_input.a.x), global2[_wgslsmith_index_u32(48197u, 15u)]), vec4<i32>(global0.e.b.x, 1i, 2147483647i, var_0.e.b), var_0.d.c), Struct_2(0i, var_0.e.b, global0.e, vec4<i32>(-1i, global0.a, var_0.e.c.b.x, var_0.e.e.a.x), Struct_1(global0.c.b.yy, global0.c.b, var_0.d.e.c, var_0.b))), min(vec3<i32>(global0.b, var_0.d.c.b.x, var_0.e.a), var_0.e.e.b.yzw) | select(global0.c.b.xzx, global0.c.b.wxz, false)), func_1(Struct_4(-1000f, _wgslsmith_f_op_f32(444f + 1622f), _wgslsmith_f_op_f32(-global0.e.d), var_0.e, Struct_2(var_0.d.c.b.x, -1i, Struct_1(var_0.d.c.b.wx, global0.c.b, var_0.d.c.c, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), global0.d, var_0.e.c)), vec3<i32>(-global0.d.x, global0.c.a.x ^ global0.c.b.x, reverseBits(11783i)))), vec3<i32>(select(-_wgslsmith_div_i32(global0.b, 1i), _wgslsmith_dot_vec2_i32(func_1(Struct_4(global2[_wgslsmith_index_u32(global0.c.c.x, 15u)], global2[_wgslsmith_index_u32(21148u, 15u)], -372f, var_0.d, Struct_2(global0.c.b.x, -50434i, var_0.d.e, vec4<i32>(-37972i, -2147483647i, 1i, global0.a), Struct_1(var_0.d.d.xx, global0.c.b, var_0.d.c.c, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]))), vec3<i32>(-10021i, 28082i, var_0.e.c.a.x)).e.a, vec2<i32>(1296i, global0.b)), func_1(Struct_4(1509f, 1000f, global0.c.d, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_2(-16402i, 2147483647i, Struct_1(vec2<i32>(global0.a, 41752i), global0.d, vec3<u32>(44415u, var_0.e.c.c.x, global0.c.c.x), 775f), var_0.e.d, Struct_1(vec2<i32>(var_0.e.c.a.x, var_0.d.a), var_0.d.c.b, vec3<u32>(4294967295u, u_input.a.x, global0.e.c.x), 1033f))), var_0.e.c.b.yyy).e.d < _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(25241u, 15u)] - 339f)), _wgslsmith_dot_vec3_i32(-var_0.d.c.b.wzy, var_0.d.c.b.xyy), var_0.e.c.a.x)).c;
    var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1257f + global0.c.d), -1174f))), 988f, _wgslsmith_f_op_f32(-global0.e.d), func_1(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1281f + var_0.b)), _wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(func_2(-1i).d + _wgslsmith_f_op_f32(-global0.c.d)), func_1(Struct_4(-1000f, var_1.d, -958f, var_0.e, Struct_2(var_1.b.x, global0.c.b.x, Struct_1(vec2<i32>(global0.c.b.x, 82087i), vec4<i32>(-2147483647i, var_1.a.x, -1i, var_1.a.x), vec3<u32>(0u, var_1.c.x, u_input.a.x), global0.e.d), global0.c.b, global0.e)), -var_1.b.xxx), Struct_2(0i, -var_0.d.b, func_2(-2147483647i), vec4<i32>(-2147483647i, global0.c.a.x, global0.c.b.x, -46844i), var_0.e.c)), ~(~_wgslsmith_clamp_vec3_i32(var_0.d.c.b.zzy, vec3<i32>(global0.c.b.x, var_0.e.d.x, -22438i), global0.d.xyx))), Struct_2(var_0.d.e.b.x, -global0.c.a.x, Struct_1(vec2<i32>(-global0.c.b.x, var_0.e.c.b.x), func_2(-global0.b).b, ~vec3<u32>(global0.c.c.x, var_1.c.x, var_0.e.e.c.x), _wgslsmith_f_op_f32(-var_0.c)), vec4<i32>(21294i, select(8775i, global0.c.a.x, true), _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_add_i32(var_0.e.b, 48595i)), global0.b), func_2(var_1.b.x)));
    var var_2 = func_2(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.a, var_2.a.x, -47194i, var_1.b.x), global0.e.b), -2147483647i | var_2.a.x), vec2<i32>(~var_1.a.x, ~(-2147483647i)), vec2<bool>(var_1.b.x >= -1i, false)) | firstTrailingBit(global0.d.wy));
}

