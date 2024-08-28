struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(727f, -886f, 1000f, -152f), 11148u);

var<private> global1: array<u32, 15> = array<u32, 15>(17827u, 1u, 19150u, 28830u, 80870u, 37831u, 58650u, 4294967295u, 39617u, 1u, 13412u, 305u, 4294967295u, 22977u, 4294967295u);

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<f32>(1253f, 1120f, 2708f, 1321f), 0u), Struct_1(vec4<f32>(451f, 213f, -127f, 446f), 0u), Struct_1(vec4<f32>(-1318f, 693f, -165f, -493f), 4294967295u), Struct_1(vec4<f32>(935f, 118f, 287f, -1552f), 0u), Struct_1(vec4<f32>(-590f, 1693f, -1314f, 379f), 4294967295u), Struct_1(vec4<f32>(-219f, 500f, 1021f, -420f), 31030u), Struct_1(vec4<f32>(-2243f, -432f, -993f, -964f), 1u), Struct_1(vec4<f32>(2230f, -939f, 904f, -1000f), 1u), Struct_1(vec4<f32>(-1415f, -1000f, -1629f, 614f), 16986u), Struct_1(vec4<f32>(-1223f, -1405f, 185f, 966f), 1u), Struct_1(vec4<f32>(-678f, 549f, 454f, 625f), 14813u), Struct_1(vec4<f32>(-640f, 889f, -451f, -1357f), 0u), Struct_1(vec4<f32>(1676f, -866f, -206f, -617f), 0u), Struct_1(vec4<f32>(352f, 1450f, 583f, 550f), 1u), Struct_1(vec4<f32>(-726f, -344f, 874f, 1011f), 25847u), Struct_1(vec4<f32>(160f, -848f, 367f, -1000f), 4294967295u), Struct_1(vec4<f32>(2104f, -1640f, -1393f, 1000f), 27132u), Struct_1(vec4<f32>(-690f, -1315f, 526f, -475f), 1u), Struct_1(vec4<f32>(-1286f, -1010f, 122f, -1826f), 9599u), Struct_1(vec4<f32>(-947f, 957f, 1965f, -418f), 21827u), Struct_1(vec4<f32>(437f, -1039f, -293f, -525f), 1u), Struct_1(vec4<f32>(-251f, 525f, -159f, 769f), 1u), Struct_1(vec4<f32>(315f, 445f, 1000f, -700f), 5156u), Struct_1(vec4<f32>(2200f, -545f, 320f, 984f), 4294967295u), Struct_1(vec4<f32>(-589f, -781f, -118f, 704f), 4294967295u), Struct_1(vec4<f32>(1415f, -307f, -1119f, -1575f), 4294967295u));

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(965f, -652f, 1756f, 1046f), 38646u), Struct_1(vec4<f32>(-1085f, 988f, -1000f, 1225f), 4294967295u), Struct_1(vec4<f32>(748f, -274f, -708f, -427f), 6347u), Struct_1(vec4<f32>(-240f, 1000f, -939f, -1000f), 3648u), Struct_1(vec4<f32>(-1187f, -213f, 465f, 269f), 1u), Struct_1(vec4<f32>(-2036f, 1000f, 968f, 1274f), 0u), Struct_1(vec4<f32>(-176f, -477f, -462f, -369f), 22481u), Struct_1(vec4<f32>(582f, 903f, 632f, -3101f), 8648u), Struct_1(vec4<f32>(1000f, -178f, 503f, 1627f), 23303u), Struct_1(vec4<f32>(419f, -1000f, -962f, -1277f), 77002u), Struct_1(vec4<f32>(2167f, 1904f, -738f, -403f), 4294967295u), Struct_1(vec4<f32>(1919f, -512f, -1179f, -1000f), 29226u), Struct_1(vec4<f32>(-167f, -514f, 1000f, 782f), 4294967295u), Struct_1(vec4<f32>(-1374f, -776f, 703f, 163f), 4294967295u), Struct_1(vec4<f32>(-106f, 1819f, 280f, 272f), 21004u), Struct_1(vec4<f32>(-998f, 2882f, 691f, -1240f), 4294967295u), Struct_1(vec4<f32>(732f, -1000f, -1181f, -1025f), 9727u), Struct_1(vec4<f32>(-1015f, -1817f, 1499f, -1487f), 14764u), Struct_1(vec4<f32>(556f, 653f, 1000f, 1730f), 67960u), Struct_1(vec4<f32>(806f, -1978f, -1181f, 1363f), 0u));

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 26>();
    global3 = array<Struct_1, 20>();
    global3 = array<Struct_1, 20>();
    let var_0 = global3[_wgslsmith_index_u32(global0.b, 20u)];
    var var_1 = global3[_wgslsmith_index_u32(59208u, 20u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(_wgslsmith_mult_u32(var_1.b, _wgslsmith_sub_u32(4294967295u, global0.b)), _wgslsmith_div_u32(17854u, _wgslsmith_clamp_u32(4294967295u, var_0.b, 1u)), true || any(vec2<bool>(false, false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_1.b, 4294967295u)), reverseBits(vec2<u32>(1u, global0.b)) | max(vec2<u32>(var_1.b, 0u), vec2<u32>(4294967295u, var_0.b))), 15u)] >> (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b, 45201u), 15u)] % 32u)), 26u)];
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = global3[_wgslsmith_index_u32(~(~var_0.b), 20u)];
    let var_2 = vec2<i32>(1i, ~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b));
    global3 = array<Struct_1, 20>();
    global3 = array<Struct_1, 20>();
    return StorageBuffer(_wgslsmith_add_i32(~var_2.x, _wgslsmith_clamp_i32(u_input.b.x, i32(-1i) * -2147483647i, 61045i)), _wgslsmith_f_op_f32(max(129f, _wgslsmith_f_op_f32(floor(global0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.wyz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1613f, var_1.a.x, 315f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x;
    global2 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(global0.a.yww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a.yxw, vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -249f)), false)))));
    var var_2 = _wgslsmith_mult_u32(global0.b, 1u);
    let var_3 = !vec3<bool>(!(!select(false, false, false)), all(vec3<bool>(true, true, true)), true);
    global3 = array<Struct_1, 20>();
    let var_4 = global2[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(select(55951u, countOneBits(_wgslsmith_div_u32(29313u, 39829u)), true), 15u)] | firstTrailingBit(reverseBits(_wgslsmith_mod_u32(0u, 18250u)))), 26u)];
    let var_5 = true;
    let x = u_input.a;
    s_output = func_1();
}

