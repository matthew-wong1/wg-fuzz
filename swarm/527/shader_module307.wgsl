struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: vec4<i32> = vec4<i32>(-4236i, -47091i, 28457i, 22548i);

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(-1075f, Struct_1(314f, vec2<u32>(11337u, 46339u)), 49151u), Struct_2(-602f, Struct_1(1682f, vec2<u32>(37647u, 105910u)), 61543u), Struct_2(820f, Struct_1(617f, vec2<u32>(11527u, 4294967295u)), 84992u), Struct_2(1000f, Struct_1(-2284f, vec2<u32>(38571u, 66588u)), 51955u), Struct_2(1909f, Struct_1(321f, vec2<u32>(0u, 17045u)), 41776u), Struct_2(2046f, Struct_1(-1562f, vec2<u32>(1u, 32206u)), 9935u), Struct_2(1054f, Struct_1(556f, vec2<u32>(44690u, 4294967295u)), 23375u), Struct_2(-971f, Struct_1(-268f, vec2<u32>(4294967295u, 29856u)), 6355u), Struct_2(-814f, Struct_1(501f, vec2<u32>(12437u, 1u)), 1u), Struct_2(769f, Struct_1(-662f, vec2<u32>(1u, 0u)), 1u), Struct_2(-275f, Struct_1(622f, vec2<u32>(0u, 0u)), 29829u), Struct_2(160f, Struct_1(1000f, vec2<u32>(96965u, 0u)), 4294967295u), Struct_2(-1335f, Struct_1(-733f, vec2<u32>(26995u, 0u)), 1174u), Struct_2(1728f, Struct_1(-273f, vec2<u32>(4294967295u, 37178u)), 75011u), Struct_2(479f, Struct_1(-1166f, vec2<u32>(4294967295u, 1u)), 1u), Struct_2(-954f, Struct_1(-742f, vec2<u32>(0u, 22584u)), 1143u), Struct_2(1080f, Struct_1(493f, vec2<u32>(38462u, 42449u)), 76808u), Struct_2(766f, Struct_1(-1674f, vec2<u32>(1u, 15035u)), 4294967295u), Struct_2(1200f, Struct_1(-1253f, vec2<u32>(0u, 42236u)), 17404u), Struct_2(1827f, Struct_1(-875f, vec2<u32>(0u, 24370u)), 0u), Struct_2(-1207f, Struct_1(-415f, vec2<u32>(25889u, 1u)), 29790u), Struct_2(953f, Struct_1(1000f, vec2<u32>(27770u, 115411u)), 40223u), Struct_2(384f, Struct_1(1260f, vec2<u32>(1u, 40765u)), 56385u), Struct_2(1282f, Struct_1(-373f, vec2<u32>(4294967295u, 0u)), 13068u), Struct_2(235f, Struct_1(-806f, vec2<u32>(11905u, 4294967295u)), 4294967295u), Struct_2(-369f, Struct_1(-689f, vec2<u32>(89047u, 20752u)), 3631u), Struct_2(720f, Struct_1(500f, vec2<u32>(11784u, 4294967295u)), 0u), Struct_2(877f, Struct_1(-253f, vec2<u32>(1u, 0u)), 32342u), Struct_2(675f, Struct_1(-545f, vec2<u32>(0u, 33269u)), 1u), Struct_2(1054f, Struct_1(-426f, vec2<u32>(25024u, 1u)), 4294967295u), Struct_2(-1226f, Struct_1(1000f, vec2<u32>(25270u, 1u)), 4294967295u));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-1i, -19661i, -10784i), vec3<i32>(-45597i, i32(-2147483648), 1i), vec3<i32>(-41358i, i32(-2147483648), -39024i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = -1548f;
    global4 = array<vec3<i32>, 3>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) * -1065f) + -925f)));
    global0 = array<Struct_2, 18>();
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(abs(u_input.c.ywy) & u_input.c.zxy, firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, -23223i, arg_0), global1.ywx))));
    return Struct_1(_wgslsmith_f_op_f32(abs(-619f)), ~vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x ^ 1u, select(arg_2.x, u_input.a.x, true)), ~arg_2.x >> (2379u % 32u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.a, 357f, arg_3.a, arg_3.b.a))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2560f, arg_3.b.a, 354f, -1053f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.b.a, arg_3.a, arg_3.b.a, arg_3.b.a))), vec4<f32>(-1455f, -514f, arg_3.b.a, arg_3.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.a * arg_3.b.a), _wgslsmith_f_op_f32(exp2(arg_3.b.a)), 2359f, _wgslsmith_f_op_f32(min(340f, arg_3.b.a))))));
    global3 = _wgslsmith_add_u32(arg_1.x, 1u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-141f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(748f * var_0.x) - 2156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), func_2(arg_0.x, vec3<bool>(true, true, abs(u_input.b) == _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 63304i, global1.x), vec3<i32>(-47701i, u_input.b, global1.x))), min(reverseBits(firstTrailingBit(vec4<u32>(42421u, arg_2, arg_1.x, arg_1.x))), vec4<u32>(_wgslsmith_div_u32(arg_3.c, 63991u), 1u, max(u_input.a.x, arg_1.x), 31585u))), reverseBits(91126u));
    let var_2 = _wgslsmith_sub_vec3_i32(~vec3<i32>(max(global1.x, ~u_input.d.x), ~(-1i) & u_input.d.x, reverseBits(arg_0.x)), min(select(global1.xzz, -firstTrailingBit(vec3<i32>(0i, global1.x, arg_0.x)), true), vec3<i32>(2147483647i & abs(u_input.d.x), u_input.c.x, global1.x)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_1.b.a * 838f), var_0.x);
    return func_2(2147483647i, vec3<bool>(false, all(vec3<bool>(true, true, true)) == any(vec2<bool>(true, true)), true), ~(select(vec4<u32>(u_input.a.x, 30164u, 31681u, 4294967295u), vec4<u32>(28191u, 58162u, u_input.a.x, 17481u), vec4<bool>(false, false, false, false)) | abs(vec4<u32>(arg_3.b.b.x, u_input.a.x, arg_1.x, 0u))) << (vec4<u32>(~var_1.b.b.x, ~_wgslsmith_mod_u32(arg_2, var_1.c), firstTrailingBit(countOneBits(var_1.c)), 0u) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0)))))));
    let var_1 = any(vec2<bool>(any(vec2<bool>(all(vec2<bool>(true, true)), true)), all(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(169f, var_0, arg_3.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.wxx + vec3<f32>(1510f, var_0, arg_0)) * _wgslsmith_f_op_vec3_f32(arg_1.xwz + vec3<f32>(505f, arg_3.a, -368f)))), _wgslsmith_f_op_vec3_f32(round(arg_1.yzy)))));
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(max(arg_0, 548f));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(768f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -152f)))), func_2(u_input.c.x, vec3<bool>(true, (u_input.b == u_input.b) | false, false), _wgslsmith_add_vec4_u32(~select(vec4<u32>(u_input.a.x, 77588u, u_input.a.x, 14148u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true)), _wgslsmith_mult_vec4_u32(~vec4<u32>(146133u, u_input.a.x, 33089u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 97468u, 1u), vec4<u32>(u_input.a.x, 83022u, 1u, u_input.a.x))))), u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(1627f, var_0.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.a)))), func_3(_wgslsmith_div_vec2_i32(vec2<i32>(23725i, 2147483647i), global1.zw), ~vec3<u32>(var_0.b.b.x, 0u, 1u), func_2(u_input.b, vec3<bool>(true, true, false), vec4<u32>(u_input.a.x, var_0.b.b.x, 4294967295u, 4294967295u)).b.x, global2[_wgslsmith_index_u32(~35861u, 31u)]), func_2(-10279i, select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec4<u32>(4294967295u, 1u, 14829u, var_0.b.b.x)))))), select(var_0.b.b, u_input.a.yz, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true)) & (true | (1034f > var_0.a))));
    var var_2 = true;
    global4 = array<vec3<i32>, 3>();
    global1 = u_input.c;
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    return ~u_input.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 31>();
    global0 = array<Struct_2, 18>();
    let var_0 = vec4<bool>(true, !(!(_wgslsmith_f_op_f32(step(-1005f, -1175f)) < _wgslsmith_f_op_f32(min(944f, -394f)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, ~4294967295u), u_input.a.x) < 2185u, true);
    var var_1 = select(var_0.x != var_0.x, false, global1.x < -29283i);
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1172f, _wgslsmith_f_op_f32(func_1()))), vec2<u32>(14355u, func_3(-global1.yz, select(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, 1u, 0u), vec3<bool>(true, var_0.x, var_0.x)), ~127065u, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]).b.x)), func_2(-1i, var_0.zyy, ~countOneBits(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~countOneBits(0u)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, var_2.x, var_2.x), vec4<u32>(u_input.a.x, u_input.a.x, 9929u, 85092u)), vec4<u32>(u_input.a.x, 53025u, u_input.a.x, 4294967295u), vec4<u32>(74240u, 13579u, 78927u, var_2.x) << (vec4<u32>(32920u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(var_2.x, 1u, 4294967295u, u_input.a.x) | max(vec4<u32>(u_input.a.x, var_2.x, 1u, u_input.a.x), vec4<u32>(19061u, var_2.x, var_2.x, 71580u))));
}

