struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(14401u, 2023f, true, 0u, vec2<bool>(true, false)), Struct_1(0u, 1216f, true, 34175u, vec2<bool>(false, true)), Struct_1(61936u, -415f, true, 1u, vec2<bool>(false, true)), Struct_1(36483u, 2439f, false, 916u, vec2<bool>(false, false)), Struct_1(18050u, -1416f, false, 28831u, vec2<bool>(true, false)), Struct_1(106849u, -1255f, false, 25464u, vec2<bool>(true, false)), Struct_1(1u, 497f, true, 38074u, vec2<bool>(true, true)), Struct_1(0u, 592f, false, 12247u, vec2<bool>(false, false)), Struct_1(1u, -142f, false, 0u, vec2<bool>(false, true)), Struct_1(13435u, -984f, false, 0u, vec2<bool>(false, false)), Struct_1(4294967295u, -560f, false, 4294967295u, vec2<bool>(false, false)), Struct_1(11702u, -220f, true, 75864u, vec2<bool>(false, true)), Struct_1(0u, -336f, true, 0u, vec2<bool>(false, false)), Struct_1(0u, -743f, true, 4294967295u, vec2<bool>(false, true)), Struct_1(0u, -1000f, true, 0u, vec2<bool>(true, false)), Struct_1(64295u, 1710f, false, 0u, vec2<bool>(true, false)), Struct_1(39097u, -152f, false, 7500u, vec2<bool>(true, true)), Struct_1(12500u, 464f, true, 11006u, vec2<bool>(true, false)), Struct_1(1u, -1371f, true, 46279u, vec2<bool>(true, false)), Struct_1(4294967295u, -580f, true, 1u, vec2<bool>(true, false)), Struct_1(0u, 423f, false, 68435u, vec2<bool>(false, false)), Struct_1(33423u, 357f, true, 1794u, vec2<bool>(true, false)), Struct_1(1157u, 1545f, true, 1u, vec2<bool>(true, false)), Struct_1(1u, 216f, true, 42621u, vec2<bool>(false, false)), Struct_1(63159u, 553f, false, 36889u, vec2<bool>(false, false)), Struct_1(9845u, -345f, true, 4294967295u, vec2<bool>(false, false)));

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(24789u, 193f, false, 1u, vec2<bool>(false, true)), true, Struct_1(1u, 1861f, true, 4294967295u, vec2<bool>(true, true)), vec2<f32>(-790f, 1264f)), Struct_2(Struct_1(48984u, 1109f, true, 1u, vec2<bool>(false, true)), true, Struct_1(4294967295u, -530f, false, 59370u, vec2<bool>(false, false)), vec2<f32>(976f, 1192f)), Struct_2(Struct_1(1u, 673f, true, 1u, vec2<bool>(false, false)), false, Struct_1(1u, -530f, false, 2321u, vec2<bool>(true, false)), vec2<f32>(921f, 253f)), Struct_2(Struct_1(27696u, -155f, false, 42050u, vec2<bool>(true, false)), true, Struct_1(61004u, 366f, false, 1u, vec2<bool>(false, true)), vec2<f32>(-117f, -1723f)), Struct_2(Struct_1(22223u, 1923f, false, 1u, vec2<bool>(true, true)), true, Struct_1(1u, 974f, false, 5640u, vec2<bool>(false, false)), vec2<f32>(2189f, 989f)), Struct_2(Struct_1(22791u, -1434f, true, 25110u, vec2<bool>(true, true)), true, Struct_1(19089u, -1280f, true, 122152u, vec2<bool>(false, false)), vec2<f32>(-1084f, 819f)), Struct_2(Struct_1(0u, -303f, false, 842u, vec2<bool>(false, false)), false, Struct_1(79558u, -923f, true, 0u, vec2<bool>(false, true)), vec2<f32>(1000f, -667f)), Struct_2(Struct_1(0u, 801f, false, 19222u, vec2<bool>(false, false)), false, Struct_1(15857u, -580f, true, 75000u, vec2<bool>(true, false)), vec2<f32>(-377f, -288f)), Struct_2(Struct_1(4655u, 315f, true, 1u, vec2<bool>(false, true)), true, Struct_1(4294967295u, -268f, true, 1u, vec2<bool>(true, false)), vec2<f32>(1807f, -375f)), Struct_2(Struct_1(4294967295u, -627f, true, 1u, vec2<bool>(false, true)), true, Struct_1(1u, -536f, false, 26217u, vec2<bool>(true, false)), vec2<f32>(1386f, 400f)), Struct_2(Struct_1(99457u, -1500f, true, 1u, vec2<bool>(true, false)), false, Struct_1(6019u, 524f, true, 51123u, vec2<bool>(true, false)), vec2<f32>(-1000f, 1072f)), Struct_2(Struct_1(50877u, 1125f, true, 12852u, vec2<bool>(true, true)), false, Struct_1(4294967295u, 758f, true, 4294967295u, vec2<bool>(true, true)), vec2<f32>(2289f, -918f)), Struct_2(Struct_1(20947u, -694f, true, 1u, vec2<bool>(false, false)), true, Struct_1(29731u, 1301f, false, 4294967295u, vec2<bool>(true, true)), vec2<f32>(710f, 245f)), Struct_2(Struct_1(68648u, -1486f, true, 2734u, vec2<bool>(true, false)), true, Struct_1(4294967295u, -2710f, true, 9836u, vec2<bool>(true, false)), vec2<f32>(-1000f, -491f)), Struct_2(Struct_1(70976u, -3344f, false, 1u, vec2<bool>(false, false)), false, Struct_1(71877u, 1247f, true, 4294967295u, vec2<bool>(true, true)), vec2<f32>(490f, -720f)), Struct_2(Struct_1(4294967295u, 1397f, false, 65913u, vec2<bool>(true, false)), true, Struct_1(23182u, 293f, false, 1u, vec2<bool>(false, true)), vec2<f32>(-162f, 118f)), Struct_2(Struct_1(0u, 1217f, true, 0u, vec2<bool>(false, true)), false, Struct_1(21097u, -477f, false, 4294967295u, vec2<bool>(true, false)), vec2<f32>(213f, 416f)), Struct_2(Struct_1(4294967295u, -465f, true, 0u, vec2<bool>(true, true)), false, Struct_1(10761u, -1305f, false, 118610u, vec2<bool>(false, true)), vec2<f32>(-289f, -553f)), Struct_2(Struct_1(4294967295u, -418f, true, 21151u, vec2<bool>(false, false)), true, Struct_1(65736u, -167f, true, 76702u, vec2<bool>(false, false)), vec2<f32>(967f, -786f)), Struct_2(Struct_1(1u, 197f, true, 1u, vec2<bool>(false, false)), false, Struct_1(1u, -134f, false, 26831u, vec2<bool>(true, false)), vec2<f32>(-510f, -1306f)), Struct_2(Struct_1(58634u, -220f, true, 4294967295u, vec2<bool>(false, true)), false, Struct_1(0u, 393f, true, 0u, vec2<bool>(false, false)), vec2<f32>(282f, 1195f)), Struct_2(Struct_1(56509u, -1034f, true, 41441u, vec2<bool>(false, false)), true, Struct_1(8947u, 440f, false, 4294967295u, vec2<bool>(true, false)), vec2<f32>(-1880f, -371f)), Struct_2(Struct_1(4294967295u, -1308f, true, 33562u, vec2<bool>(true, false)), true, Struct_1(14940u, -857f, false, 62108u, vec2<bool>(false, true)), vec2<f32>(-1180f, -135f)), Struct_2(Struct_1(4294967295u, -491f, false, 0u, vec2<bool>(true, true)), true, Struct_1(43585u, 370f, true, 1u, vec2<bool>(false, false)), vec2<f32>(1900f, 433f)), Struct_2(Struct_1(1u, -1579f, false, 0u, vec2<bool>(true, false)), true, Struct_1(18077u, 1280f, false, 30082u, vec2<bool>(false, false)), vec2<f32>(-1229f, 1807f)), Struct_2(Struct_1(4294967295u, 693f, false, 3413u, vec2<bool>(true, false)), true, Struct_1(0u, -883f, true, 23936u, vec2<bool>(true, false)), vec2<f32>(-1522f, 575f)), Struct_2(Struct_1(43611u, 389f, false, 14288u, vec2<bool>(true, true)), false, Struct_1(29305u, -2005f, true, 57534u, vec2<bool>(false, false)), vec2<f32>(162f, -398f)));

var<private> global3: Struct_3;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(752f));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global4.b - 1113f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1273f) - _wgslsmith_f_op_f32(global4.b + var_0)))))));
    var var_2 = global2[_wgslsmith_index_u32(1u, 27u)];
    let var_3 = abs(-24518i);
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)))));
    return ~(~var_2.a.d) <= _wgslsmith_mult_u32(7622u, countOneBits(var_2.a.a << (0u % 32u)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> vec4<bool> {
    global3 = Struct_3(select(~_wgslsmith_add_i32(firstLeadingBit(-1i), ~global3.a), -arg_2.x, true), -select(vec4<i32>(2147483647i, -19706i, -1283i, _wgslsmith_sub_i32(arg_0, arg_0)), global3.b, vec4<bool>(true, global4.e.x || false, func_3(global4.b, global4.e.x, arg_2), all(vec4<bool>(arg_1, arg_1, true, false)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.b + -1159f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.b), global4.b, !global4.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b, 1020f))))));
    let var_1 = Struct_3(_wgslsmith_mod_i32(7907i, firstTrailingBit(arg_0)), global3.b);
    global3 = var_1;
    var var_2 = -257f;
    return vec4<bool>(all(global4.e), 67182u != ~(~countOneBits(u_input.a.x)), !(!any(vec3<bool>(false, arg_1, arg_1)) && (~global1.x == 1u)), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = global4.b;
    var var_1 = global0[_wgslsmith_index_u32(92137u, 26u)];
    global1 = (vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.x, 1u, 31115u, 743u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 23391u, 4294967295u, global1.x), vec4<u32>(4294967295u, global4.a, var_1.a, 0u))), reverseBits(global4.a), ~var_1.d, global1.x) ^ (vec4<u32>(26046u ^ u_input.a.x, 1u, firstTrailingBit(var_1.d), arg_2.a | 65756u) & ~(~vec4<u32>(u_input.b, var_1.d, u_input.b, 4643u)))) >> ((select(vec4<u32>(~1u, 46567u, ~1u, 36723u), firstLeadingBit(vec4<u32>(41690u, 41470u, 53482u, arg_2.a)), !arg_0) << ((vec4<u32>(_wgslsmith_sub_u32(33637u, u_input.c), 0u, var_1.d, _wgslsmith_sub_u32(arg_2.d, 1u)) & (vec4<u32>(global1.x, global1.x, 4294967295u, var_1.d) >> (vec4<u32>(1u, 4294967295u, u_input.b, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = abs(u_input.a);
    var var_3 = 0u;
    return Struct_3(firstTrailingBit(_wgslsmith_mult_i32(34449i, -17367i)), -firstLeadingBit(~vec4<i32>(global3.a, arg_1.b.x, -1868i, arg_1.a)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = 2147483647i;
    var var_1 = func_4(select(select(vec4<bool>(!arg_2.c, !arg_0, true, all(vec3<bool>(arg_0, false, false))), !(!vec4<bool>(false, global4.c, true, true)), arg_2.e.x), select(select(select(vec4<bool>(arg_0, global4.c, arg_2.c, global4.e.x), vec4<bool>(true, arg_2.c, true, arg_0), vec4<bool>(arg_2.c, global4.c, arg_0, arg_0)), func_2(u_input.d, true, vec2<i32>(u_input.d, global3.b.x)), !vec4<bool>(false, false, true, global4.c)), !select(vec4<bool>(false, global4.c, global4.c, true), vec4<bool>(true, arg_2.c, true, global4.c), vec4<bool>(false, true, true, arg_0)), true | any(global4.e)), func_2(~u_input.d >> (~34580u % 32u), true, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(35994i, -2147483647i, -18288i), global3.b.xyz), 20810i))), Struct_3(_wgslsmith_mod_i32(22396i, -39599i), vec4<i32>(countOneBits(countOneBits(-23570i)), global3.b.x, _wgslsmith_mod_i32(u_input.d, ~0i), -2147483647i)), Struct_1(_wgslsmith_clamp_u32(11209u, _wgslsmith_mod_u32(arg_2.d << (78744u % 32u), global1.x), ~u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - global4.b)), global4.b), global4.c || select(global4.c, arg_0, global4.c), 1u, select(vec2<bool>(true, select(false, arg_0, arg_2.c)), global4.e, vec2<bool>(true, true))));
    var var_2 = arg_2;
    global0 = array<Struct_1, 26>();
    let var_3 = ~_wgslsmith_mod_u32(arg_2.a, arg_2.d);
    return ~_wgslsmith_clamp_i32(0i, var_1.b.x, global3.b.x);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = firstLeadingBit(-_wgslsmith_sub_vec3_i32(-global3.b.zwz, abs(global3.b.wzy)) ^ (vec3<i32>(2147483647i & arg_0, arg_0, -46721i) ^ _wgslsmith_mult_vec3_i32(min(global3.b.xyy, vec3<i32>(526i, global3.b.x, -2147483647i)), vec3<i32>(-1i, 2147483647i, 0i))));
    let var_1 = arg_3.a;
    var var_2 = vec2<bool>(arg_3.b, all(select(select(vec4<bool>(true, arg_3.c.c, global4.e.x, true), vec4<bool>(true, var_1.e.x, false, arg_3.a.e.x), false & global4.e.x), select(vec4<bool>(arg_3.c.c, false, global4.e.x, false), vec4<bool>(global4.e.x, false, arg_3.c.c, var_1.c), !vec4<bool>(global4.c, true, true, arg_3.b)), !all(vec3<bool>(false, var_1.c, true)))));
    var var_3 = firstTrailingBit(_wgslsmith_clamp_i32(var_0.x, 1i, abs(max(0i, var_0.x))));
    var var_4 = global3.b ^ global3.b;
    return Struct_1(_wgslsmith_sub_u32(1u, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.d, 41956u, 4294967295u, global1.x), vec4<u32>(global1.x, 1u, arg_3.c.d, arg_3.c.a)), u_input.c)), _wgslsmith_f_op_f32(171f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, -616f)) * _wgslsmith_f_op_f32(-860f - _wgslsmith_f_op_f32(-var_1.b)))), false, arg_3.a.d, arg_3.c.e);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = ~(-select(vec4<i32>(global3.a, u_input.d, global3.a, global3.b.x) & _wgslsmith_add_vec4_i32(vec4<i32>(1i, -14536i, -18937i, 1953i), vec4<i32>(2147483647i, u_input.d, u_input.d, u_input.d)), vec4<i32>(firstTrailingBit(2147483647i), ~global3.b.x, firstTrailingBit(2147483647i), 28603i), vec4<bool>(true, false, all(vec4<bool>(false, false, true, false)), func_2(2147483647i, global4.c, vec2<i32>(2869i, 2147483647i)).x)));
    let var_1 = !(!func_3(-2249f, false, vec2<i32>(global3.a, global3.b.x) << (u_input.a.yx % vec2<u32>(32u))) && (u_input.c >= u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-631f, _wgslsmith_div_f32(-197f, -855f)))));
    var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(global3.b >> (vec4<u32>(arg_0.c.a, _wgslsmith_div_u32(arg_1.c.a, arg_1.c.d), arg_0.c.a, 85713u) % vec4<u32>(32u)), -_wgslsmith_add_vec4_i32(~global3.b, global3.b)), global3.b);
    let var_3 = 87361u;
    return -1285f;
}

fn func_7(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(-_wgslsmith_dot_vec3_i32(~vec3<i32>(global3.b.x, 16789i, -2147483647i), global3.b.xwz), global3.b);
    let var_1 = ~countOneBits(global1.x);
    let var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    var_0 = Struct_3(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(36141i, 2147483647i, var_0.a), vec3<i32>(6568i, -58282i, global3.b.x), var_0.b.www), firstTrailingBit(vec3<i32>(-2147483647i, var_0.a, u_input.d))), _wgslsmith_mod_vec3_i32(global3.b.www, var_0.b.yzy)), ~countOneBits(vec4<i32>(u_input.d, firstLeadingBit(u_input.d), func_4(vec4<bool>(global4.e.x, global4.c, true, false), Struct_3(u_input.d, vec4<i32>(-1i, u_input.d, -1i, -1i)), global0[_wgslsmith_index_u32(31909u, 26u)]).b.x, -20193i)));
    global4 = func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(22808i), ~(-37695i), func_1(global4.e.x, var_0.a, global0[_wgslsmith_index_u32(var_1, 26u)]), abs(u_input.d)) >> (min(vec4<u32>(1u, var_1, u_input.a.x, 45129u), vec4<u32>(arg_0.x, 84u, arg_0.x, global4.a) ^ vec4<u32>(22861u, 140264u, 67830u, var_1)) % vec4<u32>(32u)), firstTrailingBit(var_0.b)), _wgslsmith_f_op_f32(round(286f)), 1044f, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(countOneBits(arg_0), u_input.a.yy), 0u, _wgslsmith_mod_u32(global4.a, func_5(global3.a << (global1.x % 32u), 1084f, _wgslsmith_f_op_f32(-arg_1), global2[_wgslsmith_index_u32(77603u, 27u)]).a)), 27u)]);
    return Struct_3(i32(-1i) * -21457i, vec4<i32>(var_0.a, abs(_wgslsmith_mult_i32(global3.a, var_0.a)), u_input.d, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.a, _wgslsmith_div_i32(u_input.d, u_input.d), -51637i), _wgslsmith_div_i32(u_input.d, global3.a), _wgslsmith_add_i32(-global3.a, min(-2147483647i, 12016i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(firstTrailingBit(abs(-(~u_input.d))), -_wgslsmith_mult_vec4_i32(-(~vec4<i32>(-4316i, u_input.d, 20268i, global3.a)), ~vec4<i32>(10828i, u_input.d, u_input.d, 0i) << (vec4<u32>(global4.d, 95544u, 34417u, 24940u) % vec4<u32>(32u))));
    let var_0 = func_7(~(~abs(global1.zw)), _wgslsmith_f_op_f32(func_6(Struct_2(global0[_wgslsmith_index_u32(abs(global1.x) | 1u, 26u)], global4.c, global0[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.b, -1000f), vec2<f32>(global4.b, global4.b), global4.e.x))))), Struct_2(func_5(func_1(global4.c, -2147483647i, global0[_wgslsmith_index_u32(global4.a, 26u)]), _wgslsmith_div_f32(-656f, 262f), global4.b, Struct_2(global0[_wgslsmith_index_u32(55574u, 26u)], global4.e.x, global0[_wgslsmith_index_u32(global1.x, 26u)], vec2<f32>(global4.b, global4.b))), 27185u == global1.x, Struct_1(abs(global4.d), _wgslsmith_f_op_f32(round(global4.b)), !global4.e.x, max(global4.a, 4294967295u), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(826f, -794f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1381f, global4.b))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_2(global0[_wgslsmith_index_u32(u_input.c, 26u)], global4.e.x, Struct_1(global4.d, -541f, true, global4.a, global4.e), vec2<f32>(-1150f, global4.b)), Struct_2(global0[_wgslsmith_index_u32(35917u, 26u)], false, global0[_wgslsmith_index_u32(27854u, 26u)], vec2<f32>(global4.b, global4.b))))), _wgslsmith_f_op_f32(-148f - 316f), global4.b));
    let var_1 = var_0.b;
    global3 = var_0;
    global3 = Struct_3(~var_1.x, _wgslsmith_mult_vec4_i32((~vec4<i32>(2147483647i, global3.b.x, var_1.x, -17584i) & -vec4<i32>(var_1.x, u_input.d, var_0.b.x, u_input.d)) << (~reverseBits(vec4<u32>(global4.d, u_input.a.x, 1u, 0u)) % vec4<u32>(32u)), -(~(global3.b & var_1))));
    let var_2 = func_2(-global3.b.x, any(global4.e), vec2<i32>(~var_0.a, ~(~2147483647i))).x;
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(vec3<u32>(global1.x, global4.d, 4294967295u), ~global1.zxz)), _wgslsmith_f_op_f32(func_6(Struct_2(func_5(-14009i, _wgslsmith_f_op_f32(step(global4.b, global4.b)), _wgslsmith_f_op_f32(global4.b * 1705f), Struct_2(Struct_1(global1.x, 285f, true, 0u, global4.e), global4.e.x, global0[_wgslsmith_index_u32(global4.d, 26u)], vec2<f32>(global4.b, global4.b))), all(vec4<bool>(true, var_2, false, var_2)) & any(vec4<bool>(global4.e.x, var_2, var_2, global4.e.x)), func_5(-2147483647i << (u_input.b % 32u), global4.b, global4.b, Struct_2(global0[_wgslsmith_index_u32(global1.x, 26u)], false, global0[_wgslsmith_index_u32(6735u, 26u)], vec2<f32>(global4.b, -561f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-114f, -1053f) + vec2<f32>(1726f, global4.b)) - vec2<f32>(634f, global4.b))), Struct_2(func_5(i32(-1i) * -45136i, _wgslsmith_f_op_f32(max(1126f, global4.b)), _wgslsmith_f_op_f32(floor(1197f)), Struct_2(global0[_wgslsmith_index_u32(global4.d, 26u)], var_2, global0[_wgslsmith_index_u32(4294967295u, 26u)], vec2<f32>(global4.b, -328f))), any(!vec4<bool>(global4.c, false, global4.e.x, var_2)), Struct_1(firstTrailingBit(global4.a), _wgslsmith_f_op_f32(round(-768f)), any(vec3<bool>(var_2, var_2, false)), ~91532u, !global4.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, global4.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1825f, 1847f) - vec2<f32>(global4.b, global4.b)))))), ~vec4<u32>(u_input.a.x, global4.d, global4.d, _wgslsmith_mod_u32(930u, 1632u)) >> (((_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global4.d, global4.a, global1.x), vec4<u32>(1u, u_input.a.x, 4294967295u, 4294967295u)) & vec4<u32>(u_input.a.x, 0u, u_input.b, global1.x)) << (vec4<u32>(1u, ~1u, ~0u, _wgslsmith_dot_vec2_u32(global1.wy, global1.ww)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

