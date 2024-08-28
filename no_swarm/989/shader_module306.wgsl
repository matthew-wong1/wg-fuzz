struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(2595i, 2055i), vec2<i32>(1i, 31626i), vec2<i32>(-2365i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 56524i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), -9611i), vec2<i32>(-4531i, 30649i), vec2<i32>(-80231i, 2147483647i), vec2<i32>(24299i, -58041i), vec2<i32>(-26149i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-1i, -6587i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 19231i), vec2<i32>(-20357i, 16882i), vec2<i32>(43362i, 39647i), vec2<i32>(8431i, -41440i), vec2<i32>(2147483647i, -35483i), vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(0u, 40238i, 4294967295u, false, -1000f), vec4<u32>(4294967295u, 26560u, 53404u, 0u), Struct_1(10938u, 8360i, 4294967295u, false, 200f), Struct_1(4294967295u, i32(-2147483648), 1u, false, -998f), true), Struct_2(Struct_1(4294967295u, 0i, 4294967295u, false, 1645f), vec4<u32>(38845u, 1u, 0u, 115915u), Struct_1(5385u, 1i, 8518u, false, 1186f), Struct_1(12536u, 54103i, 37326u, true, 585f), false), Struct_2(Struct_1(4294967295u, 2147483647i, 1u, false, -224f), vec4<u32>(1774u, 0u, 53983u, 1u), Struct_1(0u, 1i, 35650u, false, 751f), Struct_1(0u, -11595i, 4294967295u, false, -701f), false), Struct_2(Struct_1(20305u, 30344i, 0u, false, 699f), vec4<u32>(61108u, 130242u, 0u, 33515u), Struct_1(1u, i32(-2147483648), 1u, false, 735f), Struct_1(70537u, 2147483647i, 13719u, false, 1243f), false), Struct_2(Struct_1(18860u, 2147483647i, 8480u, false, -1913f), vec4<u32>(1u, 1u, 1u, 0u), Struct_1(0u, 2147483647i, 13800u, false, 514f), Struct_1(7714u, 13425i, 12330u, false, -1315f), true), Struct_2(Struct_1(19336u, 27457i, 1u, true, -143f), vec4<u32>(52348u, 38944u, 0u, 1u), Struct_1(49455u, 1i, 17662u, true, -1000f), Struct_1(0u, 2147483647i, 49198u, true, -418f), false), Struct_2(Struct_1(39073u, 1i, 4294967295u, true, -1169f), vec4<u32>(4294967295u, 6594u, 0u, 21783u), Struct_1(1u, 74913i, 49111u, false, 421f), Struct_1(4294967295u, -30330i, 4294967295u, true, 1074f), true), Struct_2(Struct_1(0u, 8948i, 35639u, true, -569f), vec4<u32>(0u, 0u, 0u, 1u), Struct_1(107155u, i32(-2147483648), 0u, true, 1212f), Struct_1(4294967295u, 2147483647i, 4294967295u, true, -903f), false), Struct_2(Struct_1(8945u, -35123i, 53555u, false, 314f), vec4<u32>(4294967295u, 3780u, 24030u, 45421u), Struct_1(101897u, 12413i, 27908u, false, 866f), Struct_1(23876u, 49789i, 10037u, false, -106f), false), Struct_2(Struct_1(4294967295u, 1i, 54370u, false, 257f), vec4<u32>(0u, 4294967295u, 52274u, 68739u), Struct_1(41101u, 33572i, 0u, true, -490f), Struct_1(6973u, 2147483647i, 74395u, true, -1453f), false), Struct_2(Struct_1(4294967295u, 33631i, 4294967295u, false, -2329f), vec4<u32>(1u, 9704u, 4294967295u, 14831u), Struct_1(0u, i32(-2147483648), 2477u, true, 1503f), Struct_1(56171u, -8972i, 0u, true, 254f), true), Struct_2(Struct_1(80862u, i32(-2147483648), 7799u, false, -493f), vec4<u32>(35761u, 2521u, 82903u, 25951u), Struct_1(0u, i32(-2147483648), 19434u, true, -1000f), Struct_1(1u, -4949i, 5748u, true, 584f), true), Struct_2(Struct_1(4294967295u, -54506i, 13733u, false, -683f), vec4<u32>(40286u, 4294967295u, 5569u, 4294967295u), Struct_1(0u, -1i, 0u, false, 1304f), Struct_1(69u, 44535i, 45224u, true, -1590f), true), Struct_2(Struct_1(50187u, 44347i, 22237u, true, 567f), vec4<u32>(0u, 1u, 7661u, 4294967295u), Struct_1(1u, -19264i, 0u, false, -1368f), Struct_1(46811u, -1i, 7393u, true, -1191f), false), Struct_2(Struct_1(1u, i32(-2147483648), 37672u, true, 792f), vec4<u32>(4294967295u, 0u, 0u, 18250u), Struct_1(70865u, 0i, 53288u, false, 1248f), Struct_1(19069u, 0i, 0u, true, -2710f), true), Struct_2(Struct_1(26959u, -36822i, 1u, false, 1026f), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), Struct_1(1u, 2147483647i, 13348u, true, 1221f), Struct_1(30457u, -45892i, 0u, true, -1473f), false), Struct_2(Struct_1(19153u, -20753i, 0u, false, 2027f), vec4<u32>(30499u, 0u, 4294967295u, 15792u), Struct_1(0u, 1i, 9004u, true, 871f), Struct_1(1u, 1i, 40305u, true, 2014f), false), Struct_2(Struct_1(0u, 9550i, 13426u, true, 1000f), vec4<u32>(41752u, 15161u, 1u, 32791u), Struct_1(9448u, 55624i, 0u, false, 351f), Struct_1(1u, 1i, 54899u, false, -506f), false), Struct_2(Struct_1(0u, -44564i, 0u, false, -278f), vec4<u32>(4105u, 4294967295u, 8489u, 1u), Struct_1(4294967295u, 2147483647i, 3203u, true, 625f), Struct_1(0u, 51128i, 0u, true, -1314f), false), Struct_2(Struct_1(72341u, 0i, 1u, true, 359f), vec4<u32>(51029u, 5820u, 4294967295u, 1u), Struct_1(25070u, -17580i, 1u, true, -249f), Struct_1(17077u, 2147483647i, 35061u, false, -444f), false), Struct_2(Struct_1(46068u, -1i, 4294967295u, false, -327f), vec4<u32>(1u, 4294967295u, 2664u, 1u), Struct_1(1u, 0i, 83452u, false, 1000f), Struct_1(1u, -26680i, 1u, true, 864f), false), Struct_2(Struct_1(1u, -18561i, 34136u, true, -653f), vec4<u32>(13590u, 0u, 13905u, 1u), Struct_1(4294967295u, 1i, 1u, false, -563f), Struct_1(4294967295u, -40588i, 34486u, false, 185f), false), Struct_2(Struct_1(1u, -1i, 1u, true, -343f), vec4<u32>(1u, 30919u, 14309u, 48529u), Struct_1(21265u, 5675i, 0u, false, 295f), Struct_1(116878u, 23172i, 20046u, false, -712f), false), Struct_2(Struct_1(4294967295u, 0i, 0u, false, -260f), vec4<u32>(114450u, 34359u, 1u, 6550u), Struct_1(0u, 52502i, 29613u, true, -464f), Struct_1(1u, 1i, 53926u, false, 731f), false), Struct_2(Struct_1(4294967295u, 4277i, 8590u, false, 1000f), vec4<u32>(1u, 1u, 1u, 13119u), Struct_1(4294967295u, 2147483647i, 17097u, true, 1058f), Struct_1(59404u, -6774i, 4294967295u, false, 356f), true), Struct_2(Struct_1(0u, 2147483647i, 4294967295u, false, 1000f), vec4<u32>(1u, 73076u, 18097u, 59040u), Struct_1(0u, 2147483647i, 0u, true, -928f), Struct_1(18432u, 2147483647i, 47635u, false, -1244f), false), Struct_2(Struct_1(39154u, 27789i, 82002u, false, -133f), vec4<u32>(0u, 19328u, 1u, 0u), Struct_1(1u, -21021i, 31612u, false, -758f), Struct_1(4294967295u, -1i, 4294967295u, false, -1886f), true));

var<private> global3: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = 63323u;
    var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.e, arg_1.c.e, arg_1.c.e, arg_1.d.e))) - vec4<f32>(arg_1.c.e, arg_1.c.e, arg_1.c.e, arg_1.c.e)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.e, -1308f, arg_1.c.e, arg_1.d.e)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c.e, -1135f, -485f, arg_1.a.e), vec4<f32>(-591f, 1068f, arg_1.a.e, 1860f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-927f, arg_1.c.e, arg_1.c.e, arg_1.c.e))))))));
    var var_2 = !select(vec3<bool>(false, select(true, false, true), (arg_1.d.d | true) | arg_1.c.d), vec3<bool>(true, all(!vec2<bool>(true, arg_1.a.d)), arg_1.a.d), any(!vec3<bool>(true, arg_1.d.d, false)));
    let var_3 = arg_1;
    return ~(~(~(u_input.c.x | ~4294967295u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<u32> {
    global2 = array<Struct_2, 27>();
    let var_0 = arg_1.e;
    var var_1 = global2[_wgslsmith_index_u32(~arg_0.x, 27u)];
    return vec4<u32>(~arg_1.c, u_input.c.x, ~arg_1.c, func_3(~(~vec3<u32>(73224u, 1u, 22220u)), global2[_wgslsmith_index_u32(~1u, 27u)]) >> (arg_1.a % 32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> u32 {
    global2 = array<Struct_2, 27>();
    var var_0 = select(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c.x, arg_1.c, 1u), ~vec4<u32>(37940u, arg_1.c, arg_1.c, u_input.c.x))), func_2(vec3<u32>(arg_1.a, u_input.c.x, u_input.c.x) ^ u_input.c, arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 1258f) - arg_0)) ^ ~select(~vec4<u32>(u_input.c.x, 0u, 24055u, 111065u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, 52465u, u_input.c.x, 51065u), vec4<u32>(u_input.c.x, 80311u, arg_1.c, 1u)), !vec4<bool>(false, true, false, arg_2.x)), ~abs(_wgslsmith_add_u32(11080u, arg_1.c)) > ~(~u_input.c.x | 1u));
    global2 = array<Struct_2, 27>();
    var var_1 = !((u_input.c.x << (~_wgslsmith_mult_u32(0u, 56778u) % 32u)) <= ~var_0.x);
    global1 = array<vec2<i32>, 19>();
    return _wgslsmith_mult_u32(~_wgslsmith_add_u32(~(var_0.x >> (u_input.c.x % 32u)), 4294967295u), reverseBits(arg_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.a, 27u)];
    var var_1 = vec4<i32>(_wgslsmith_add_i32(0i, -u_input.b.x), 6843i, ~(~(~u_input.a.x)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-24860i, min(-12068i, u_input.a.x), var_0.a.b, ~u_input.a.x)) << (max(~1u, arg_0.c) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, var_0.c.e, -1944f, 1028f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, -1505f, var_0.a.e, -1000f) + vec4<f32>(-1000f, 884f, 1061f, 1026f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, arg_0.e, var_0.d.e, var_0.c.e)), vec4<f32>(-1000f, 410f, arg_0.e, var_0.c.e)))))));
    var_1 = -u_input.b;
    var var_3 = global2[_wgslsmith_index_u32(~func_2(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(67921u, var_0.c.a, 4294967295u), vec3<u32>(arg_0.a, 0u, 0u)), reverseBits(var_0.b.yyx)), Struct_1(4294967295u, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -59352i, -24243i), firstLeadingBit(u_input.c.x), any(select(vec3<bool>(arg_0.d, arg_1, false), vec3<bool>(arg_0.d, false, arg_1), vec3<bool>(true, false, arg_0.d))), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1112f, 675f)), _wgslsmith_f_op_vec2_f32(max(var_2.xy, vec2<f32>(854f, 805f))))))).x, 27u)];
    return Struct_2(Struct_1(~var_0.d.a, 2147483647i, ~(arg_0.c >> (68293u % 32u)) | var_3.b.x, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.d.e * var_2.x), var_3.c.e)), -422f))), countOneBits(~var_0.b), Struct_1(41394u, var_3.a.b, arg_0.c, false, var_2.x), Struct_1(20163u, abs(min(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-18172i, -2147483647i, -2147483647i), u_input.b.xxy))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x | 1u, var_0.d.a), func_3(var_3.b.zwz & vec3<u32>(11765u, 1u, arg_0.a), global2[_wgslsmith_index_u32(~25039u, 27u)])), true, var_2.x), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = func_4(Struct_1(4294967295u, 1i, _wgslsmith_sub_u32(1u & func_1(vec2<f32>(1000f, 2746f), Struct_1(u_input.c.x, 31906i, u_input.c.x, false, 1000f), vec2<bool>(true, true), vec3<f32>(-1733f, 1000f, -842f)), u_input.c.x), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(171f - -1800f))))), false);
    var var_2 = func_4(func_4(var_1.d, false).d, !select(all(vec4<bool>(var_1.d.d, var_1.a.d, false, var_1.a.d)) && true, true && all(vec3<bool>(var_1.c.d, true, var_1.d.d)), var_1.d.d)).a;
    let var_3 = global2[_wgslsmith_index_u32(1u, 27u)];
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, var_1.a.e, var_3.d.e, var_3.c.e))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(515f, 656f, var_2.e, var_1.d.e) - vec4<f32>(1694f, var_3.c.e, var_2.e, -312f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -117f, var_2.e, var_1.c.e), vec4<f32>(-195f, -862f, var_3.c.e, -944f), vec4<bool>(var_3.a.d, false, false, var_1.c.d)))))));
    var var_5 = _wgslsmith_add_vec3_i32(firstTrailingBit(abs(u_input.b.yxw)), vec3<i32>(var_2.b, abs(firstLeadingBit(var_3.d.b)), u_input.b.x));
    var var_6 = ~var_3.a.b;
    global1 = array<vec2<i32>, 19>();
    var_5 = min(u_input.a.wxy, _wgslsmith_mult_vec3_i32(~u_input.a.ywy, ~u_input.a.zxz));
    let x = u_input.a;
    s_output = StorageBuffer(535f, u_input.b);
}

