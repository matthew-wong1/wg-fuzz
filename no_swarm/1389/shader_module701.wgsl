struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(52398u, 40192u, 4294967295u), vec3<u32>(4294967295u, 42703u, 0u), vec3<u32>(0u, 3542u, 46058u), vec3<u32>(18081u, 4294967295u, 1u), vec3<u32>(49584u, 5521u, 4294967295u), vec3<u32>(21804u, 25429u, 1u), vec3<u32>(0u, 64530u, 45655u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(46515u, 46116u, 1u), vec3<u32>(34553u, 0u, 3890u), vec3<u32>(0u, 62175u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(82809u, 4294967295u, 5591u), vec3<u32>(19108u, 4294967295u, 7398u), vec3<u32>(1u, 18572u, 4294967295u), vec3<u32>(0u, 36003u, 1u), vec3<u32>(0u, 33418u, 1u), vec3<u32>(34411u, 4294967295u, 51188u), vec3<u32>(82998u, 0u, 0u), vec3<u32>(17269u, 1u, 4294967295u), vec3<u32>(22896u, 1u, 93187u), vec3<u32>(38839u, 29470u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(128674u, 1637u, 4294967295u));

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<vec3<u32>, 24>();
    global0 = array<vec3<u32>, 25>();
    var var_0 = arg_2.a.x;
    global1 = array<vec3<u32>, 24>();
    var_0 = _wgslsmith_mod_i32(min(arg_2.a.x >> (1u % 32u), _wgslsmith_div_i32(arg_2.a.x, 0i)), arg_2.a.x) ^ arg_2.a.x;
    return Struct_1(arg_3.x, !(!select(!vec3<bool>(false, arg_0.x, arg_2.b.b.x), !vec3<bool>(arg_2.b.b.x, true, global2.x), arg_0.yyz)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = max(~((u_input.a >> (~u_input.a % 32u)) | ~(~42757u)), abs(~u_input.a));
    return arg_2.b;
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    return _wgslsmith_f_op_f32(966f - _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    global2 = arg_1.wx;
    global2 = func_1(vec4<bool>(all(arg_3.b.zz), !arg_0.b.x != true, select(true, !arg_0.b.x, arg_0.b.x) || all(!arg_3.b), true), arg_3, Struct_2(~min(vec2<i32>(35049i, -3710i), ~vec2<i32>(40063i, -1i)), func_2(arg_2.zxy, 11639i, Struct_2(-vec2<i32>(-2147483647i, 1i), func_2(arg_2.wzw, 2147483647i, Struct_2(vec2<i32>(-21509i, -2147483647i), arg_0, arg_3.a), -977f), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + arg_3.a)), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yz - arg_2.ww) - arg_2.zx) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-704f, arg_2.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-507f, arg_0.a) * arg_2.xz)))))).b.xz;
    global0 = array<vec3<u32>, 25>();
    let var_0 = Struct_2(select(_wgslsmith_clamp_vec2_i32(reverseBits(~vec2<i32>(2147483647i, 2147483647i)), select(-vec2<i32>(-45586i, 1i), -vec2<i32>(0i, 0i), !arg_1.x), firstLeadingBit(vec2<i32>(-25203i, 10594i))), firstLeadingBit(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -19038i, 6108i), vec3<i32>(2147483647i, -34596i, -3425i)))), select(vec2<bool>(func_1(vec4<bool>(false, arg_1.x, arg_3.b.x, false), Struct_1(1529f, vec3<bool>(true, true, true)), Struct_2(vec2<i32>(66417i, -63048i), arg_0, -2399f), vec2<f32>(arg_2.x, 350f)).b.x, !arg_1.x), arg_3.b.xy, arg_1.yx)), func_1(vec4<bool>(true, all(arg_0.b.xz), !arg_0.b.x, any(arg_3.b)), func_2(vec3<f32>(1020f, _wgslsmith_f_op_f32(f32(-1f) * -563f), arg_2.x), 0i, Struct_2(countOneBits(vec2<i32>(0i, 12952i)), func_2(vec3<f32>(arg_3.a, -581f, arg_2.x), 36216i, Struct_2(vec2<i32>(2147483647i, 1404i), arg_3, arg_0.a), arg_3.a), -1359f), arg_0.a), Struct_2(min(min(vec2<i32>(-27180i, -2147483647i), vec2<i32>(1i, 1316i)), vec2<i32>(1i, 1i)), func_1(select(vec4<bool>(false, arg_0.b.x, false, global2.x), vec4<bool>(arg_3.b.x, arg_0.b.x, global2.x, true), arg_1), arg_3, Struct_2(vec2<i32>(72420i, 1i), arg_3, 152f), _wgslsmith_f_op_vec2_f32(-arg_2.zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a)))), _wgslsmith_f_op_vec2_f32(arg_2.xy + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 212f) - arg_2.yx))), 1475f);
    global0 = array<vec3<u32>, 25>();
    return Struct_2(_wgslsmith_sub_vec2_i32(select(var_0.a, ~(vec2<i32>(var_0.a.x, 1i) | var_0.a), vec2<bool>(false, var_0.b.b.x == false)), -var_0.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a * 1000f)), func_1(arg_1, Struct_1(_wgslsmith_f_op_f32(-arg_3.a), vec3<bool>(arg_3.b.x, false, global2.x)), Struct_2(_wgslsmith_sub_vec2_i32(var_0.a, var_0.a), func_1(vec4<bool>(false, false, false, true), Struct_1(-796f, vec3<bool>(global2.x, var_0.b.b.x, false)), var_0, vec2<f32>(var_0.b.a, 306f)), arg_0.a), _wgslsmith_f_op_vec2_f32(select(arg_2.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, arg_3.a)), arg_3.b.x))).b), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(!vec4<bool>(select(global2.x, global2.x, global2.x), global2.x, true, any(vec4<bool>(false, true, false, global2.x))), Struct_1(_wgslsmith_f_op_f32(max(-255f, _wgslsmith_f_op_f32(f32(-1f) * -1485f))), vec3<bool>(global2.x, all(vec2<bool>(global2.x, global2.x)), !global2.x)), Struct_2(vec2<i32>(_wgslsmith_mod_i32(0i, 30148i), -1i), Struct_1(-477f, vec3<bool>(false, false, global2.x)), 1f), vec2<f32>(1f, 1f)), vec4<bool>(false, true, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, -993f, 133f, 850f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1358f, -1923f, -900f, -2602f)))), Struct_1(_wgslsmith_f_op_f32(sign(-821f)), func_1(!vec4<bool>(true, global2.x, global2.x, false), func_1(vec4<bool>(false, global2.x, false, global2.x), func_1(vec4<bool>(true, true, global2.x, false), Struct_1(-1000f, vec3<bool>(global2.x, global2.x, false)), Struct_2(vec2<i32>(0i, 1i), Struct_1(1940f, vec3<bool>(false, global2.x, true)), -1466f), vec2<f32>(475f, 267f)), Struct_2(vec2<i32>(-6278i, -2147483647i), Struct_1(-1335f, vec3<bool>(global2.x, true, true)), 1518f), _wgslsmith_f_op_vec2_f32(vec2<f32>(814f, 377f) + vec2<f32>(945f, 612f))), Struct_2(vec2<i32>(-2147483647i, -2147483647i), func_2(vec3<f32>(-113f, -435f, 802f), -1i, Struct_2(vec2<i32>(-18981i, -20807i), Struct_1(2565f, vec3<bool>(global2.x, true, global2.x)), 1000f), -662f), _wgslsmith_f_op_f32(func_3(vec2<f32>(-1806f, -1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-756f, -651f) - vec2<f32>(134f, -1311f)), _wgslsmith_div_vec2_f32(vec2<f32>(512f, 817f), vec2<f32>(-436f, 1139f)), global2.x))).b));
    let var_1 = func_1(vec4<bool>(func_1(select(vec4<bool>(false, false, false, var_0.b.b.x), vec4<bool>(true, var_0.b.b.x, false, var_0.b.b.x), var_0.b.b.x), func_1(vec4<bool>(false, global2.x, global2.x, var_0.b.b.x), Struct_1(var_0.c, var_0.b.b), Struct_2(var_0.a, var_0.b, var_0.c), vec2<f32>(-480f, var_0.b.a)), Struct_2(var_0.a, var_0.b, var_0.c), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1919f, var_0.c), vec2<f32>(-506f, var_0.b.a)))).b.x && var_0.b.b.x, u_input.a <= min(~0u, 4294967295u), ~51796u < abs(u_input.a ^ u_input.a), select((u_input.a != 4294967295u) | (true | global2.x), any(!vec4<bool>(global2.x, global2.x, global2.x, var_0.b.b.x)), false)), Struct_1(var_0.b.a, !func_4(Struct_1(-1547f, var_0.b.b), !vec4<bool>(global2.x, var_0.b.b.x, global2.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, 595f, var_0.c)), func_1(vec4<bool>(var_0.b.b.x, global2.x, false, global2.x), var_0.b, Struct_2(vec2<i32>(var_0.a.x, -2147483647i), var_0.b, var_0.c), vec2<f32>(1794f, var_0.c))).b.b), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(-1i), var_0.a.x ^ 26787i), vec2<i32>(-1i) * -var_0.a), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(620f + var_0.c))), !func_2(vec3<f32>(-1053f, -179f, var_0.b.a), -5263i, Struct_2(var_0.a, var_0.b, var_0.c), -404f).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)) - _wgslsmith_f_op_f32(var_0.b.a * -287f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(func_4(var_0.b, vec4<bool>(false, true, global2.x, true), vec4<f32>(-1633f, 1000f, var_0.b.a, var_0.c), var_0.b).b.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1769f, var_0.c), vec2<f32>(-525f, -430f), vec2<bool>(var_0.b.b.x, false)))))));
    let var_2 = vec4<u32>(countOneBits(u_input.a) >> (u_input.a % 32u), ~u_input.a, _wgslsmith_mod_u32(53553u, ~23786u), ~(~(u_input.a ^ u_input.a)) | ~21073u);
    var var_3 = true;
    global1 = array<vec3<u32>, 24>();
    var var_4 = func_4(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, var_0.c, var_0.b.a) + vec3<f32>(var_0.c, var_0.b.a, 1069f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 1035f, -691f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, var_0.b.a, -581f))))), -57431i, Struct_2(var_0.a << (firstTrailingBit(vec2<u32>(54051u, var_2.x)) % vec2<u32>(32u)), func_2(vec3<f32>(var_1.a, 1079f, 193f), _wgslsmith_dot_vec2_i32(var_0.a, var_0.a), func_4(var_1, vec4<bool>(false, false, global2.x, false), vec4<f32>(2044f, var_1.a, -1138f, var_1.a), var_0.b), var_0.b.a), 603f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-669f * _wgslsmith_f_op_f32(-var_1.a))))), select(!vec4<bool>(var_0.b.b.x, !var_1.b.x, true, all(var_1.b.xx)), vec4<bool>(select(var_0.b.b.x, any(vec2<bool>(var_0.b.b.x, false)), select(var_0.b.b.x, true, true)), global2.x, any(!vec4<bool>(false, false, var_1.b.x, true)), any(func_4(var_0.b, vec4<bool>(global2.x, false, false, true), vec4<f32>(var_0.c, var_1.a, -432f, var_0.b.a), var_1).b.b)), select(!select(vec4<bool>(false, false, global2.x, true), vec4<bool>(var_0.b.b.x, global2.x, false, true), vec4<bool>(false, global2.x, var_1.b.x, var_0.b.b.x)), !select(vec4<bool>(false, var_1.b.x, true, false), vec4<bool>(global2.x, var_1.b.x, var_1.b.x, true), vec4<bool>(true, var_1.b.x, true, var_1.b.x)), func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(402f, var_0.b.a, var_0.b.a))), -53477i, Struct_2(vec2<i32>(-2147483647i, var_0.a.x), var_1, var_0.c), _wgslsmith_f_op_f32(-448f + var_0.c)).b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1463f, -1035f, -2195f))))), var_0.b).a.x;
    let var_5 = func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * 1000f), var_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(510f + _wgslsmith_f_op_f32(-var_1.a)), -1064f), -261f), _wgslsmith_sub_i32(var_0.a.x, _wgslsmith_sub_i32(var_0.a.x, max(i32(-1i) * -1i, var_0.a.x >> (var_2.x % 32u)))), Struct_2(abs(_wgslsmith_div_vec2_i32(var_0.a, vec2<i32>(1374i, var_0.a.x) ^ var_0.a)), Struct_1(1000f, var_1.b), var_1.a), _wgslsmith_f_op_f32(abs(var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

