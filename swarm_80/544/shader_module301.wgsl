struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<u32>(18689u, 1u), vec4<i32>(33249i, 0i, 1631i, -7248i), Struct_1(59508u, 4294967295u, false, vec3<f32>(1000f, 1055f, 2323f), 29287u), 30086u), Struct_3(vec2<u32>(7978u, 0u), vec4<i32>(5722i, -21139i, 1i, i32(-2147483648)), Struct_1(2479u, 89231u, true, vec3<f32>(-1003f, 1508f, 1442f), 0u), 35642u), Struct_3(vec2<u32>(1u, 0u), vec4<i32>(3763i, 2147483647i, -2814i, -36936i), Struct_1(50640u, 12442u, false, vec3<f32>(-739f, -3222f, 1000f), 58382u), 4294967295u), Struct_3(vec2<u32>(0u, 60505u), vec4<i32>(-40072i, -55185i, 2147483647i, -25664i), Struct_1(0u, 15390u, false, vec3<f32>(475f, -942f, -1788f), 1u), 32670u), Struct_3(vec2<u32>(1u, 4294967295u), vec4<i32>(8962i, 13394i, 27920i, 13196i), Struct_1(4752u, 0u, false, vec3<f32>(-546f, 558f, 168f), 0u), 26865u), Struct_3(vec2<u32>(0u, 14882u), vec4<i32>(15369i, 32859i, 1i, -1i), Struct_1(1u, 43675u, true, vec3<f32>(-374f, -503f, 757f), 4294967295u), 36345u), Struct_3(vec2<u32>(67087u, 2113u), vec4<i32>(-21443i, i32(-2147483648), 3162i, -1i), Struct_1(1807u, 0u, true, vec3<f32>(-217f, 241f, 213f), 26792u), 1u), Struct_3(vec2<u32>(1u, 4294967295u), vec4<i32>(1i, 1i, i32(-2147483648), 1i), Struct_1(0u, 4294967295u, false, vec3<f32>(-1432f, -1000f, 1000f), 22255u), 33913u), Struct_3(vec2<u32>(32319u, 1u), vec4<i32>(-18208i, 12824i, 44907i, 2147483647i), Struct_1(0u, 0u, true, vec3<f32>(-2025f, -466f, 937f), 0u), 21857u), Struct_3(vec2<u32>(65261u, 1u), vec4<i32>(-1i, -43973i, 1i, 1i), Struct_1(1u, 56161u, true, vec3<f32>(-1502f, 644f, -152f), 0u), 4294967295u), Struct_3(vec2<u32>(4294967295u, 102515u), vec4<i32>(2147483647i, i32(-2147483648), 0i, 17654i), Struct_1(0u, 1u, true, vec3<f32>(574f, 1243f, -2368f), 10711u), 31598u), Struct_3(vec2<u32>(0u, 4294967295u), vec4<i32>(i32(-2147483648), 67811i, 1i, -56133i), Struct_1(0u, 4294967295u, false, vec3<f32>(664f, -1171f, -872f), 2196u), 28091u), Struct_3(vec2<u32>(52341u, 1u), vec4<i32>(-1i, 1i, -48736i, -2001i), Struct_1(62706u, 31626u, false, vec3<f32>(509f, -398f, -703f), 30322u), 0u), Struct_3(vec2<u32>(1u, 75465u), vec4<i32>(1i, -1i, 2147483647i, 46165i), Struct_1(5161u, 37428u, false, vec3<f32>(399f, -613f, -734f), 23429u), 11898u), Struct_3(vec2<u32>(4294967295u, 0u), vec4<i32>(9222i, -32305i, 32918i, 5893i), Struct_1(0u, 72930u, false, vec3<f32>(950f, -265f, 1000f), 27615u), 4294967295u), Struct_3(vec2<u32>(5994u, 28577u), vec4<i32>(13414i, 17898i, i32(-2147483648), 15759i), Struct_1(76930u, 1u, true, vec3<f32>(-1437f, 305f, 1000f), 4294967295u), 61295u), Struct_3(vec2<u32>(0u, 4294967295u), vec4<i32>(i32(-2147483648), 8544i, i32(-2147483648), -18007i), Struct_1(67980u, 4294967295u, true, vec3<f32>(255f, -1000f, 395f), 59152u), 1u), Struct_3(vec2<u32>(4294967295u, 40904u), vec4<i32>(0i, 70056i, 2147483647i, 2147483647i), Struct_1(58554u, 6613u, false, vec3<f32>(-1159f, -743f, 264f), 22400u), 4294967295u), Struct_3(vec2<u32>(0u, 1u), vec4<i32>(1i, 1i, -17411i, i32(-2147483648)), Struct_1(1u, 41166u, true, vec3<f32>(-1497f, -1000f, 913f), 30100u), 0u), Struct_3(vec2<u32>(1u, 1u), vec4<i32>(5271i, -1i, 38735i, -12458i), Struct_1(4294967295u, 1u, true, vec3<f32>(214f, 921f, 412f), 1u), 0u), Struct_3(vec2<u32>(0u, 34589u), vec4<i32>(34707i, -35538i, 1i, i32(-2147483648)), Struct_1(27288u, 4616u, true, vec3<f32>(-520f, 1240f, -1011f), 0u), 0u), Struct_3(vec2<u32>(0u, 4294967295u), vec4<i32>(i32(-2147483648), 26088i, 62663i, -1i), Struct_1(33935u, 0u, false, vec3<f32>(-1315f, -564f, 158f), 65741u), 0u), Struct_3(vec2<u32>(0u, 1u), vec4<i32>(43440i, -33792i, 0i, i32(-2147483648)), Struct_1(59842u, 19141u, true, vec3<f32>(924f, 1464f, 465f), 2379u), 6724u), Struct_3(vec2<u32>(4294967295u, 44815u), vec4<i32>(-11683i, 82891i, -41815i, 28475i), Struct_1(29357u, 5321u, false, vec3<f32>(-666f, 636f, -2054f), 4294967295u), 4294967295u), Struct_3(vec2<u32>(1u, 3842u), vec4<i32>(-1i, -46962i, 63312i, -1i), Struct_1(0u, 1u, true, vec3<f32>(641f, -1000f, 1559f), 78719u), 8973u), Struct_3(vec2<u32>(38908u, 4294967295u), vec4<i32>(-5137i, -8616i, -29089i, 5790i), Struct_1(0u, 57434u, true, vec3<f32>(-578f, 1229f, 883f), 40291u), 1u), Struct_3(vec2<u32>(1u, 4294967295u), vec4<i32>(1i, 1i, -1i, -1i), Struct_1(87747u, 1u, true, vec3<f32>(409f, 654f, 579f), 19200u), 51882u), Struct_3(vec2<u32>(54066u, 4294967295u), vec4<i32>(i32(-2147483648), 1276i, i32(-2147483648), -41103i), Struct_1(12657u, 6889u, true, vec3<f32>(-1000f, -1435f, 1000f), 82456u), 1u), Struct_3(vec2<u32>(65650u, 1u), vec4<i32>(0i, 2147483647i, 2147483647i, 43976i), Struct_1(1u, 4294967295u, false, vec3<f32>(2374f, -1456f, -354f), 45344u), 1u), Struct_3(vec2<u32>(24978u, 0u), vec4<i32>(2147483647i, 1i, 0i, 1i), Struct_1(111664u, 0u, false, vec3<f32>(511f, -1000f, 2253f), 28278u), 4366u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global0 = array<Struct_3, 30>();
    let var_0 = ~(i32(-1i) * -1i);
    var var_1 = 571f;
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1166f - _wgslsmith_f_op_f32(-1264f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1631f - -909f))))));
    let var_2 = true;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global0 = array<Struct_3, 30>();
    var var_0 = Struct_1(_wgslsmith_mult_u32(50457u, arg_0.a), arg_0.a, !(!any(vec2<bool>(true, arg_0.c)) & !arg_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(551f, arg_1.d.x, 882f))) * arg_1.d)), 36576u);
    var var_1 = Struct_1(_wgslsmith_sub_u32(~var_0.b, ~_wgslsmith_mult_u32(var_0.e, 1u) & ~(~var_0.b)), _wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a | ~vec3<u32>(arg_0.a, 0u, var_0.a))), arg_0.c, _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d.x, -217f, _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(-1000f * 547f))), arg_0.d), max(~abs(1u), var_0.e));
    var var_2 = _wgslsmith_add_i32(-44138i, select(2147483647i, 1i, 1382f > arg_0.d.x));
    var var_3 = Struct_4(Struct_3(~u_input.a.zy & select(u_input.a.zy ^ u_input.a.zz, u_input.a.zz, var_0.c), -vec4<i32>(1i, 1i, 1i, 1i), Struct_1(max(1u, arg_0.a) ^ 65501u, u_input.a.x, var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) - arg_1.d), max(arg_1.a, firstLeadingBit(9011u))), ~_wgslsmith_clamp_u32(~68301u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(0u, 1u)), _wgslsmith_mod_u32(27072u, 26223u))));
    return _wgslsmith_sub_vec4_i32(var_3.a.b, vec4<i32>(select(var_3.a.b.x, ~var_3.a.b.x, var_0.c), _wgslsmith_add_i32(-2147483647i & var_3.a.b.x, 16059i), ~(~(-2147483647i)), 6634i >> (var_0.a % 32u))) >> ((vec4<u32>(max(1u, var_3.a.a.x), ~(~14724u), ~min(4294967295u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.e), u_input.a.zz), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 16711u, var_0.e)))) >> ((~(~vec4<u32>(arg_0.a, 0u, 0u, u_input.a.x)) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_3.a.d, arg_0.e, 27846u), vec4<u32>(0u, var_3.a.a.x, 35685u, var_1.e)) ^ ~vec4<u32>(u_input.a.x, 5193u, 0u, 19840u)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(~u_input.a.x & u_input.a.x, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(32417u, 37561u))), _wgslsmith_mod_u32(1u, u_input.a.x)), func_4(Struct_1(~19372u ^ _wgslsmith_mod_u32(u_input.a.x, 1u), u_input.a.x, func_3(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-689f, 339f, 132f), vec3<f32>(862f, 680f, -858f), true)), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), Struct_1(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(6864u, 0u), u_input.a.x), !any(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 650f, 1174f)))), u_input.a.x)), Struct_1(~1u, _wgslsmith_add_u32(~abs(60550u), min(u_input.a.x, _wgslsmith_mult_u32(0u, 62560u))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(151f, -198f, 235f)))), 4294967295u), ~4294967295u);
    let var_1 = Struct_4(Struct_3(u_input.a.yz, vec4<i32>(2147483647i, arg_0.x, 63604i, 2476i), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a), ~u_input.a.x), ~(4294967295u >> (var_0.a.x % 32u)), var_0.c.c, var_0.c.d, select(19990u, u_input.a.x, var_0.c.c) << (34693u % 32u)), 0u));
    let var_2 = select(vec3<bool>(!(-3749i != ~var_0.b.x), !all(vec2<bool>(var_1.a.c.c, true)), var_1.a.c.c), !select(vec3<bool>(all(vec4<bool>(false, var_0.c.c, true, var_0.c.c)), var_0.c.c, !var_0.c.c), !(!vec3<bool>(var_0.c.c, var_0.c.c, var_1.a.c.c)), var_1.a.c.c), !(!select(select(vec3<bool>(var_1.a.c.c, var_0.c.c, true), vec3<bool>(true, var_0.c.c, true), vec3<bool>(false, false, var_0.c.c)), select(vec3<bool>(var_1.a.c.c, true, true), vec3<bool>(var_0.c.c, true, var_0.c.c), var_0.c.c), select(vec3<bool>(true, var_0.c.c, var_0.c.c), vec3<bool>(var_1.a.c.c, false, true), var_0.c.c))));
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    return _wgslsmith_f_op_f32(var_0.c.d.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.d.x))));
}

fn func_1() -> bool {
    global0 = array<Struct_3, 30>();
    var var_0 = Struct_1(~(_wgslsmith_div_u32(~0u, ~u_input.a.x) & 1u), u_input.a.x, true, vec3<f32>(_wgslsmith_f_op_f32(max(1029f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(ceil(509f))))), _wgslsmith_f_op_f32(func_2(vec2<i32>(2147483647i << (u_input.a.x % 32u), -3116i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f - 2238f)))), ~abs(~u_input.a.x));
    let var_1 = Struct_5(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(71546u, 0u, 21227u)), ~vec3<u32>(21520u, 4294967295u, var_0.e)), _wgslsmith_div_vec3_u32(firstTrailingBit(u_input.a), ~vec3<u32>(90004u, 37291u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.yy), _wgslsmith_f_op_vec2_f32(-var_0.d.zy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, -337f)))))));
    global0 = array<Struct_3, 30>();
    var var_2 = var_1;
    return all(vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) + _wgslsmith_div_f32(var_0.d.x, var_1.b.x)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(664f, var_2.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(false, true, false, func_1()), vec4<bool>(true, any(vec3<bool>(true, true, true)), !select(true, false, false) || false, true), !(!(!any(vec3<bool>(true, false, false)))));
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(~reverseBits(firstTrailingBit(60692u | u_input.a.x)), 30u)]);
    let var_2 = abs(u_input.a.x);
    let var_3 = func_4(var_1.a.c, var_1.a.c);
    let var_4 = var_1.a.c;
    var var_5 = func_4(Struct_1(var_4.e, var_2, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4.d.x, -1000f, var_4.d.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.c.d.x, var_4.d.x, -841f), var_4.d)))), var_2), Struct_1(var_4.e, 5093u, true, var_4.d, 21813u)).ywx;
    var var_6 = vec3<f32>(var_4.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -677f))), var_1.a.c.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(_wgslsmith_add_u32(1u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 61329u), u_input.a.xz))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(firstLeadingBit(vec2<i32>(-23634i, 1i))))), var_1.a.c.d.x, false)), ~7564u, 1994u);
}

