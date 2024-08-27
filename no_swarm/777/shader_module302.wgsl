struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(8300u, 1u), vec2<i32>(-21844i, -1i), 23299i, vec4<bool>(true, true, true, true)), Struct_2(1428u, 424f, vec2<i32>(4692i, -6080i), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(78645u, 1u), vec2<i32>(2147483647i, i32(-2147483648)), 21350i, vec4<bool>(false, false, false, true))), vec4<i32>(i32(-2147483648), 84187i, 35448i, 24696i), 95629u, 1209f), Struct_4(Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(18084u, 21609u), vec2<i32>(-1i, 33318i), 26889i, vec4<bool>(false, false, false, true)), Struct_2(50194u, -1000f, vec2<i32>(1i, -19758i), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(0u, 4294967295u), vec2<i32>(0i, 33052i), 1i, vec4<bool>(true, false, true, true))), vec4<i32>(-49737i, 8756i, -1i, 52165i), 45486u, 1237f), Struct_4(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(1u, 32627u), vec2<i32>(0i, -12781i), 1i, vec4<bool>(false, true, false, true)), Struct_2(42373u, 564f, vec2<i32>(0i, -31096i), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(34960u, 6751u), vec2<i32>(1i, 10565i), -38033i, vec4<bool>(false, false, false, true))), vec4<i32>(-1i, 2147483647i, -14954i, -28861i), 15137u, -102f), Struct_4(Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(11103u, 0u), vec2<i32>(29225i, i32(-2147483648)), 14712i, vec4<bool>(false, false, false, true)), Struct_2(0u, 1796f, vec2<i32>(-34292i, -46872i), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(29462u, 1u), vec2<i32>(i32(-2147483648), 1i), 48279i, vec4<bool>(true, true, true, false))), vec4<i32>(2147483647i, 2147483647i, -1i, 0i), 0u, 1000f), Struct_4(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(0u, 1656u), vec2<i32>(5328i, -83270i), -1i, vec4<bool>(false, false, false, true)), Struct_2(13523u, 236f, vec2<i32>(-7038i, -1i), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 6768u), vec2<i32>(0i, 0i), 1i, vec4<bool>(true, false, true, true))), vec4<i32>(2147483647i, 2147483647i, 1i, -471i), 0u, -703f), Struct_4(Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(62790u, 1u), vec2<i32>(22266i, 2147483647i), 58646i, vec4<bool>(false, false, false, true)), Struct_2(41481u, 631f, vec2<i32>(-8131i, 1i), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 3171u), vec2<i32>(1i, -42732i), 29562i, vec4<bool>(false, true, false, false))), vec4<i32>(-1i, i32(-2147483648), 0i, -17314i), 0u, -832f), Struct_4(Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(78072u, 5838u), vec2<i32>(10437i, 2147483647i), -21474i, vec4<bool>(false, false, true, true)), Struct_2(84125u, -1315f, vec2<i32>(0i, -24384i), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(46808u, 55888u), vec2<i32>(1i, 32519i), 5057i, vec4<bool>(true, false, false, false))), vec4<i32>(-2262i, 51300i, -1i, 14642i), 2501u, -1113f), Struct_4(Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-17996i, -4743i), 2147483647i, vec4<bool>(true, true, true, false)), Struct_2(0u, -862f, vec2<i32>(i32(-2147483648), -1i), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(63774u, 3422u), vec2<i32>(-38860i, 0i), 2147483647i, vec4<bool>(true, true, false, true))), vec4<i32>(-57446i, -46776i, 1i, 1i), 1u, -775f), Struct_4(Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(43235u, 0u), vec2<i32>(-7494i, 1792i), 2147483647i, vec4<bool>(true, true, false, true)), Struct_2(1u, -166f, vec2<i32>(144i, 23206i), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(1u, 0u), vec2<i32>(i32(-2147483648), -18750i), 2147483647i, vec4<bool>(false, true, true, true))), vec4<i32>(0i, 0i, 1i, i32(-2147483648)), 4294967295u, -1566f), Struct_4(Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(23356u, 35687u), vec2<i32>(26336i, 0i), 2147483647i, vec4<bool>(false, false, true, true)), Struct_2(94568u, 1146f, vec2<i32>(16061i, -30544i), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(31932u, 2069u), vec2<i32>(54623i, -18634i), 1i, vec4<bool>(true, true, false, true))), vec4<i32>(1i, -1i, i32(-2147483648), 1i), 1u, -1475f), Struct_4(Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(11190u, 1u), vec2<i32>(-20642i, 1i), -80983i, vec4<bool>(false, true, false, false)), Struct_2(21766u, -957f, vec2<i32>(0i, -23904i), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-1i, -12021i), 7386i, vec4<bool>(false, false, false, false))), vec4<i32>(-29534i, -1i, -20393i, -42614i), 155263u, 1000f), Struct_4(Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(11794u, 108430u), vec2<i32>(-1i, 206i), -16754i, vec4<bool>(false, true, true, true)), Struct_2(1u, -822f, vec2<i32>(-1i, 0i), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(0u, 1u), vec2<i32>(-6346i, i32(-2147483648)), 13788i, vec4<bool>(true, true, false, true))), vec4<i32>(2147483647i, 0i, 6982i, -31409i), 1u, -926f), Struct_4(Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(1u, 50460u), vec2<i32>(i32(-2147483648), -20388i), 18930i, vec4<bool>(true, true, false, true)), Struct_2(4294967295u, 649f, vec2<i32>(1i, 2147483647i), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(3508u, 14739u), vec2<i32>(i32(-2147483648), -12422i), i32(-2147483648), vec4<bool>(false, false, true, false))), vec4<i32>(1i, 0i, -1i, -36301i), 0u, -1446f), Struct_4(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(1u, 36416u), vec2<i32>(-1i, -28275i), 2147483647i, vec4<bool>(false, true, false, true)), Struct_2(18306u, -286f, vec2<i32>(-13791i, 34814i), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(1u, 40374u), vec2<i32>(0i, -59368i), -653i, vec4<bool>(false, true, true, false))), vec4<i32>(11343i, 63416i, -14751i, -1i), 1u, 690f), Struct_4(Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 0u), vec2<i32>(2147483647i, -58104i), i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_2(4646u, -113f, vec2<i32>(1i, 2147483647i), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(28601u, 0u), vec2<i32>(0i, i32(-2147483648)), 24917i, vec4<bool>(true, true, true, false))), vec4<i32>(-1i, 12347i, -6003i, 66741i), 4294967295u, 478f), Struct_4(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(60928u, 9106u), vec2<i32>(i32(-2147483648), 1i), -53641i, vec4<bool>(false, false, true, false)), Struct_2(57856u, 281f, vec2<i32>(0i, -1i), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(683u, 1u), vec2<i32>(-48320i, -1i), i32(-2147483648), vec4<bool>(false, true, false, true))), vec4<i32>(0i, 0i, 48631i, 14339i), 5886u, -1461f), Struct_4(Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(34216i, 30324i), -32104i, vec4<bool>(false, false, true, false)), Struct_2(4294967295u, 1359f, vec2<i32>(1i, 3191i), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-39037i, i32(-2147483648)), i32(-2147483648), vec4<bool>(false, false, true, true))), vec4<i32>(21758i, 1i, 0i, 62028i), 9927u, 1000f), Struct_4(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(1u, 22582u), vec2<i32>(2147483647i, 2147483647i), -46946i, vec4<bool>(true, true, false, false)), Struct_2(4294967295u, -1790f, vec2<i32>(1i, -1i), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(17121u, 0u), vec2<i32>(-21798i, 34921i), 0i, vec4<bool>(false, true, false, true))), vec4<i32>(2147483647i, 0i, 16591i, -1i), 15915u, -153f), Struct_4(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(72789u, 4294967295u), vec2<i32>(1i, 2147483647i), -1502i, vec4<bool>(true, true, true, true)), Struct_2(4846u, 972f, vec2<i32>(-32955i, 0i), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 39696u), vec2<i32>(30201i, 1i), 15642i, vec4<bool>(true, true, false, false))), vec4<i32>(-1798i, 2147483647i, i32(-2147483648), 21279i), 0u, -2706f), Struct_4(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(1u, 31189u), vec2<i32>(i32(-2147483648), i32(-2147483648)), -29230i, vec4<bool>(false, false, true, false)), Struct_2(14584u, 1097f, vec2<i32>(1i, 26201i), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(545u, 5297u), vec2<i32>(410i, 2147483647i), 2147483647i, vec4<bool>(true, false, true, true))), vec4<i32>(i32(-2147483648), 0i, -1i, 8895i), 42108u, -573f), Struct_4(Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 39901u), vec2<i32>(1i, -47463i), i32(-2147483648), vec4<bool>(true, true, false, true)), Struct_2(54735u, 133f, vec2<i32>(0i, 1i), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(34085u, 16379u), vec2<i32>(1i, 1i), i32(-2147483648), vec4<bool>(false, false, false, false))), vec4<i32>(-46315i, -42890i, 64789i, 10449i), 0u, -159f), Struct_4(Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(38593u, 57249u), vec2<i32>(0i, -1i), i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_2(2161u, -1075f, vec2<i32>(-1i, 50953i), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(1u, 4294967295u), vec2<i32>(-26397i, -28559i), -1i, vec4<bool>(false, false, true, true))), vec4<i32>(-1i, -1i, -1i, 23385i), 15014u, 1000f));

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global2: array<u32, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(654f, 1624f, arg_1.a.b), vec3<f32>(arg_1.a.b, arg_1.a.b, 862f)))) + vec3<f32>(_wgslsmith_f_op_f32(2072f + arg_1.a.b), _wgslsmith_f_op_f32(exp2(arg_1.a.b)), -625f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(arg_1.a.b, arg_1.a.b), -181f, 1298f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2183f, 427f, -255f)), vec3<f32>(1000f, arg_1.a.b, arg_1.a.b))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.a.b, arg_1.a.b)), _wgslsmith_f_op_f32(min(arg_1.a.b, 218f)), 1000f)), !(!(!arg_1.a.d.e.x)))));
    global2 = array<u32, 20>();
    let var_1 = abs(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-45902i, arg_1.a.c.x), -vec2<i32>(-2147483647i, -25520i)), ~(~0i << (u_input.a.x % 32u))));
    var var_2 = ~arg_1.a.d.c.x;
    var_2 = var_1.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.b, arg_1.a.b)) + -1216f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1717f - arg_1.a.b))), -2183f), vec3<f32>(-640f, arg_1.a.b, 1125f))));
}

fn func_2() -> vec3<f32> {
    global1 = array<vec3<bool>, 12>();
    global0 = array<Struct_4, 22>();
    var var_0 = 6007i;
    global0 = array<Struct_4, 22>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 22u)];
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + var_1.e), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e, var_1.b.b)), var_1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true, Struct_3(var_1.b, var_1.b.d.b, vec2<bool>(var_1.b.d.a.x, true)), vec2<bool>(var_1.a.a.x, var_1.b.d.e.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 152f, -1437f), vec3<f32>(var_1.b.b, var_1.b.b, var_1.e))), vec3<f32>(var_1.b.b, var_1.e, var_1.b.b), true))))), vec3<f32>(var_1.b.b, _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(-651f, var_1.e))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = arg_0.x;
    global1 = array<vec3<bool>, 12>();
    global1 = array<vec3<bool>, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(-297f * -428f), all(vec4<bool>(true, false, true, false)))), -1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1108f, 174f, -1582f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1224f, -1016f, 483f) + vec3<f32>(-766f, 1341f, -403f))))));
    var var_2 = -vec3<i32>(~(u_input.b.x | 54044i), max(u_input.b.x | u_input.b.x, u_input.b.x), firstLeadingBit(-26447i | _wgslsmith_div_i32(1i, u_input.b.x)));
    return Struct_2(_wgslsmith_sub_u32(abs(arg_0.x), 79463u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(687f, 965f) + _wgslsmith_f_op_f32(-var_1.x))))), ~(((vec2<i32>(var_2.x, u_input.b.x) | vec2<i32>(-24183i, -13686i)) | vec2<i32>(-2147483647i, -1i)) ^ vec2<i32>(-2147483647i, _wgslsmith_div_i32(55438i, -54894i))), Struct_1(vec4<bool>(false, any(global1[_wgslsmith_index_u32(arg_1, 12u)]), false, true), max(~vec2<u32>(arg_0.x, 4294967295u), u_input.a.xy), vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), -26430i & u_input.b.x), reverseBits(_wgslsmith_add_i32(u_input.b.x, var_2.x))), ~_wgslsmith_mult_i32(~0i, u_input.b.x), vec4<bool>(var_2.x >= 2147483647i, true, all(vec4<bool>(false, true, false, false)), 0i < -var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.b.x);
    let var_1 = func_1(~(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4553u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5406u, 20u)], 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], 1u), vec4<u32>(1u, 0u, u_input.a.x, 62398u), vec4<u32>(51063u, 1754u, 65766u, 1u)), ~vec4<u32>(0u, 4294967295u, 0u, 0u)) << (countOneBits(u_input.a << (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 33133u, 0u, global2[_wgslsmith_index_u32(13464u, 20u)]) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.a.x);
    let var_2 = func_1((u_input.a ^ select(u_input.a, ~vec4<u32>(4294967295u, 0u, 40164u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3132u, 20u)], 20u)], 20u)]), var_1.d.e.x)) & ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(12703u, 0u, reverseBits(u_input.a.x | var_1.a)), _wgslsmith_add_vec3_u32(u_input.a.yxy, reverseBits(max(vec3<u32>(1u, global2[_wgslsmith_index_u32(var_1.a, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), vec3<u32>(global2[_wgslsmith_index_u32(0u, 20u)], var_1.a, 36397u)))))).d;
    global2 = array<u32, 20>();
    var var_3 = vec3<f32>(-219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) - -439f));
    var var_4 = vec4<bool>(var_2.a.x, true, var_2.e.x, func_1(u_input.a >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(47008u, 20u)], var_1.a, 4294967295u, global2[_wgslsmith_index_u32(42849u, 20u)]), u_input.a), u_input.a, any(vec3<bool>(true, var_2.e.x, true))) % vec4<u32>(32u)), (firstLeadingBit(u_input.a.x) >> (~14866u % 32u)) & (0u & (var_1.d.b.x | 0u))).d.e.x);
    let var_5 = any(select(vec2<bool>(func_1(u_input.a, 38369u).d.e.x && true, !var_4.x), func_1(max(max(u_input.a, vec4<u32>(83527u, var_2.b.x, 4294967295u, 4294967295u)), select(vec4<u32>(var_2.b.x, var_1.d.b.x, 4294967295u, var_2.b.x), u_input.a, true)), reverseBits(u_input.a.x)).d.e.wy, vec2<bool>(true, true)));
    global2 = array<u32, 20>();
    var var_6 = global0[_wgslsmith_index_u32(~1u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(45432i, 1i, 2147483647i, 22249i), var_6.c), select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, 24324i, var_2.c.x), var_6.c), _wgslsmith_mod_vec4_i32(var_6.c, vec4<i32>(-1i, var_6.b.c.x, -1i, 2147483647i)), !var_2.a)), global2[_wgslsmith_index_u32(~(~var_2.b.x), 20u)], 0u, var_1.d.b.x);
}

