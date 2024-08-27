struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(41841i, vec4<f32>(-1281f, -769f, 655f, 239f), vec3<i32>(2147483647i, 2147483647i, 27528i), vec4<u32>(27600u, 4294967295u, 4294967295u, 1u)), Struct_1(1i, vec4<f32>(1860f, 135f, -880f, 1285f), vec3<i32>(-1i, i32(-2147483648), -67014i), vec4<u32>(6003u, 20456u, 4294967295u, 23845u)), Struct_1(-49506i, vec4<f32>(220f, 581f, 227f, 1161f), vec3<i32>(1i, i32(-2147483648), 1i), vec4<u32>(0u, 24139u, 31969u, 4294967295u)), Struct_1(-1i, vec4<f32>(1000f, 1898f, -310f, 664f), vec3<i32>(12304i, 1i, 1i), vec4<u32>(3398u, 40469u, 18225u, 59981u)), Struct_1(0i, vec4<f32>(-1333f, 1831f, 1325f, 1047f), vec3<i32>(1i, 2147483647i, -1i), vec4<u32>(4294967295u, 1u, 4294967295u, 25088u)), Struct_1(17068i, vec4<f32>(347f, 460f, 783f, 406f), vec3<i32>(-48989i, 2147483647i, i32(-2147483648)), vec4<u32>(1u, 18458u, 36235u, 67552u)), Struct_1(-32723i, vec4<f32>(1000f, -478f, 1000f, 438f), vec3<i32>(-1i, -1676i, -15186i), vec4<u32>(0u, 124659u, 0u, 75731u)), Struct_1(-11808i, vec4<f32>(-720f, -338f, -373f, -347f), vec3<i32>(-683i, -24967i, 2147483647i), vec4<u32>(1u, 1u, 1u, 98234u)), Struct_1(1i, vec4<f32>(-813f, -2613f, 1000f, -381f), vec3<i32>(-4061i, -67490i, 60494i), vec4<u32>(0u, 89473u, 4294967295u, 38752u)), Struct_1(2147483647i, vec4<f32>(218f, -679f, -1542f, -1000f), vec3<i32>(i32(-2147483648), 1i, 2734i), vec4<u32>(7080u, 1u, 47072u, 0u)), Struct_1(0i, vec4<f32>(1091f, -118f, -719f, 1460f), vec3<i32>(18773i, 28853i, -29245i), vec4<u32>(2277u, 7747u, 0u, 4294967295u)), Struct_1(0i, vec4<f32>(1847f, 1000f, 2440f, 175f), vec3<i32>(81441i, i32(-2147483648), -55476i), vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), Struct_1(0i, vec4<f32>(-610f, 192f, 944f, 1938f), vec3<i32>(0i, i32(-2147483648), -1i), vec4<u32>(40783u, 21868u, 1u, 109826u)), Struct_1(-1i, vec4<f32>(2216f, -360f, -1008f, -2327f), vec3<i32>(0i, -581i, 22909i), vec4<u32>(41009u, 5824u, 1u, 1u)), Struct_1(1416i, vec4<f32>(-628f, -556f, 454f, -280f), vec3<i32>(-1i, 2147483647i, 2147483647i), vec4<u32>(1u, 0u, 48913u, 13830u)), Struct_1(2147483647i, vec4<f32>(-283f, -1430f, 821f, 1947f), vec3<i32>(-1i, i32(-2147483648), 11202i), vec4<u32>(1u, 4294967295u, 4294967295u, 13078u)), Struct_1(2147483647i, vec4<f32>(-607f, 708f, -694f, 688f), vec3<i32>(40921i, 0i, 57268i), vec4<u32>(3892u, 5959u, 43179u, 4294967295u)), Struct_1(1i, vec4<f32>(1025f, 166f, -289f, 890f), vec3<i32>(-28352i, -40837i, i32(-2147483648)), vec4<u32>(0u, 4864u, 4294967295u, 0u)), Struct_1(1i, vec4<f32>(-106f, 490f, -269f, -439f), vec3<i32>(-44153i, 18817i, 4013i), vec4<u32>(1u, 11512u, 1u, 1u)), Struct_1(547i, vec4<f32>(-528f, 484f, -449f, -730f), vec3<i32>(1i, 49495i, -21962i), vec4<u32>(12874u, 38278u, 29048u, 1u)), Struct_1(-33717i, vec4<f32>(-400f, 1240f, 1230f, -455f), vec3<i32>(i32(-2147483648), 2147483647i, -16681i), vec4<u32>(1u, 0u, 1u, 0u)), Struct_1(17599i, vec4<f32>(-313f, -2953f, -626f, 1518f), vec3<i32>(46229i, 0i, -18475i), vec4<u32>(0u, 1u, 0u, 4337u)), Struct_1(0i, vec4<f32>(908f, -741f, 972f, -1025f), vec3<i32>(26742i, -1i, -42734i), vec4<u32>(7734u, 1u, 1u, 31456u)), Struct_1(i32(-2147483648), vec4<f32>(-835f, -1738f, -361f, -186f), vec3<i32>(31391i, 0i, 1372i), vec4<u32>(32854u, 29083u, 0u, 44589u)), Struct_1(1i, vec4<f32>(-501f, 454f, 143f, -1185f), vec3<i32>(7852i, -39835i, 16740i), vec4<u32>(26276u, 54761u, 34612u, 0u)), Struct_1(-5432i, vec4<f32>(-2521f, -1860f, -474f, 434f), vec3<i32>(-47507i, i32(-2147483648), -1i), vec4<u32>(60736u, 1u, 13056u, 85902u)));

var<private> global2: Struct_3 = Struct_3(4294967295u);

var<private> global3: vec3<i32>;

var<private> global4: array<vec3<i32>, 11>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = all(!vec4<bool>(arg_0.c, !all(vec2<bool>(arg_0.b.x, true)), false, arg_0.c));
    global0 = !all(select(!(!vec4<bool>(arg_0.c, arg_0.c, arg_0.b.x, arg_0.c)), vec4<bool>(u_input.a.x <= u_input.b, arg_0.d.x >= 473f, global3.x >= 0i, arg_0.c), true || arg_0.b.x));
    let var_1 = Struct_1(-(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, global3.x, -2147483647i, -2147483647i), u_input.a)) << (_wgslsmith_dot_vec2_u32(arg_0.a.b.d.xy, ~vec2<u32>(35207u, 16325u)) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - 1071f)), arg_0.d.x, -624f, 381f)), vec3<i32>(_wgslsmith_mult_i32(select(global3.x, 1i, !arg_0.c), -11235i), select(-1i, (global3.x >> (33894u % 32u)) >> (global2.a % 32u), arg_0.b.x), -_wgslsmith_clamp_i32(abs(global3.x), ~global3.x, -1i)), arg_0.a.b.d | arg_0.a.a.d);
    let var_2 = arg_0.a.b.c.x;
    let var_3 = arg_0.b.x;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.b.xzw - arg_0.a.a.b.yyy)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, 563f, -825f))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(global1[_wgslsmith_index_u32(global2.a, 26u)], Struct_1(u_input.d.x, vec4<f32>(-1180f, -517f, 172f, 1116f), u_input.a.yyz, vec4<u32>(global2.a, u_input.c, global2.a, u_input.c)), 1u, u_input.a.xxw, 1588f), vec2<bool>(true, false), false, vec3<f32>(-1069f, -1555f, -140f), vec4<f32>(-734f, -571f, 467f, 797f)))))));
    global3 = _wgslsmith_clamp_vec3_i32(min(~select(reverseBits(global4[_wgslsmith_index_u32(u_input.c, 11u)]), firstTrailingBit(vec3<i32>(2147483647i, 13941i, global3.x)), vec3<bool>(false, false, false)), min(vec3<i32>(reverseBits(0i), abs(21035i), u_input.a.x >> (1u % 32u)), vec3<i32>(global3.x, global3.x, -2147483647i))), (select(-global4[_wgslsmith_index_u32(u_input.c, 11u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c), vec3<u32>(1u, u_input.c, 0u)), 11u)], vec3<bool>(true, true, true)) >> (countOneBits(vec3<u32>(4294967295u, 13960u, 0u)) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(12283u, 1u, 41006u), 11u)], vec3<i32>(u_input.a.x, u_input.d.x, -2147483647i)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(37523u, 11u)], global4[_wgslsmith_index_u32(u_input.c, 11u)]), -global3.x, global3.x), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a, global2.a, global2.a, 23520u), vec4<u32>(1u, 4294967295u, 0u, global2.a)), 11u)])));
    global4 = array<vec3<i32>, 11>();
    var var_1 = global3.x;
    global2 = Struct_3(_wgslsmith_dot_vec2_u32((vec2<u32>(u_input.c, u_input.c) ^ countOneBits(vec2<u32>(4294967295u, 20860u))) ^ ~(~vec2<u32>(1u, global2.a)), abs(vec2<u32>(16914u, abs(u_input.c)))));
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.c), 26u)], Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b | u_input.d.x, u_input.a.x, 1i, abs(-1i)), -vec4<i32>(u_input.d.x, -11549i, 19790i, 1i)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(1384f - _wgslsmith_f_op_f32(min(1305f, -1853f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), 871f), ~(~vec3<i32>(-10073i, 17136i, u_input.d.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(global2.a, 4294967295u, 6197u, global2.a), vec4<u32>(0u, global2.a, u_input.c, global2.a)) & countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 48291u), vec4<u32>(30655u, 19202u, 93908u, 1901u), vec4<u32>(0u, 79587u, global2.a, 1u)))), ~firstLeadingBit(~_wgslsmith_sub_u32(global2.a, 0u)), (firstLeadingBit(~global4[_wgslsmith_index_u32(4294967295u, 11u)]) | u_input.a.yyx) | (vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(0i, global3.x, global3.x), vec3<i32>(0i, global3.x, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(Struct_1(10061i, vec4<f32>(var_0.x, var_0.x, var_0.x, -416f), global4[_wgslsmith_index_u32(18107u, 11u)], vec4<u32>(u_input.c, 4294967295u, 0u, 24432u)), Struct_1(u_input.d.x, vec4<f32>(921f, var_0.x, var_0.x, var_0.x), u_input.a.xwx, vec4<u32>(0u, u_input.c, 30976u, global2.a)), 0u, vec3<i32>(global3.x, -30630i, global3.x), 735f), vec2<bool>(true, true), true, _wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(-829f, 360f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1487f), vec4<f32>(-301f, -758f, var_0.x, var_0.x))))).x));
}

fn func_1() -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(10587u, 26u)];
    var var_1 = ((countOneBits(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(global3.x, 40213i))) < 6881i) && ((~global2.a >= _wgslsmith_clamp_u32(global2.a, 21419u, 4294967295u)) | (_wgslsmith_mod_i32(u_input.b, var_0.a) <= countOneBits(global3.x)))) != true;
    var var_2 = Struct_4(func_2(), vec2<bool>(false, !all(vec3<bool>(true, true, true))), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f - 1763f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(232f, -1708f))))), _wgslsmith_f_op_vec4_f32(-func_2().a.b));
    global1 = array<Struct_1, 26>();
    var var_3 = var_2.a.b;
    return Struct_4(Struct_2(var_2.a.a, var_2.a.b, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_3.d.yww, vec3<u32>(28579u, 22051u, 4294967295u)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_3.d.x, var_0.d.x, var_2.a.b.d.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 24624u, 21224u), vec3<u32>(12606u, var_0.d.x, var_0.d.x)))), reverseBits(select(vec3<i32>(var_0.c.x, var_3.a, var_2.a.a.a), firstLeadingBit(vec3<i32>(global3.x, var_3.c.x, -2147483647i)), !vec3<bool>(var_2.b.x, var_2.b.x, true))), _wgslsmith_f_op_f32(floor(var_0.b.x))), !vec2<bool>(!(!var_2.b.x), false), all(!(!vec3<bool>(var_2.c, var_2.b.x, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.b.x, 1616f, _wgslsmith_div_f32(892f, -194f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1000f, -775f, !var_2.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.b.x * var_0.b.x))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(var_2.a, vec2<bool>(var_2.c, var_2.b.x), var_2.c, var_3.b.zxy, vec4<f32>(var_2.a.b.b.x, -380f, var_2.e.x, var_2.d.x)))).x, _wgslsmith_f_op_f32(ceil(896f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f - 716f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 119f) + _wgslsmith_f_op_f32(ceil(-325f))))) * -1198f);
    let var_1 = func_1();
    global1 = array<Struct_1, 26>();
    let var_2 = !vec2<bool>(var_1.b.x, var_1.b.x);
    var var_3 = var_1.a.a.d.x;
    global1 = array<Struct_1, 26>();
    var var_4 = global2.a | 0u;
    var var_5 = 58430i;
    let x = u_input.a;
    s_output = StorageBuffer(select(-u_input.a, select(~vec4<i32>(var_1.a.a.c.x, 0i, var_1.a.a.c.x, -2147483647i), u_input.a, var_1.c), select(vec4<bool>(var_2.x, !var_2.x, any(vec2<bool>(false, false)), u_input.b == 0i), vec4<bool>(select(true, var_1.b.x, var_2.x), !var_1.b.x, !var_1.b.x, all(vec3<bool>(false, var_1.b.x, var_1.c))), false)), var_1.d.zy, firstLeadingBit(firstLeadingBit(_wgslsmith_add_vec4_u32(var_1.a.a.d, vec4<u32>(0u, global2.a, 1u, 26813u)))) << (~(vec4<u32>(global2.a, 93308u, 1u, 31045u) >> (~vec4<u32>(53066u, 72270u, var_1.a.b.d.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.e.wz);
}

