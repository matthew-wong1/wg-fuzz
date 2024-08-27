struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(25622i, 0i), vec2<i32>(39493i, 13699i), vec2<i32>(i32(-2147483648), -44731i), vec2<i32>(-60671i, 2147483647i), vec2<i32>(31667i, -1i), vec2<i32>(-61753i, 2147483647i), vec2<i32>(28774i, 26572i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(14694i, 1i), vec2<i32>(-45661i, -28747i), vec2<i32>(27990i, -19451i), vec2<i32>(-14562i, 4600i), vec2<i32>(-1i, -34261i), vec2<i32>(-4697i, 2147483647i), vec2<i32>(22699i, i32(-2147483648)), vec2<i32>(0i, -66431i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 10123i));

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(670f, vec2<bool>(true, false), 1u, false), Struct_1(938f, vec2<bool>(false, false), 4294967295u, true), 68564u), Struct_3(Struct_1(-1657f, vec2<bool>(true, false), 1u, true), Struct_1(-341f, vec2<bool>(false, true), 26693u, true), 128563u), Struct_3(Struct_1(-927f, vec2<bool>(true, true), 1u, false), Struct_1(-1190f, vec2<bool>(true, true), 1u, false), 0u), Struct_3(Struct_1(-196f, vec2<bool>(true, false), 1u, true), Struct_1(-1000f, vec2<bool>(true, false), 0u, false), 48751u), Struct_3(Struct_1(1000f, vec2<bool>(true, false), 1u, true), Struct_1(313f, vec2<bool>(false, true), 4294967295u, false), 59328u), Struct_3(Struct_1(1000f, vec2<bool>(true, true), 9336u, true), Struct_1(404f, vec2<bool>(false, true), 1u, true), 0u), Struct_3(Struct_1(823f, vec2<bool>(false, true), 1u, true), Struct_1(-336f, vec2<bool>(true, false), 48834u, true), 1u), Struct_3(Struct_1(828f, vec2<bool>(false, true), 14569u, false), Struct_1(1095f, vec2<bool>(false, true), 0u, false), 28574u), Struct_3(Struct_1(-1000f, vec2<bool>(true, true), 14805u, false), Struct_1(-1606f, vec2<bool>(false, true), 30659u, true), 17554u), Struct_3(Struct_1(-330f, vec2<bool>(false, true), 47574u, true), Struct_1(1000f, vec2<bool>(false, true), 0u, true), 1u), Struct_3(Struct_1(147f, vec2<bool>(false, true), 25578u, true), Struct_1(-583f, vec2<bool>(false, true), 9584u, true), 60292u), Struct_3(Struct_1(-746f, vec2<bool>(true, false), 7206u, true), Struct_1(-959f, vec2<bool>(false, false), 0u, true), 12262u), Struct_3(Struct_1(629f, vec2<bool>(false, false), 4294967295u, true), Struct_1(243f, vec2<bool>(false, true), 9326u, true), 0u), Struct_3(Struct_1(-1450f, vec2<bool>(false, true), 47530u, true), Struct_1(1124f, vec2<bool>(false, false), 21984u, true), 0u), Struct_3(Struct_1(-1000f, vec2<bool>(true, true), 1u, true), Struct_1(-336f, vec2<bool>(true, true), 10251u, false), 21157u), Struct_3(Struct_1(-1175f, vec2<bool>(false, false), 130528u, false), Struct_1(1000f, vec2<bool>(true, false), 1u, true), 33120u), Struct_3(Struct_1(167f, vec2<bool>(true, false), 1u, false), Struct_1(559f, vec2<bool>(true, true), 0u, false), 1u), Struct_3(Struct_1(-239f, vec2<bool>(false, true), 4352u, false), Struct_1(-1000f, vec2<bool>(true, true), 50824u, true), 0u), Struct_3(Struct_1(-1552f, vec2<bool>(true, false), 4294967295u, false), Struct_1(-460f, vec2<bool>(true, true), 4294967295u, true), 1u), Struct_3(Struct_1(406f, vec2<bool>(false, false), 0u, true), Struct_1(1008f, vec2<bool>(false, true), 1u, false), 94246u), Struct_3(Struct_1(642f, vec2<bool>(false, false), 11166u, true), Struct_1(-636f, vec2<bool>(false, true), 35469u, true), 1u), Struct_3(Struct_1(-756f, vec2<bool>(true, true), 4294967295u, true), Struct_1(174f, vec2<bool>(false, true), 70907u, true), 38052u), Struct_3(Struct_1(-517f, vec2<bool>(false, true), 0u, true), Struct_1(-1000f, vec2<bool>(false, false), 0u, false), 10608u), Struct_3(Struct_1(750f, vec2<bool>(false, false), 1u, true), Struct_1(252f, vec2<bool>(false, false), 13894u, true), 39156u), Struct_3(Struct_1(-1899f, vec2<bool>(false, true), 4294967295u, false), Struct_1(-1018f, vec2<bool>(true, false), 27239u, false), 28527u));

var<private> global2: array<bool, 5> = array<bool, 5>(false, false, false, true, true);

var<private> global3: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(100548u, 4294967295u, 0u, 3526u), vec4<u32>(0u, 158687u, 30368u, 38752u), vec4<u32>(17176u, 36647u, 14883u, 4294967295u), vec4<u32>(50941u, 1u, 1u, 40051u), vec4<u32>(35898u, 0u, 29145u, 4294967295u), vec4<u32>(1184u, 0u, 1u, 4294967295u), vec4<u32>(113289u, 9590u, 4294967295u, 49416u), vec4<u32>(30080u, 4111u, 7931u, 4294967295u), vec4<u32>(5078u, 4294967295u, 1u, 17362u), vec4<u32>(0u, 1u, 4294967295u, 65320u), vec4<u32>(0u, 31928u, 50965u, 3158u), vec4<u32>(9572u, 0u, 0u, 35149u), vec4<u32>(17122u, 4294967295u, 18552u, 0u), vec4<u32>(38678u, 16420u, 58855u, 33909u), vec4<u32>(2830u, 33277u, 8679u, 33110u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> u32 {
    global1 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f)))) - _wgslsmith_f_op_f32(207f * _wgslsmith_f_op_f32(round(787f))));
    let var_1 = !arg_0.x;
    global3 = array<vec4<u32>, 15>();
    global1 = array<Struct_3, 25>();
    return u_input.d.x;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 982f, -1056f, arg_0) - vec4<f32>(1159f, arg_0, 421f, arg_0)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(580f, -464f, 960f, arg_3.d.a.x)))))) - vec4<f32>(-899f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1379f, -1242f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.a, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    var var_1 = arg_3.d;
    global2 = array<bool, 5>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + -134f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-295f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.a, _wgslsmith_f_op_f32(round(arg_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1184f, arg_2.x, arg_2.x)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-261f, arg_1.b.a, 156f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1105f, arg_2.x, -605f), vec3<f32>(arg_3.a.a, -1000f, 2316f), vec3<bool>(arg_3.a.d, global2[_wgslsmith_index_u32(0u, 5u)], false))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.a, -359f, 772f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b.a, arg_2.x, 180f), vec3<f32>(arg_3.b.a, 728f, arg_1.a.a), vec3<bool>(true, arg_1.a.d, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, -702f, 401f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 470f) - vec3<f32>(927f, -610f, 1519f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b.a, -267f, 958f), vec3<f32>(900f, 1000f, -180f), arg_1.b.b.x)))), true)));
    global0 = array<vec2<i32>, 19>();
    let var_1 = vec2<i32>(2147483647i, 0i);
    let var_2 = ~_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.e.x, -1i)), ~vec2<i32>(var_1.x, u_input.a.x)) << (abs(u_input.d) % vec2<u32>(32u));
    var var_3 = !(!global2[_wgslsmith_index_u32(4294967295u, 5u)]);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.xz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1429f), -1000f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(219f, var_0.x) * var_0.yy) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.b.a, -881f), arg_2))))), any(arg_3.b.b)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-480f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1010f)))), _wgslsmith_f_op_vec2_f32(func_4(abs(u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(27170u, 0u, u_input.c, 90277u)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x >> (u_input.d.x % 32u), _wgslsmith_mult_u32(1u, u_input.c)), 15u)]), 25u)], _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_3(-1337f, global1[_wgslsmith_index_u32(u_input.d.x, 25u)], Struct_2(vec2<f32>(358f, 635f), vec4<i32>(u_input.b.x, 13446i, u_input.e.x, -2147483647i)), Struct_4(vec2<u32>(u_input.d.x, 14587u), true, vec3<f32>(271f, 419f, -1000f), Struct_2(vec2<f32>(-289f, 778f), vec4<i32>(-6059i, 2147483647i, u_input.b.x, 0i))))), _wgslsmith_f_op_f32(abs(294f))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-1846f + 633f), !vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 5u)]), ~4294967295u, u_input.a.x <= 15746i), Struct_1(_wgslsmith_f_op_f32(func_3(-426f, global1[_wgslsmith_index_u32(126912u, 25u)], Struct_2(vec2<f32>(-314f, 1729f), vec4<i32>(-2147483647i, u_input.b.x, u_input.e.x, -1i)), Struct_4(u_input.d, true, vec3<f32>(836f, -116f, -2103f), Struct_2(vec2<f32>(174f, 782f), u_input.a)))), select(vec2<bool>(false, false), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 5u)], false)), ~u_input.c, all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 5u)], true, global2[_wgslsmith_index_u32(55497u, 5u)], true))), reverseBits(select(u_input.c, 0u, global2[_wgslsmith_index_u32(u_input.c, 5u)]))))));
    let var_1 = select(select(!select(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], false, true)), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], global2[_wgslsmith_index_u32(u_input.d.x, 5u)], global2[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.d.x, 5u)])), false), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 5u)], global2[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(u_input.c, 5u)], true))), !(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.d.x, 5u)]))), vec3<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(23789u), 5u)], select(var_0.x > var_0.x, false, true), global2[_wgslsmith_index_u32(u_input.d.x, 5u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 5u)] == false, any(vec2<bool>(true, true)) && global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c), 5u)], global2[_wgslsmith_index_u32(1u, 5u)]), !select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(80875u, 5u)], global2[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 5u)], true, global2[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(107090u, 5u)], true)), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], true), false), !(!global2[_wgslsmith_index_u32(firstLeadingBit(0u), 5u)])));
    var var_2 = global1[_wgslsmith_index_u32(abs(~43422u & _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d.x, ~u_input.d.x), select(u_input.d, vec2<u32>(u_input.d.x, 4294967295u), var_1.xx) & vec2<u32>(u_input.d.x, u_input.c))), 25u)];
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a) * var_2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_2.a.a)) * _wgslsmith_f_op_f32(select(var_0.x, var_0.x, global2[_wgslsmith_index_u32(var_2.a.c, 5u)]))))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(~reverseBits(u_input.a)), u_input.a, u_input.a));
    global1 = array<Struct_3, 25>();
    return _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(select(u_input.c, u_input.c, true), ~0u, ~u_input.d.x, func_1(var_2.b.b, vec4<u32>(16328u, 14188u, var_2.b.c, 26880u), u_input.e))) & firstLeadingBit(~global3[_wgslsmith_index_u32(var_2.c, 15u)] ^ global3[_wgslsmith_index_u32(var_2.c & var_2.c, 15u)]), reverseBits(_wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 15u)], ~(~global3[_wgslsmith_index_u32(u_input.d.x, 15u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 25>();
    let var_0 = ~(~(~vec4<u32>(~u_input.c, abs(90706u), func_1(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 5u)]), global3[_wgslsmith_index_u32(17962u, 15u)], vec2<i32>(u_input.e.x, u_input.e.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.c, u_input.c), vec3<u32>(1u, 0u, u_input.d.x)))));
    var var_1 = func_2();
    var var_2 = Struct_1(-386f, !select(select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)]), select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)]), global2[_wgslsmith_index_u32(u_input.d.x, 5u)]), false), select(select(vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(53550u, 5u)]), global2[_wgslsmith_index_u32(var_0.x, 5u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]), !global2[_wgslsmith_index_u32(19126u, 5u)]), all(select(vec3<bool>(global2[_wgslsmith_index_u32(51599u, 5u)], true, global2[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(false, true, true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.d.x, 5u)])))), 11739u, global2[_wgslsmith_index_u32(func_1(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 5u)], global2[_wgslsmith_index_u32(u_input.c, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], false))), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(55634u, 5u)])), true), vec4<u32>(u_input.d.x, 34196u, func_1(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(3304u, 5u)]), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 54064u), 15u)], u_input.a.yz | vec2<i32>(u_input.a.x, u_input.b.x)), abs(48280u)), abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, var_0.x), 19u)]) >> (vec2<u32>(firstLeadingBit(var_0.x), ~1u) % vec2<u32>(32u))), 5u)]);
    var var_3 = vec2<u32>(~abs(0u >> (select(var_2.c, u_input.d.x, var_2.d) % 32u)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(14984u, var_2.c), vec2<u32>(u_input.d.x, 4294967295u) & vec2<u32>(12769u, 9033u)), max(0u, u_input.c)));
    var var_4 = Struct_4(vec2<u32>(31548u, _wgslsmith_mod_u32(max(1u, 4294967295u), u_input.c)), (1i > _wgslsmith_mult_i32(u_input.b.x, -2147483647i)) && true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1290f, var_2.a, 2401f), vec3<f32>(var_2.a, var_2.a, var_2.a))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(-941f, Struct_3(Struct_1(-1087f, var_2.b, 20441u, false), Struct_1(-1000f, var_2.b, 1u, var_2.d), 66292u), Struct_2(vec2<f32>(-1059f, var_2.a), vec4<i32>(u_input.e.x, u_input.b.x, 1i, u_input.b.x)), Struct_4(vec2<u32>(u_input.d.x, var_0.x), false, vec3<f32>(-1000f, 547f, -325f), Struct_2(vec2<f32>(-890f, var_2.a), vec4<i32>(u_input.b.x, u_input.e.x, u_input.a.x, u_input.e.x))))), _wgslsmith_f_op_f32(-1317f - -1000f), _wgslsmith_f_op_f32(-var_2.a)))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -250f)))), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(abs(u_input.a.x), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(79272i, u_input.e.x), vec2<i32>(u_input.b.x, -26338i)) | u_input.a.x, u_input.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.b.x & ~abs(u_input.a.x), vec2<i32>(1i, reverseBits(u_input.a.x)) >> (~var_0.zw % vec2<u32>(32u)), var_4.d.b.x, vec4<u32>(_wgslsmith_add_u32(0u << (var_4.a.x % 32u), var_4.a.x) << (firstTrailingBit(~0u) % 32u), var_3.x, 1u, ~1u), _wgslsmith_mult_i32(~_wgslsmith_add_i32(var_4.d.b.x, -1i) ^ 57448i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -23688i, countOneBits(9998i), u_input.a.x & -2582i), vec4<i32>(_wgslsmith_add_i32(var_4.d.b.x, -2147483647i), -var_4.d.b.x, select(-15261i, u_input.b.x, var_4.b), var_4.d.b.x))));
}

