struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1322f, 1724f, vec3<u32>(36910u, 1u, 0u), vec4<i32>(-4141i, 9264i, 1i, 2147483647i), vec3<u32>(23624u, 20157u, 0u)), Struct_1(2068f, 1441f, vec3<u32>(27801u, 99675u, 41360u), vec4<i32>(2147483647i, 48225i, 44942i, 2147483647i), vec3<u32>(1u, 16101u, 0u)), Struct_1(-471f, 2794f, vec3<u32>(4294967295u, 4294967295u, 56101u), vec4<i32>(0i, -35531i, -1i, 1i), vec3<u32>(18383u, 1u, 1u)), Struct_1(285f, 777f, vec3<u32>(62796u, 71561u, 60694u), vec4<i32>(-1i, 0i, i32(-2147483648), -10646i), vec3<u32>(4294967295u, 0u, 1u)), Struct_1(2354f, -447f, vec3<u32>(4294967295u, 10821u, 26866u), vec4<i32>(27372i, 32991i, -18735i, 1i), vec3<u32>(4294967295u, 109152u, 4294967295u)), Struct_1(-381f, -1529f, vec3<u32>(4294967295u, 71237u, 51055u), vec4<i32>(9054i, i32(-2147483648), 0i, 1i), vec3<u32>(0u, 1u, 38359u)), Struct_1(-399f, 1097f, vec3<u32>(15308u, 1u, 30646u), vec4<i32>(0i, i32(-2147483648), 2147483647i, -1i), vec3<u32>(44728u, 4294967295u, 0u)), Struct_1(2359f, 1091f, vec3<u32>(27059u, 77367u, 4294967295u), vec4<i32>(40472i, 34431i, 2147483647i, 16725i), vec3<u32>(1u, 11157u, 10008u)), Struct_1(-1053f, -1000f, vec3<u32>(17266u, 55u, 0u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i), vec3<u32>(25771u, 27356u, 64046u)), Struct_1(452f, -195f, vec3<u32>(53378u, 4294967295u, 83454u), vec4<i32>(2147483647i, 38356i, -5947i, 16789i), vec3<u32>(78448u, 0u, 8138u)), Struct_1(-2351f, 930f, vec3<u32>(26645u, 5225u, 54606u), vec4<i32>(2147483647i, -1i, 46776i, 2147483647i), vec3<u32>(29350u, 1020u, 0u)), Struct_1(1066f, -3809f, vec3<u32>(32048u, 2000u, 0u), vec4<i32>(1i, 2147483647i, -30190i, -39190i), vec3<u32>(20357u, 7441u, 19068u)), Struct_1(453f, 441f, vec3<u32>(4294967295u, 1u, 95891u), vec4<i32>(2147483647i, 51325i, -17544i, 2147483647i), vec3<u32>(1u, 20400u, 4294967295u)), Struct_1(426f, -1000f, vec3<u32>(30434u, 6640u, 11968u), vec4<i32>(14210i, 1i, 0i, 1i), vec3<u32>(4294967295u, 80288u, 0u)), Struct_1(-1300f, 1000f, vec3<u32>(8855u, 4294967295u, 45573u), vec4<i32>(-9416i, 13701i, -41498i, -1i), vec3<u32>(46507u, 67084u, 34421u)), Struct_1(-2144f, -113f, vec3<u32>(4294967295u, 98539u, 11652u), vec4<i32>(i32(-2147483648), 1i, 44905i, i32(-2147483648)), vec3<u32>(0u, 65527u, 48566u)), Struct_1(1597f, -873f, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<i32>(-8082i, 2147483647i, 75609i, -4197i), vec3<u32>(27890u, 4294967295u, 30277u)), Struct_1(-289f, -1000f, vec3<u32>(1u, 8679u, 13725u), vec4<i32>(-3591i, 4567i, -14390i, -1i), vec3<u32>(0u, 7500u, 82432u)), Struct_1(-843f, -157f, vec3<u32>(1u, 26422u, 4294967295u), vec4<i32>(1i, 2147483647i, -1i, i32(-2147483648)), vec3<u32>(121872u, 0u, 4294967295u)), Struct_1(1134f, 484f, vec3<u32>(1u, 0u, 1u), vec4<i32>(22231i, 12364i, i32(-2147483648), -14245i), vec3<u32>(87726u, 1586u, 4294967295u)), Struct_1(-577f, 771f, vec3<u32>(1u, 0u, 41975u), vec4<i32>(1i, -33633i, 0i, -1i), vec3<u32>(26739u, 4294967295u, 73400u)), Struct_1(729f, 174f, vec3<u32>(1u, 35122u, 1120u), vec4<i32>(36658i, i32(-2147483648), i32(-2147483648), 0i), vec3<u32>(29388u, 41634u, 17422u)), Struct_1(1276f, -168f, vec3<u32>(0u, 23610u, 0u), vec4<i32>(2147483647i, 2147483647i, 72532i, 20529i), vec3<u32>(0u, 59618u, 1u)), Struct_1(-231f, -409f, vec3<u32>(0u, 49875u, 1u), vec4<i32>(-66915i, -22320i, 37925i, -88636i), vec3<u32>(1u, 1u, 1u)), Struct_1(839f, -511f, vec3<u32>(54438u, 0u, 0u), vec4<i32>(2147483647i, 1i, 2147483647i, 9089i), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(243f, -1680f, vec3<u32>(26380u, 15427u, 54214u), vec4<i32>(-14997i, -39726i, 15642i, 9199i), vec3<u32>(0u, 0u, 21694u)), Struct_1(-201f, 381f, vec3<u32>(19268u, 1u, 36378u), vec4<i32>(2147483647i, 1i, -1i, 1i), vec3<u32>(88693u, 50205u, 15989u)), Struct_1(-500f, -513f, vec3<u32>(1u, 0u, 42652u), vec4<i32>(-23178i, 10414i, 0i, 22340i), vec3<u32>(6820u, 51962u, 31430u)), Struct_1(-237f, 624f, vec3<u32>(4233u, 55689u, 4294967295u), vec4<i32>(1i, -1i, 41729i, 1i), vec3<u32>(4294967295u, 69001u, 0u)));

var<private> global1: Struct_4 = Struct_4(7898i);

var<private> global2: f32 = 778f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_3(select(vec2<bool>((u_input.a >> (51794u % 32u)) < _wgslsmith_add_u32(u_input.c, 1u), all(!vec2<bool>(arg_0, arg_0))), !(!vec2<bool>(false, arg_0)), true));
    global0 = array<Struct_1, 29>();
    global2 = -111f;
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(688f)), _wgslsmith_f_op_f32(-1339f - 1000f), -1000f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-831f, 403f, 810f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-484f, -315f, 839f), vec3<f32>(981f, 948f, -992f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1747f, 367f, -1157f) * vec3<f32>(848f, 325f, 828f)))), all(vec3<bool>(true, true, false)) | !var_0.a.x)));
    return var_0.a;
}

fn func_2() -> Struct_3 {
    var var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !func_3(false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1185f)))))), _wgslsmith_div_f32(-1525f, -1174f))));
    let var_2 = u_input.d;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-918f, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(step(1595f, 801f)), _wgslsmith_f_op_f32(-var_1.x))))));
    global2 = -605f;
    return Struct_3(vec2<bool>(var_0.x, var_0.x));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(-select(vec3<i32>(u_input.b.x, 1i, u_input.b.x) | vec3<i32>(0i, 1i, global1.a), -vec3<i32>(-1i, 1i, -15835i), true)));
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u) << (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)), select(abs(vec2<u32>(u_input.c, 16370u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 4294967295u)), select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a, var_0.a.x))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(29899u, 15900u, 33355u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.d, u_input.e), vec3<u32>(u_input.a, 56193u, u_input.c), vec3<u32>(63343u, 4294967295u, u_input.c)) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.a, u_input.c) & select(vec3<u32>(16017u, u_input.c, 1u), vec3<u32>(u_input.d, 0u, u_input.c), var_0.a.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1699f)));
    var_0 = func_1(~vec3<i32>(abs(_wgslsmith_clamp_i32(u_input.b.x, 0i, -2147483647i)), ~(0i & u_input.b.x), -21296i));
    var var_3 = select(vec4<bool>(var_0.a.x, var_0.a.x, any(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, false, var_0.a.x), 233f <= var_2)), var_0.a.x), !(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), false)), true);
    let var_4 = ~2147483647i;
    let var_5 = countOneBits(_wgslsmith_clamp_vec4_i32((vec4<i32>(-40738i, var_4, global1.a, 1i) | ~vec4<i32>(u_input.b.x, 3370i, var_4, var_4)) >> (min(abs(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~vec4<u32>(var_1.x, 108666u, 54881u, var_1.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 3203i, firstLeadingBit(global1.a), -var_4), ~(~vec4<i32>(-41451i, 1i, -2147483647i, 2147483647i))), vec4<i32>(select(~(-2147483647i), reverseBits(4208i), all(vec4<bool>(var_3.x, true, var_3.x, true))), -48792i, ~var_4, abs(2147483647i))));
    let var_6 = vec2<bool>(false, func_1(var_5.zyy).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(73068u, var_1.x, 1u, u_input.a), vec4<u32>(1u, 26181u, 8142u, var_1.x)), min(~vec4<u32>(var_1.x, 56831u, u_input.c, 143u), abs(vec4<u32>(var_1.x, u_input.e, var_1.x, var_1.x)))));
}

