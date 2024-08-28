struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-1024f, vec4<bool>(false, true, false, true), vec3<u32>(29163u, 13485u, 1u), false), Struct_1(874f, vec4<bool>(true, true, false, false), vec3<u32>(13427u, 85064u, 30875u), false), 978f, Struct_1(675f, vec4<bool>(true, false, false, true), vec3<u32>(0u, 8376u, 54100u), true), vec2<f32>(421f, -636f)), Struct_2(Struct_1(-386f, vec4<bool>(true, false, false, false), vec3<u32>(25939u, 0u, 4294967295u), true), Struct_1(155f, vec4<bool>(true, false, false, true), vec3<u32>(0u, 42833u, 23934u), true), 1477f, Struct_1(1194f, vec4<bool>(true, true, false, false), vec3<u32>(5411u, 1u, 1u), true), vec2<f32>(-319f, -1000f)), Struct_2(Struct_1(192f, vec4<bool>(true, true, true, true), vec3<u32>(2484u, 4294967295u, 0u), false), Struct_1(111f, vec4<bool>(true, true, false, false), vec3<u32>(5375u, 4294967295u, 1u), true), 1058f, Struct_1(-463f, vec4<bool>(false, true, true, true), vec3<u32>(13820u, 45939u, 0u), true), vec2<f32>(1177f, -165f)), Struct_2(Struct_1(-1373f, vec4<bool>(false, false, true, false), vec3<u32>(0u, 4294967295u, 4294967295u), true), Struct_1(-143f, vec4<bool>(true, true, false, false), vec3<u32>(4286u, 58693u, 22798u), true), 1059f, Struct_1(-778f, vec4<bool>(true, false, true, false), vec3<u32>(0u, 1u, 47633u), true), vec2<f32>(-346f, -454f)), Struct_2(Struct_1(-1000f, vec4<bool>(false, false, false, true), vec3<u32>(29301u, 19806u, 35183u), false), Struct_1(-1632f, vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 4294967295u, 104403u), true), -442f, Struct_1(-883f, vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 143938u, 1u), false), vec2<f32>(-653f, 927f)), Struct_2(Struct_1(1000f, vec4<bool>(false, false, false, true), vec3<u32>(49371u, 46787u, 55467u), true), Struct_1(-1352f, vec4<bool>(false, true, true, false), vec3<u32>(25436u, 0u, 55339u), false), 310f, Struct_1(-697f, vec4<bool>(false, true, false, true), vec3<u32>(5370u, 1u, 1u), true), vec2<f32>(-1232f, -452f)), Struct_2(Struct_1(-1394f, vec4<bool>(false, false, true, true), vec3<u32>(73404u, 6765u, 96074u), false), Struct_1(1034f, vec4<bool>(true, true, true, true), vec3<u32>(1u, 0u, 0u), true), 327f, Struct_1(670f, vec4<bool>(false, false, false, false), vec3<u32>(12253u, 39237u, 10331u), false), vec2<f32>(-1000f, 215f)), Struct_2(Struct_1(823f, vec4<bool>(false, true, true, false), vec3<u32>(69888u, 4294967295u, 4294967295u), false), Struct_1(-1406f, vec4<bool>(true, false, true, false), vec3<u32>(21414u, 22382u, 0u), false), 394f, Struct_1(-1000f, vec4<bool>(false, true, true, true), vec3<u32>(102485u, 4294967295u, 17094u), false), vec2<f32>(-493f, 349f)), Struct_2(Struct_1(-391f, vec4<bool>(true, false, false, true), vec3<u32>(59481u, 68048u, 1u), false), Struct_1(877f, vec4<bool>(false, true, true, false), vec3<u32>(20058u, 22741u, 1u), false), -155f, Struct_1(-583f, vec4<bool>(true, true, false, false), vec3<u32>(0u, 16250u, 85137u), false), vec2<f32>(1040f, 1000f)), Struct_2(Struct_1(1000f, vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 14635u, 18038u), false), Struct_1(643f, vec4<bool>(false, false, true, false), vec3<u32>(0u, 62510u, 41081u), true), 701f, Struct_1(-1424f, vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 0u, 66813u), false), vec2<f32>(1145f, -909f)), Struct_2(Struct_1(-1374f, vec4<bool>(true, false, true, false), vec3<u32>(0u, 4294967295u, 44536u), false), Struct_1(118f, vec4<bool>(false, false, true, true), vec3<u32>(22098u, 24534u, 0u), false), -1599f, Struct_1(1405f, vec4<bool>(false, true, false, false), vec3<u32>(0u, 53247u, 1u), false), vec2<f32>(-1966f, 738f)), Struct_2(Struct_1(-2339f, vec4<bool>(true, false, true, false), vec3<u32>(1u, 4294967295u, 83943u), true), Struct_1(-547f, vec4<bool>(false, false, true, false), vec3<u32>(34074u, 86911u, 1u), false), -835f, Struct_1(-567f, vec4<bool>(true, false, true, true), vec3<u32>(1u, 1u, 4294967295u), false), vec2<f32>(-207f, 570f)), Struct_2(Struct_1(-999f, vec4<bool>(true, false, false, false), vec3<u32>(53541u, 48633u, 28162u), false), Struct_1(341f, vec4<bool>(true, true, true, true), vec3<u32>(0u, 55732u, 1u), true), 1943f, Struct_1(-1269f, vec4<bool>(false, false, true, false), vec3<u32>(60680u, 25757u, 0u), true), vec2<f32>(473f, 793f)));

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    var var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(abs(firstTrailingBit(1u)), 16u)];
    global1 = array<Struct_1, 26>();
    let var_2 = select(var_1.b.zzz, arg_2.zwz, select(var_1.b.xxz, select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), arg_2.wwx), select(!var_1.b.xyz, select(vec3<bool>(true, true, var_1.b.x), arg_2.yzy, var_1.b.x), !vec3<bool>(arg_2.x, true, arg_2.x)), all(vec4<bool>(true, false, true, false)) && var_1.d), var_1.b.x));
    let var_3 = global0[_wgslsmith_index_u32(max(6456u, 1u), 13u)];
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), -414f));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1688f);
    var var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1658f, -333f)))))), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mod_i32(-_wgslsmith_sub_i32(-1i, 6290i), reverseBits(u_input.a.x))), vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(49508u, 74122u, 0u), select(abs(vec3<u32>(firstTrailingBit(28687u), 12452u, 4294967295u << (0u % 32u))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(38765u, 35287u, 0u), vec3<u32>(40626u, 1u, 0u), vec3<u32>(861u, 91962u, 39876u)), select(vec3<u32>(52843u, 4027u, 36155u), vec3<u32>(1u, 2685u, 43151u), false)), true == all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))));
    var var_3 = Struct_2(Struct_1(-119f, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), vec4<bool>(var_0.x == var_0.x, u_input.a.x <= -40196i, true, all(vec4<bool>(true, true, false, true))), select(true, select(false, true, true), true)), (~vec3<u32>(var_2.x, var_2.x, var_2.x) >> (~vec3<u32>(1u, var_2.x, var_2.x) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_2.x, 52053u), max(vec3<u32>(0u, var_2.x, var_2.x), vec3<u32>(1u, var_2.x, 0u))), _wgslsmith_sub_i32(firstTrailingBit(arg_0.x), -arg_0.x) < _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0, u_input.a, arg_0), -vec4<i32>(arg_0.x, u_input.a.x, u_input.a.x, arg_0.x))), global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_div_u32(var_2.x, 86502u)), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(336f))) * _wgslsmith_f_op_f32(f32(-1f) * -614f))), Struct_1(-439f, vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true), select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_2.x, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 4294967295u, var_2.x), vec3<u32>(9755u, 46674u, 4294967295u))), vec3<u32>(~var_2.x, var_2.x, firstTrailingBit(var_2.x)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), (max(arg_0.x, 1i) >= 2826i) && (any(vec2<bool>(false, true)) | all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))));
    var var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(~var_2.x) ^ 1u, 6239u), 13u)];
    return Struct_1(1f, select(select(!vec4<bool>(var_4.b.d, true, var_3.a.d, var_4.a.d), vec4<bool>(var_3.b.d, true, var_3.a.b.x & false, true), _wgslsmith_dot_vec2_u32(var_2.zz, vec2<u32>(4294967295u, var_3.b.c.x)) == var_4.d.c.x), !(!vec4<bool>(true, var_4.a.b.x, true, false)), var_4.a.b), vec3<u32>(43714u, 24941u, min(firstLeadingBit(_wgslsmith_mod_u32(var_2.x, var_4.b.c.x)), 4294967295u)), var_4.a.b.x);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-15187i, min(u_input.a.x, -18879i), _wgslsmith_mod_i32(u_input.a.x, 0i), firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, 7471i))), u_input.a));
    global2 = array<Struct_1, 16>();
    let var_1 = var_0.c.x;
    global1 = array<Struct_1, 26>();
    var var_2 = var_0.c.x;
    return arg_0.d | true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    global2 = array<Struct_1, 16>();
    let var_0 = 0i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(1057f)), select(select(vec4<bool>(all(vec2<bool>(true, false)), true, false, any(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, -22315i == var_0), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, func_1(global1[_wgslsmith_index_u32(107658u, 26u)]), true), true)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(102637u, 26227u, 21719u), vec3<u32>(4294967295u, 1u, 4294967295u)), ~vec3<u32>(45381u, 4294967295u, 0u)), ~max(9999u, 4294967295u), ~4294967295u), true);
    let var_2 = vec4<bool>(true || var_1.d, any(var_1.b.wy), var_1.d, var_1.b.x);
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, -2147483647i, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 18577u), var_1.c.yz), vec2<u32>(_wgslsmith_div_u32(~var_1.c.x, var_1.c.x), var_1.c.x)), _wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f), 477f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-981f)))), -(firstTrailingBit(-16543i) << (127833u % 32u)), select(vec4<bool>(var_1.a != var_1.a, false, any(var_1.b.zyz), !var_2.x), var_2, !any(var_2)))));
}

