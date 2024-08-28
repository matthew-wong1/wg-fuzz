struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 74532u, 0u, 57393u);

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-1000f, vec3<bool>(true, true, true), Struct_1(718f, 4294967295u, vec4<i32>(i32(-2147483648), 10099i, i32(-2147483648), -15657i), 449f, 2147483647i), -843f, vec4<bool>(true, false, false, false)), Struct_2(1685f, vec3<bool>(false, false, false), Struct_1(-738f, 4294967295u, vec4<i32>(23387i, -1i, i32(-2147483648), i32(-2147483648)), -834f, i32(-2147483648)), -1370f, vec4<bool>(false, true, true, false)), Struct_2(522f, vec3<bool>(true, true, true), Struct_1(-339f, 51572u, vec4<i32>(31606i, -5257i, 599i, i32(-2147483648)), -336f, 11581i), -969f, vec4<bool>(true, true, true, true)), Struct_2(616f, vec3<bool>(false, true, true), Struct_1(-1195f, 67407u, vec4<i32>(4628i, 1i, 1i, 21956i), 801f, -1i), 153f, vec4<bool>(true, false, true, false)), Struct_2(1562f, vec3<bool>(true, true, true), Struct_1(962f, 4294967295u, vec4<i32>(-1i, -8175i, -24158i, 18307i), 1125f, -1i), 201f, vec4<bool>(false, true, true, false)), Struct_2(-548f, vec3<bool>(false, false, true), Struct_1(-1000f, 1u, vec4<i32>(15182i, 1i, -1i, 60323i), -836f, 1i), 220f, vec4<bool>(true, false, true, true)), Struct_2(-574f, vec3<bool>(false, false, false), Struct_1(1495f, 1u, vec4<i32>(-48943i, 1i, -1i, -6354i), -302f, -1i), -547f, vec4<bool>(true, false, true, true)), Struct_2(-1000f, vec3<bool>(true, true, true), Struct_1(507f, 0u, vec4<i32>(986i, 2697i, -25723i, 122i), -278f, 2147483647i), -1465f, vec4<bool>(false, false, false, false)), Struct_2(-154f, vec3<bool>(false, true, true), Struct_1(593f, 4294967295u, vec4<i32>(18401i, -24110i, 2147483647i, -19975i), 1409f, 1i), 1000f, vec4<bool>(false, true, false, false)), Struct_2(-865f, vec3<bool>(true, false, true), Struct_1(1591f, 52806u, vec4<i32>(707i, 22346i, -11011i, -1i), 999f, -21767i), 954f, vec4<bool>(false, true, true, false)), Struct_2(-1569f, vec3<bool>(true, false, true), Struct_1(-851f, 36256u, vec4<i32>(0i, 0i, 0i, i32(-2147483648)), 135f, 2147483647i), -1142f, vec4<bool>(false, true, true, true)), Struct_2(-1000f, vec3<bool>(false, false, true), Struct_1(-1032f, 12487u, vec4<i32>(1i, 0i, 20204i, -852i), 1389f, -10178i), -112f, vec4<bool>(false, false, true, false)), Struct_2(1095f, vec3<bool>(true, true, false), Struct_1(-1480f, 33728u, vec4<i32>(i32(-2147483648), 2147483647i, 10163i, -10980i), 366f, 20689i), 155f, vec4<bool>(false, true, true, false)), Struct_2(-960f, vec3<bool>(false, false, false), Struct_1(132f, 4367u, vec4<i32>(-19032i, 34724i, i32(-2147483648), 14505i), -1945f, i32(-2147483648)), 394f, vec4<bool>(true, false, true, true)), Struct_2(1308f, vec3<bool>(true, true, false), Struct_1(1650f, 4294967295u, vec4<i32>(-1780i, 54422i, 2327i, 26950i), 402f, 73806i), -1144f, vec4<bool>(true, false, true, false)), Struct_2(-673f, vec3<bool>(false, false, true), Struct_1(1349f, 50214u, vec4<i32>(-6469i, i32(-2147483648), 62805i, 25440i), -1562f, 1i), 1177f, vec4<bool>(false, true, false, true)), Struct_2(-1000f, vec3<bool>(false, true, false), Struct_1(637f, 1u, vec4<i32>(1i, 15771i, 26519i, 9936i), 2004f, 2147483647i), -1878f, vec4<bool>(true, true, true, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    var var_0 = u_input.b.x;
    global1 = array<Struct_2, 17>();
    var var_1 = ~(~firstTrailingBit(arg_2.c.b | firstTrailingBit(global0.x)));
    var var_2 = Struct_2(-905f, select(!select(!vec3<bool>(true, arg_2.e.x, true), !vec3<bool>(arg_1.x, arg_1.x, false), select(arg_2.b, arg_2.b, arg_1.x)), arg_1, select(~u_input.c.x, -u_input.c.x, true) != -_wgslsmith_sub_i32(46502i, 2147483647i)), arg_2.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))))), arg_2.e);
    let var_3 = global1[_wgslsmith_index_u32(var_2.c.b, 17u)];
    return 54404u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.b.x >> (~(~u_input.d.x) % 32u), reverseBits(firstTrailingBit(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x)), -vec4<i32>(45178i, u_input.c.x, -28912i, u_input.c.x)))), 1f, ~1i << (_wgslsmith_clamp_u32(10544u, ~u_input.a, func_3(u_input.c, vec3<bool>(true, true, true), Struct_2(1000f, vec3<bool>(true, true, false), Struct_1(1067f, global0.x, vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x), -1212f, u_input.c.x), -1000f, vec4<bool>(true, true, true, false)), vec2<u32>(1u, global0.x))) % 32u));
    let var_1 = var_0.d;
    global1 = array<Struct_2, 17>();
    var var_2 = vec4<u32>(abs(u_input.b.x), 0u, ~36058u, global0.x);
    global0 = u_input.d;
    return Struct_1(var_0.a, _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.b.x, var_0.b, global0.x) << (9555u % 32u), _wgslsmith_sub_u32(~var_2.x, 4294967295u)), -(~var_0.c), _wgslsmith_f_op_f32(-var_0.d), var_0.e);
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 17u)];
    global0 = ~(~(_wgslsmith_sub_vec4_u32(~u_input.d, vec4<u32>(global0.x, 70097u, var_0.c.b, arg_3.b)) & u_input.d));
    global1 = array<Struct_2, 17>();
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global0 = min(countOneBits(vec4<u32>(~reverseBits(13199u), ~1u, 0u, 77119u)), _wgslsmith_div_vec4_u32(((u_input.d | u_input.d) | vec4<u32>(4294967295u, global0.x, 16618u, 23741u)) << (abs(~u_input.d) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(~global0.x, 29916u), global0.x, _wgslsmith_clamp_u32(0u, u_input.b.x, u_input.a) >> (u_input.a % 32u), global0.x)));
    let var_0 = global1[_wgslsmith_index_u32(arg_0.b, 17u)];
    let var_1 = var_0.e.xyw;
    let var_2 = 62288u;
    let var_3 = -1237f;
    return var_0.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, ~global0.x), global0.x) ^ vec2<u32>(u_input.a, func_3(vec2<i32>(u_input.c.x, u_input.c.x), vec3<bool>(false, false, true), Struct_2(arg_0.a, vec3<bool>(false, false, false), Struct_1(arg_0.a, 3519u, vec4<i32>(1i, arg_0.c.x, 1i, u_input.c.x), 234f, -26423i), arg_0.d, vec4<bool>(false, true, true, false)), abs(u_input.d.wz))), ~_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 10583u), countOneBits(global0.zz)) & (vec2<u32>(abs(0u), max(arg_0.b, arg_1.b)) >> (u_input.d.xx % vec2<u32>(32u))));
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~15197u, var_0.x), var_0.x), abs(global0.xx));
    var var_1 = global1[_wgslsmith_index_u32(arg_1.b, 17u)];
    var var_2 = Struct_2(_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(vec4<f32>(-2046f, arg_0.d, var_1.a, var_1.d), -121f, var_1.b.x, arg_1).d) - _wgslsmith_f_op_f32(step(func_4(vec4<f32>(-167f, arg_1.a, arg_0.d, var_1.a), var_1.a, var_1.e.x, Struct_1(arg_0.a, 3062u, vec4<i32>(-16170i, 4143i, var_1.c.c.x, 1i), -826f, arg_0.c.x)).d, _wgslsmith_div_f32(var_1.d, arg_0.a)))), 1i > -(u_input.c.x >> (arg_0.b % 32u)))), var_1.b, arg_1, _wgslsmith_f_op_f32(var_1.c.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1635f, 623f, false)) - _wgslsmith_div_f32(-575f, 574f))), vec4<bool>(var_1.b.x, false, false, all(vec2<bool>(var_1.b.x, var_1.e.x))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, -133f))), var_1.a, false)), !vec3<bool>(all(!var_1.e), all(vec2<bool>(var_2.e.x, var_1.b.x)), var_2.e.x), func_2(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(select(-764f, -1843f, !var_1.e.x)))), !vec4<bool>(false, true, var_2.c.b != func_5(var_1.c, vec2<bool>(var_2.e.x, var_1.e.x)).b, true));
    return global1[_wgslsmith_index_u32(26216u, 17u)];
}

fn func_1() -> u32 {
    var var_0 = Struct_2(1454f, !vec3<bool>(all(vec2<bool>(false, false)), !select(true, false, false), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1056f, -688f) - _wgslsmith_f_op_f32(-526f + 1055f))), u_input.b.x, -_wgslsmith_sub_vec4_i32(vec4<i32>(20564i, 0i, 12458i, 1i), vec4<i32>(u_input.c.x, u_input.c.x, -22400i, u_input.c.x) & vec4<i32>(u_input.c.x, -29720i, -1573i, u_input.c.x)), -441f, u_input.c.x | u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + -654f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -393f))), all(vec2<bool>(true, true))))), vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x | 4294967295u, ~19510u, _wgslsmith_div_u32(var_0.c.b, var_0.c.b)), u_input.d.xzx), var_0.c.b) | ~0u;
    let var_2 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, _wgslsmith_mult_u32(global0.x, u_input.d.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), global0.wx), 1u)));
    var_0 = func_6(var_0.c, func_5(func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-280f, -1000f, -434f, var_0.c.a), vec4<f32>(538f, -1000f, var_0.c.d, var_0.c.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-786f))), var_0.b.x || true, func_2()), select(vec2<bool>(any(var_0.b.zz), true), vec2<bool>(var_0.e.x, var_0.b.x), select(vec2<bool>(false, false), var_0.b.yz, true))));
    var_1 = ~(~var_2.x);
    return ~(~_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1u, u_input.b.x, var_0.c.b, 61175u)), vec4<u32>(max(44527u, 44586u), 4294967295u, func_2().b, abs(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~0u, 17u)];
    global1 = array<Struct_2, 17>();
    global0 = abs(vec4<u32>(~(~var_0.c.b), ~(~0u), global0.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.d | u_input.d), vec4<u32>(func_1(), ~global0.x, u_input.b.x, u_input.b.x))));
    global1 = array<Struct_2, 17>();
    var var_1 = func_5(func_2(), var_0.e.wz);
    var_0 = global1[_wgslsmith_index_u32(global0.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(753f)), _wgslsmith_f_op_f32(max(-713f, var_1.d)), -1000f, 1182f)))));
}

