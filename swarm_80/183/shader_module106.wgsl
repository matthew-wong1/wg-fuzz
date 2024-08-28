struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-836f, 508f), vec2<f32>(-529f, -130f), vec2<f32>(-342f, -396f), vec2<f32>(424f, 902f), vec2<f32>(-615f, 1000f), vec2<f32>(-342f, -1663f), vec2<f32>(-1979f, 1879f), vec2<f32>(472f, -136f), vec2<f32>(-232f, -817f), vec2<f32>(-715f, -1401f), vec2<f32>(-1395f, 1000f), vec2<f32>(455f, -1088f), vec2<f32>(498f, 149f), vec2<f32>(-1690f, 272f), vec2<f32>(556f, 137f), vec2<f32>(-1363f, -445f), vec2<f32>(-1893f, -287f), vec2<f32>(-1965f, 1556f), vec2<f32>(1145f, 1363f));

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-520f, 1000f), vec2<f32>(2230f, -1514f), vec2<f32>(1960f, -1248f), vec2<f32>(1684f, 201f), vec2<f32>(-980f, -1614f), vec2<f32>(-492f, 682f), vec2<f32>(-560f, 1425f), vec2<f32>(-1043f, 747f), vec2<f32>(-1000f, -833f), vec2<f32>(-798f, 929f));

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<u32>(1u, 4294967295u, 1u, 58255u), vec2<u32>(12146u, 436u), vec3<f32>(1366f, -290f, 1061f), 1u, vec2<bool>(false, false)), Struct_3(vec4<u32>(4294967295u, 912u, 4294967295u, 22918u), vec2<u32>(5782u, 0u), vec3<f32>(612f, 548f, 455f), 398u, vec2<bool>(true, false)), Struct_3(vec4<u32>(15974u, 58332u, 44452u, 20918u), vec2<u32>(4294967295u, 36549u), vec3<f32>(-398f, 1000f, 491f), 0u, vec2<bool>(true, false)), Struct_3(vec4<u32>(0u, 4294967295u, 2309u, 0u), vec2<u32>(32338u, 4294967295u), vec3<f32>(-307f, 1380f, -1034f), 48898u, vec2<bool>(true, false)), Struct_3(vec4<u32>(80348u, 36275u, 26267u, 1u), vec2<u32>(5376u, 0u), vec3<f32>(941f, 329f, -1000f), 0u, vec2<bool>(false, false)), Struct_3(vec4<u32>(4179u, 65660u, 30331u, 30904u), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1000f, 117f, 1273f), 22040u, vec2<bool>(true, true)), Struct_3(vec4<u32>(29293u, 1u, 35972u, 0u), vec2<u32>(4294967295u, 37933u), vec3<f32>(-1548f, 850f, 422f), 10046u, vec2<bool>(true, true)), Struct_3(vec4<u32>(27466u, 1u, 7080u, 31875u), vec2<u32>(36772u, 35948u), vec3<f32>(437f, -362f, -137f), 12813u, vec2<bool>(false, true)), Struct_3(vec4<u32>(1u, 0u, 52697u, 36368u), vec2<u32>(22080u, 4294967295u), vec3<f32>(-331f, 684f, -1045f), 89685u, vec2<bool>(false, false)), Struct_3(vec4<u32>(0u, 24471u, 30592u, 1u), vec2<u32>(51523u, 18058u), vec3<f32>(442f, -911f, 570f), 4294967295u, vec2<bool>(false, true)), Struct_3(vec4<u32>(0u, 0u, 87327u, 41055u), vec2<u32>(0u, 1u), vec3<f32>(418f, -1707f, -2519f), 20239u, vec2<bool>(false, true)), Struct_3(vec4<u32>(16140u, 0u, 19392u, 9939u), vec2<u32>(0u, 7491u), vec3<f32>(142f, 1198f, 1500f), 2845u, vec2<bool>(false, true)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(19216u, 19u)];
    global1 = array<vec2<f32>, 10>();
    let var_1 = arg_1.a.a;
    global1 = array<vec2<f32>, 10>();
    global3 = array<Struct_3, 12>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    global2 = Struct_3(countOneBits(global2.a), ~firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(global2.a.zy, global2.b), arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.c, vec3<f32>(_wgslsmith_f_op_f32(-311f * -108f), _wgslsmith_f_op_f32(func_3(global2.a, Struct_2(Struct_1(-1i), -9237i, Struct_1(-1i)))), global2.c.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 1501f, global2.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -747f, 1177f) + global2.c)), vec3<bool>(!global2.e.x, global2.e.x, true)))), 4294967295u, !select(vec2<bool>(true, true), select(!global2.e, vec2<bool>(true, false), true), select(vec2<bool>(true, false), arg_1.zx, !arg_1.x)));
    var var_0 = _wgslsmith_clamp_vec4_u32(abs(reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_0, global2.a.x, u_input.a.x), global2.a), ~vec4<u32>(85754u, 62717u, 0u, arg_0)))), vec4<u32>(~_wgslsmith_clamp_u32(4294967295u << (arg_0 % 32u), countOneBits(7487u), ~77401u), 0u, _wgslsmith_add_u32(~global2.d, _wgslsmith_div_u32(global2.d, ~u_input.a.x)), 13161u), ~reverseBits(global2.a));
    global0 = array<vec2<f32>, 19>();
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstLeadingBit(~abs(4294967295u)), var_0.x, _wgslsmith_sub_u32(1u, ~global2.d)), 99289u), 12u)];
    let var_1 = arg_1.x;
    return _wgslsmith_mult_i32(1i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i) >> (global2.a.wyz % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = global2.e.x;
    global1 = array<vec2<f32>, 10>();
    let var_1 = Struct_2(Struct_1(~_wgslsmith_sub_i32(1i, max(66822i, -2147483647i))), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, i32(-1i) * -2147483647i), func_2(u_input.a.x ^ 0u, !vec3<bool>(true, global2.e.x, global2.e.x), true)), Struct_1(-2147483647i));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.a, var_1.b, 1515i), vec3<i32>(var_1.b, 2147483647i, var_1.b)) ^ vec3<i32>(var_1.a.a, var_1.c.a, var_1.b)), vec3<i32>(37983i, ~(var_1.b | 23711i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(8651i, 2147483647i, 23031i), vec3<i32>(8683i, var_1.b, var_1.c.a)), ~vec3<i32>(var_1.a.a, 2147483647i, 1i)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1.a.a), vec2<i32>(-10750i, var_1.c.a)), firstTrailingBit(vec2<i32>(var_1.c.a, -93249i))), 0i & var_1.a.a), -1i, 5711i), vec3<i32>(0i, var_1.a.a, abs(-64284i)));
    return vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), arg_0, arg_0, 1335f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 12>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -958f, 109f, global2.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global2.c.x, -2016f, global2.c.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c.x, global2.c.x, 347f, global2.c.x))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c.x, -1436f, -438f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, 1058f, global2.c.x, global2.c.x) * vec4<f32>(global2.c.x, global2.c.x, global2.c.x, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, global2.c.x, -1194f) * vec4<f32>(global2.c.x, global2.c.x, global2.c.x, -1620f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, 534f, -449f, 1054f), vec4<f32>(global2.c.x, global2.c.x, global2.c.x, -1642f)), _wgslsmith_f_op_vec4_f32(func_1(-409f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2648f, global2.c.x, global2.c.x, global2.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2830f, global2.c.x, 1324f) - vec4<f32>(global2.c.x, global2.c.x, global2.c.x, -1230f)), vec4<bool>(global2.e.x, global2.e.x, false, global2.e.x))), vec4<f32>(global2.c.x, global2.c.x, -761f, 186f), vec4<bool>(global2.e.x, true, global2.e.x, true)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-27983i, 6428i, 49026i, 0i)), -vec4<i32>(-18786i, 60098i, -19638i, -8486i))), _wgslsmith_clamp_i32(0i, i32(-1i) * -38024i, -max(2147483647i, -14117i)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(11208i, 4591i)) << ((~u_input.a.x << (global2.a.x % 32u)) % 32u)));
    let var_2 = -(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.a, var_1.c.a, 1i, -73439i), max(vec4<i32>(0i, -20331i, var_1.a.a, -44953i), vec4<i32>(var_1.a.a, var_1.c.a, var_1.b, -48885i)), vec4<i32>(var_1.c.a, var_1.c.a, -2408i, var_1.c.a))));
    let var_3 = vec2<i32>(var_1.b, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(-41419i, select(_wgslsmith_add_vec3_i32(var_2.wyw, countOneBits(var_2.ywy)), ~_wgslsmith_mult_vec3_i32(var_2.ywz, vec3<i32>(var_1.b, 1i, var_3.x)), vec3<bool>(global2.e.x, all(vec4<bool>(global2.e.x, global2.e.x, false, global2.e.x)), !(!global2.e.x))), 565f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(725f, 1243f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * -422f) * var_0.x), global2.c.x));
}

