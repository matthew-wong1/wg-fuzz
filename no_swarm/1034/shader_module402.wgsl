struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(4973u, vec2<u32>(1u, 18002u), 4294967295u, 1u, i32(-2147483648)), Struct_1(0u, vec2<u32>(104148u, 1u), 64501u, 57949u, -857i), vec2<i32>(i32(-2147483648), i32(-2147483648)), i32(-2147483648), Struct_1(41355u, vec2<u32>(92010u, 0u), 10653u, 0u, 13547i)), Struct_2(Struct_1(1u, vec2<u32>(9943u, 5859u), 7079u, 1u, 17098i), Struct_1(4294967295u, vec2<u32>(51655u, 0u), 4294967295u, 4294967295u, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), 28546i, Struct_1(2125u, vec2<u32>(0u, 4294967295u), 20768u, 4294967295u, -23672i)), Struct_2(Struct_1(0u, vec2<u32>(0u, 52087u), 4294967295u, 56u, -17197i), Struct_1(1u, vec2<u32>(33067u, 4758u), 25593u, 73936u, 1i), vec2<i32>(2147483647i, -65412i), 1i, Struct_1(4294967295u, vec2<u32>(4294967295u, 58667u), 4294967295u, 0u, -1i)), Struct_2(Struct_1(47790u, vec2<u32>(6037u, 83441u), 25357u, 73168u, 25797i), Struct_1(4294967295u, vec2<u32>(12364u, 1u), 30479u, 30352u, -15655i), vec2<i32>(1i, -33650i), i32(-2147483648), Struct_1(4294967295u, vec2<u32>(4294967295u, 40317u), 21251u, 0u, -32875i)), Struct_2(Struct_1(4294967295u, vec2<u32>(16240u, 24234u), 1u, 0u, 42770i), Struct_1(43723u, vec2<u32>(41108u, 18271u), 4294967295u, 0u, -9705i), vec2<i32>(0i, 0i), 33318i, Struct_1(48240u, vec2<u32>(1u, 14568u), 0u, 66573u, i32(-2147483648))), Struct_2(Struct_1(22793u, vec2<u32>(9623u, 56875u), 111159u, 4294967295u, 2147483647i), Struct_1(25060u, vec2<u32>(1u, 1u), 4294967295u, 10555u, 12378i), vec2<i32>(28389i, 2147483647i), 93979i, Struct_1(45u, vec2<u32>(0u, 1u), 81591u, 4294967295u, -1i)), Struct_2(Struct_1(4317u, vec2<u32>(29929u, 45785u), 52119u, 1u, -1i), Struct_1(43686u, vec2<u32>(8352u, 79878u), 66968u, 21911u, -37159i), vec2<i32>(2147483647i, 23929i), 0i, Struct_1(67959u, vec2<u32>(55739u, 0u), 50137u, 1u, 2147483647i)), Struct_2(Struct_1(47175u, vec2<u32>(50123u, 1u), 1u, 0u, -73129i), Struct_1(1u, vec2<u32>(0u, 35815u), 53518u, 65827u, 0i), vec2<i32>(1i, 14564i), 17207i, Struct_1(1u, vec2<u32>(14111u, 0u), 0u, 0u, -3986i)), Struct_2(Struct_1(10052u, vec2<u32>(113529u, 43165u), 1u, 4294967295u, -2393i), Struct_1(0u, vec2<u32>(18801u, 4294967295u), 0u, 1u, -1i), vec2<i32>(-21914i, 0i), 1i, Struct_1(603u, vec2<u32>(4294967295u, 4294967295u), 64380u, 4294967295u, 13137i)), Struct_2(Struct_1(94346u, vec2<u32>(1u, 4294967295u), 9175u, 16228u, 1i), Struct_1(7563u, vec2<u32>(0u, 4294967295u), 4527u, 0u, 2147483647i), vec2<i32>(18196i, -10168i), 27945i, Struct_1(0u, vec2<u32>(1u, 4294967295u), 4294967295u, 4294967295u, i32(-2147483648))), Struct_2(Struct_1(3219u, vec2<u32>(0u, 12143u), 132911u, 63989u, i32(-2147483648)), Struct_1(1u, vec2<u32>(0u, 4294967295u), 1u, 0u, 2147483647i), vec2<i32>(-49704i, -32423i), 0i, Struct_1(4294967295u, vec2<u32>(41698u, 68124u), 81214u, 0u, -1i)), Struct_2(Struct_1(17948u, vec2<u32>(41576u, 0u), 20787u, 4294967295u, 21114i), Struct_1(22658u, vec2<u32>(0u, 65422u), 0u, 38728u, 0i), vec2<i32>(i32(-2147483648), 27982i), 21749i, Struct_1(45139u, vec2<u32>(37272u, 26u), 1u, 20523u, -25159i)), Struct_2(Struct_1(0u, vec2<u32>(1u, 4294967295u), 36109u, 27678u, i32(-2147483648)), Struct_1(52025u, vec2<u32>(1u, 1u), 17079u, 0u, 38720i), vec2<i32>(-13786i, -5625i), -56442i, Struct_1(6505u, vec2<u32>(21549u, 41137u), 0u, 1u, i32(-2147483648))), Struct_2(Struct_1(61852u, vec2<u32>(4294967295u, 13001u), 0u, 100969u, 34551i), Struct_1(4294967295u, vec2<u32>(76387u, 4294967295u), 1u, 9685u, -1i), vec2<i32>(-36323i, -49161i), -3256i, Struct_1(0u, vec2<u32>(4294967295u, 1u), 97991u, 0u, -1i)), Struct_2(Struct_1(4294967295u, vec2<u32>(47402u, 4294967295u), 24557u, 6454u, -1i), Struct_1(13704u, vec2<u32>(1u, 4294967295u), 3186u, 63646u, 8342i), vec2<i32>(13339i, 2147483647i), 1i, Struct_1(1u, vec2<u32>(11048u, 41410u), 74391u, 27626u, -1i)), Struct_2(Struct_1(22843u, vec2<u32>(4294967295u, 23375u), 4294967295u, 70922u, 42744i), Struct_1(26054u, vec2<u32>(4294967295u, 83212u), 0u, 10912u, -6887i), vec2<i32>(1i, 6552i), 2147483647i, Struct_1(82231u, vec2<u32>(0u, 0u), 1u, 4294967295u, -7804i)), Struct_2(Struct_1(1u, vec2<u32>(4294967295u, 1u), 43440u, 9798u, 2147483647i), Struct_1(0u, vec2<u32>(54668u, 53428u), 1u, 5239u, -5223i), vec2<i32>(0i, 15089i), -1i, Struct_1(4294967295u, vec2<u32>(0u, 38616u), 1u, 0u, 96343i)), Struct_2(Struct_1(17303u, vec2<u32>(36314u, 0u), 47425u, 52812u, 0i), Struct_1(116539u, vec2<u32>(14564u, 0u), 29016u, 0u, -6555i), vec2<i32>(1i, 0i), -1i, Struct_1(11559u, vec2<u32>(0u, 1u), 0u, 4294967295u, -632i)), Struct_2(Struct_1(14u, vec2<u32>(4294967295u, 86253u), 44344u, 76702u, -57926i), Struct_1(24592u, vec2<u32>(110836u, 1u), 49127u, 81241u, -1i), vec2<i32>(7001i, -19413i), 0i, Struct_1(12186u, vec2<u32>(1u, 1u), 0u, 1u, 0i)), Struct_2(Struct_1(1659u, vec2<u32>(1u, 19694u), 1u, 55723u, 61149i), Struct_1(1u, vec2<u32>(1u, 28295u), 1u, 4294967295u, -2739i), vec2<i32>(1i, -41746i), 16595i, Struct_1(1u, vec2<u32>(4294967295u, 33231u), 1u, 60043u, 2147483647i)), Struct_2(Struct_1(25611u, vec2<u32>(969u, 0u), 20431u, 0u, -24021i), Struct_1(44725u, vec2<u32>(13407u, 34207u), 38387u, 4294967295u, 20881i), vec2<i32>(0i, -1i), 6115i, Struct_1(4294967295u, vec2<u32>(1u, 1u), 1456u, 4294967295u, -32990i)), Struct_2(Struct_1(4294967295u, vec2<u32>(59966u, 0u), 0u, 0u, -1i), Struct_1(1u, vec2<u32>(0u, 17061u), 31415u, 10455u, 48187i), vec2<i32>(-1i, -8207i), i32(-2147483648), Struct_1(0u, vec2<u32>(14886u, 1u), 33400u, 711u, 1i)), Struct_2(Struct_1(77283u, vec2<u32>(1u, 19245u), 100216u, 43719u, -55285i), Struct_1(4294967295u, vec2<u32>(4294967295u, 0u), 73010u, 17793u, 25667i), vec2<i32>(-56264i, 13777i), 1i, Struct_1(1u, vec2<u32>(22310u, 0u), 1u, 29506u, -1i)), Struct_2(Struct_1(40536u, vec2<u32>(1u, 43546u), 76764u, 4294967295u, 0i), Struct_1(4294967295u, vec2<u32>(0u, 1u), 5034u, 10294u, 1i), vec2<i32>(55284i, 0i), 36824i, Struct_1(0u, vec2<u32>(0u, 1u), 1u, 1u, 24384i)), Struct_2(Struct_1(1u, vec2<u32>(4294967295u, 6030u), 0u, 0u, 50080i), Struct_1(62416u, vec2<u32>(0u, 31942u), 8338u, 0u, -1i), vec2<i32>(-1i, 4077i), 1i, Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), 4294967295u, 22793u, 2147483647i)));

var<private> global2: array<u32, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(22422u, u_input.d.x << (53614u % 32u)), 25u)];
    global2 = array<u32, 24>();
    var var_1 = Struct_2(var_0.e, Struct_1(arg_0.c, vec2<u32>(countOneBits(57402u), ~(246u >> (1u % 32u))), _wgslsmith_add_u32(4294967295u, min(~73327u, _wgslsmith_mult_u32(var_0.e.c, 78935u))), countOneBits(_wgslsmith_mod_u32(var_0.b.a, 4294967295u)) & 10445u, firstLeadingBit(-1467i)), ~u_input.c, min(abs(1i), arg_0.e | -2147483647i), arg_0);
    var var_2 = firstLeadingBit(~u_input.b);
    var var_3 = 68470i;
    return var_2.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = Struct_2(Struct_1(0u, vec2<u32>(~global2[_wgslsmith_index_u32(var_0.x, 24u)], 4294967295u) >> (vec2<u32>(min(48371u, arg_0.x), u_input.b.x) % vec2<u32>(32u)), func_3(Struct_1(111878u, var_0.wy, arg_0.x, var_0.x, u_input.a)) << (func_3(Struct_1(8750u, arg_0, var_0.x, u_input.b.x, u_input.e.x)) % 32u), min(countOneBits(30211u), 4294967295u) << (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(48850u, 32474u), 24u)], _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(arg_0.x, 24u)], 0u), 0u) % 32u), 2415i), Struct_1(_wgslsmith_mod_u32(var_0.x, ~arg_0.x), max(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, arg_0.x), ~arg_0), u_input.d.zz), arg_0.x, _wgslsmith_sub_u32(countOneBits(~global2[_wgslsmith_index_u32(u_input.d.x, 24u)]), _wgslsmith_clamp_u32(min(var_0.x, u_input.b.x), firstTrailingBit(arg_0.x), var_0.x << (86001u % 32u))), _wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_clamp_vec3_i32(u_input.e, u_input.e, u_input.e << (vec3<u32>(69770u, u_input.b.x, u_input.d.x) % vec3<u32>(32u))))), vec2<i32>(max(u_input.c.x, -_wgslsmith_div_i32(u_input.c.x, u_input.e.x)), -(~42747i)), reverseBits(-1113i), Struct_1(~_wgslsmith_div_u32(2653u >> (global2[_wgslsmith_index_u32(var_0.x, 24u)] % 32u), ~u_input.b.x), ~(vec2<u32>(0u, 1u) >> (~vec2<u32>(60992u, var_0.x) % vec2<u32>(32u))), var_0.x, func_3(Struct_1(95769u, max(vec2<u32>(global2[_wgslsmith_index_u32(19390u, 24u)], arg_0.x), var_0.zy), firstTrailingBit(var_0.x), 4294967295u, countOneBits(-1i))), u_input.c.x >> (func_3(Struct_1(arg_0.x, arg_0, global2[_wgslsmith_index_u32(0u, 24u)], 15343u, u_input.a)) % 32u)));
    global1 = array<Struct_2, 25>();
    global0 = array<vec3<f32>, 24>();
    global1 = array<Struct_2, 25>();
    return var_1.a;
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2192f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-908f * -250f))) + arg_0.x);
    var var_1 = var_0;
    var var_2 = arg_0.x;
    let var_3 = func_2(vec2<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(abs(u_input.b.x) ^ ~u_input.b.x, 24u)], 2791u), select(13597u, 0u, !all(vec2<bool>(false, false)))));
    let var_4 = u_input.e.zx ^ vec2<i32>(~(-(~35424i)), u_input.c.x);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + arg_0.x)) * _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(arg_0.x * -1183f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 25>();
    global1 = array<Struct_2, 25>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(481f, -638f))))))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -685f), -678f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2035f, 1543f))), true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-585f, 1131f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-1000f, var_0.x), vec2<bool>(true, true)))))));
    var var_1 = u_input.e;
    var var_2 = true;
    let var_3 = global1[_wgslsmith_index_u32(0u, 25u)];
    var var_4 = ~u_input.a;
    global2 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(0i | var_3.e.e, firstLeadingBit(24598i), 13740i, 0i)));
}

