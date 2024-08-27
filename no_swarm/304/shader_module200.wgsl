struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec3<i32>, 1>;

var<private> global2: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec3<i32>(22598i, i32(-2147483648), -48837i), -712f, -4446i, 26471i, vec3<i32>(-11435i, -1i, -3459i)), Struct_5(vec3<i32>(0i, -10039i, 12501i), 224f, -1i, 48688i, vec3<i32>(6861i, -4639i, 2147483647i)), Struct_5(vec3<i32>(13460i, 1i, 6306i), 1014f, 10528i, 52584i, vec3<i32>(-1i, 22574i, -64838i)), Struct_5(vec3<i32>(-24244i, -1i, i32(-2147483648)), -734f, -1i, i32(-2147483648), vec3<i32>(-37472i, -1i, -56096i)), Struct_5(vec3<i32>(-16512i, -1244i, 48495i), 1000f, 1i, -22226i, vec3<i32>(37849i, 22412i, 2368i)), Struct_5(vec3<i32>(2147483647i, -38119i, -25642i), -356f, 2147483647i, -4196i, vec3<i32>(12474i, i32(-2147483648), 1i)), Struct_5(vec3<i32>(5669i, 1i, 889i), -202f, 14787i, 0i, vec3<i32>(2147483647i, -1i, 8019i)), Struct_5(vec3<i32>(-17744i, i32(-2147483648), 0i), -1110f, -1i, -1i, vec3<i32>(24306i, 1i, -41674i)), Struct_5(vec3<i32>(2147483647i, -1i, -83005i), -620f, 2147483647i, -27261i, vec3<i32>(61702i, 0i, 36055i)), Struct_5(vec3<i32>(i32(-2147483648), 70067i, 0i), 211f, -22672i, 2147483647i, vec3<i32>(1i, 2147483647i, 19825i)), Struct_5(vec3<i32>(56371i, 12316i, 11325i), -364f, -29706i, 0i, vec3<i32>(1i, 27331i, 0i)), Struct_5(vec3<i32>(17981i, 16874i, 2147483647i), -672f, -1i, -2906i, vec3<i32>(0i, -1i, -1i)), Struct_5(vec3<i32>(21098i, -5482i, -24247i), -116f, -1i, -10463i, vec3<i32>(2025i, 2147483647i, 1i)), Struct_5(vec3<i32>(-23860i, 1i, -1i), 525f, -1i, -12071i, vec3<i32>(1i, 1i, -12132i)), Struct_5(vec3<i32>(i32(-2147483648), -24978i, -8255i), -510f, -1i, 0i, vec3<i32>(1i, 72209i, 3521i)), Struct_5(vec3<i32>(0i, -51091i, -1i), 682f, 2147483647i, 0i, vec3<i32>(1i, i32(-2147483648), -51188i)), Struct_5(vec3<i32>(15508i, i32(-2147483648), 0i), 746f, -1i, -11391i, vec3<i32>(0i, -1i, 0i)), Struct_5(vec3<i32>(23314i, 0i, -22138i), 1068f, 1i, -2135i, vec3<i32>(0i, -13168i, 34104i)), Struct_5(vec3<i32>(-21349i, i32(-2147483648), 8773i), 1846f, 3887i, 1i, vec3<i32>(-1i, 2147483647i, -4297i)), Struct_5(vec3<i32>(-1i, 31014i, -1i), -2330f, 2147483647i, 2147483647i, vec3<i32>(i32(-2147483648), 47489i, -13493i)), Struct_5(vec3<i32>(3372i, 47475i, 7031i), 188f, 27248i, 1i, vec3<i32>(2147483647i, 0i, -11271i)), Struct_5(vec3<i32>(i32(-2147483648), -6474i, -1i), 119f, -40340i, 2147483647i, vec3<i32>(2147483647i, 1i, 12602i)), Struct_5(vec3<i32>(60669i, -24552i, 0i), -789f, 45741i, 2147483647i, vec3<i32>(i32(-2147483648), i32(-2147483648), -39617i)), Struct_5(vec3<i32>(-6703i, 0i, -9445i), -374f, 0i, 0i, vec3<i32>(1i, i32(-2147483648), 44903i)), Struct_5(vec3<i32>(-48048i, 1i, i32(-2147483648)), -1113f, -13779i, -873i, vec3<i32>(-16243i, 0i, 2147483647i)));

var<private> global3: array<Struct_5, 25>;

var<private> global4: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_5 {
    global2 = array<Struct_5, 25>();
    var var_0 = select(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.a.x, ~arg_0.b << (select(global4.x, arg_3, false) % 32u), arg_0.c.x), 0i ^ select(arg_0.b, arg_0.c.x, arg_0.c.x >= -19072i)), 43768i, false);
    let var_1 = arg_1.d.x;
    global2 = array<Struct_5, 25>();
    let var_2 = vec4<u32>(global4.x, arg_1.b.c, _wgslsmith_mod_u32(~(~global4.x), ~arg_3), u_input.b.x) >> ((abs(~select(vec4<u32>(27137u, global4.x, arg_1.b.c, 4294967295u), vec4<u32>(u_input.b.x, arg_3, global4.x, arg_1.b.c), vec4<bool>(arg_0.d, false, arg_0.d, false))) << (vec4<u32>(~firstTrailingBit(42344u), 49733u, ~arg_1.b.c, 82507u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return Struct_5(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, 2147483647i, firstLeadingBit(-2147483647i) << (1u % 32u)), arg_0.c.zzz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + arg_1.c.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(-1i, -1491i, -1i, 16781i)), (max(arg_0.c, arg_0.c) | (vec4<i32>(-1i, arg_0.b, 27373i, arg_1.a.x) << (var_2 % vec4<u32>(32u)))) ^ vec4<i32>(1i, countOneBits(arg_1.b.a), max(arg_1.b.e.x, -2147483647i), arg_1.b.e.x)), ~1i, global1[_wgslsmith_index_u32(~(~0u & arg_3), 1u)]);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = arg_0.b;
    global0 = !(!select(vec2<bool>(arg_0.b.b, true), vec2<bool>(arg_0.b.b & true, all(vec4<bool>(var_0.b, global0.x, false, false))), vec2<bool>(!var_0.b, arg_0.b.b)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(f32(-1f) * -974f));
    global2 = array<Struct_5, 25>();
    return !select(select(!(!vec2<bool>(global0.x, false)), vec2<bool>(!var_0.b, false), vec2<bool>(true, true)), !vec2<bool>(false, var_1.b.b), select(vec2<bool>(global0.x, !arg_0.b.b), vec2<bool>(all(vec3<bool>(var_0.b, var_1.b.b, true)), !arg_0.b.b), arg_0.b.b && var_1.b.b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(max(_wgslsmith_div_i32(-(~arg_1.d.x), arg_1.a), ~(~(-1i))), ~2147483647i, arg_0);
    var var_1 = ~1u;
    global0 = !(!(!select(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, global0.x), arg_1.b), vec2<bool>(true, true), !vec2<bool>(arg_1.b, arg_1.b))));
    let var_2 = vec2<bool>(all(func_3(Struct_2(vec2<i32>(arg_0, -4052i) >> (u_input.b.zx % vec2<u32>(32u)), Struct_1(arg_1.d.x, true, 28298u, arg_1.e, arg_1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, -1000f, 1309f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, 1574f, 1000f))), ~global1[_wgslsmith_index_u32(global4.x >> (29467u % 32u), 1u)], func_2(Struct_3(vec2<f32>(-311f, -724f), -12334i, vec4<i32>(-1571i, arg_0, 2626i, arg_0), arg_1.b), Struct_2(vec2<i32>(arg_1.d.x, var_0.x), Struct_1(1i, true, 4294967295u, vec2<i32>(2147483647i, 14217i), vec2<i32>(-1i, -1i)), vec4<f32>(276f, -873f, -676f, 683f), vec3<f32>(909f, -1000f, 278f)), global4.x, u_input.a))), any(vec4<bool>(104366u < u_input.a, true, !all(vec4<bool>(true, false, true, global0.x)), arg_1.b)));
    var var_3 = !(!select(select(vec3<bool>(global0.x, var_2.x, var_2.x), select(vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(false, false, true), var_2.x), arg_1.b && false), select(vec3<bool>(global0.x, false, var_2.x), vec3<bool>(false, false, false), 2449i == arg_1.d.x), true));
    return Struct_2(min(vec2<i32>(-12446i, func_2(Struct_3(vec2<f32>(-1687f, -1247f), arg_1.d.x, vec4<i32>(var_0.x, 0i, arg_1.e.x, -1i), true), Struct_2(var_0.xy, Struct_1(arg_1.a, false, 20964u, arg_1.d, var_0.zx), vec4<f32>(998f, 1210f, 2651f, -718f), vec3<f32>(-888f, 795f, 1074f)), 9809u, 4294967295u).c), ~func_2(Struct_3(vec2<f32>(160f, 1841f), 1i, vec4<i32>(arg_0, -1i, -31537i, -16531i), arg_1.b), Struct_2(vec2<i32>(48166i, arg_0), Struct_1(arg_0, var_3.x, 1u, vec2<i32>(arg_1.a, -29203i), vec2<i32>(70033i, -15252i)), vec4<f32>(320f, 1499f, -1514f, -715f), vec3<f32>(-2577f, 2065f, 187f)), u_input.a, u_input.b.x).a.zz) & (vec2<i32>(i32(-1i) * -3482i, ~arg_0) << (vec2<u32>(0u, reverseBits(19008u)) % vec2<u32>(32u))), Struct_1(~_wgslsmith_dot_vec2_i32(~arg_1.d, var_0.zz | var_0.yx), true, abs(_wgslsmith_add_u32(global4.x, arg_1.c)), vec2<i32>(-44387i, arg_1.a) ^ countOneBits(abs(arg_1.e)), vec2<i32>(max(-1i, arg_0), 2378i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-999f, -1934f, _wgslsmith_f_op_f32(trunc(-275f)), -884f), vec4<f32>(-439f, -125f, -1095f, -274f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1801f, -1142f, 1755f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(823f, -298f, -1165f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1253f, 1188f, -1289f))), vec3<f32>(1f, 1f, 1f)), !(!(!vec3<bool>(false, true, var_2.x))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<u32> {
    global0 = select(vec2<bool>(any(vec2<bool>(any(vec4<bool>(global0.x, false, false, false)), all(vec3<bool>(global0.x, false, false)))), true), vec2<bool>(false, !(!func_3(Struct_2(vec2<i32>(arg_1.b, arg_0.x), Struct_1(arg_1.c.x, global0.x, global4.x, vec2<i32>(arg_2.b.d.x, arg_1.b), arg_0.yz), vec4<f32>(arg_1.a.x, arg_2.d.x, 1000f, arg_1.a.x), arg_2.c.ywy), vec3<i32>(arg_0.x, -15275i, arg_2.a.x), global2[_wgslsmith_index_u32(95345u, 25u)]).x)), any(vec3<bool>(true, true, (3554i > arg_0.x) | (arg_1.a.x >= arg_1.a.x))));
    let var_0 = ~arg_1.c | arg_1.c;
    let var_1 = Struct_3(arg_1.a, _wgslsmith_mod_i32(31254i, 2147483647i) & abs(arg_1.c.x), -firstTrailingBit(~arg_1.c), all(!vec2<bool>(true, arg_1.d || arg_1.d)));
    var var_2 = _wgslsmith_f_op_f32(-arg_2.d.x);
    var var_3 = arg_2.b.b;
    return ~vec4<u32>(arg_2.b.c << (_wgslsmith_dot_vec3_u32(~u_input.b, abs(vec3<u32>(u_input.b.x, 14239u, u_input.a))) % 32u), reverseBits(u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.c, u_input.a), vec2<u32>(global4.x, 1u)), global4.x, _wgslsmith_mod_u32(0u, 70979u)), firstTrailingBit(u_input.b)), func_1(var_0.x, func_1(_wgslsmith_div_i32(56423i, 2147483647i), arg_2.b).b).b.c);
}

fn func_5(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, firstTrailingBit(_wgslsmith_mod_i32(45702i, 2147483647i)), firstLeadingBit(1i), -(i32(-1i) * -18044i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 0i, 9058i, -36278i)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(101f, -787f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-747f * -257f), _wgslsmith_f_op_f32(512f - 1652f)))), min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, -1i, 1183i, -1i)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, 81721i, -1629i, -2191i)), _wgslsmith_div_vec4_i32(vec4<i32>(-39208i, -1i, 36026i, 1i), vec4<i32>(-15204i, 115409i, 1325i, 1i)))), vec4<i32>(max(~23340i, 2147483647i), _wgslsmith_mod_i32(~675i, -8935i), _wgslsmith_dot_vec3_i32(vec3<i32>(-29751i, 0i, -42882i), global1[_wgslsmith_index_u32(arg_0.x, 1u)]) & 37044i, -2147483647i), any(select(!vec2<bool>(true, global0.x), select(vec2<bool>(true, false), vec2<bool>(false, global0.x), vec2<bool>(false, true)), select(vec2<bool>(global0.x, false), vec2<bool>(false, false), global0.x)))), func_1(1i, func_1(~2147483647i, func_1(~57537i, Struct_1(-20967i, false, 0u, vec2<i32>(-1i, 0i), vec2<i32>(-13808i, 0i))).b).b));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(971f))), 529f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(round(func_1(16745i, Struct_1(-1i, false, 4294967295u, vec2<i32>(-20914i, -47374i), vec2<i32>(18071i, -2147483647i))).c.wy))), global0.x)), -2147483647i, vec4<i32>(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(-30732i, -17063i), -1i), _wgslsmith_mod_i32(-33147i, _wgslsmith_clamp_i32(~1i, i32(-1i) * -41488i, 1i)), _wgslsmith_mod_i32(i32(-1i) * -1i, 1i), 5904i), global0.x);
    var var_2 = 86870u;
    var_0 = vec4<u32>(73543u, 1u, ~abs(global4.x), _wgslsmith_add_u32(u_input.a, 7390u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_1.a.x, -370f, var_1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1601f, var_1.a.x, var_1.a.x) + vec4<f32>(var_1.a.x, 1319f, var_1.a.x, var_1.a.x))), true))));
    return StorageBuffer((abs(func_2(var_1, Struct_2(var_1.c.xy, Struct_1(var_1.c.x, true, u_input.a, var_1.c.xw, var_1.c.ww), vec4<f32>(var_3.x, -142f, 1712f, var_3.x), var_3.wyw), 18027u, arg_0.x).a.xy) & vec2<i32>(firstTrailingBit(var_1.b), 17990i)) & firstLeadingBit(max(var_1.c.xw, ~var_1.c.xw)), -((vec2<i32>(var_1.c.x, -47545i) << (abs(vec2<u32>(var_0.x, 15569u)) % vec2<u32>(32u))) | func_2(Struct_3(var_3.yy, var_1.c.x, var_1.c, false), func_1(var_1.c.x, Struct_1(var_1.b, global0.x, 58907u, var_1.c.xz, vec2<i32>(-1i, -4302i))), global4.x, ~1u).e.zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(~abs(abs(46396u)), ~_wgslsmith_mod_u32(~global4.x, firstLeadingBit(4294967295u)));
    let var_1 = _wgslsmith_f_op_f32(-1186f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(244f)), 556f)), _wgslsmith_f_op_f32(floor(1f))));
    let x = u_input.a;
    s_output = func_5(vec3<u32>(~(~(~9651u)), _wgslsmith_add_u32(67747u, global4.x), _wgslsmith_dot_vec4_u32(func_4(abs(vec4<i32>(-1053i, -21549i, 0i, -38528i)), Struct_3(vec2<f32>(-1000f, var_1), 1728i, vec4<i32>(-1i, -2147483647i, -13780i, -24111i), global0.x), func_1(-29530i, Struct_1(2147483647i, global0.x, 0u, vec2<i32>(-1i, 1753i), vec2<i32>(27982i, 2147483647i)))), vec4<u32>(~u_input.a, global4.x & global4.x, global4.x, u_input.b.x))));
}

