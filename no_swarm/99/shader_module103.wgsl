struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(true, vec4<i32>(3141i, 62567i, 0i, -15574i), vec4<bool>(true, false, false, true), -1000f), 652f, vec3<i32>(1i, -16040i, 53460i), 4205u), Struct_2(Struct_1(true, vec4<i32>(0i, 2147483647i, i32(-2147483648), -23134i), vec4<bool>(true, true, true, false), 1185f), 1542f, vec3<i32>(-1i, 22280i, i32(-2147483648)), 53533u), Struct_2(Struct_1(true, vec4<i32>(1i, 77208i, -1i, -1i), vec4<bool>(false, false, false, false), 793f), -192f, vec3<i32>(-34044i, -13855i, -24614i), 51220u), Struct_2(Struct_1(true, vec4<i32>(834i, i32(-2147483648), -4957i, 1i), vec4<bool>(false, false, false, true), -367f), 505f, vec3<i32>(1i, 0i, -39573i), 53143u), Struct_2(Struct_1(true, vec4<i32>(2147483647i, -44786i, 10404i, 38274i), vec4<bool>(true, false, false, false), 442f), 1179f, vec3<i32>(0i, -1i, 0i), 35768u), Struct_2(Struct_1(false, vec4<i32>(-26194i, i32(-2147483648), -1i, -42578i), vec4<bool>(false, true, false, true), 567f), -330f, vec3<i32>(-1i, 4180i, 6015i), 4294967295u), Struct_2(Struct_1(false, vec4<i32>(-74916i, 1i, 96689i, 6607i), vec4<bool>(true, true, false, true), 248f), -746f, vec3<i32>(17274i, 41050i, 17309i), 8270u), Struct_2(Struct_1(true, vec4<i32>(-1i, 1i, 1i, 11219i), vec4<bool>(true, false, true, true), 115f), 383f, vec3<i32>(i32(-2147483648), 18860i, -12424i), 1u), Struct_2(Struct_1(false, vec4<i32>(58225i, -60681i, 1i, i32(-2147483648)), vec4<bool>(false, true, true, false), -1000f), 389f, vec3<i32>(-1i, 2147483647i, -39755i), 25868u), Struct_2(Struct_1(false, vec4<i32>(0i, -1i, -33466i, 1i), vec4<bool>(false, false, true, false), -1000f), 2204f, vec3<i32>(1i, 19446i, -22065i), 38255u), Struct_2(Struct_1(false, vec4<i32>(8132i, -8543i, 1i, 2147483647i), vec4<bool>(true, false, true, true), -953f), 1199f, vec3<i32>(-38984i, 49038i, -38275i), 968u), Struct_2(Struct_1(false, vec4<i32>(i32(-2147483648), 9840i, 0i, 4117i), vec4<bool>(true, true, true, false), 764f), -589f, vec3<i32>(-70103i, 12052i, 32505i), 1u), Struct_2(Struct_1(false, vec4<i32>(6100i, 11867i, 1i, 0i), vec4<bool>(true, true, false, true), -1308f), 1000f, vec3<i32>(49673i, 2147483647i, -1787i), 4294967295u), Struct_2(Struct_1(true, vec4<i32>(26808i, i32(-2147483648), 6679i, i32(-2147483648)), vec4<bool>(false, true, false, false), -1604f), -1000f, vec3<i32>(-15079i, 56008i, 1i), 38204u), Struct_2(Struct_1(false, vec4<i32>(-18525i, -61078i, 2147483647i, 44057i), vec4<bool>(false, true, false, true), 778f), -1055f, vec3<i32>(4376i, i32(-2147483648), -9670i), 4294967295u), Struct_2(Struct_1(false, vec4<i32>(0i, 7828i, 1i, 9874i), vec4<bool>(true, true, false, true), 1000f), 215f, vec3<i32>(0i, -1i, -4581i), 0u), Struct_2(Struct_1(true, vec4<i32>(53431i, 17240i, 9772i, i32(-2147483648)), vec4<bool>(false, true, true, true), 940f), 341f, vec3<i32>(3376i, 3977i, 0i), 1u), Struct_2(Struct_1(true, vec4<i32>(11175i, 0i, 1i, 7164i), vec4<bool>(false, false, true, true), -684f), 244f, vec3<i32>(36031i, 0i, 0i), 0u), Struct_2(Struct_1(false, vec4<i32>(3903i, i32(-2147483648), -2128i, -41818i), vec4<bool>(false, false, false, true), 603f), -249f, vec3<i32>(27875i, i32(-2147483648), 2147483647i), 0u), Struct_2(Struct_1(false, vec4<i32>(62236i, -9725i, -41951i, -6518i), vec4<bool>(false, false, true, false), -523f), -188f, vec3<i32>(11745i, -1i, i32(-2147483648)), 0u), Struct_2(Struct_1(false, vec4<i32>(50476i, -5697i, i32(-2147483648), 1i), vec4<bool>(true, true, true, false), -923f), 361f, vec3<i32>(42260i, 26746i, -35623i), 0u), Struct_2(Struct_1(true, vec4<i32>(0i, -38283i, 1i, 0i), vec4<bool>(false, true, true, false), -430f), -341f, vec3<i32>(5416i, -32335i, i32(-2147483648)), 27364u), Struct_2(Struct_1(true, vec4<i32>(3891i, 34639i, 1i, 0i), vec4<bool>(true, true, false, true), -549f), -340f, vec3<i32>(14970i, i32(-2147483648), -14484i), 1u), Struct_2(Struct_1(true, vec4<i32>(88205i, -71672i, -1i, 0i), vec4<bool>(true, true, false, true), 1000f), 671f, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), 16223u), Struct_2(Struct_1(false, vec4<i32>(-6710i, 0i, 0i, -1858i), vec4<bool>(false, true, true, false), 446f), -529f, vec3<i32>(i32(-2147483648), 0i, -52619i), 0u), Struct_2(Struct_1(false, vec4<i32>(-14869i, 0i, 2147483647i, 11918i), vec4<bool>(true, false, true, true), -900f), -409f, vec3<i32>(1i, -1i, -1i), 37456u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global1 = firstLeadingBit(u_input.a.x);
    return countOneBits(~(-arg_0.b));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = 0i;
    let var_1 = ~vec2<i32>(47204i, -6323i);
    return Struct_1(false, func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b, 4294967295u, 65993u), arg_1)), 29u)]), select(select(vec4<bool>(true, 1u > arg_3, select(true, false, true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), any(vec2<bool>(true, arg_3 == 1u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f)) + arg_2))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.a, -1971f), arg_0.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_0.a))), ~(~20122u)), vec3<u32>(4362u, ~arg_0.b, 0u), 285f, reverseBits(reverseBits(abs(20669u) >> ((60157u ^ u_input.a.x) % 32u))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1f) + 530f);
    var_1 = select(vec3<bool>(select(any(select(vec4<bool>(var_2.c.x, var_2.a, var_1.x, var_1.x), vec4<bool>(false, false, true, var_2.c.x), var_2.c)), false, true), true, false), vec3<bool>(!(var_1.x || all(vec4<bool>(var_1.x, var_2.a, var_1.x, var_2.a))), select(true, any(vec3<bool>(var_2.c.x, var_2.a, true)), min(59349u, arg_0.b) >= 5836u), !any(select(vec4<bool>(true, var_1.x, false, true), var_2.c, false))), !vec3<bool>(var_2.c.x, var_1.x, var_2.c.x));
    return Struct_1(var_1.x, vec4<i32>(abs(var_2.b.x) >> (27715u % 32u), i32(-1i) * -39899i, var_2.b.x, 16353i) ^ ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.x, var_2.b.x, 13480i, var_2.b.x), var_2.b)), var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -331f));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2.b.x;
    global1 = 1u;
    var var_1 = firstTrailingBit(~(-2147483647i));
    let var_2 = vec3<u32>(min(_wgslsmith_mod_u32(~23931u, u_input.a.x), u_input.a.x), ~(~u_input.a.x ^ _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 0u)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(14379u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u), ~0u)), _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(0u, 73900u, 0u), ~31270u), abs(min(vec3<u32>(54327u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 0u, u_input.a.x))))));
    global2 = array<Struct_2, 26>();
    return func_2(Struct_3(_wgslsmith_f_op_f32(-240f * _wgslsmith_div_f32(1000f, arg_2.d)), _wgslsmith_sub_u32(55898u, var_2.x)), var_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.d))), ~29214u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(max(abs(i32(-1i) * -19705i), -13241i), vec2<bool>(true, true), func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-547f))), 62312u)), -1i);
    global0 = array<Struct_1, 29>();
    var var_1 = vec4<i32>(_wgslsmith_div_i32(-10612i ^ var_0.b.x, abs(var_0.b.x)) >> (_wgslsmith_div_u32(select(u_input.a.x, u_input.a.x, var_0.a), 83348u) % 32u), var_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x & var_0.b.x, var_0.b.x), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_0.b.zy, var_0.b.yw), vec2<i32>(-2147483647i, 5755i))), i32(-1i) * -1i) ^ var_0.b;
    var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x)), 29u)];
    global1 = _wgslsmith_div_u32(u_input.a.x, select(~u_input.a.x, _wgslsmith_add_u32(11033u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)))), all(var_0.c.wxy)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1597f, var_0.d, 188f), vec3<f32>(var_0.d, var_0.d, var_0.d)) + vec3<f32>(1000f, var_0.d, var_0.d))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -1890f, var_0.d)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d, -700f, var_0.d))), all(vec3<bool>(true, true, var_0.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 557f, 150f) + vec3<f32>(var_0.d, var_0.d, -128f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -441f, 514f) - vec3<f32>(2104f, var_0.d, var_0.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(~u_input.a.x), u_input.a.x | 4294967295u), _wgslsmith_mod_u32(25773u, u_input.a.x)), _wgslsmith_sub_i32(~(-16118i), ~(-278i)));
}

