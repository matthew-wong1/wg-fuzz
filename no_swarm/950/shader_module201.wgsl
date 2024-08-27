struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 14>;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(19422i, vec3<bool>(true, false, true), Struct_1(1685f, vec3<u32>(0u, 0u, 4294967295u), 1i, -1i, vec3<f32>(-858f, -1000f, 2811f))), Struct_3(-1i, vec3<bool>(false, true, false), Struct_1(-192f, vec3<u32>(1u, 1u, 1u), 0i, 46478i, vec3<f32>(389f, 1089f, 998f))), Struct_3(-41938i, vec3<bool>(false, true, false), Struct_1(-1325f, vec3<u32>(1u, 4294967295u, 88246u), 2147483647i, 1i, vec3<f32>(-104f, 1227f, -1424f))), Struct_3(0i, vec3<bool>(true, true, false), Struct_1(772f, vec3<u32>(76057u, 70286u, 4294967295u), -1i, 34054i, vec3<f32>(1635f, -2115f, 138f))), Struct_3(-1i, vec3<bool>(true, false, false), Struct_1(-1327f, vec3<u32>(3769u, 12707u, 1u), 0i, 22160i, vec3<f32>(1087f, 100f, -600f))), Struct_3(60689i, vec3<bool>(false, false, false), Struct_1(-1000f, vec3<u32>(6100u, 22279u, 34867u), 2147483647i, i32(-2147483648), vec3<f32>(-1000f, 1068f, -1125f))), Struct_3(0i, vec3<bool>(false, false, true), Struct_1(224f, vec3<u32>(31779u, 10849u, 43922u), i32(-2147483648), -32422i, vec3<f32>(425f, 1384f, 1175f))), Struct_3(i32(-2147483648), vec3<bool>(false, false, false), Struct_1(206f, vec3<u32>(1u, 4294967295u, 43671u), 0i, 9817i, vec3<f32>(-628f, 999f, -555f))), Struct_3(1i, vec3<bool>(true, false, false), Struct_1(-1056f, vec3<u32>(0u, 21243u, 6144u), 502i, 0i, vec3<f32>(148f, -1220f, -1000f))), Struct_3(1i, vec3<bool>(true, false, true), Struct_1(-1309f, vec3<u32>(0u, 0u, 4294967295u), -40600i, -32261i, vec3<f32>(-164f, 1026f, -349f))), Struct_3(-23347i, vec3<bool>(true, false, true), Struct_1(-1000f, vec3<u32>(0u, 0u, 13877u), i32(-2147483648), -1i, vec3<f32>(-172f, -1183f, 461f))), Struct_3(15566i, vec3<bool>(true, false, true), Struct_1(-1675f, vec3<u32>(47954u, 1u, 32213u), -385i, 25605i, vec3<f32>(-753f, -444f, -129f))), Struct_3(0i, vec3<bool>(true, true, true), Struct_1(967f, vec3<u32>(27710u, 0u, 0u), -25115i, -1i, vec3<f32>(1313f, 1700f, 1267f))), Struct_3(59468i, vec3<bool>(true, false, true), Struct_1(708f, vec3<u32>(44810u, 4294967295u, 41896u), 0i, 19166i, vec3<f32>(-730f, -1542f, -106f))), Struct_3(-14967i, vec3<bool>(true, true, true), Struct_1(209f, vec3<u32>(4294967295u, 4294967295u, 32752u), 12949i, -4421i, vec3<f32>(-1448f, 1193f, -1340f))), Struct_3(-2372i, vec3<bool>(false, true, true), Struct_1(-377f, vec3<u32>(10768u, 0u, 4294967295u), 2147483647i, -1i, vec3<f32>(-1331f, 1510f, 260f))), Struct_3(4745i, vec3<bool>(true, false, false), Struct_1(-303f, vec3<u32>(0u, 4451u, 4294967295u), 1877i, 2147483647i, vec3<f32>(-1406f, 1046f, -868f))), Struct_3(55136i, vec3<bool>(true, false, true), Struct_1(188f, vec3<u32>(1u, 46942u, 1u), 1i, -213i, vec3<f32>(1663f, -2666f, 1000f))), Struct_3(2147483647i, vec3<bool>(false, false, false), Struct_1(739f, vec3<u32>(47665u, 32959u, 1u), 0i, 0i, vec3<f32>(575f, 757f, -1287f))), Struct_3(i32(-2147483648), vec3<bool>(false, false, false), Struct_1(-995f, vec3<u32>(1u, 0u, 1u), 6690i, -5194i, vec3<f32>(-1087f, -763f, 1000f))), Struct_3(1i, vec3<bool>(true, true, true), Struct_1(-125f, vec3<u32>(3579u, 7956u, 41549u), -44569i, -40304i, vec3<f32>(-357f, -474f, 398f))), Struct_3(39405i, vec3<bool>(false, false, true), Struct_1(2602f, vec3<u32>(28054u, 1u, 52950u), 0i, 0i, vec3<f32>(-388f, 557f, -788f))), Struct_3(15662i, vec3<bool>(false, true, false), Struct_1(506f, vec3<u32>(56504u, 4294967295u, 36840u), -1i, 0i, vec3<f32>(-2010f, 1000f, -1086f))), Struct_3(91939i, vec3<bool>(false, true, true), Struct_1(-927f, vec3<u32>(1187u, 100494u, 232u), i32(-2147483648), 2147483647i, vec3<f32>(-983f, 712f, 194f))), Struct_3(-3641i, vec3<bool>(false, true, false), Struct_1(1235f, vec3<u32>(32599u, 19790u, 1u), i32(-2147483648), 0i, vec3<f32>(789f, 399f, -543f))), Struct_3(48293i, vec3<bool>(false, true, true), Struct_1(623f, vec3<u32>(4294967295u, 1u, 0u), 9644i, 655i, vec3<f32>(1110f, 934f, 337f))));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_4 {
    global0 = global2[_wgslsmith_index_u32(1u << (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, global0.c.b.x) & vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), ~vec4<u32>(global0.c.b.x, 4621u, 24868u, 108859u)), vec4<u32>(reverseBits(global0.c.b.x), reverseBits(71148u), global0.c.b.x, _wgslsmith_div_u32(global0.c.b.x, 4294967295u))), u_input.a) % 32u), 26u)];
    let var_0 = select(~global0.c.b >> (global0.c.b % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(74374u, 1u, 1u)), vec3<bool>(true || !global0.b.x, global0.b.x, 56010i < u_input.b.x));
    let var_1 = -_wgslsmith_clamp_i32(-u_input.b.x, -1i & global0.a, u_input.b.x) ^ -global0.c.d;
    return Struct_4(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_sub_u32(26910u, u_input.a), 6773u, u_input.a >> (0u % 32u), _wgslsmith_dot_vec3_u32(global0.c.b, global0.c.b))), vec4<u32>(0u, max(global0.c.b.x, u_input.a), abs(var_0.x), ~32679u) << (vec4<u32>(~5625u, global0.c.b.x << (1u % 32u), 26819u, 4294967295u) % vec4<u32>(32u))), !(!global0.b), -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-39906i, 87187i, var_1, var_1), -vec4<i32>(0i, var_1, 0i, 1i)), (vec4<i32>(u_input.b.x, u_input.b.x, 9056i, global0.c.c) << (vec4<u32>(1u, u_input.a, global0.c.b.x, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(22913i, -1i, global0.a, global0.c.c)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f * 566f) * _wgslsmith_f_op_f32(-global0.c.e.x)), 314f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0.c.e.x, -887f, 204f))))), !all(global0.b));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.e.x * global0.c.e.x)), global0.c.e.x)));
    global0 = Struct_3(min(global0.c.c, abs(u_input.b.x) ^ u_input.b.x) | 15869i, select(!(!global0.b), !(!global0.b), global0.b.x), global0.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.c.a))))));
    global1 = array<vec4<bool>, 14>();
    var var_2 = func_2(global0.c.e.x, any(!global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0.c.b.x, 4294967295u), 14u)]));
    return Struct_5(Struct_1(global0.c.e.x, _wgslsmith_sub_vec3_u32(global0.c.b << (global0.c.b % vec3<u32>(32u)), ~vec3<u32>(var_2.a.x, 52082u, 0u)) & max(~vec3<u32>(29120u, var_2.a.x, 0u), select(global0.c.b, vec3<u32>(41809u, var_2.a.x, global0.c.b.x), false)), var_2.c.x, _wgslsmith_add_i32(-30786i, _wgslsmith_sub_i32(-2147483647i, -var_2.c.x)), global0.c.e));
}

fn func_3(arg_0: Struct_5) -> StorageBuffer {
    global2 = array<Struct_3, 26>();
    var var_0 = Struct_3(arg_0.a.c >> (10748u % 32u), global0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1784f, 273f)) + _wgslsmith_f_op_f32(arg_0.a.e.x + _wgslsmith_f_op_f32(-780f * global0.c.a))), reverseBits(vec3<u32>(~40220u, abs(0u), _wgslsmith_add_u32(50356u, u_input.a))), -69925i, -1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2824f, _wgslsmith_f_op_f32(max(424f, 1520f)), -540f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.e) * global0.c.e))));
    global1 = array<vec4<bool>, 14>();
    return StorageBuffer(min(~_wgslsmith_mod_i32(abs(arg_0.a.d), -u_input.b.x), -24078i >> (_wgslsmith_div_u32(~4294967295u, 31574u) % 32u)), var_0.c.a, ~(~vec4<u32>(~var_0.c.b.x, var_0.c.b.x, global0.c.b.x, func_1().a.b.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(706f, 1241f, -1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.e.x, var_0.c.e.x, -779f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-185f, var_0.c.a, var_0.c.e.x) - vec3<f32>(var_0.c.e.x, 1000f, 1043f)))), _wgslsmith_f_op_vec3_f32(-global0.c.e))), _wgslsmith_div_i32(max(-35308i, 1i), ~_wgslsmith_mult_i32(u_input.b.x << (0u % 32u), abs(13237i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(func_1());
}

