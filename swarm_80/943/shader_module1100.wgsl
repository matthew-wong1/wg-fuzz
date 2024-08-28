struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(0u, vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(10574u, 12005u), 4294967295u, vec4<u32>(25095u, 44954u, 1u, 64244u), vec2<bool>(true, false), 3275u), vec4<bool>(true, false, false, false), i32(-2147483648), Struct_2(vec2<u32>(31352u, 18690u), 39581u, vec4<u32>(1u, 1u, 29350u, 0u), vec2<bool>(false, false), 22516u)), Struct_3(Struct_1(18900u, vec2<u32>(30944u, 28624u)), Struct_2(vec2<u32>(4294967295u, 1u), 1u, vec4<u32>(4294967295u, 51509u, 4294967295u, 0u), vec2<bool>(true, false), 0u), vec4<bool>(false, false, false, false), -48783i, Struct_2(vec2<u32>(0u, 1u), 4294967295u, vec4<u32>(4294967295u, 0u, 0u, 97498u), vec2<bool>(true, true), 4294967295u)), Struct_3(Struct_1(4294967295u, vec2<u32>(47095u, 4294967295u)), Struct_2(vec2<u32>(52169u, 30793u), 36854u, vec4<u32>(0u, 6275u, 106017u, 4294967295u), vec2<bool>(false, true), 4294967295u), vec4<bool>(true, false, false, true), 6338i, Struct_2(vec2<u32>(60499u, 33680u), 1u, vec4<u32>(16541u, 26960u, 23660u, 1u), vec2<bool>(true, true), 0u)), Struct_3(Struct_1(1u, vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(0u, 4294967295u), 1u, vec4<u32>(92208u, 45597u, 46838u, 6872u), vec2<bool>(false, true), 1u), vec4<bool>(false, false, true, false), 27949i, Struct_2(vec2<u32>(11097u, 4294967295u), 20324u, vec4<u32>(233u, 42821u, 4294967295u, 0u), vec2<bool>(false, true), 3315u)), Struct_3(Struct_1(4294967295u, vec2<u32>(68803u, 0u)), Struct_2(vec2<u32>(11315u, 6381u), 64911u, vec4<u32>(93743u, 58854u, 61878u, 98584u), vec2<bool>(true, false), 30362u), vec4<bool>(false, false, true, true), -11759i, Struct_2(vec2<u32>(4845u, 4439u), 4294967295u, vec4<u32>(26668u, 74814u, 1u, 36741u), vec2<bool>(true, true), 87040u)), Struct_3(Struct_1(36549u, vec2<u32>(67874u, 66461u)), Struct_2(vec2<u32>(18217u, 0u), 21369u, vec4<u32>(13847u, 47646u, 1u, 39456u), vec2<bool>(false, true), 67483u), vec4<bool>(false, true, true, true), 1i, Struct_2(vec2<u32>(4294967295u, 76485u), 21191u, vec4<u32>(1u, 0u, 5799u, 34295u), vec2<bool>(false, false), 0u)), Struct_3(Struct_1(111809u, vec2<u32>(2466u, 45357u)), Struct_2(vec2<u32>(4294967295u, 4294967295u), 65722u, vec4<u32>(44477u, 4294967295u, 0u, 1u), vec2<bool>(true, false), 1u), vec4<bool>(false, true, false, true), 1i, Struct_2(vec2<u32>(1u, 0u), 1u, vec4<u32>(64760u, 1u, 5533u, 15267u), vec2<bool>(false, false), 11706u)), Struct_3(Struct_1(4294967295u, vec2<u32>(15592u, 4294967295u)), Struct_2(vec2<u32>(0u, 9787u), 5723u, vec4<u32>(4294967295u, 18277u, 0u, 1u), vec2<bool>(false, true), 4294967295u), vec4<bool>(true, false, false, false), -8597i, Struct_2(vec2<u32>(88300u, 53795u), 17138u, vec4<u32>(4294967295u, 76987u, 22734u, 18083u), vec2<bool>(false, false), 3935u)), Struct_3(Struct_1(0u, vec2<u32>(46891u, 19665u)), Struct_2(vec2<u32>(17423u, 21852u), 11446u, vec4<u32>(35155u, 1u, 85587u, 40413u), vec2<bool>(false, true), 1u), vec4<bool>(true, false, false, true), -1i, Struct_2(vec2<u32>(0u, 0u), 70869u, vec4<u32>(31280u, 1u, 67410u, 4294967295u), vec2<bool>(false, false), 46637u)), Struct_3(Struct_1(0u, vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(0u, 44795u), 78635u, vec4<u32>(61845u, 4294967295u, 0u, 55033u), vec2<bool>(true, false), 34064u), vec4<bool>(true, false, false, true), 2147483647i, Struct_2(vec2<u32>(0u, 1u), 120638u, vec4<u32>(0u, 7262u, 0u, 21769u), vec2<bool>(true, true), 39845u)), Struct_3(Struct_1(0u, vec2<u32>(39159u, 2881u)), Struct_2(vec2<u32>(2132u, 1u), 4294967295u, vec4<u32>(30831u, 42991u, 1u, 13322u), vec2<bool>(true, false), 0u), vec4<bool>(false, true, false, false), -1i, Struct_2(vec2<u32>(5968u, 75079u), 10319u, vec4<u32>(63430u, 1u, 131373u, 58920u), vec2<bool>(true, true), 1u)), Struct_3(Struct_1(1u, vec2<u32>(54339u, 2600u)), Struct_2(vec2<u32>(36550u, 4294967295u), 38695u, vec4<u32>(1u, 47564u, 5291u, 25559u), vec2<bool>(true, true), 57082u), vec4<bool>(false, false, true, true), 2147483647i, Struct_2(vec2<u32>(86174u, 31655u), 4294967295u, vec4<u32>(1u, 4294967295u, 4294967295u, 114936u), vec2<bool>(true, true), 4294967295u)), Struct_3(Struct_1(4294967295u, vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(82402u, 45200u), 57692u, vec4<u32>(0u, 4294967295u, 0u, 0u), vec2<bool>(false, true), 39868u), vec4<bool>(false, true, true, true), 38909i, Struct_2(vec2<u32>(1u, 61685u), 54296u, vec4<u32>(1u, 0u, 1u, 1u), vec2<bool>(true, true), 1u)), Struct_3(Struct_1(4294967295u, vec2<u32>(25512u, 54421u)), Struct_2(vec2<u32>(86014u, 51902u), 4294967295u, vec4<u32>(0u, 1u, 15509u, 18969u), vec2<bool>(true, false), 124817u), vec4<bool>(true, true, true, false), -1i, Struct_2(vec2<u32>(0u, 0u), 4294967295u, vec4<u32>(5220u, 1u, 4294967295u, 0u), vec2<bool>(false, true), 71590u)), Struct_3(Struct_1(31805u, vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(34278u, 109463u), 46547u, vec4<u32>(0u, 50620u, 22118u, 37133u), vec2<bool>(true, true), 49916u), vec4<bool>(true, true, false, false), 1i, Struct_2(vec2<u32>(929u, 49926u), 48274u, vec4<u32>(1u, 60152u, 1u, 4788u), vec2<bool>(true, true), 1u)), Struct_3(Struct_1(4294967295u, vec2<u32>(14414u, 88023u)), Struct_2(vec2<u32>(6703u, 51739u), 5622u, vec4<u32>(1u, 24701u, 64652u, 1u), vec2<bool>(true, false), 33122u), vec4<bool>(false, false, true, false), -65631i, Struct_2(vec2<u32>(1u, 38744u), 0u, vec4<u32>(39022u, 49388u, 4294967295u, 1u), vec2<bool>(true, false), 4294967295u)), Struct_3(Struct_1(1u, vec2<u32>(3791u, 45444u)), Struct_2(vec2<u32>(5849u, 0u), 4294967295u, vec4<u32>(0u, 57755u, 27028u, 14906u), vec2<bool>(true, false), 4294967295u), vec4<bool>(true, true, false, true), -20129i, Struct_2(vec2<u32>(24028u, 1u), 51310u, vec4<u32>(8175u, 0u, 1u, 14271u), vec2<bool>(true, false), 42778u)), Struct_3(Struct_1(1u, vec2<u32>(0u, 57332u)), Struct_2(vec2<u32>(6069u, 0u), 0u, vec4<u32>(1u, 4294967295u, 12740u, 53111u), vec2<bool>(true, true), 12027u), vec4<bool>(true, true, false, false), -1i, Struct_2(vec2<u32>(70608u, 0u), 0u, vec4<u32>(58052u, 81943u, 0u, 117634u), vec2<bool>(true, true), 4294967295u)), Struct_3(Struct_1(4003u, vec2<u32>(13413u, 60077u)), Struct_2(vec2<u32>(0u, 0u), 1u, vec4<u32>(0u, 2169u, 0u, 0u), vec2<bool>(true, false), 49410u), vec4<bool>(true, true, true, true), -21402i, Struct_2(vec2<u32>(4294967295u, 8000u), 60954u, vec4<u32>(34974u, 0u, 27683u, 4294967295u), vec2<bool>(false, false), 1u)), Struct_3(Struct_1(0u, vec2<u32>(11484u, 4294967295u)), Struct_2(vec2<u32>(30837u, 120559u), 48122u, vec4<u32>(1u, 64570u, 4051u, 52549u), vec2<bool>(false, true), 1u), vec4<bool>(true, true, false, true), 39337i, Struct_2(vec2<u32>(1u, 40460u), 36446u, vec4<u32>(0u, 89277u, 14419u, 4294967295u), vec2<bool>(true, false), 41713u)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> u32 {
    var var_0 = vec3<u32>(~(u_input.e.x ^ 22694u) & min(min(u_input.d.x, u_input.d.x) & 4294967295u, 4294967295u), _wgslsmith_mod_u32(abs(1u), firstTrailingBit(u_input.b)), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(25505u, u_input.e.x), firstTrailingBit(u_input.e.x)), 92225u), ~u_input.d.x));
    global0 = array<bool, 14>();
    return u_input.b;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_2))), arg_2, select(vec4<bool>(all(!vec4<bool>(false, global0[_wgslsmith_index_u32(33910u, 14u)], false, true)), false, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(39788u, arg_0.x, 3768u), 14u)], true), select(vec4<bool>(true, global1.x, any(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(1u, 14u)])), !global0[_wgslsmith_index_u32(arg_1.x, 14u)]), !vec4<bool>(global0[_wgslsmith_index_u32(198u, 14u)], true, false, true), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], false, global1.x, global0[_wgslsmith_index_u32(u_input.d.x, 14u)])), vec4<bool>(all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 14u)], global1.x, true, global1.x), vec4<bool>(false, false, global1.x, true), global0[_wgslsmith_index_u32(26649u, 14u)])), (u_input.a >> (0u % 32u)) == u_input.a, false, true))));
    global1 = !vec4<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.x, 1687f), _wgslsmith_f_op_f32(var_0.x + 630f))) >= -1092f, min(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)) < u_input.a, _wgslsmith_f_op_f32(floor(arg_2.x)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1808f) * _wgslsmith_f_op_f32(arg_2.x * 1807f)));
    let var_1 = firstLeadingBit(0u) < ~func_2();
    let var_2 = Struct_4(!global1.yxy, vec3<i32>(2147483647i, ~2147483647i, ~abs(2147483647i) >> (abs(arg_0.x) % 32u)), (vec3<u32>(~54219u, 0u, 1u) | ~select(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(0u, 0u, arg_0.x), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 14u)], var_1))) & vec3<u32>(~firstLeadingBit(arg_1.x), _wgslsmith_sub_u32(54367u << (arg_1.x % 32u), 44329u >> (1u % 32u)), _wgslsmith_div_u32(1u, u_input.d.x)));
    let var_3 = Struct_4(!vec3<bool>(any(select(vec2<bool>(true, true), global1.zy, global0[_wgslsmith_index_u32(16907u, 14u)])), false, u_input.a <= 0i), ~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, var_2.b.x), -44899i), u_input.a, -1i), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mult_u32(1u, arg_1.x), ~var_2.c.x, abs(arg_0.x)), firstLeadingBit(u_input.e)), 1u, 0u));
    return var_2.c.x;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = !all(global1.yw);
    global0 = array<bool, 14>();
    let var_1 = arg_0.wzz;
    global0 = array<bool, 14>();
    var var_2 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(4442u, ~u_input.d.x), _wgslsmith_add_u32(~func_2(), ~(~u_input.d.x)));
    return Struct_3(Struct_1(16432u, ~vec2<u32>(~u_input.c.x, u_input.e.x & u_input.b)), Struct_2(u_input.c.yy, u_input.b, u_input.e, !vec2<bool>(all(global1.zz), all(vec4<bool>(global0[_wgslsmith_index_u32(67123u, 14u)], global1.x, false, true))), 0u >> (func_3(~vec3<u32>(u_input.d.x, u_input.d.x, 0u), vec3<u32>(u_input.c.x, u_input.e.x, 57755u) & vec3<u32>(u_input.c.x, 0u, u_input.c.x), _wgslsmith_f_op_vec4_f32(arg_0 * arg_0)) % 32u)), vec4<bool>(true, true, true, true), u_input.a, Struct_2(u_input.c.yw, u_input.e.x, ~u_input.e, vec2<bool>(true, !global0[_wgslsmith_index_u32(func_3(u_input.d, u_input.c.xww, arg_0), 14u)]), u_input.e.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = !(!arg_3.xyz);
    global0 = array<bool, 14>();
    let var_1 = vec4<f32>(-1000f, 947f, -1091f, _wgslsmith_f_op_f32(f32(-1f) * -435f));
    let var_2 = abs(u_input.c.zzz);
    let var_3 = abs(-(_wgslsmith_clamp_i32(arg_0.d, arg_0.d, 2147483647i) ^ min(arg_0.d, arg_0.d))) == ~(-(~(~arg_0.d)));
    return !select(select(arg_3.xxx, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -846f, 207f, var_1.x))).c.www, !all(arg_0.b.d)), !arg_0.c.zww, !vec3<bool>(true, true, any(var_0.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f - 260f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(402f)) + _wgslsmith_f_op_f32(1430f * 364f)) * -1379f), -152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(244f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-411f, -879f, 2073f, 586f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1253f, 373f, -1551f, -1672f) * vec4<f32>(-1963f, -1000f, -1110f, -257f)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-286f)), _wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(-235f - -613f), -1287f))));
    var var_1 = Struct_4(func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, -348f, var_0.x, -2203f) + vec4<f32>(var_0.x, 541f, 609f, var_0.x)))), Struct_1(~_wgslsmith_mod_u32(u_input.b, 1u), ~reverseBits(u_input.c.zw)), ~(~u_input.e.x ^ select(u_input.c.x, u_input.e.x, global1.x)), !(!vec4<bool>(global1.x, false, true, false))), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(1i, 58971i, u_input.a), ~vec3<i32>(-1i, 26363i, u_input.a))) & select(abs(max(vec3<i32>(1i, -1i, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a))), vec3<i32>(u_input.a, i32(-1i) * -31242i, -u_input.a), false), firstLeadingBit(u_input.d & u_input.c.wxy));
    var var_2 = 1u;
    global0 = array<bool, 14>();
    let var_3 = Struct_2(countOneBits(abs(vec2<u32>(var_1.c.x, u_input.b))), 6573u, ~vec4<u32>(firstLeadingBit(~u_input.d.x), func_2(), ~24340u, _wgslsmith_mult_u32(abs(5499u), u_input.e.x)), !select(!func_4(global2[_wgslsmith_index_u32(43572u, 20u)], Struct_1(var_1.c.x, vec2<u32>(u_input.c.x, var_1.c.x)), u_input.d.x, vec4<bool>(false, var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 14u)], true)).xx, func_1(vec4<f32>(474f, var_0.x, var_0.x, 1000f)).e.d, func_4(global2[_wgslsmith_index_u32(reverseBits(1u), 20u)], Struct_1(u_input.e.x, var_1.c.xx), 62739u, !vec4<bool>(false, var_1.a.x, true, true)).x), ~0u);
    let var_4 = -(vec3<i32>(-1i) * -vec3<i32>(0i, 0i, _wgslsmith_add_i32(-2147483647i, 32133i)));
    var var_5 = !vec3<bool>(select(!var_3.d.x, !(global0[_wgslsmith_index_u32(63166u, 14u)] & var_3.d.x), any(select(var_1.a, var_1.a, var_1.a))), select(true, !(true && var_3.d.x), true), false);
    var_1 = Struct_4(vec3<bool>(global1.x, false, !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(13528u, ~u_input.b), 14u)]), abs(var_1.b), _wgslsmith_add_vec3_u32(reverseBits(var_1.c >> (vec3<u32>(u_input.b, 1u, var_1.c.x) % vec3<u32>(32u))), ~vec3<u32>(740u, var_3.e, 19441u)) >> (~u_input.d % vec3<u32>(32u)));
    let var_6 = Struct_2(u_input.c.wy, var_1.c.x, vec4<u32>(_wgslsmith_sub_u32(22028u, ~(~1u)), firstLeadingBit(~(~1u)), select(~27601u, countOneBits(34303u), true) & 4294967295u, 1u), !select(func_1(vec4<f32>(var_0.x, -271f, var_0.x, var_0.x)).e.d, !func_1(vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x)).c.zx, var_5.x), ~_wgslsmith_dot_vec2_u32(u_input.c.ww, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, var_1.c.x), countOneBits(u_input.c.xw))));
    let x = u_input.a;
    s_output = StorageBuffer(max(13979u, _wgslsmith_clamp_u32(var_3.b >> (4294967295u % 32u), ~_wgslsmith_mod_u32(66761u, u_input.e.x), u_input.b | (var_3.a.x | var_3.c.x))), vec3<i32>(10192i, _wgslsmith_div_i32(var_4.x, min(abs(var_1.b.x), var_1.b.x)), -2450i));
}

