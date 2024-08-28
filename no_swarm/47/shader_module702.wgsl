struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<u32>(1u, 1u, 2170u, 1u), vec2<i32>(1i, 31544i)), Struct_2(vec4<u32>(100890u, 1u, 19439u, 22786u), vec2<i32>(-53162i, i32(-2147483648))), Struct_2(vec4<u32>(45078u, 53485u, 4294967295u, 1u), vec2<i32>(-16384i, i32(-2147483648))), Struct_2(vec4<u32>(4294967295u, 1u, 31915u, 29555u), vec2<i32>(-1i, -6769i)), Struct_2(vec4<u32>(55794u, 1u, 58181u, 4310u), vec2<i32>(-1i, -573i)), Struct_2(vec4<u32>(93509u, 0u, 1u, 68632u), vec2<i32>(0i, -21769i)), Struct_2(vec4<u32>(38963u, 39313u, 11667u, 4294967295u), vec2<i32>(26680i, 26925i)), Struct_2(vec4<u32>(39850u, 27396u, 4294967295u, 1u), vec2<i32>(14029i, 25752i)), Struct_2(vec4<u32>(28521u, 4593u, 21096u, 73105u), vec2<i32>(1i, -66i)), Struct_2(vec4<u32>(6940u, 58689u, 80851u, 1u), vec2<i32>(2556i, 26889i)), Struct_2(vec4<u32>(29746u, 4294967295u, 47500u, 4294967295u), vec2<i32>(36129i, -71771i)), Struct_2(vec4<u32>(61597u, 1u, 11671u, 0u), vec2<i32>(2147483647i, -1448i)), Struct_2(vec4<u32>(4294967295u, 69299u, 2299u, 4294967295u), vec2<i32>(14712i, 13466i)), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec2<i32>(-14855i, 6048i)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec2<i32>(-19500i, 0i)), Struct_2(vec4<u32>(38001u, 122317u, 4294967295u, 4294967295u), vec2<i32>(-20623i, -16025i)), Struct_2(vec4<u32>(4294967295u, 35340u, 16196u, 76601u), vec2<i32>(44346i, -1i)), Struct_2(vec4<u32>(19687u, 0u, 70628u, 1u), vec2<i32>(2147483647i, 0i)), Struct_2(vec4<u32>(4294967295u, 37038u, 59513u, 65149u), vec2<i32>(-15578i, -7196i)), Struct_2(vec4<u32>(0u, 88217u, 100340u, 4294967295u), vec2<i32>(-37886i, i32(-2147483648))), Struct_2(vec4<u32>(42299u, 64849u, 4294967295u, 35058u), vec2<i32>(-1i, i32(-2147483648))), Struct_2(vec4<u32>(119998u, 1u, 63447u, 4294967295u), vec2<i32>(-27941i, -1761i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec3<f32> {
    global0 = array<Struct_2, 22>();
    var var_0 = !(!(!(!(!vec4<bool>(arg_1, arg_3.a.x, false, arg_3.a.x)))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~5211u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, ~max(u_input.c.x, u_input.a.x)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c.x) | min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.c.x, 48248u)), _wgslsmith_sub_vec2_u32(u_input.c, abs(u_input.c))))), 22u)];
    global0 = array<Struct_2, 22>();
    let var_2 = arg_3;
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(step(-734f, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(arg_2 + -116f), select(false, var_0.x, true))))))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(-2147483647i, arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(!(!arg_1))));
    let var_1 = u_input.d.zy;
    var var_2 = Struct_2(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, u_input.a), ~vec4<u32>(u_input.c.x, 0u, 4294967295u, 35149u)), reverseBits(max(vec2<i32>(26434i, var_1.x) | (u_input.d.xy | vec2<i32>(u_input.d.x, u_input.d.x)), ~vec2<i32>(-25655i, 0i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xz, vec2<f32>(_wgslsmith_f_op_f32(var_0.x * 412f), _wgslsmith_f_op_f32(f32(-1f) * -504f)), select(vec2<bool>(true, true), vec2<bool>(true, arg_1.x), !vec2<bool>(arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 991f), arg_0)))));
    var_2 = global0[_wgslsmith_index_u32((~u_input.a.x & max(~(~var_2.a.x), _wgslsmith_clamp_u32(var_2.a.x, ~18424u, 24604u))) >> (var_2.a.x % 32u), 22u)];
    return select(!arg_1, select(arg_1, arg_1, false), false);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(!func_2(_wgslsmith_f_op_f32(-1000f - -1754f), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = u_input.a.xzx;
    global0 = array<Struct_2, 22>();
    let var_2 = vec4<bool>(all(!(!vec2<bool>(false, var_0.a.x))), var_0.a.x, !(!any(vec3<bool>(true, true, true))), (74345u < (u_input.c.x | u_input.c.x)) != !func_2(593f, func_2(387f, var_0.a)).x);
    global0 = array<Struct_2, 22>();
    return Struct_3(_wgslsmith_sub_u32(var_1.x << (abs(var_1.x) % 32u), _wgslsmith_dot_vec2_u32(~(~var_1.zx), var_1.zx)), !vec3<bool>(true, false, var_2.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1191f * 766f), -1383f, _wgslsmith_f_op_f32(f32(-1f) * -190f), -535f) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-954f, 276f, -719f, -328f), vec4<f32>(490f, 400f, 1133f, -389f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1798f, -101f, -1090f, 498f), vec4<f32>(358f, -784f, -2379f, -721f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1668f, 999f), -1139f, -392f, _wgslsmith_f_op_f32(1741f + -1943f))))), Struct_1(select(vec2<bool>(u_input.d.x <= u_input.b, var_0.a.x), !(!var_2.xz), select(var_0.a, var_0.a, !var_0.a.x))), !var_0.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = arg_0.d;
    var var_1 = arg_1.d;
    var_1 = Struct_1(var_0.a);
    var var_2 = func_1();
    var var_3 = func_1();
    return var_1.a;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = _wgslsmith_mult_u32(var_0.a ^ (24448u << (min(u_input.c.x ^ 14064u, _wgslsmith_div_u32(45814u, u_input.c.x)) % 32u)), 1u);
    var var_2 = ~select(func_1().a, 20818u, false) ^ select(_wgslsmith_dot_vec3_u32(~vec3<u32>(85581u, 1u, var_0.a) << (countOneBits(u_input.a.zzy) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 15292u)) >> (u_input.a.xyx % vec3<u32>(32u))), var_1, true);
    var var_3 = Struct_3(1u, vec3<bool>(true, false, false && !func_1().b.x), vec4<f32>(-274f, -269f, func_1().c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.x)))), var_0.d, func_4(Struct_3(~var_0.a, func_1().b, var_0.c, Struct_1(vec2<bool>(true, false)), arg_0.a.x), var_0, abs(vec2<i32>(1i, 25371i) << (firstTrailingBit(vec2<u32>(var_0.a, var_0.a)) % vec2<u32>(32u)))).x);
    var var_4 = u_input.d.zy;
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(!func_4(func_1(), func_1(), vec2<i32>(u_input.b, u_input.b) | vec2<i32>(-2147483647i, 9967i))));
    let var_1 = u_input.a;
    let var_2 = u_input.a;
    let var_3 = select(abs(select(min(var_1, vec4<u32>(var_2.x, u_input.a.x, 22686u, var_1.x)), ~firstTrailingBit(u_input.a), !(!vec4<bool>(false, var_0.a.x, true, var_0.a.x)))), (vec4<u32>(69391u, 0u, var_2.x, var_1.x) << (_wgslsmith_add_vec4_u32(~var_1, ~var_1) % vec4<u32>(32u))) & reverseBits(vec4<u32>(max(1u, var_2.x), _wgslsmith_add_u32(var_2.x, u_input.a.x), ~66640u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1u, 1u, var_2.x), vec4<u32>(136590u, 1u, var_1.x, 163135u)))), select(!select(!vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(true, true, var_0.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, true, var_0.a.x, true)), select(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(false, false, var_0.a.x, any(vec2<bool>(var_0.a.x, var_0.a.x))), !var_0.a.x), func_1().e));
    global0 = array<Struct_2, 22>();
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(1315f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-146f * 1272f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(725f + 1335f) * _wgslsmith_f_op_f32(f32(-1f) * -1340f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f + 1144f)), var_0.a.x))), -635f);
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -448f))), vec2<f32>(-216f, -1459f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) >= var_4.x)), var_4.zx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~_wgslsmith_sub_u32(u_input.a.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 67910u, var_2.x, var_1.x), vec4<u32>(84172u, var_3.x, var_2.x, u_input.a.x)), ~u_input.a.x)), abs(~vec3<i32>(countOneBits(-1i), 12420i, ~14500i)));
}

