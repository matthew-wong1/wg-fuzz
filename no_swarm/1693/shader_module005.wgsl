struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(4611i, Struct_1(true, vec2<u32>(35649u, 0u), vec3<bool>(false, false, false), 220f, false), vec3<i32>(-1i, 1i, 0i), Struct_1(true, vec2<u32>(8176u, 10917u), vec3<bool>(true, false, false), -489f, true)), Struct_5(0i, Struct_1(false, vec2<u32>(24002u, 4294967295u), vec3<bool>(true, false, true), -1724f, false), vec3<i32>(-57951i, i32(-2147483648), 2147483647i), Struct_1(false, vec2<u32>(44723u, 0u), vec3<bool>(true, true, true), -378f, false)), Struct_5(-4525i, Struct_1(false, vec2<u32>(7824u, 0u), vec3<bool>(true, false, false), -977f, true), vec3<i32>(-1i, -1i, 2147483647i), Struct_1(false, vec2<u32>(1u, 0u), vec3<bool>(true, false, true), 1000f, true)), Struct_5(-1i, Struct_1(true, vec2<u32>(1u, 31148u), vec3<bool>(true, false, false), -625f, false), vec3<i32>(i32(-2147483648), 14081i, 0i), Struct_1(true, vec2<u32>(25024u, 0u), vec3<bool>(true, false, true), 874f, false)), Struct_5(25606i, Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<bool>(true, true, true), 520f, true), vec3<i32>(0i, 1i, 0i), Struct_1(false, vec2<u32>(4294967295u, 38518u), vec3<bool>(true, false, false), 366f, true)), Struct_5(47629i, Struct_1(true, vec2<u32>(4294967295u, 0u), vec3<bool>(true, true, true), 551f, true), vec3<i32>(i32(-2147483648), -42790i, -66620i), Struct_1(true, vec2<u32>(4294967295u, 1u), vec3<bool>(false, false, false), -1069f, false)), Struct_5(-37025i, Struct_1(false, vec2<u32>(16151u, 62371u), vec3<bool>(true, false, false), -1417f, true), vec3<i32>(i32(-2147483648), 11895i, -9330i), Struct_1(false, vec2<u32>(19962u, 12095u), vec3<bool>(true, true, false), 458f, false)), Struct_5(2147483647i, Struct_1(true, vec2<u32>(4294967295u, 26055u), vec3<bool>(false, true, false), 1676f, true), vec3<i32>(6234i, 0i, -33537i), Struct_1(true, vec2<u32>(36662u, 11524u), vec3<bool>(true, true, true), -925f, false)), Struct_5(43018i, Struct_1(true, vec2<u32>(1u, 1u), vec3<bool>(true, true, false), -1000f, false), vec3<i32>(-1i, 1i, -14958i), Struct_1(false, vec2<u32>(1u, 1u), vec3<bool>(true, true, false), 735f, false)), Struct_5(2147483647i, Struct_1(false, vec2<u32>(15819u, 0u), vec3<bool>(true, true, false), -544f, false), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(true, vec2<u32>(1u, 36293u), vec3<bool>(true, true, true), -242f, true)), Struct_5(1i, Struct_1(true, vec2<u32>(40594u, 25329u), vec3<bool>(false, false, true), -1476f, false), vec3<i32>(i32(-2147483648), 25630i, 30374i), Struct_1(false, vec2<u32>(107784u, 1u), vec3<bool>(true, false, false), -1563f, true)), Struct_5(2147483647i, Struct_1(false, vec2<u32>(24949u, 1u), vec3<bool>(false, true, true), 176f, false), vec3<i32>(10824i, -14033i, -1i), Struct_1(false, vec2<u32>(30105u, 4294967295u), vec3<bool>(true, false, false), 136f, true)), Struct_5(i32(-2147483648), Struct_1(true, vec2<u32>(4294967295u, 0u), vec3<bool>(true, true, true), 435f, true), vec3<i32>(-23489i, -3771i, 2147483647i), Struct_1(false, vec2<u32>(58048u, 4294967295u), vec3<bool>(true, true, false), -200f, false)), Struct_5(0i, Struct_1(false, vec2<u32>(1u, 78952u), vec3<bool>(false, true, false), 202f, true), vec3<i32>(-1i, -653i, 42182i), Struct_1(true, vec2<u32>(47811u, 24247u), vec3<bool>(true, true, false), -2300f, true)), Struct_5(-35179i, Struct_1(true, vec2<u32>(37559u, 63188u), vec3<bool>(false, false, true), -1810f, false), vec3<i32>(0i, 0i, i32(-2147483648)), Struct_1(false, vec2<u32>(0u, 23516u), vec3<bool>(false, false, false), -868f, true)), Struct_5(0i, Struct_1(true, vec2<u32>(1u, 67611u), vec3<bool>(false, false, false), 626f, true), vec3<i32>(-10595i, -14958i, 2147483647i), Struct_1(false, vec2<u32>(40839u, 50796u), vec3<bool>(true, true, false), -257f, true)), Struct_5(i32(-2147483648), Struct_1(true, vec2<u32>(0u, 47317u), vec3<bool>(false, true, false), 148f, false), vec3<i32>(-27624i, 29867i, 21804i), Struct_1(true, vec2<u32>(10054u, 45644u), vec3<bool>(false, false, true), -349f, true)), Struct_5(21096i, Struct_1(false, vec2<u32>(20192u, 4294967295u), vec3<bool>(false, false, true), -2175f, false), vec3<i32>(-1i, i32(-2147483648), 1i), Struct_1(false, vec2<u32>(1u, 46001u), vec3<bool>(true, false, true), -298f, false)), Struct_5(i32(-2147483648), Struct_1(true, vec2<u32>(1u, 0u), vec3<bool>(false, true, true), -2147f, false), vec3<i32>(-45762i, -5186i, 0i), Struct_1(false, vec2<u32>(58085u, 28174u), vec3<bool>(false, false, true), 733f, true)), Struct_5(i32(-2147483648), Struct_1(false, vec2<u32>(0u, 56425u), vec3<bool>(false, false, true), 2929f, false), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), Struct_1(false, vec2<u32>(18060u, 20051u), vec3<bool>(false, false, false), -436f, false)), Struct_5(0i, Struct_1(false, vec2<u32>(1u, 27798u), vec3<bool>(false, true, true), -501f, true), vec3<i32>(2147483647i, -5790i, -5979i), Struct_1(false, vec2<u32>(0u, 12389u), vec3<bool>(true, true, true), -1214f, true)), Struct_5(1i, Struct_1(false, vec2<u32>(4294967295u, 0u), vec3<bool>(true, true, true), -1000f, true), vec3<i32>(-30681i, -2017i, 0i), Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<bool>(false, true, true), 449f, true)), Struct_5(4917i, Struct_1(true, vec2<u32>(4294967295u, 64848u), vec3<bool>(true, true, false), 1051f, false), vec3<i32>(-1i, 2147483647i, 2147483647i), Struct_1(true, vec2<u32>(0u, 32731u), vec3<bool>(true, true, false), 1372f, false)), Struct_5(2147483647i, Struct_1(false, vec2<u32>(34102u, 21542u), vec3<bool>(true, false, false), 361f, false), vec3<i32>(-30566i, -1i, -523i), Struct_1(true, vec2<u32>(5753u, 1u), vec3<bool>(false, true, true), -402f, false)));

var<private> global1: Struct_1 = Struct_1(true, vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, false), -1187f, true);

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<f32>(144f, -1355f), vec3<i32>(-30545i, -1i, i32(-2147483648)), Struct_2(Struct_1(false, vec2<u32>(315u, 4294967295u), vec3<bool>(false, true, true), -728f, true), vec2<f32>(-606f, -146f), Struct_1(false, vec2<u32>(0u, 0u), vec3<bool>(false, true, false), 968f, true), Struct_1(false, vec2<u32>(0u, 76235u), vec3<bool>(true, false, true), 151f, false), vec4<u32>(4294967295u, 11728u, 30681u, 4294967295u)), 0u), Struct_3(vec2<f32>(-561f, -475f), vec3<i32>(-14961i, 21844i, -1i), Struct_2(Struct_1(false, vec2<u32>(0u, 1u), vec3<bool>(false, true, false), -842f, false), vec2<f32>(246f, 182f), Struct_1(true, vec2<u32>(0u, 78188u), vec3<bool>(false, false, false), 932f, false), Struct_1(true, vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, true), -529f, true), vec4<u32>(0u, 20495u, 63096u, 11882u)), 75660u), Struct_3(vec2<f32>(-773f, 162f), vec3<i32>(1i, i32(-2147483648), 120370i), Struct_2(Struct_1(false, vec2<u32>(1u, 1u), vec3<bool>(true, true, false), 389f, true), vec2<f32>(-530f, 650f), Struct_1(true, vec2<u32>(26764u, 4294967295u), vec3<bool>(false, false, true), -429f, true), Struct_1(true, vec2<u32>(38924u, 52175u), vec3<bool>(true, false, false), 1442f, true), vec4<u32>(0u, 0u, 5616u, 1u)), 4294967295u), Struct_3(vec2<f32>(-1373f, -1000f), vec3<i32>(2147483647i, 2147483647i, -19852i), Struct_2(Struct_1(false, vec2<u32>(20692u, 27116u), vec3<bool>(true, false, false), -524f, true), vec2<f32>(-245f, -702f), Struct_1(true, vec2<u32>(4294967295u, 36232u), vec3<bool>(true, true, true), 694f, true), Struct_1(true, vec2<u32>(27118u, 1u), vec3<bool>(false, false, true), -1146f, true), vec4<u32>(4294967295u, 60202u, 4294967295u, 1u)), 46212u), Struct_3(vec2<f32>(-1594f, -216f), vec3<i32>(1i, -23396i, -1i), Struct_2(Struct_1(true, vec2<u32>(1u, 589u), vec3<bool>(false, false, true), 706f, true), vec2<f32>(-315f, 352f), Struct_1(true, vec2<u32>(1u, 4294967295u), vec3<bool>(true, true, false), 1000f, true), Struct_1(true, vec2<u32>(26440u, 1168u), vec3<bool>(false, false, false), -1823f, false), vec4<u32>(0u, 0u, 47673u, 16620u)), 40871u), Struct_3(vec2<f32>(-151f, -2472f), vec3<i32>(0i, -3768i, i32(-2147483648)), Struct_2(Struct_1(true, vec2<u32>(0u, 0u), vec3<bool>(false, false, false), 159f, true), vec2<f32>(1250f, 422f), Struct_1(true, vec2<u32>(49804u, 28776u), vec3<bool>(false, false, false), 1703f, false), Struct_1(true, vec2<u32>(4294967295u, 1u), vec3<bool>(false, false, false), -101f, false), vec4<u32>(57420u, 0u, 1u, 10992u)), 0u));

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(false, vec2<u32>(24364u, 4294967295u), vec3<bool>(false, false, false), -156f, true), vec2<f32>(600f, -126f), Struct_1(false, vec2<u32>(1u, 58926u), vec3<bool>(false, false, true), 1000f, false), Struct_1(true, vec2<u32>(1u, 1u), vec3<bool>(true, true, true), 1546f, true), vec4<u32>(71009u, 29492u, 5214u, 98343u)), Struct_2(Struct_1(true, vec2<u32>(1u, 4294967295u), vec3<bool>(false, false, true), 773f, true), vec2<f32>(-534f, -723f), Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, false), -1379f, true), Struct_1(true, vec2<u32>(0u, 20979u), vec3<bool>(true, true, true), -171f, true), vec4<u32>(43542u, 24228u, 4294967295u, 0u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(global1.d + -1145f))));
    let var_1 = !global1.e;
    global2 = array<Struct_3, 6>();
    global2 = array<Struct_3, 6>();
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1116f, 511f)), vec2<f32>(global1.d, 915f), vec2<bool>(var_1, var_1))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2222f, _wgslsmith_f_op_f32(global1.d * -1000f)) + vec2<f32>(493f, _wgslsmith_f_op_f32(f32(-1f) * -175f))))));
    return Struct_1(select(var_1, global1.a, !(-12654i <= u_input.a) || var_1), firstLeadingBit(global1.b), !(!select(!global1.c, !vec3<bool>(global1.a, true, true), any(vec4<bool>(false, true, false, var_1)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f + 1446f) + -671f) * _wgslsmith_f_op_f32(-var_0)))), (-15153i & u_input.a) < -((u_input.a >> (global1.b.x % 32u)) ^ 37736i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(-228f, _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1506f)) + -279f)), any(vec4<bool>(all(arg_1.c.zy), _wgslsmith_f_op_f32(763f + -1395f) > _wgslsmith_f_op_f32(sign(653f)), min(arg_2, arg_1.b.x) <= (global1.b.x >> (11589u % 32u)), _wgslsmith_f_op_f32(ceil(global1.d)) <= 618f))));
    return !(any(vec3<bool>(arg_1.e, true, arg_3)) | arg_3) == any(vec2<bool>(any(select(vec4<bool>(global1.e, arg_1.a, global1.e, global1.a), vec4<bool>(global1.e, arg_3, false, true), vec4<bool>(true, true, true, false))), any(!global1.c)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(arg_1.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.b))))), vec3<i32>(u_input.a, max(_wgslsmith_sub_i32(arg_2.c.x, arg_2.a), -25953i) ^ -_wgslsmith_div_i32(-113626i, arg_2.c.x), -14186i >> (global1.b.x % 32u)), Struct_2(Struct_1(global1.a, vec2<u32>(_wgslsmith_mult_u32(6058u, global1.b.x), ~global1.b.x), select(global1.c, arg_1.c.c, !arg_1.d.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.d)) * -1000f), false), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * arg_1.b.x)), _wgslsmith_f_op_f32(-global1.d)), Struct_1(!arg_2.d.e, vec2<u32>(~global1.b.x, global1.b.x), !(!vec3<bool>(arg_0, false, arg_2.d.e)), arg_1.c.d, !func_2().e), arg_1.d, reverseBits(vec4<u32>(4294967295u, min(0u, global1.b.x), global1.b.x, min(80378u, arg_1.d.b.x)))), _wgslsmith_dot_vec4_u32(abs(arg_1.e), select(arg_1.e | arg_1.e, firstTrailingBit(arg_1.e) ^ arg_1.e, true)));
    global0 = array<Struct_5, 24>();
    global0 = array<Struct_5, 24>();
    var var_1 = Struct_4(max(var_0.b.zx, vec2<i32>(-1i) * -(~vec2<i32>(arg_2.a, -2147483647i))));
    let var_2 = u_input.a;
    return Struct_4(~vec2<i32>(var_2, -var_0.b.x));
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    let var_0 = func_4(any(global1.c.xx), Struct_2(func_2(), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-918f, -1147f)))))), Struct_1(!func_3(arg_0, Struct_1(global1.e, global1.b, vec3<bool>(global1.c.x, global1.e, global1.c.x), global1.d, global1.c.x), 0u, true), global1.b, !func_2().c, global1.d, func_2().c.x), func_2(), ~(~vec4<u32>(43671u, 4286u, 55399u, 39096u) >> (select(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<u32>(global1.b.x, global1.b.x, 4294967295u, global1.b.x), vec4<bool>(true, true, true, global1.a)) % vec4<u32>(32u)))), global0[_wgslsmith_index_u32(global1.b.x, 24u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1340f, global1.d)) - vec2<f32>(_wgslsmith_f_op_f32(abs(global1.d)), _wgslsmith_f_op_f32(sign(-1745f)))))));
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b.x, global1.b.x, 6382u), ~vec3<u32>(global1.b.x, 0u, 76024u)), ~global1.b.x) >> (select(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, global1.b.x, global1.b.x), vec3<u32>(global1.b.x, 74431u, global1.b.x)), vec3<u32>(~global1.b.x, global1.b.x, global1.b.x), !(!vec3<bool>(global1.a, true, global1.a))) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, global1.b.x, ~global1.b.x)));
    global3 = array<Struct_2, 2>();
    let var_3 = global2[_wgslsmith_index_u32(~var_2.x, 6u)];
    return _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.a.x, -reverseBits(0i), var_3.b.x), select(_wgslsmith_clamp_vec3_i32(var_3.b, vec3<i32>(-2147483647i, -23481i, 2685i) | vec3<i32>(1i, var_3.b.x, u_input.a), -vec3<i32>(-14930i, var_3.b.x, var_3.b.x)), _wgslsmith_mod_vec3_i32(-var_3.b, vec3<i32>(var_0.a.x, u_input.a, 2147483647i) << (vec3<u32>(var_3.c.e.x, 19735u, global1.b.x) % vec3<u32>(32u))), !(var_3.d >= var_3.d))));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32) -> vec2<u32> {
    var var_0 = global3[_wgslsmith_index_u32(9206u, 2u)];
    global3 = array<Struct_2, 2>();
    var_0 = global3[_wgslsmith_index_u32(var_0.d.b.x, 2u)];
    var var_1 = max(arg_0.x, ~(~(-33274i)));
    let var_2 = abs(firstLeadingBit(vec4<u32>(~(var_0.a.b.x ^ 1u), ~_wgslsmith_div_u32(arg_1, global1.b.x), var_0.d.b.x, countOneBits(~4294967295u))));
    return min(_wgslsmith_div_vec2_u32(var_0.c.b, ~vec2<u32>(~10482u, var_2.x)), func_2().b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(true, _wgslsmith_div_vec2_u32(func_5(vec3<i32>(func_1(vec3<i32>(1i, -33001i, u_input.a)), func_4(false, Struct_2(Struct_1(false, vec2<u32>(global1.b.x, global1.b.x), global1.c, global1.d, global1.a), vec2<f32>(global1.d, -575f), Struct_1(global1.e, vec2<u32>(63971u, global1.b.x), vec3<bool>(global1.e, true, global1.e), -1000f, global1.c.x), Struct_1(true, global1.b, global1.c, global1.d, global1.c.x), vec4<u32>(1u, 78393u, 1u, 0u)), global0[_wgslsmith_index_u32(global1.b.x, 24u)]).a.x, ~34238i), _wgslsmith_clamp_u32(1u, 4294967295u, ~global1.b.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 11518u), firstLeadingBit(global1.b)), ~vec2<u32>(12915u, 4294967295u))), global1.c, -1183f, global1.a);
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + global1.d)), _wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-299f + 1579f)))), vec3<i32>(_wgslsmith_clamp_i32(-u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(26653i, -1i, -20571i)), -28246i), i32(-1i) * -1i, u_input.a), global3[_wgslsmith_index_u32(func_2().b.x, 2u)], ~(~(~(global1.b.x ^ 68043u))));
    global2 = array<Struct_3, 6>();
    var var_1 = firstTrailingBit(-1i) | 15025i;
    let var_2 = -37692i;
    var_1 = min(-((1i >> (var_0.d % 32u)) | 43613i), countOneBits(reverseBits(-(~var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-2147483647i));
}

