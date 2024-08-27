struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-194f, -2657f, 1224f, -719f, 1495f, 311f, 1050f, 398f, 1370f, 344f, -175f, 141f, 946f, 403f, 987f, 554f, 1503f);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(-1440f, vec2<i32>(34279i, 51035i)), vec4<i32>(-14184i, -27288i, 1i, 10720i), vec2<f32>(-1791f, -2889f), 66141u), Struct_3(Struct_2(714f, vec2<i32>(1i, 0i)), vec4<i32>(0i, -31372i, 2147483647i, -1i), vec2<f32>(-128f, -593f), 1u), Struct_3(Struct_2(-563f, vec2<i32>(-1i, -1i)), vec4<i32>(-19767i, 24135i, 2147483647i, -59753i), vec2<f32>(-316f, -685f), 1u), Struct_3(Struct_2(-270f, vec2<i32>(41972i, -42792i)), vec4<i32>(1i, 11143i, -29174i, 1i), vec2<f32>(1485f, 735f), 0u), Struct_3(Struct_2(835f, vec2<i32>(-3911i, 15879i)), vec4<i32>(1i, 66554i, -833i, i32(-2147483648)), vec2<f32>(-2039f, 654f), 0u), Struct_3(Struct_2(-857f, vec2<i32>(-1i, 23172i)), vec4<i32>(-1i, 0i, -55729i, 2147483647i), vec2<f32>(1732f, 495f), 0u), Struct_3(Struct_2(-514f, vec2<i32>(-43512i, 1i)), vec4<i32>(13128i, 0i, -1i, 2147483647i), vec2<f32>(568f, 1197f), 4294967295u), Struct_3(Struct_2(-971f, vec2<i32>(2147483647i, -3338i)), vec4<i32>(-16352i, 2147483647i, 0i, -44384i), vec2<f32>(-705f, 559f), 0u), Struct_3(Struct_2(-1366f, vec2<i32>(i32(-2147483648), 2147483647i)), vec4<i32>(i32(-2147483648), -14299i, -1i, -1i), vec2<f32>(-138f, -881f), 0u), Struct_3(Struct_2(1267f, vec2<i32>(3928i, -1i)), vec4<i32>(i32(-2147483648), 50809i, 13884i, 1i), vec2<f32>(488f, 564f), 10259u), Struct_3(Struct_2(404f, vec2<i32>(45831i, i32(-2147483648))), vec4<i32>(-8440i, -6059i, 14434i, -1i), vec2<f32>(568f, 1308f), 42357u), Struct_3(Struct_2(-1655f, vec2<i32>(-42884i, 1i)), vec4<i32>(186i, -1i, -2047i, 3254i), vec2<f32>(885f, 1621f), 41045u), Struct_3(Struct_2(2376f, vec2<i32>(43180i, 0i)), vec4<i32>(60600i, 2147483647i, 21599i, 58386i), vec2<f32>(1320f, 315f), 0u), Struct_3(Struct_2(-248f, vec2<i32>(27248i, -21732i)), vec4<i32>(17232i, -1i, 1i, -43641i), vec2<f32>(437f, 109f), 46743u), Struct_3(Struct_2(129f, vec2<i32>(i32(-2147483648), 11563i)), vec4<i32>(1i, -21209i, -27518i, i32(-2147483648)), vec2<f32>(-1480f, 157f), 38912u), Struct_3(Struct_2(-498f, vec2<i32>(0i, 2147483647i)), vec4<i32>(-1i, 0i, i32(-2147483648), 2147483647i), vec2<f32>(-1050f, 273f), 13832u), Struct_3(Struct_2(-1884f, vec2<i32>(-1i, -22415i)), vec4<i32>(55773i, 37705i, -9363i, -33487i), vec2<f32>(443f, -1449f), 67574u), Struct_3(Struct_2(490f, vec2<i32>(-3668i, 2147483647i)), vec4<i32>(i32(-2147483648), 2147483647i, 3746i, 1i), vec2<f32>(1000f, -349f), 40379u), Struct_3(Struct_2(1000f, vec2<i32>(12211i, -12704i)), vec4<i32>(8490i, -16573i, i32(-2147483648), 20638i), vec2<f32>(-351f, 1331f), 1u), Struct_3(Struct_2(209f, vec2<i32>(1i, 6804i)), vec4<i32>(59652i, -32465i, 50539i, -1i), vec2<f32>(480f, -455f), 70279u), Struct_3(Struct_2(1473f, vec2<i32>(-18373i, i32(-2147483648))), vec4<i32>(0i, 11926i, -21672i, 1i), vec2<f32>(1000f, -1213f), 4294967295u), Struct_3(Struct_2(351f, vec2<i32>(26914i, -1i)), vec4<i32>(0i, -1i, i32(-2147483648), 1i), vec2<f32>(490f, 264f), 4294967295u));

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    let var_0 = arg_0;
    global3 = -(~_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a.x, -6977i, u_input.a.x, 89927i) >> (vec4<u32>(24443u, 49818u, 29882u, 51203u) % vec4<u32>(32u))), select(select(vec4<i32>(1i, u_input.b, u_input.a.x, 45390i), vec4<i32>(-2147483647i, u_input.b, -18764i, u_input.a.x), vec4<bool>(false, false, false, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(-13559i, u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, 1i, u_input.b)), -1i <= u_input.b)));
    return ~(~abs(73925u));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global3 = i32(-1i) * -14651i;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, 105f, -469f, global0[_wgslsmith_index_u32(1u, 17u)])))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global0[_wgslsmith_index_u32(2666u, 17u)], arg_0.a, arg_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), -2207f, _wgslsmith_div_f32(arg_0.a, arg_0.a), -2532f)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1328f - 564f)), 586f, global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 17u)]), global0[_wgslsmith_index_u32(min(30935u, 23551u), 17u)]))))));
    var var_0 = i32(-1i) * -(~u_input.b);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~func_3(arg_0.a, vec4<f32>(-500f, -1019f, 792f, -1192f)) & ~28009u, 17u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))))), _wgslsmith_mod_u32(~func_3(global0[_wgslsmith_index_u32(0u, 17u)], vec4<f32>(global0[_wgslsmith_index_u32(3904u, 17u)], -1171f, global0[_wgslsmith_index_u32(0u, 17u)], -2029f)), _wgslsmith_mult_u32(0u << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 2708u), vec3<u32>(11058u, 4294967295u, 4294967295u)))) > abs(1u), vec2<i32>(_wgslsmith_mod_i32(arg_0.b.x, 22201i), firstTrailingBit(u_input.a.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 17u)])))), vec2<i32>((var_1.c.x | (i32(-1i) * -1i)) >> (~(~4294967295u) % 32u), _wgslsmith_dot_vec2_i32(firstTrailingBit(~var_1.c), u_input.a.yz)));
    return global2[_wgslsmith_index_u32(16029u, 22u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.b >> (~vec4<u32>(arg_2.d, arg_1.d, 1u, arg_2.d) % vec4<u32>(32u)), arg_2.b), func_2(func_2(func_2(arg_1.a).a).a).b, select(abs(~arg_2.b), vec4<i32>(_wgslsmith_mult_i32(-57383i, arg_2.b.x), 1i, _wgslsmith_mod_i32(u_input.b, arg_2.a.b.x), 1811i), true)), arg_1.b);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c), arg_1.c);
    var var_2 = Struct_5(u_input.a.x, firstTrailingBit(arg_2.b.x), func_2(func_2(func_2(func_2(Struct_2(-1442f, vec2<i32>(arg_2.b.x, 20643i))).a).a).a).a, ~1u);
    var var_3 = _wgslsmith_f_op_f32(arg_2.a.a * -186f);
    var_2 = Struct_5(-var_0.x, (2837i | ~max(-9243i, arg_1.a.b.x)) << (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2.d, var_2.d, arg_2.d)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.d, 1u, 102009u)), vec3<u32>(1u, arg_1.d, var_2.d))) % 32u), var_2.c, _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(1u, 1u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f * _wgslsmith_f_op_f32(round(799f)))), _wgslsmith_f_op_f32(ceil(-1066f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_3 {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(721f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 17u)])))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-global1.zz), func_2(Struct_2(286f, u_input.a.zx)), Struct_3(Struct_2(335f, vec2<i32>(-1i, u_input.a.x)), vec4<i32>(u_input.b, 2147483647i, u_input.b, 2147483647i), global1.yz, arg_0.x))), -529f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -917f, global1.x, 1250f))))));
    var var_0 = Struct_4(func_2(Struct_2(912f, _wgslsmith_add_vec2_i32(u_input.a.zz, u_input.a.zy) >> (_wgslsmith_div_vec2_u32(arg_0.yy, arg_0.xx) % vec2<u32>(32u)))).a, all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false))) & true, vec3<bool>(true, any(vec3<bool>(true, true, true)), (u_input.a.x < u_input.b) || true));
    let var_1 = !var_0.c.x;
    var var_2 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(65222u >> (arg_0.x % 32u), ~arg_0.x, countOneBits(arg_0.x), arg_0.x & 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(33163u, arg_0.x, arg_0.x, 4294967295u) ^ vec4<u32>(arg_0.x, 4294967295u, 21313u, arg_0.x), vec4<u32>(1u, arg_0.x, 4294967295u, 68047u) | vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x))), ~(~vec4<u32>(arg_0.x, 0u, 7067u, arg_0.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + _wgslsmith_f_op_f32(min(1000f, -1341f)))), -699f)), vec2<i32>(-21425i, 26977i & _wgslsmith_mod_i32(var_0.a.b.x, _wgslsmith_div_i32(13455i, var_0.a.b.x))));
    return func_2(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-767f, 547f))))), firstLeadingBit(var_3.b)));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_5(firstLeadingBit(abs(-(~u_input.b))), _wgslsmith_div_i32(arg_1.a.b.x, -29976i), func_2(func_1(vec3<u32>(select(50899u, arg_1.d, arg_2.x), abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, arg_1.d), vec3<u32>(4294967295u, arg_1.d, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c + global1.zy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -115f))), _wgslsmith_f_op_f32(max(global1.x, -296f))).a).a, ~(func_2(func_1(vec3<u32>(127516u, arg_1.d, arg_1.d), vec2<f32>(global0[_wgslsmith_index_u32(1u, 17u)], global1.x), -1000f).a).d ^ func_1(select(vec3<u32>(5071u, arg_1.d, 1u), vec3<u32>(8831u, 36546u, arg_1.d), arg_2), _wgslsmith_f_op_vec2_f32(global1.zx + arg_1.c), -313f).d));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(var_0.c.a * 475f), _wgslsmith_f_op_f32(arg_0 + global0[_wgslsmith_index_u32(1u, 17u)]), 300f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(13611u, 17u)], 543f, -521f, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) * 797f) < 908f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(3213u, 17u)], 935f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 747f, 1684f, 1782f) + vec4<f32>(var_0.c.a, var_0.c.a, -601f, arg_1.c.x)))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(983f)), arg_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1277f) - _wgslsmith_f_op_f32(1604f * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(abs(global1.x)), func_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(8718u, 1u, 4294967295u), ~vec3<u32>(78503u, 20048u, 58307u), vec3<u32>(4294967295u, 21047u, 48122u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xz - vec2<f32>(global0[_wgslsmith_index_u32(30247u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 17u)], 1698f)))), -504f), vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
    global3 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -37981i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), u_input.a.yx);
    let var_1 = vec4<u32>(0u, _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(17221u, 1u, 46604u, 11492u), vec4<u32>(4294967295u, 56866u, 1u, 0u), vec4<bool>(true, true, true, true)), min(vec4<u32>(27807u, 0u, 0u, 4294967295u), vec4<u32>(311u, 1180u, 56278u, 19879u)), any(vec3<bool>(false, true, false))) & vec4<u32>(countOneBits(4294967295u), 9961u, ~0u, ~4294967295u), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(4294967295u, 0u, 1u, 54173u), vec4<u32>(1u, 6556u, 4294967295u, 4294967295u), true), select(vec4<u32>(4294967295u, 21614u, 54914u, 22137u), vec4<u32>(58488u, 35621u, 4294967295u, 11101u), vec4<bool>(true, false, true, true)))), 1u, abs(55610u));
    let var_2 = Struct_4(func_1(select(vec3<u32>(0u, var_1.x, 33u), select(var_1.xwx, vec3<u32>(6765u, var_1.x, 1u), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))) >> (vec3<u32>(~var_1.x, 73641u, ~1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(652f, global1.x), true)))), -1011f).a, !(true & all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false))), vec3<bool>(true, true, true));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, var_0.x, global0[_wgslsmith_index_u32(var_1.x, 17u)], global1.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.a, var_2.a.a, var_0.x, global1.x), vec4<f32>(global0[_wgslsmith_index_u32(9023u, 17u)], 1040f, -1311f, var_2.a.a))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(519f, -202f, var_0.x, global1.x)))) + vec4<f32>(-654f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(27494u, 17u)] * var_2.a.a), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(84906u, 17u)], 229f), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1271f - var_0.x) * _wgslsmith_f_op_vec4_f32(func_5(-799f, func_1(var_1.ywx, vec2<f32>(var_3.x, var_0.x), -224f), var_2.c)).x), _wgslsmith_f_op_f32(select(func_1(var_1.wyy, _wgslsmith_f_op_vec2_f32(-global1.xz), _wgslsmith_f_op_f32(909f * global0[_wgslsmith_index_u32(var_1.x, 17u)])).c.x, _wgslsmith_f_op_f32(f32(-1f) * -1071f), var_2.c.x)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-75417i, i32(-1i) * -u_input.b), var_2.a.b.x, select(u_input.b << (var_1.x % 32u), 27377i, true)), _wgslsmith_add_vec2_u32(~(~var_1.zx) ^ vec2<u32>(_wgslsmith_clamp_u32(46777u, 58414u, 31635u), var_1.x), vec2<u32>(_wgslsmith_div_u32(1u, var_1.x), 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-793f, global1.x, _wgslsmith_f_op_f32(var_0.x * -365f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_5(var_2.a.a, func_2(var_2.a), select(vec3<bool>(var_2.c.x, true, var_2.b), var_2.c, vec3<bool>(var_2.b, true, false)))).yyw) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, global1.x, var_0.x)))))));
}

