struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_3(Struct_2(-51005i), 1u, Struct_1(15310u, vec2<u32>(4294967295u, 2280u), true, vec2<i32>(-16129i, 22523i)), Struct_2(3178i)), vec4<i32>(1i, -24340i, 0i, -1i)), Struct_4(Struct_3(Struct_2(-45895i), 4294967295u, Struct_1(86295u, vec2<u32>(0u, 0u), true, vec2<i32>(1i, i32(-2147483648))), Struct_2(-5718i)), vec4<i32>(-4153i, i32(-2147483648), -1i, -4963i)), Struct_4(Struct_3(Struct_2(1i), 4294967295u, Struct_1(0u, vec2<u32>(1u, 33717u), true, vec2<i32>(4864i, -12642i)), Struct_2(-77253i)), vec4<i32>(-34060i, 3346i, 0i, 1696i)), Struct_4(Struct_3(Struct_2(-18981i), 4294967295u, Struct_1(0u, vec2<u32>(4294967295u, 69920u), true, vec2<i32>(-64339i, 18814i)), Struct_2(2147483647i)), vec4<i32>(2147483647i, 1i, 2147483647i, -9408i)), Struct_4(Struct_3(Struct_2(1i), 1u, Struct_1(1u, vec2<u32>(27289u, 0u), false, vec2<i32>(23828i, -1i)), Struct_2(2147483647i)), vec4<i32>(-19217i, i32(-2147483648), 2147483647i, -10551i)), Struct_4(Struct_3(Struct_2(0i), 49636u, Struct_1(1u, vec2<u32>(4294967295u, 24231u), true, vec2<i32>(0i, 2147483647i)), Struct_2(-21343i)), vec4<i32>(37003i, -2016i, 53340i, -30855i)), Struct_4(Struct_3(Struct_2(-630i), 68650u, Struct_1(1u, vec2<u32>(1u, 4294967295u), true, vec2<i32>(1i, -10515i)), Struct_2(-19324i)), vec4<i32>(i32(-2147483648), -14404i, 1i, 42293i)), Struct_4(Struct_3(Struct_2(2147483647i), 34957u, Struct_1(0u, vec2<u32>(25335u, 17986u), true, vec2<i32>(-28737i, -2995i)), Struct_2(21440i)), vec4<i32>(27296i, 3989i, i32(-2147483648), 20359i)), Struct_4(Struct_3(Struct_2(1i), 59238u, Struct_1(31781u, vec2<u32>(0u, 0u), true, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(0i)), vec4<i32>(-1i, 7034i, -10912i, 0i)), Struct_4(Struct_3(Struct_2(10094i), 4294967295u, Struct_1(4294967295u, vec2<u32>(4294967295u, 8762u), false, vec2<i32>(-1i, 4238i)), Struct_2(i32(-2147483648))), vec4<i32>(38519i, 1i, 7973i, -1i)), Struct_4(Struct_3(Struct_2(0i), 19592u, Struct_1(34771u, vec2<u32>(1u, 26410u), false, vec2<i32>(-36065i, -13846i)), Struct_2(0i)), vec4<i32>(2147483647i, 459i, 67337i, -1i)), Struct_4(Struct_3(Struct_2(1i), 10792u, Struct_1(28096u, vec2<u32>(1u, 0u), false, vec2<i32>(10240i, 11956i)), Struct_2(2147483647i)), vec4<i32>(2147483647i, 20534i, 2147483647i, 64046i)), Struct_4(Struct_3(Struct_2(2147483647i), 0u, Struct_1(4294967295u, vec2<u32>(4294967295u, 4294967295u), false, vec2<i32>(34231i, -65421i)), Struct_2(0i)), vec4<i32>(61389i, -12419i, 2147483647i, 2147483647i)), Struct_4(Struct_3(Struct_2(27277i), 3500u, Struct_1(10274u, vec2<u32>(4294967295u, 55649u), false, vec2<i32>(i32(-2147483648), -1i)), Struct_2(0i)), vec4<i32>(7669i, -16356i, 11215i, -29974i)), Struct_4(Struct_3(Struct_2(-1i), 4294967295u, Struct_1(18799u, vec2<u32>(13734u, 0u), false, vec2<i32>(-38880i, 1i)), Struct_2(2147483647i)), vec4<i32>(15501i, 2147483647i, -55582i, 2147483647i)), Struct_4(Struct_3(Struct_2(2147483647i), 1u, Struct_1(51778u, vec2<u32>(6263u, 4294967295u), true, vec2<i32>(-15539i, i32(-2147483648))), Struct_2(1i)), vec4<i32>(i32(-2147483648), 1i, -39382i, -29223i)), Struct_4(Struct_3(Struct_2(2147483647i), 57530u, Struct_1(22728u, vec2<u32>(1u, 4294967295u), true, vec2<i32>(16290i, 13446i)), Struct_2(19110i)), vec4<i32>(-23107i, i32(-2147483648), 6177i, -24584i)), Struct_4(Struct_3(Struct_2(-6515i), 41939u, Struct_1(15016u, vec2<u32>(1u, 4294967295u), true, vec2<i32>(-17162i, 2147483647i)), Struct_2(0i)), vec4<i32>(1i, 0i, -2146i, -6795i)), Struct_4(Struct_3(Struct_2(-9469i), 1u, Struct_1(36194u, vec2<u32>(3193u, 0u), true, vec2<i32>(9652i, 3209i)), Struct_2(-36791i)), vec4<i32>(7443i, -12850i, -32343i, 0i)), Struct_4(Struct_3(Struct_2(1i), 0u, Struct_1(83399u, vec2<u32>(4294967295u, 1391u), true, vec2<i32>(13525i, 15508i)), Struct_2(i32(-2147483648))), vec4<i32>(-19818i, -24975i, -70658i, -1i)), Struct_4(Struct_3(Struct_2(2147483647i), 1u, Struct_1(66167u, vec2<u32>(39382u, 1u), false, vec2<i32>(-1i, i32(-2147483648))), Struct_2(9450i)), vec4<i32>(-4593i, i32(-2147483648), 49363i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(-1i), 66475u, Struct_1(39053u, vec2<u32>(0u, 34723u), true, vec2<i32>(i32(-2147483648), 11594i)), Struct_2(-16738i)), vec4<i32>(-1i, 517i, -46794i, 11318i)), Struct_4(Struct_3(Struct_2(9804i), 44525u, Struct_1(43579u, vec2<u32>(86260u, 0u), true, vec2<i32>(0i, 2147483647i)), Struct_2(i32(-2147483648))), vec4<i32>(47641i, i32(-2147483648), 14991i, 23147i)));

var<private> global2: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(1u, 20593u, 1u), vec3<u32>(1u, 48946u, 4294967295u), vec3<u32>(4294967295u, 4677u, 32806u), vec3<u32>(48558u, 0u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(32554u, 0u, 3334u), vec3<u32>(0u, 1u, 38298u), vec3<u32>(67180u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 1369u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(16537u, 58819u, 4299u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(43919u, 22721u, 110975u), vec3<u32>(3585u, 15933u, 1u), vec3<u32>(1u, 20563u, 56510u), vec3<u32>(32850u, 6909u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 35163u, 16459u), vec3<u32>(42085u, 4294967295u, 0u), vec3<u32>(58516u, 0u, 40432u));

var<private> global3: vec3<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = global3.xy;
    let var_1 = vec4<bool>(arg_2 < -1027f, any(vec2<bool>(all(vec4<bool>(false, false, true, true)) && true, true)), true, true);
    global2 = array<vec3<u32>, 22>();
    var var_2 = vec4<bool>(any(select(var_1.xxy, !var_1.zwy, vec3<bool>(var_1.x, true, var_1.x))), true, !(!all(var_1.xyy) & true), false);
    global1 = array<Struct_4, 23>();
    return !all(vec2<bool>(any(!vec3<bool>(var_2.x, var_2.x, var_1.x)), true));
}

fn func_2(arg_0: u32) -> i32 {
    global1 = array<Struct_4, 23>();
    let var_0 = vec4<u32>(arg_0 & ~max(~23306u, ~arg_0), ~0u, (~39027u & ~_wgslsmith_mod_u32(u_input.d.x, 43552u)) | (min(firstLeadingBit(1491u), ~u_input.a) | arg_0), _wgslsmith_div_u32(~(~0u), arg_0 | abs(firstLeadingBit(2674u))));
    var var_1 = -2147483647i;
    global1 = array<Struct_4, 23>();
    var var_2 = !vec4<bool>(select(true, false, true) && all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(391f, 1178f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -478f)) < -1354f, all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), func_3(max(2147483647i, u_input.b) >> ((27325u << (arg_0 % 32u)) % 32u), 1u, -1025f));
    return ~(-1i);
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> i32 {
    global2 = array<vec3<u32>, 22>();
    global0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(34547u, 22u)], ~global2[_wgslsmith_index_u32(106948u, 22u)]), u_input.d.x);
    global2 = array<vec3<u32>, 22>();
    global0 = arg_0.c.b.x;
    var var_0 = arg_0.c.d;
    return _wgslsmith_mult_i32(select(func_2(1u), -select(_wgslsmith_div_i32(-1i, 2147483647i), select(u_input.c.x, 10541i, false), u_input.d.x <= 1u), false), ~(-arg_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1922f)));
    let var_1 = global3.x;
    global2 = array<vec3<u32>, 22>();
    global0 = u_input.d.x;
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, global3.x), ~(~func_1(Struct_3(Struct_2(89457i), u_input.a, Struct_1(u_input.a, vec2<u32>(u_input.a, 1u), true, vec2<i32>(global3.x, global3.x)), Struct_2(global3.x)), min(23187u, 21350u))));
    var var_3 = Struct_2(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(147f + -582f))), 178f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-437f, -237f), vec2<f32>(580f, 981f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), 1f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1293f, 541f) - vec2<f32>(_wgslsmith_f_op_f32(229f * -215f), -1314f))), _wgslsmith_mod_i32(~(-2603i), max(-global3.x, u_input.b)));
}

